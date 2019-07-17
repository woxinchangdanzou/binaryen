(module
  (memory 10)
  (type $ii (func (param i32 i32)))
  (table 1 1 funcref)
  (elem (i32.const 0))
  (import "env" "STACKTOP" (global $STACKTOP$asm2wasm$import i32))
  (import "env" "segfault" (func $segfault (param i32)))
  (global $stack_ptr (mut i32) (global.get $STACKTOP$asm2wasm$import))

  (func $nothing
  )
  (func $not-alive
    (local $x i32)
    (local.set $x (i32.const 1))
    (call $nothing)
  )
  (func $spill
    (local $x i32)
    (call $nothing)
    (drop (local.get $x))
  )
  (func $ignore-non-pointers
    (local $x i32)
    (local $y i64)
    (local $z f32)
    (local $w f64)
    (local.set $x (i32.const 1))
    (local.set $y (i64.const 1))
    (local.set $z (f32.const 1))
    (local.set $w (f64.const 1))
    (call $nothing)
    (drop (local.get $x))
    (drop (local.get $y))
    (drop (local.get $z))
    (drop (local.get $w))
  )
  (func $spill4
    (local $x i32)
    (local $y i32)
    (local $z i32)
    (local $w i32)
    (local.set $x (i32.const 1))
    (local.set $y (i32.const 1))
    (local.set $z (i32.const 1))
    (local.set $w (i32.const 1))
    (call $nothing)
    (drop (local.get $x))
    (drop (local.get $y))
    (drop (local.get $z))
    (drop (local.get $w))
  )
  (func $spill5
    (local $x i32)
    (local $y i32)
    (local $z i32)
    (local $w i32)
    (local $a i32)
    (local.set $x (i32.const 1))
    (local.set $y (i32.const 1))
    (local.set $z (i32.const 1))
    (local.set $w (i32.const 1))
    (local.set $a (i32.const 1))
    (call $nothing)
    (drop (local.get $x))
    (drop (local.get $y))
    (drop (local.get $z))
    (drop (local.get $w))
    (drop (local.get $a))
  )
  (func $some-alive
    (local $x i32)
    (local $y i32)
    (call $nothing)
    (drop (local.get $x))
  )
  (func $spill-args (param $p i32) (param $q i32)
    (local $x i32)
    (call $spill-args (i32.const 1) (i32.const 2))
    (drop (local.get $x))
  )
  (func $spill-ret (result i32)
    (local $x i32)
    (call $nothing)
    (drop (local.get $x))
    (if (i32.const 1)
      (return (i32.const 2))
      (return (i32.const 3))
    )
    (i32.const 4)
  )
  (func $spill-unreachable (result i32)
    (local $x i32)
    (call $nothing)
    (drop (local.get $x))
    (unreachable)
  )
  (func $spill-call-call0 (param $p i32) (result i32)
    (unreachable)
  )
  (func $spill-call-call1 (param $p i32) (result i32)
    (local $x i32)
    (drop
      (call $spill-call-call0
        (call $spill-call-call1
          (i32.const 1)
        )
      )
    )
    (local.get $x)
  )
  (func $spill-call-ret (param $p i32) (result i32)
    (local $x i32)
    (drop
      (call $spill-call-call0
        (return
          (i32.const 1)
        )
      )
    )
    (local.get $x)
  )
  (func $spill-ret-call (param $p i32) (result i32)
    (local $x i32)
    (drop
      (return
        (call $spill-call-call0
          (i32.const 1)
        )
      )
    )
    (local.get $x)
  )
  (func $spill-ret-ret (result i32)
    (local $x i32)
    (call $nothing)
    (drop (local.get $x))
    (drop
      (return
        (return
          (i32.const 1)
        )
      )
    )
    (local.get $x)
  )
  (func $spill-call-othertype (param $y f64)
    (local $x i32)
    (call $spill-call-othertype (f64.const 1))
    (drop (local.get $x))
  )
  (func $spill-call_indirect
    (local $x i32)
    (call_indirect (type $ii)
      (i32.const 123)
      (i32.const 456)
      (i32.const 789)
    )
    (drop (local.get $x))
  )
  (func $spill-call_import
    (local $x i32)
    (call $segfault
      (i32.const 200)
    )
    (drop (local.get $x))
  )
)
(module
  (memory 1 2)
  (global $stack_ptr (mut i32) (i32.const 0))
  (export "stackSave" (func $ss))
  (func $spill
    (local $x i32)
    (call $spill)
    (drop (local.get $x))
  )
  (func $ss (result i32)
    (global.get $stack_ptr)
  )
)
(module
  (memory 1 2)
  (global $stack_ptr (mut i32) (i32.const 0))
  (export "stackSave" (func $ss))
  (func $spill
    (local $x i32)
    (call $spill)
    (drop (local.get $x))
  )
  (func $ss (result i32)
    (return (global.get $stack_ptr))
  )
)
(module
  (memory 1 2)
  (global $stack_ptr (mut i32) (i32.const 0))
  (export "stackSave" (func $ss))
  (func $spill
    (local $x i32)
    (call $spill)
    (drop (local.get $x))
  )
  (func $ss (result i32)
    (block
      (return (global.get $stack_ptr))
    )
  )
)
