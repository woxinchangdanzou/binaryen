(module
 (type $FUNCSIG$iiii (func (param i32 i32 i32) (result i32)))
 (type $FUNCSIG$id (func (param f64) (result i32)))
 (type $FUNCSIG$ii (func (param i32) (result i32)))
 (type $FUNCSIG$vi (func (param i32)))
 (type $FUNCSIG$v (func))
 (type $FUNCSIG$i (func (result i32)))
 (type $FUNCSIG$iii (func (param i32 i32) (result i32)))
 (type $FUNCSIG$vii (func (param i32 i32)))
 (import "env" "memory" (memory $memory 256 256))
 (data (i32.const 1024) "emcc_hello_world.asm.js")
 (import "env" "table" (table $table 18 18 anyfunc))
 (elem (get_global $__table_base) $b0 $___stdio_close $b1 $b1 $___stdout_write $___stdio_seek $___stdio_write $b1 $b1 $b1 $b2 $b2 $b2 $b2 $b2 $_cleanup $b2 $b2)
 (import "env" "__table_base" (global $__table_base i32))
 (import "env" "STACKTOP" (global $STACKTOP$asm2wasm$import i32))
 (import "env" "STACK_MAX" (global $STACK_MAX$asm2wasm$import i32))
 (import "env" "tempDoublePtr" (global $tempDoublePtr$asm2wasm$import i32))
 (import "env" "abort" (func $abort))
 (import "env" "nullFunc_ii" (func $nullFunc_ii (param i32)))
 (import "env" "nullFunc_iiii" (func $nullFunc_iiii (param i32)))
 (import "env" "nullFunc_vi" (func $nullFunc_vi (param i32)))
 (import "env" "_pthread_cleanup_pop" (func $_pthread_cleanup_pop (param i32)))
 (import "env" "___lock" (func $___lock (param i32)))
 (import "env" "_pthread_self" (func $_pthread_self (result i32)))
 (import "env" "_abort" (func $_abort))
 (import "env" "___syscall6" (func $___syscall6 (param i32 i32) (result i32)))
 (import "env" "_sbrk" (func $_sbrk (param i32) (result i32)))
 (import "env" "_time" (func $_time (param i32) (result i32)))
 (import "env" "_emscripten_memcpy_big" (func $_emscripten_memcpy_big (param i32 i32 i32) (result i32)))
 (import "env" "___syscall54" (func $___syscall54 (param i32 i32) (result i32)))
 (import "env" "___unlock" (func $___unlock (param i32)))
 (import "env" "___syscall140" (func $___syscall140 (param i32 i32) (result i32)))
 (import "env" "_pthread_cleanup_push" (func $_pthread_cleanup_push (param i32 i32)))
 (import "env" "_sysconf" (func $_sysconf (param i32) (result i32)))
 (import "env" "___syscall146" (func $___syscall146 (param i32 i32) (result i32)))
 (import "asm2wasm" "f64-to-int" (func $f64-to-int (param f64) (result i32)))
 (global $STACKTOP (mut i32) (get_global $STACKTOP$asm2wasm$import))
 (global $STACK_MAX (mut i32) (get_global $STACK_MAX$asm2wasm$import))
 (global $tempDoublePtr (mut i32) (get_global $tempDoublePtr$asm2wasm$import))
 (global $__THREW__ (mut i32) (i32.const 0))
 (global $threwValue (mut i32) (i32.const 0))
 (global $tempRet0 (mut i32) (i32.const 0))
 (export "_i64Subtract" (func $_i64Subtract))
 (export "_free" (func $_free))
 (export "_main" (func $_main))
 (export "_i64Add" (func $_i64Add))
 (export "_memset" (func $_memset))
 (export "_malloc" (func $_malloc))
 (export "_memcpy" (func $_memcpy))
 (export "_bitshift64Lshr" (func $_bitshift64Lshr))
 (export "_fflush" (func $_fflush))
 (export "___errno_location" (func $___errno_location))
 (export "_bitshift64Shl" (func $_bitshift64Shl))
 (export "runPostSets" (func $runPostSets))
 (export "stackAlloc" (func $stackAlloc))
 (export "stackSave" (func $stackSave))
 (export "stackRestore" (func $stackRestore))
 (export "establishStackSpace" (func $establishStackSpace))
 (export "setThrew" (func $setThrew))
 (export "setTempRet0" (func $setTempRet0))
 (export "getTempRet0" (func $getTempRet0))
 (export "dynCall_ii" (func $dynCall_ii))
 (export "dynCall_iiii" (func $dynCall_iiii))
 (export "dynCall_vi" (func $dynCall_vi))
 (export "___udivmoddi4" (func $___udivmoddi4))
 (func $stackAlloc (; 19 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (get_local $0)
   )
  )
  (set_global $STACKTOP
   (i32.and
    (i32.add
     (get_global $STACKTOP)
     (i32.const 15)
    )
    (i32.const -16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abort)
  )
  (get_local $1)
 )
 (func $stackSave (; 20 ;) (; has Stack IR ;) (result i32)
  (get_global $STACKTOP)
 )
 (func $stackRestore (; 21 ;) (; has Stack IR ;) (param $0 i32)
  (set_global $STACKTOP
   (get_local $0)
  )
 )
 (func $establishStackSpace (; 22 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32)
  (set_global $STACKTOP
   (get_local $0)
  )
  (set_global $STACK_MAX
   (get_local $1)
  )
 )
 (func $setThrew (; 23 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32)
  (if
   (i32.eqz
    (get_global $__THREW__)
   )
   (block
    (set_global $__THREW__
     (get_local $0)
    )
    (set_global $threwValue
     (get_local $1)
    )
   )
  )
 )
 (func $setTempRet0 (; 24 ;) (; has Stack IR ;) (param $0 i32)
  (set_global $tempRet0
   (get_local $0)
  )
 )
 (func $getTempRet0 (; 25 ;) (; has Stack IR ;) (result i32)
  (get_global $tempRet0)
 )
 (func $_main (; 26 ;) (; has Stack IR ;) (result i32)
  (local $0 i32)
  (set_local $0
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abort)
  )
  (drop
   (call $_printf
    (get_local $0)
   )
  )
  (set_global $STACKTOP
   (get_local $0)
  )
  (i32.const 0)
 )
 (func $_frexp (; 27 ;) (; has Stack IR ;) (param $0 f64) (param $1 i32) (result f64)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (f64.store
   (get_global $tempDoublePtr)
   (get_local $0)
  )
  (block $switch
   (block $switch-default
    (block $switch-case0
     (if
      (tee_local $5
       (tee_local $3
        (i32.and
         (tee_local $3
          (call $_bitshift64Lshr
           (tee_local $2
            (i32.load
             (get_global $tempDoublePtr)
            )
           )
           (tee_local $4
            (i32.load offset=4
             (get_global $tempDoublePtr)
            )
           )
           (i32.const 52)
          )
         )
         (i32.const 2047)
        )
       )
      )
      (if
       (i32.eq
        (get_local $5)
        (i32.const 2047)
       )
       (br $switch)
       (br $switch-default)
      )
     )
     (i32.store
      (get_local $1)
      (tee_local $2
       (if (result i32)
        (f64.ne
         (get_local $0)
         (f64.const 0)
        )
        (block (result i32)
         (set_local $0
          (call $_frexp
           (f64.mul
            (get_local $0)
            (f64.const 18446744073709551615)
           )
           (get_local $1)
          )
         )
         (i32.add
          (i32.load
           (get_local $1)
          )
          (i32.const -64)
         )
        )
        (i32.const 0)
       )
      )
     )
     (br $switch)
    )
   )
   (i32.store
    (get_local $1)
    (i32.add
     (get_local $3)
     (i32.const -1022)
    )
   )
   (i32.store
    (get_global $tempDoublePtr)
    (get_local $2)
   )
   (i32.store offset=4
    (get_global $tempDoublePtr)
    (i32.or
     (i32.and
      (get_local $4)
      (i32.const -2146435073)
     )
     (i32.const 1071644672)
    )
   )
   (set_local $0
    (f64.load
     (get_global $tempDoublePtr)
    )
   )
  )
  (get_local $0)
 )
 (func $_strerror (; 28 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $__rjto$1
   (block $__rjti$1
    (block $__rjti$0
     (loop $while-in
      (br_if $__rjti$0
       (i32.eq
        (i32.load8_u offset=687
         (get_local $1)
        )
        (get_local $0)
       )
      )
      (br_if $while-in
       (i32.ne
        (tee_local $1
         (i32.add
          (get_local $1)
          (i32.const 1)
         )
        )
        (i32.const 87)
       )
      )
     )
     (set_local $1
      (i32.const 87)
     )
     (br $__rjti$1)
    )
    (br_if $__rjti$1
     (get_local $1)
    )
    (set_local $0
     (i32.const 775)
    )
    (br $__rjto$1)
   )
   (set_local $0
    (i32.const 775)
   )
   (loop $while-in1
    (loop $while-in3
     (set_local $2
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (set_local $0
      (if (result i32)
       (i32.load8_s
        (get_local $0)
       )
       (block
        (set_local $0
         (get_local $2)
        )
        (br $while-in3)
       )
       (get_local $2)
      )
     )
    )
    (br_if $while-in1
     (tee_local $1
      (i32.add
       (get_local $1)
       (i32.const -1)
      )
     )
    )
   )
  )
  (get_local $0)
 )
 (func $___errno_location (; 29 ;) (; has Stack IR ;) (result i32)
  (if (result i32)
   (i32.load
    (i32.const 16)
   )
   (i32.load offset=60
    (call $_pthread_self)
   )
   (i32.const 60)
  )
 )
 (func $___stdio_close (; 30 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abort)
  )
  (i32.store
   (get_local $1)
   (i32.load offset=60
    (get_local $0)
   )
  )
  (set_local $0
   (call $___syscall_ret
    (call $___syscall6
     (i32.const 6)
     (get_local $1)
    )
   )
  )
  (set_global $STACKTOP
   (get_local $1)
  )
  (get_local $0)
 )
 (func $___stdout_write (; 31 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $4
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 80)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abort)
  )
  (set_local $5
   (i32.add
    (tee_local $3
     (get_local $4)
    )
    (i32.const 12)
   )
  )
  (i32.store offset=36
   (get_local $0)
   (i32.const 4)
  )
  (if
   (i32.eqz
    (i32.and
     (i32.load
      (get_local $0)
     )
     (i32.const 64)
    )
   )
   (block
    (i32.store
     (get_local $3)
     (i32.load offset=60
      (get_local $0)
     )
    )
    (i32.store offset=4
     (get_local $3)
     (i32.const 21505)
    )
    (i32.store offset=8
     (get_local $3)
     (get_local $5)
    )
    (if
     (call $___syscall54
      (i32.const 54)
      (get_local $3)
     )
     (i32.store8 offset=75
      (get_local $0)
      (i32.const -1)
     )
    )
   )
  )
  (set_local $0
   (call $___stdio_write
    (get_local $0)
    (get_local $1)
    (get_local $2)
   )
  )
  (set_global $STACKTOP
   (get_local $4)
  )
  (get_local $0)
 )
 (func $___stdio_seek (; 32 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (set_local $4
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 32)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abort)
  )
  (i32.store
   (tee_local $3
    (get_local $4)
   )
   (i32.load offset=60
    (get_local $0)
   )
  )
  (i32.store offset=4
   (get_local $3)
   (i32.const 0)
  )
  (i32.store offset=8
   (get_local $3)
   (get_local $1)
  )
  (i32.store offset=12
   (get_local $3)
   (tee_local $0
    (i32.add
     (get_local $3)
     (i32.const 20)
    )
   )
  )
  (i32.store offset=16
   (get_local $3)
   (get_local $2)
  )
  (set_local $0
   (if (result i32)
    (i32.lt_s
     (call $___syscall_ret
      (call $___syscall140
       (i32.const 140)
       (get_local $3)
      )
     )
     (i32.const 0)
    )
    (block (result i32)
     (i32.store
      (get_local $0)
      (i32.const -1)
     )
     (i32.const -1)
    )
    (i32.load
     (get_local $0)
    )
   )
  )
  (set_global $STACKTOP
   (get_local $4)
  )
  (get_local $0)
 )
 (func $_fflush (; 33 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (block $do-once
   (if
    (get_local $0)
    (block
     (if
      (i32.le_s
       (i32.load offset=76
        (get_local $0)
       )
       (i32.const -1)
      )
      (block
       (set_local $0
        (call $___fflush_unlocked
         (get_local $0)
        )
       )
       (br $do-once)
      )
     )
     (set_local $0
      (call $___fflush_unlocked
       (get_local $0)
      )
     )
    )
    (block
     (set_local $0
      (if (result i32)
       (i32.load
        (i32.const 12)
       )
       (call $_fflush
        (i32.load
         (i32.const 12)
        )
       )
       (i32.const 0)
      )
     )
     (call $___lock
      (i32.const 44)
     )
     (if
      (tee_local $1
       (i32.load
        (i32.const 40)
       )
      )
      (loop $while-in
       (drop
        (i32.load offset=76
         (get_local $1)
        )
       )
       (if
        (i32.gt_u
         (i32.load offset=20
          (get_local $1)
         )
         (i32.load offset=28
          (get_local $1)
         )
        )
        (set_local $0
         (i32.or
          (call $___fflush_unlocked
           (get_local $1)
          )
          (get_local $0)
         )
        )
       )
       (br_if $while-in
        (tee_local $1
         (i32.load offset=56
          (get_local $1)
         )
        )
       )
      )
     )
     (call $___unlock
      (i32.const 44)
     )
    )
   )
  )
  (get_local $0)
 )
 (func $_printf (; 34 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (set_local $1
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abort)
  )
  (i32.store
   (get_local $1)
   (get_local $0)
  )
  (set_local $0
   (call $_vfprintf
    (i32.load
     (i32.const 8)
    )
    (i32.const 672)
    (get_local $1)
   )
  )
  (set_global $STACKTOP
   (get_local $1)
  )
  (get_local $0)
 )
 (func $___stdio_write (; 35 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (set_local $10
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 48)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abort)
  )
  (set_local $8
   (i32.add
    (get_local $10)
    (i32.const 16)
   )
  )
  (i32.store
   (tee_local $4
    (i32.add
     (tee_local $9
      (get_local $10)
     )
     (i32.const 32)
    )
   )
   (tee_local $3
    (i32.load
     (tee_local $6
      (i32.add
       (get_local $0)
       (i32.const 28)
      )
     )
    )
   )
  )
  (i32.store offset=4
   (get_local $4)
   (tee_local $3
    (i32.sub
     (i32.load
      (tee_local $11
       (i32.add
        (get_local $0)
        (i32.const 20)
       )
      )
     )
     (get_local $3)
    )
   )
  )
  (i32.store offset=8
   (get_local $4)
   (get_local $1)
  )
  (i32.store offset=12
   (get_local $4)
   (get_local $2)
  )
  (set_local $13
   (i32.add
    (get_local $0)
    (i32.const 60)
   )
  )
  (set_local $14
   (i32.add
    (get_local $0)
    (i32.const 44)
   )
  )
  (set_local $1
   (get_local $4)
  )
  (set_local $4
   (i32.const 2)
  )
  (set_local $12
   (i32.add
    (get_local $3)
    (get_local $2)
   )
  )
  (block $__rjto$1
   (block $__rjti$1
    (block $__rjti$0
     (loop $while-in
      (if
       (i32.load
        (i32.const 16)
       )
       (block
        (call $_pthread_cleanup_push
         (i32.const 5)
         (get_local $0)
        )
        (i32.store
         (get_local $9)
         (i32.load
          (get_local $13)
         )
        )
        (i32.store offset=4
         (get_local $9)
         (get_local $1)
        )
        (i32.store offset=8
         (get_local $9)
         (get_local $4)
        )
        (set_local $3
         (call $___syscall_ret
          (call $___syscall146
           (i32.const 146)
           (get_local $9)
          )
         )
        )
        (call $_pthread_cleanup_pop
         (i32.const 0)
        )
       )
       (block
        (i32.store
         (get_local $8)
         (i32.load
          (get_local $13)
         )
        )
        (i32.store offset=4
         (get_local $8)
         (get_local $1)
        )
        (i32.store offset=8
         (get_local $8)
         (get_local $4)
        )
        (set_local $3
         (call $___syscall_ret
          (call $___syscall146
           (i32.const 146)
           (get_local $8)
          )
         )
        )
       )
      )
      (br_if $__rjti$0
       (i32.eq
        (get_local $12)
        (get_local $3)
       )
      )
      (br_if $__rjti$1
       (i32.lt_s
        (get_local $3)
        (i32.const 0)
       )
      )
      (set_local $5
       (if (result i32)
        (i32.gt_u
         (get_local $3)
         (tee_local $5
          (i32.load offset=4
           (get_local $1)
          )
         )
        )
        (block (result i32)
         (i32.store
          (get_local $6)
          (tee_local $7
           (i32.load
            (get_local $14)
           )
          )
         )
         (i32.store
          (get_local $11)
          (get_local $7)
         )
         (set_local $7
          (i32.load offset=12
           (get_local $1)
          )
         )
         (set_local $1
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
         )
         (set_local $4
          (i32.add
           (get_local $4)
           (i32.const -1)
          )
         )
         (i32.sub
          (get_local $3)
          (get_local $5)
         )
        )
        (block (result i32)
         (if
          (i32.eq
           (get_local $4)
           (i32.const 2)
          )
          (block
           (i32.store
            (get_local $6)
            (i32.add
             (i32.load
              (get_local $6)
             )
             (get_local $3)
            )
           )
           (set_local $7
            (get_local $5)
           )
           (set_local $4
            (i32.const 2)
           )
          )
          (set_local $7
           (get_local $5)
          )
         )
         (get_local $3)
        )
       )
      )
      (i32.store
       (get_local $1)
       (i32.add
        (i32.load
         (get_local $1)
        )
        (get_local $5)
       )
      )
      (i32.store offset=4
       (get_local $1)
       (i32.sub
        (get_local $7)
        (get_local $5)
       )
      )
      (set_local $12
       (i32.sub
        (get_local $12)
        (get_local $3)
       )
      )
      (br $while-in)
     )
    )
    (i32.store offset=16
     (get_local $0)
     (i32.add
      (tee_local $1
       (i32.load
        (get_local $14)
       )
      )
      (i32.load offset=48
       (get_local $0)
      )
     )
    )
    (i32.store
     (get_local $6)
     (get_local $1)
    )
    (i32.store
     (get_local $11)
     (get_local $1)
    )
    (br $__rjto$1)
   )
   (i32.store offset=16
    (get_local $0)
    (i32.const 0)
   )
   (i32.store
    (get_local $6)
    (i32.const 0)
   )
   (i32.store
    (get_local $11)
    (i32.const 0)
   )
   (i32.store
    (get_local $0)
    (i32.or
     (i32.load
      (get_local $0)
     )
     (i32.const 32)
    )
   )
   (set_local $2
    (if (result i32)
     (i32.eq
      (get_local $4)
      (i32.const 2)
     )
     (i32.const 0)
     (i32.sub
      (get_local $2)
      (i32.load offset=4
       (get_local $1)
      )
     )
    )
   )
  )
  (set_global $STACKTOP
   (get_local $10)
  )
  (get_local $2)
 )
 (func $_vfprintf (; 36 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (set_local $4
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 224)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abort)
  )
  (set_local $5
   (i32.add
    (get_local $4)
    (i32.const 120)
   )
  )
  (set_local $7
   (get_local $4)
  )
  (set_local $6
   (i32.add
    (get_local $4)
    (i32.const 136)
   )
  )
  (set_local $9
   (i32.add
    (tee_local $3
     (tee_local $8
      (i32.add
       (get_local $4)
       (i32.const 80)
      )
     )
    )
    (i32.const 40)
   )
  )
  (loop $do-in
   (i32.store
    (get_local $3)
    (i32.const 0)
   )
   (br_if $do-in
    (i32.lt_s
     (tee_local $3
      (i32.add
       (get_local $3)
       (i32.const 4)
      )
     )
     (get_local $9)
    )
   )
  )
  (i32.store
   (get_local $5)
   (i32.load
    (get_local $2)
   )
  )
  (set_local $0
   (if (result i32)
    (i32.lt_s
     (call $_printf_core
      (i32.const 0)
      (get_local $1)
      (get_local $5)
      (get_local $7)
      (get_local $8)
     )
     (i32.const 0)
    )
    (i32.const -1)
    (block (result i32)
     (drop
      (i32.load offset=76
       (get_local $0)
      )
     )
     (set_local $10
      (i32.load
       (get_local $0)
      )
     )
     (if
      (i32.lt_s
       (i32.load8_s offset=74
        (get_local $0)
       )
       (i32.const 1)
      )
      (i32.store
       (get_local $0)
       (i32.and
        (get_local $10)
        (i32.const -33)
       )
      )
     )
     (if
      (i32.load
       (tee_local $11
        (i32.add
         (get_local $0)
         (i32.const 48)
        )
       )
      )
      (set_local $1
       (call $_printf_core
        (get_local $0)
        (get_local $1)
        (get_local $5)
        (get_local $7)
        (get_local $8)
       )
      )
      (block
       (set_local $13
        (i32.load
         (tee_local $12
          (i32.add
           (get_local $0)
           (i32.const 44)
          )
         )
        )
       )
       (i32.store
        (get_local $12)
        (get_local $6)
       )
       (i32.store
        (tee_local $9
         (i32.add
          (get_local $0)
          (i32.const 28)
         )
        )
        (get_local $6)
       )
       (i32.store
        (tee_local $3
         (i32.add
          (get_local $0)
          (i32.const 20)
         )
        )
        (get_local $6)
       )
       (i32.store
        (get_local $11)
        (i32.const 80)
       )
       (i32.store
        (tee_local $2
         (i32.add
          (get_local $0)
          (i32.const 16)
         )
        )
        (i32.add
         (get_local $6)
         (i32.const 80)
        )
       )
       (set_local $1
        (call $_printf_core
         (get_local $0)
         (get_local $1)
         (get_local $5)
         (get_local $7)
         (get_local $8)
        )
       )
       (if
        (get_local $13)
        (block
         (drop
          (call_indirect (type $FUNCSIG$iiii)
           (get_local $0)
           (i32.const 0)
           (i32.const 0)
           (i32.add
            (i32.and
             (i32.load offset=36
              (get_local $0)
             )
             (i32.const 7)
            )
            (i32.const 2)
           )
          )
         )
         (set_local $1
          (select
           (get_local $1)
           (i32.const -1)
           (i32.load
            (get_local $3)
           )
          )
         )
         (i32.store
          (get_local $12)
          (get_local $13)
         )
         (i32.store
          (get_local $11)
          (i32.const 0)
         )
         (i32.store
          (get_local $2)
          (i32.const 0)
         )
         (i32.store
          (get_local $9)
          (i32.const 0)
         )
         (i32.store
          (get_local $3)
          (i32.const 0)
         )
        )
       )
      )
     )
     (i32.store
      (get_local $0)
      (i32.or
       (tee_local $2
        (i32.load
         (get_local $0)
        )
       )
       (i32.and
        (get_local $10)
        (i32.const 32)
       )
      )
     )
     (select
      (i32.const -1)
      (get_local $1)
      (i32.and
       (get_local $2)
       (i32.const 32)
      )
     )
    )
   )
  )
  (set_global $STACKTOP
   (get_local $4)
  )
  (get_local $0)
 )
 (func $___fwritex (; 37 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (block $label$break$L5
   (block $__rjti$0
    (br_if $__rjti$0
     (tee_local $3
      (i32.load
       (tee_local $4
        (i32.add
         (get_local $2)
         (i32.const 16)
        )
       )
      )
     )
    )
    (set_local $3
     (if (result i32)
      (call $___towrite
       (get_local $2)
      )
      (i32.const 0)
      (block
       (set_local $3
        (i32.load
         (get_local $4)
        )
       )
       (br $__rjti$0)
      )
     )
    )
    (br $label$break$L5)
   )
   (if
    (i32.lt_u
     (i32.sub
      (get_local $3)
      (tee_local $4
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $2)
          (i32.const 20)
         )
        )
       )
      )
     )
     (get_local $1)
    )
    (block
     (set_local $3
      (call_indirect (type $FUNCSIG$iiii)
       (get_local $2)
       (get_local $0)
       (get_local $1)
       (i32.add
        (i32.and
         (i32.load offset=36
          (get_local $2)
         )
         (i32.const 7)
        )
        (i32.const 2)
       )
      )
     )
     (br $label$break$L5)
    )
   )
   (set_local $2
    (block $label$break$L10 (result i32)
     (if (result i32)
      (i32.gt_s
       (i32.load8_s offset=75
        (get_local $2)
       )
       (i32.const -1)
      )
      (block (result i32)
       (set_local $3
        (get_local $1)
       )
       (loop $while-in
        (drop
         (br_if $label$break$L10
          (i32.const 0)
          (i32.eqz
           (get_local $3)
          )
         )
        )
        (if
         (i32.ne
          (i32.load8_s
           (i32.add
            (get_local $0)
            (tee_local $6
             (i32.add
              (get_local $3)
              (i32.const -1)
             )
            )
           )
          )
          (i32.const 10)
         )
         (block
          (set_local $3
           (get_local $6)
          )
          (br $while-in)
         )
        )
       )
       (br_if $label$break$L5
        (i32.lt_u
         (call_indirect (type $FUNCSIG$iiii)
          (get_local $2)
          (get_local $0)
          (get_local $3)
          (i32.add
           (i32.and
            (i32.load offset=36
             (get_local $2)
            )
            (i32.const 7)
           )
           (i32.const 2)
          )
         )
         (get_local $3)
        )
       )
       (set_local $4
        (i32.load
         (get_local $5)
        )
       )
       (set_local $1
        (i32.sub
         (get_local $1)
         (get_local $3)
        )
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (get_local $3)
        )
       )
       (get_local $3)
      )
      (i32.const 0)
     )
    )
   )
   (drop
    (call $_memcpy
     (get_local $4)
     (get_local $0)
     (get_local $1)
    )
   )
   (i32.store
    (get_local $5)
    (i32.add
     (i32.load
      (get_local $5)
     )
     (get_local $1)
    )
   )
   (set_local $3
    (i32.add
     (get_local $2)
     (get_local $1)
    )
   )
  )
  (get_local $3)
 )
 (func $___towrite (; 38 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (set_local $1
   (i32.load8_s
    (tee_local $2
     (i32.add
      (get_local $0)
      (i32.const 74)
     )
    )
   )
  )
  (i32.store8
   (get_local $2)
   (i32.or
    (i32.add
     (get_local $1)
     (i32.const 255)
    )
    (get_local $1)
   )
  )
  (tee_local $0
   (if (result i32)
    (i32.and
     (tee_local $1
      (i32.load
       (get_local $0)
      )
     )
     (i32.const 8)
    )
    (block (result i32)
     (i32.store
      (get_local $0)
      (i32.or
       (get_local $1)
       (i32.const 32)
      )
     )
     (i32.const -1)
    )
    (block (result i32)
     (i32.store offset=8
      (get_local $0)
      (i32.const 0)
     )
     (i32.store offset=4
      (get_local $0)
      (i32.const 0)
     )
     (i32.store offset=28
      (get_local $0)
      (tee_local $1
       (i32.load offset=44
        (get_local $0)
       )
      )
     )
     (i32.store offset=20
      (get_local $0)
      (get_local $1)
     )
     (i32.store offset=16
      (get_local $0)
      (i32.add
       (get_local $1)
       (i32.load offset=48
        (get_local $0)
       )
      )
     )
     (i32.const 0)
    )
   )
  )
 )
 (func $_wcrtomb (; 39 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (block $do-once (result i32)
   (if (result i32)
    (get_local $0)
    (block (result i32)
     (if
      (i32.lt_u
       (get_local $1)
       (i32.const 128)
      )
      (block
       (i32.store8
        (get_local $0)
        (get_local $1)
       )
       (br $do-once
        (i32.const 1)
       )
      )
     )
     (if
      (i32.lt_u
       (get_local $1)
       (i32.const 2048)
      )
      (block
       (i32.store8
        (get_local $0)
        (i32.or
         (i32.shr_u
          (get_local $1)
          (i32.const 6)
         )
         (i32.const 192)
        )
       )
       (i32.store8 offset=1
        (get_local $0)
        (i32.or
         (i32.and
          (get_local $1)
          (i32.const 63)
         )
         (i32.const 128)
        )
       )
       (br $do-once
        (i32.const 2)
       )
      )
     )
     (if
      (i32.or
       (i32.lt_u
        (get_local $1)
        (i32.const 55296)
       )
       (i32.eq
        (i32.and
         (get_local $1)
         (i32.const -8192)
        )
        (i32.const 57344)
       )
      )
      (block
       (i32.store8
        (get_local $0)
        (i32.or
         (i32.shr_u
          (get_local $1)
          (i32.const 12)
         )
         (i32.const 224)
        )
       )
       (i32.store8 offset=1
        (get_local $0)
        (i32.or
         (i32.and
          (i32.shr_u
           (get_local $1)
           (i32.const 6)
          )
          (i32.const 63)
         )
         (i32.const 128)
        )
       )
       (i32.store8 offset=2
        (get_local $0)
        (i32.or
         (i32.and
          (get_local $1)
          (i32.const 63)
         )
         (i32.const 128)
        )
       )
       (br $do-once
        (i32.const 3)
       )
      )
     )
     (if (result i32)
      (i32.lt_u
       (i32.add
        (get_local $1)
        (i32.const -65536)
       )
       (i32.const 1048576)
      )
      (block (result i32)
       (i32.store8
        (get_local $0)
        (i32.or
         (i32.shr_u
          (get_local $1)
          (i32.const 18)
         )
         (i32.const 240)
        )
       )
       (i32.store8 offset=1
        (get_local $0)
        (i32.or
         (i32.and
          (i32.shr_u
           (get_local $1)
           (i32.const 12)
          )
          (i32.const 63)
         )
         (i32.const 128)
        )
       )
       (i32.store8 offset=2
        (get_local $0)
        (i32.or
         (i32.and
          (i32.shr_u
           (get_local $1)
           (i32.const 6)
          )
          (i32.const 63)
         )
         (i32.const 128)
        )
       )
       (i32.store8 offset=3
        (get_local $0)
        (i32.or
         (i32.and
          (get_local $1)
          (i32.const 63)
         )
         (i32.const 128)
        )
       )
       (i32.const 4)
      )
      (block (result i32)
       (i32.store
        (call $___errno_location)
        (i32.const 84)
       )
       (i32.const -1)
      )
     )
    )
    (i32.const 1)
   )
  )
 )
 (func $_wctomb (; 40 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (if (result i32)
   (get_local $0)
   (call $_wcrtomb
    (get_local $0)
    (get_local $1)
   )
   (i32.const 0)
  )
 )
 (func $_memchr (; 41 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (local $2 i32)
  (local $3 i32)
  (block $label$break$L8
   (block $__rjti$2
    (if
     (i32.and
      (tee_local $3
       (i32.ne
        (get_local $1)
        (i32.const 0)
       )
      )
      (i32.ne
       (i32.and
        (get_local $0)
        (i32.const 3)
       )
       (i32.const 0)
      )
     )
     (block
      (set_local $2
       (get_local $1)
      )
      (set_local $1
       (get_local $0)
      )
      (loop $while-in
       (br_if $__rjti$2
        (i32.eqz
         (i32.load8_u
          (get_local $1)
         )
        )
       )
       (br_if $while-in
        (i32.and
         (tee_local $0
          (i32.ne
           (tee_local $2
            (i32.add
             (get_local $2)
             (i32.const -1)
            )
           )
           (i32.const 0)
          )
         )
         (i32.ne
          (i32.and
           (tee_local $1
            (i32.add
             (get_local $1)
             (i32.const 1)
            )
           )
           (i32.const 3)
          )
          (i32.const 0)
         )
        )
       )
      )
     )
     (block
      (set_local $2
       (get_local $1)
      )
      (set_local $1
       (get_local $0)
      )
      (set_local $0
       (get_local $3)
      )
     )
    )
    (br_if $__rjti$2
     (get_local $0)
    )
    (set_local $0
     (i32.const 0)
    )
    (br $label$break$L8)
   )
   (set_local $0
    (get_local $2)
   )
   (if
    (i32.load8_u
     (get_local $1)
    )
    (block
     (block $__rjto$0
      (block $__rjti$0
       (br_if $__rjti$0
        (i32.le_u
         (get_local $0)
         (i32.const 3)
        )
       )
       (loop $while-in3
        (if
         (i32.eqz
          (i32.and
           (i32.xor
            (i32.and
             (tee_local $3
              (i32.load
               (get_local $1)
              )
             )
             (i32.const -2139062144)
            )
            (i32.const -2139062144)
           )
           (i32.add
            (get_local $3)
            (i32.const -16843009)
           )
          )
         )
         (block
          (set_local $1
           (i32.add
            (get_local $1)
            (i32.const 4)
           )
          )
          (br_if $while-in3
           (i32.gt_u
            (tee_local $0
             (i32.add
              (get_local $0)
              (i32.const -4)
             )
            )
            (i32.const 3)
           )
          )
          (br $__rjti$0)
         )
        )
       )
       (br $__rjto$0)
      )
      (if
       (i32.eqz
        (get_local $0)
       )
       (block
        (set_local $0
         (i32.const 0)
        )
        (br $label$break$L8)
       )
      )
     )
     (loop $while-in5
      (br_if $label$break$L8
       (i32.eqz
        (i32.load8_u
         (get_local $1)
        )
       )
      )
      (set_local $1
       (i32.add
        (get_local $1)
        (i32.const 1)
       )
      )
      (br_if $while-in5
       (tee_local $0
        (i32.add
         (get_local $0)
         (i32.const -1)
        )
       )
      )
     )
     (set_local $0
      (i32.const 0)
     )
    )
   )
  )
  (select
   (get_local $1)
   (i32.const 0)
   (get_local $0)
  )
 )
 (func $___syscall_ret (; 42 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (if (result i32)
   (i32.gt_u
    (get_local $0)
    (i32.const -4096)
   )
   (block (result i32)
    (i32.store
     (call $___errno_location)
     (i32.sub
      (i32.const 0)
      (get_local $0)
     )
    )
    (i32.const -1)
   )
   (get_local $0)
  )
 )
 (func $___fflush_unlocked (; 43 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (tee_local $0
   (block $__rjto$0 (result i32)
    (block $__rjti$0
     (br_if $__rjti$0
      (i32.le_u
       (i32.load
        (tee_local $1
         (i32.add
          (get_local $0)
          (i32.const 20)
         )
        )
       )
       (i32.load
        (tee_local $2
         (i32.add
          (get_local $0)
          (i32.const 28)
         )
        )
       )
      )
     )
     (drop
      (call_indirect (type $FUNCSIG$iiii)
       (get_local $0)
       (i32.const 0)
       (i32.const 0)
       (i32.add
        (i32.and
         (i32.load offset=36
          (get_local $0)
         )
         (i32.const 7)
        )
        (i32.const 2)
       )
      )
     )
     (br_if $__rjti$0
      (i32.load
       (get_local $1)
      )
     )
     (br $__rjto$0
      (i32.const -1)
     )
    )
    (if
     (i32.lt_u
      (tee_local $4
       (i32.load
        (tee_local $3
         (i32.add
          (get_local $0)
          (i32.const 4)
         )
        )
       )
      )
      (tee_local $6
       (i32.load
        (tee_local $5
         (i32.add
          (get_local $0)
          (i32.const 8)
         )
        )
       )
      )
     )
     (drop
      (call_indirect (type $FUNCSIG$iiii)
       (get_local $0)
       (i32.sub
        (get_local $4)
        (get_local $6)
       )
       (i32.const 1)
       (i32.add
        (i32.and
         (i32.load offset=40
          (get_local $0)
         )
         (i32.const 7)
        )
        (i32.const 2)
       )
      )
     )
    )
    (i32.store offset=16
     (get_local $0)
     (i32.const 0)
    )
    (i32.store
     (get_local $2)
     (i32.const 0)
    )
    (i32.store
     (get_local $1)
     (i32.const 0)
    )
    (i32.store
     (get_local $5)
     (i32.const 0)
    )
    (i32.store
     (get_local $3)
     (i32.const 0)
    )
    (i32.const 0)
   )
  )
 )
 (func $_cleanup (; 44 ;) (; has Stack IR ;) (param $0 i32)
  (drop
   (i32.load offset=68
    (get_local $0)
   )
  )
 )
 (func $i32s-div (; 45 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (if (result i32)
   (get_local $1)
   (if (result i32)
    (i32.and
     (i32.eq
      (get_local $0)
      (i32.const -2147483648)
     )
     (i32.eq
      (get_local $1)
      (i32.const -1)
     )
    )
    (i32.const 0)
    (i32.div_s
     (get_local $0)
     (get_local $1)
    )
   )
   (i32.const 0)
  )
 )
 (func $i32u-rem (; 46 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (if (result i32)
   (get_local $1)
   (i32.rem_u
    (get_local $0)
    (get_local $1)
   )
   (i32.const 0)
  )
 )
 (func $i32u-div (; 47 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (if (result i32)
   (get_local $1)
   (i32.div_u
    (get_local $0)
    (get_local $1)
   )
   (i32.const 0)
  )
 )
 (func $_printf_core (; 48 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32) (result i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 f64)
  (local $17 i32)
  (local $18 i32)
  (local $19 i32)
  (local $20 i32)
  (local $21 i32)
  (local $22 i32)
  (local $23 f64)
  (local $24 i32)
  (local $25 i32)
  (local $26 i32)
  (local $27 i32)
  (local $28 i32)
  (local $29 i32)
  (local $30 i32)
  (local $31 i32)
  (local $32 i32)
  (local $33 i32)
  (local $34 i32)
  (local $35 i32)
  (local $36 i32)
  (local $37 i32)
  (local $38 i32)
  (local $39 i32)
  (local $40 i32)
  (local $41 i32)
  (local $42 i32)
  (local $43 i32)
  (local $44 i32)
  (local $45 i32)
  (local $46 i32)
  (local $47 i32)
  (local $48 i32)
  (local $49 i32)
  (local $50 i32)
  (local $51 i32)
  (set_local $35
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 624)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abort)
  )
  (set_local $20
   (i32.add
    (get_local $35)
    (i32.const 16)
   )
  )
  (set_local $36
   (i32.add
    (tee_local $14
     (get_local $35)
    )
    (i32.const 528)
   )
  )
  (set_local $28
   (i32.ne
    (get_local $0)
    (i32.const 0)
   )
  )
  (set_local $39
   (tee_local $25
    (i32.add
     (tee_local $5
      (i32.add
       (get_local $14)
       (i32.const 536)
      )
     )
     (i32.const 40)
    )
   )
  )
  (set_local $40
   (i32.add
    (get_local $5)
    (i32.const 39)
   )
  )
  (set_local $44
   (i32.add
    (tee_local $41
     (i32.add
      (get_local $14)
      (i32.const 8)
     )
    )
    (i32.const 4)
   )
  )
  (set_local $33
   (i32.add
    (tee_local $5
     (i32.add
      (get_local $14)
      (i32.const 576)
     )
    )
    (i32.const 12)
   )
  )
  (set_local $42
   (i32.add
    (get_local $5)
    (i32.const 11)
   )
  )
  (set_local $45
   (i32.sub
    (tee_local $27
     (get_local $33)
    )
    (tee_local $37
     (tee_local $22
      (i32.add
       (get_local $14)
       (i32.const 588)
      )
     )
    )
   )
  )
  (set_local $46
   (i32.sub
    (i32.const -2)
    (get_local $37)
   )
  )
  (set_local $47
   (i32.add
    (get_local $27)
    (i32.const 2)
   )
  )
  (set_local $49
   (i32.add
    (tee_local $48
     (i32.add
      (get_local $14)
      (i32.const 24)
     )
    )
    (i32.const 288)
   )
  )
  (set_local $43
   (tee_local $29
    (i32.add
     (get_local $22)
     (i32.const 9)
    )
   )
  )
  (set_local $34
   (i32.add
    (get_local $22)
    (i32.const 8)
   )
  )
  (set_local $5
   (get_local $1)
  )
  (set_local $1
   (i32.const 0)
  )
  (block $label$break$L343
   (block $__rjti$9
    (loop $label$continue$L1
     (block $label$break$L1
      (if
       (i32.gt_s
        (get_local $17)
        (i32.const -1)
       )
       (set_local $17
        (if (result i32)
         (i32.gt_s
          (get_local $10)
          (i32.sub
           (i32.const 2147483647)
           (get_local $17)
          )
         )
         (block (result i32)
          (i32.store
           (call $___errno_location)
           (i32.const 75)
          )
          (i32.const -1)
         )
         (i32.add
          (get_local $10)
          (get_local $17)
         )
        )
       )
      )
      (br_if $__rjti$9
       (i32.eqz
        (tee_local $7
         (i32.load8_s
          (get_local $5)
         )
        )
       )
      )
      (set_local $10
       (get_local $5)
      )
      (block $label$break$L12
       (block $__rjti$1
        (loop $label$continue$L9
         (block $label$break$L9
          (block $switch
           (if
            (tee_local $7
             (i32.shr_s
              (i32.shl
               (get_local $7)
               (i32.const 24)
              )
              (i32.const 24)
             )
            )
            (block
             (br_if $switch
              (i32.ne
               (get_local $7)
               (i32.const 37)
              )
             )
             (set_local $6
              (get_local $10)
             )
             (br $__rjti$1)
            )
           )
           (set_local $6
            (get_local $10)
           )
           (br $label$break$L9)
          )
          (set_local $7
           (i32.load8_s
            (tee_local $10
             (i32.add
              (get_local $10)
              (i32.const 1)
             )
            )
           )
          )
          (br $label$continue$L9)
         )
        )
        (br $label$break$L12)
       )
       (loop $while-in
        (br_if $label$break$L12
         (i32.ne
          (i32.load8_s offset=1
           (get_local $6)
          )
          (i32.const 37)
         )
        )
        (set_local $10
         (i32.add
          (get_local $10)
          (i32.const 1)
         )
        )
        (br_if $while-in
         (i32.eq
          (i32.load8_s
           (tee_local $6
            (i32.add
             (get_local $6)
             (i32.const 2)
            )
           )
          )
          (i32.const 37)
         )
        )
       )
      )
      (set_local $7
       (i32.sub
        (get_local $10)
        (get_local $5)
       )
      )
      (if
       (get_local $28)
       (if
        (i32.eqz
         (i32.and
          (i32.load
           (get_local $0)
          )
          (i32.const 32)
         )
        )
        (drop
         (call $___fwritex
          (get_local $5)
          (get_local $7)
          (get_local $0)
         )
        )
       )
      )
      (if
       (i32.ne
        (get_local $10)
        (get_local $5)
       )
       (block
        (set_local $5
         (get_local $6)
        )
        (set_local $10
         (get_local $7)
        )
        (br $label$continue$L1)
       )
      )
      (set_local $8
       (if (result i32)
        (i32.lt_u
         (tee_local $8
          (i32.add
           (tee_local $11
            (i32.load8_s
             (tee_local $10
              (i32.add
               (get_local $6)
               (i32.const 1)
              )
             )
            )
           )
           (i32.const -48)
          )
         )
         (i32.const 10)
        )
        (block (result i32)
         (set_local $6
          (i32.load8_s
           (tee_local $10
            (select
             (i32.add
              (get_local $6)
              (i32.const 3)
             )
             (get_local $10)
             (tee_local $11
              (i32.eq
               (i32.load8_s offset=2
                (get_local $6)
               )
               (i32.const 36)
              )
             )
            )
           )
          )
         )
         (set_local $18
          (select
           (get_local $8)
           (i32.const -1)
           (get_local $11)
          )
         )
         (select
          (i32.const 1)
          (get_local $1)
          (get_local $11)
         )
        )
        (block (result i32)
         (set_local $6
          (get_local $11)
         )
         (set_local $18
          (i32.const -1)
         )
         (get_local $1)
        )
       )
      )
      (set_local $1
       (block $label$break$L25 (result i32)
        (if (result i32)
         (i32.eq
          (i32.and
           (tee_local $11
            (i32.shr_s
             (i32.shl
              (get_local $6)
              (i32.const 24)
             )
             (i32.const 24)
            )
           )
           (i32.const -32)
          )
          (i32.const 32)
         )
         (block (result i32)
          (set_local $1
           (get_local $6)
          )
          (set_local $6
           (get_local $11)
          )
          (set_local $11
           (i32.const 0)
          )
          (loop $while-in4
           (if
            (i32.eqz
             (i32.and
              (i32.shl
               (i32.const 1)
               (i32.add
                (get_local $6)
                (i32.const -32)
               )
              )
              (i32.const 75913)
             )
            )
            (block
             (set_local $6
              (get_local $1)
             )
             (br $label$break$L25
              (get_local $11)
             )
            )
           )
           (set_local $11
            (i32.or
             (i32.shl
              (i32.const 1)
              (i32.add
               (i32.shr_s
                (i32.shl
                 (get_local $1)
                 (i32.const 24)
                )
                (i32.const 24)
               )
               (i32.const -32)
              )
             )
             (get_local $11)
            )
           )
           (br_if $while-in4
            (i32.eq
             (i32.and
              (tee_local $6
               (tee_local $1
                (i32.load8_s
                 (tee_local $10
                  (i32.add
                   (get_local $10)
                   (i32.const 1)
                  )
                 )
                )
               )
              )
              (i32.const -32)
             )
             (i32.const 32)
            )
           )
          )
          (set_local $6
           (get_local $1)
          )
          (get_local $11)
         )
         (i32.const 0)
        )
       )
      )
      (set_local $1
       (block $do-once5 (result i32)
        (if (result i32)
         (i32.eq
          (i32.and
           (get_local $6)
           (i32.const 255)
          )
          (i32.const 42)
         )
         (block (result i32)
          (set_local $10
           (block $__rjto$0 (result i32)
            (block $__rjti$0
             (br_if $__rjti$0
              (i32.ge_u
               (tee_local $11
                (i32.add
                 (i32.load8_s
                  (tee_local $6
                   (i32.add
                    (get_local $10)
                    (i32.const 1)
                   )
                  )
                 )
                 (i32.const -48)
                )
               )
               (i32.const 10)
              )
             )
             (br_if $__rjti$0
              (i32.ne
               (i32.load8_s offset=2
                (get_local $10)
               )
               (i32.const 36)
              )
             )
             (i32.store
              (i32.add
               (get_local $4)
               (i32.shl
                (get_local $11)
                (i32.const 2)
               )
              )
              (i32.const 10)
             )
             (drop
              (i32.load offset=4
               (tee_local $6
                (i32.add
                 (get_local $3)
                 (i32.shl
                  (i32.add
                   (i32.load8_s
                    (get_local $6)
                   )
                   (i32.const -48)
                  )
                  (i32.const 3)
                 )
                )
               )
              )
             )
             (set_local $8
              (i32.const 1)
             )
             (set_local $15
              (i32.load
               (get_local $6)
              )
             )
             (br $__rjto$0
              (i32.add
               (get_local $10)
               (i32.const 3)
              )
             )
            )
            (if
             (get_local $8)
             (block
              (set_local $17
               (i32.const -1)
              )
              (br $label$break$L1)
             )
            )
            (if
             (i32.eqz
              (get_local $28)
             )
             (block
              (set_local $11
               (get_local $1)
              )
              (set_local $10
               (get_local $6)
              )
              (set_local $15
               (i32.const 0)
              )
              (br $do-once5
               (i32.const 0)
              )
             )
            )
            (set_local $15
             (i32.load
              (tee_local $10
               (i32.and
                (i32.add
                 (i32.load
                  (get_local $2)
                 )
                 (i32.const 3)
                )
                (i32.const -4)
               )
              )
             )
            )
            (i32.store
             (get_local $2)
             (i32.add
              (get_local $10)
              (i32.const 4)
             )
            )
            (set_local $8
             (i32.const 0)
            )
            (get_local $6)
           )
          )
          (set_local $11
           (if (result i32)
            (i32.lt_s
             (get_local $15)
             (i32.const 0)
            )
            (block (result i32)
             (set_local $15
              (i32.sub
               (i32.const 0)
               (get_local $15)
              )
             )
             (i32.or
              (get_local $1)
              (i32.const 8192)
             )
            )
            (get_local $1)
           )
          )
          (get_local $8)
         )
         (if (result i32)
          (i32.lt_u
           (tee_local $6
            (i32.add
             (i32.shr_s
              (i32.shl
               (get_local $6)
               (i32.const 24)
              )
              (i32.const 24)
             )
             (i32.const -48)
            )
           )
           (i32.const 10)
          )
          (block (result i32)
           (set_local $11
            (i32.const 0)
           )
           (loop $while-in8
            (set_local $6
             (i32.add
              (i32.mul
               (get_local $11)
               (i32.const 10)
              )
              (get_local $6)
             )
            )
            (if
             (i32.lt_u
              (tee_local $9
               (i32.add
                (i32.load8_s
                 (tee_local $10
                  (i32.add
                   (get_local $10)
                   (i32.const 1)
                  )
                 )
                )
                (i32.const -48)
               )
              )
              (i32.const 10)
             )
             (block
              (set_local $11
               (get_local $6)
              )
              (set_local $6
               (get_local $9)
              )
              (br $while-in8)
             )
            )
           )
           (if (result i32)
            (i32.lt_s
             (get_local $6)
             (i32.const 0)
            )
            (block
             (set_local $17
              (i32.const -1)
             )
             (br $label$break$L1)
            )
            (block (result i32)
             (set_local $11
              (get_local $1)
             )
             (set_local $15
              (get_local $6)
             )
             (get_local $8)
            )
           )
          )
          (block (result i32)
           (set_local $11
            (get_local $1)
           )
           (set_local $15
            (i32.const 0)
           )
           (get_local $8)
          )
         )
        )
       )
      )
      (set_local $6
       (block $label$break$L46 (result i32)
        (if (result i32)
         (i32.eq
          (i32.load8_s
           (get_local $10)
          )
          (i32.const 46)
         )
         (block (result i32)
          (if
           (i32.ne
            (tee_local $8
             (i32.load8_s
              (tee_local $6
               (i32.add
                (get_local $10)
                (i32.const 1)
               )
              )
             )
            )
            (i32.const 42)
           )
           (block
            (set_local $6
             (if (result i32)
              (i32.lt_u
               (tee_local $9
                (i32.add
                 (get_local $8)
                 (i32.const -48)
                )
               )
               (i32.const 10)
              )
              (block (result i32)
               (set_local $10
                (get_local $6)
               )
               (set_local $8
                (i32.const 0)
               )
               (get_local $9)
              )
              (block
               (set_local $10
                (get_local $6)
               )
               (br $label$break$L46
                (i32.const 0)
               )
              )
             )
            )
            (loop $while-in11
             (drop
              (br_if $label$break$L46
               (tee_local $6
                (i32.add
                 (i32.mul
                  (get_local $8)
                  (i32.const 10)
                 )
                 (get_local $6)
                )
               )
               (i32.ge_u
                (tee_local $9
                 (i32.add
                  (i32.load8_s
                   (tee_local $10
                    (i32.add
                     (get_local $10)
                     (i32.const 1)
                    )
                   )
                  )
                  (i32.const -48)
                 )
                )
                (i32.const 10)
               )
              )
             )
             (set_local $8
              (get_local $6)
             )
             (set_local $6
              (get_local $9)
             )
             (br $while-in11)
            )
           )
          )
          (if
           (i32.lt_u
            (tee_local $8
             (i32.add
              (i32.load8_s
               (tee_local $6
                (i32.add
                 (get_local $10)
                 (i32.const 2)
                )
               )
              )
              (i32.const -48)
             )
            )
            (i32.const 10)
           )
           (if
            (i32.eq
             (i32.load8_s offset=3
              (get_local $10)
             )
             (i32.const 36)
            )
            (block
             (i32.store
              (i32.add
               (get_local $4)
               (i32.shl
                (get_local $8)
                (i32.const 2)
               )
              )
              (i32.const 10)
             )
             (drop
              (i32.load offset=4
               (tee_local $6
                (i32.add
                 (get_local $3)
                 (i32.shl
                  (i32.add
                   (i32.load8_s
                    (get_local $6)
                   )
                   (i32.const -48)
                  )
                  (i32.const 3)
                 )
                )
               )
              )
             )
             (set_local $10
              (i32.add
               (get_local $10)
               (i32.const 4)
              )
             )
             (br $label$break$L46
              (i32.load
               (get_local $6)
              )
             )
            )
           )
          )
          (if
           (get_local $1)
           (block
            (set_local $17
             (i32.const -1)
            )
            (br $label$break$L1)
           )
          )
          (if (result i32)
           (get_local $28)
           (block (result i32)
            (set_local $8
             (i32.load
              (tee_local $10
               (i32.and
                (i32.add
                 (i32.load
                  (get_local $2)
                 )
                 (i32.const 3)
                )
                (i32.const -4)
               )
              )
             )
            )
            (i32.store
             (get_local $2)
             (i32.add
              (get_local $10)
              (i32.const 4)
             )
            )
            (set_local $10
             (get_local $6)
            )
            (get_local $8)
           )
           (block (result i32)
            (set_local $10
             (get_local $6)
            )
            (i32.const 0)
           )
          )
         )
         (i32.const -1)
        )
       )
      )
      (set_local $8
       (get_local $10)
      )
      (set_local $9
       (i32.const 0)
      )
      (loop $while-in13
       (if
        (i32.gt_u
         (tee_local $12
          (i32.add
           (i32.load8_s
            (get_local $8)
           )
           (i32.const -65)
          )
         )
         (i32.const 57)
        )
        (block
         (set_local $17
          (i32.const -1)
         )
         (br $label$break$L1)
        )
       )
       (set_local $10
        (i32.add
         (get_local $8)
         (i32.const 1)
        )
       )
       (set_local $19
        (if (result i32)
         (i32.lt_u
          (i32.add
           (tee_local $12
            (i32.and
             (tee_local $13
              (i32.load8_s
               (i32.add
                (i32.add
                 (i32.mul
                  (get_local $9)
                  (i32.const 58)
                 )
                 (i32.const 3611)
                )
                (get_local $12)
               )
              )
             )
             (i32.const 255)
            )
           )
           (i32.const -1)
          )
          (i32.const 8)
         )
         (block
          (set_local $8
           (get_local $10)
          )
          (set_local $9
           (get_local $12)
          )
          (br $while-in13)
         )
         (get_local $8)
        )
       )
      )
      (if
       (i32.eqz
        (i32.and
         (get_local $13)
         (i32.const 255)
        )
       )
       (block
        (set_local $17
         (i32.const -1)
        )
        (br $label$break$L1)
       )
      )
      (set_local $8
       (i32.gt_s
        (get_local $18)
        (i32.const -1)
       )
      )
      (block $__rjto$2
       (block $__rjti$2
        (if
         (i32.eq
          (i32.and
           (get_local $13)
           (i32.const 255)
          )
          (i32.const 19)
         )
         (if
          (get_local $8)
          (block
           (set_local $17
            (i32.const -1)
           )
           (br $label$break$L1)
          )
          (br $__rjti$2)
         )
         (block
          (if
           (get_local $8)
           (block
            (i32.store
             (i32.add
              (get_local $4)
              (i32.shl
               (get_local $18)
               (i32.const 2)
              )
             )
             (get_local $12)
            )
            (set_local $12
             (i32.load offset=4
              (tee_local $8
               (i32.add
                (get_local $3)
                (i32.shl
                 (get_local $18)
                 (i32.const 3)
                )
               )
              )
             )
            )
            (i32.store
             (get_local $14)
             (i32.load
              (get_local $8)
             )
            )
            (i32.store offset=4
             (get_local $14)
             (get_local $12)
            )
            (br $__rjti$2)
           )
          )
          (if
           (i32.eqz
            (get_local $28)
           )
           (block
            (set_local $17
             (i32.const 0)
            )
            (br $label$break$L1)
           )
          )
          (call $_pop_arg_336
           (get_local $14)
           (get_local $12)
           (get_local $2)
          )
         )
        )
        (br $__rjto$2)
       )
       (if
        (i32.eqz
         (get_local $28)
        )
        (block
         (set_local $5
          (get_local $10)
         )
         (set_local $10
          (get_local $7)
         )
         (br $label$continue$L1)
        )
       )
      )
      (set_local $11
       (select
        (tee_local $8
         (i32.and
          (get_local $11)
          (i32.const -65537)
         )
        )
        (get_local $11)
        (i32.and
         (get_local $11)
         (i32.const 8192)
        )
       )
      )
      (set_local $7
       (block $__rjto$8 (result i32)
        (block $__rjti$8
         (set_local $7
          (block $__rjti$7 (result i32)
           (block $__rjti$6
            (block $__rjti$5
             (block $__rjti$4
              (block $__rjti$3
               (block $switch-default120
                (block $switch-case42
                 (block $switch-case41
                  (block $switch-case40
                   (block $switch-case39
                    (block $switch-case38
                     (block $switch-case37
                      (block $switch-case36
                       (block $switch-case34
                        (block $switch-case33
                         (block $switch-case29
                          (block $switch-case28
                           (block $switch-case27
                            (br_table $switch-case42 $switch-default120 $switch-case40 $switch-default120 $switch-case42 $switch-case42 $switch-case42 $switch-default120 $switch-default120 $switch-default120 $switch-default120 $switch-default120 $switch-default120 $switch-default120 $switch-default120 $switch-default120 $switch-default120 $switch-default120 $switch-case41 $switch-default120 $switch-default120 $switch-default120 $switch-default120 $switch-case29 $switch-default120 $switch-default120 $switch-default120 $switch-default120 $switch-default120 $switch-default120 $switch-default120 $switch-default120 $switch-case42 $switch-default120 $switch-case37 $switch-case34 $switch-case42 $switch-case42 $switch-case42 $switch-default120 $switch-case34 $switch-default120 $switch-default120 $switch-default120 $switch-case38 $switch-case27 $switch-case33 $switch-case28 $switch-default120 $switch-default120 $switch-case39 $switch-default120 $switch-case36 $switch-default120 $switch-default120 $switch-case29 $switch-default120
                             (i32.sub
                              (tee_local $19
                               (select
                                (i32.and
                                 (tee_local $12
                                  (i32.load8_s
                                   (get_local $19)
                                  )
                                 )
                                 (i32.const -33)
                                )
                                (get_local $12)
                                (i32.and
                                 (i32.ne
                                  (get_local $9)
                                  (i32.const 0)
                                 )
                                 (i32.eq
                                  (i32.and
                                   (get_local $12)
                                   (i32.const 15)
                                  )
                                  (i32.const 3)
                                 )
                                )
                               )
                              )
                              (i32.const 65)
                             )
                            )
                           )
                           (block $switch-default26
                            (block $switch-case25
                             (block $switch-case24
                              (block $switch-case23
                               (block $switch-case22
                                (block $switch-case21
                                 (block $switch-case20
                                  (block $switch-case19
                                   (br_table $switch-case19 $switch-case20 $switch-case21 $switch-case22 $switch-case23 $switch-default26 $switch-case24 $switch-case25 $switch-default26
                                    (get_local $9)
                                   )
                                  )
                                  (i32.store
                                   (i32.load
                                    (get_local $14)
                                   )
                                   (get_local $17)
                                  )
                                  (set_local $5
                                   (get_local $10)
                                  )
                                  (set_local $10
                                   (get_local $7)
                                  )
                                  (br $label$continue$L1)
                                 )
                                 (i32.store
                                  (i32.load
                                   (get_local $14)
                                  )
                                  (get_local $17)
                                 )
                                 (set_local $5
                                  (get_local $10)
                                 )
                                 (set_local $10
                                  (get_local $7)
                                 )
                                 (br $label$continue$L1)
                                )
                                (i32.store
                                 (tee_local $5
                                  (i32.load
                                   (get_local $14)
                                  )
                                 )
                                 (get_local $17)
                                )
                                (i32.store offset=4
                                 (get_local $5)
                                 (i32.shr_s
                                  (i32.shl
                                   (i32.lt_s
                                    (get_local $17)
                                    (i32.const 0)
                                   )
                                   (i32.const 31)
                                  )
                                  (i32.const 31)
                                 )
                                )
                                (set_local $5
                                 (get_local $10)
                                )
                                (set_local $10
                                 (get_local $7)
                                )
                                (br $label$continue$L1)
                               )
                               (i32.store16
                                (i32.load
                                 (get_local $14)
                                )
                                (get_local $17)
                               )
                               (set_local $5
                                (get_local $10)
                               )
                               (set_local $10
                                (get_local $7)
                               )
                               (br $label$continue$L1)
                              )
                              (i32.store8
                               (i32.load
                                (get_local $14)
                               )
                               (get_local $17)
                              )
                              (set_local $5
                               (get_local $10)
                              )
                              (set_local $10
                               (get_local $7)
                              )
                              (br $label$continue$L1)
                             )
                             (i32.store
                              (i32.load
                               (get_local $14)
                              )
                              (get_local $17)
                             )
                             (set_local $5
                              (get_local $10)
                             )
                             (set_local $10
                              (get_local $7)
                             )
                             (br $label$continue$L1)
                            )
                            (i32.store
                             (tee_local $5
                              (i32.load
                               (get_local $14)
                              )
                             )
                             (get_local $17)
                            )
                            (i32.store offset=4
                             (get_local $5)
                             (i32.shr_s
                              (i32.shl
                               (i32.lt_s
                                (get_local $17)
                                (i32.const 0)
                               )
                               (i32.const 31)
                              )
                              (i32.const 31)
                             )
                            )
                            (set_local $5
                             (get_local $10)
                            )
                            (set_local $10
                             (get_local $7)
                            )
                            (br $label$continue$L1)
                           )
                           (set_local $5
                            (get_local $10)
                           )
                           (set_local $10
                            (get_local $7)
                           )
                           (br $label$continue$L1)
                          )
                          (set_local $5
                           (i32.or
                            (get_local $11)
                            (i32.const 8)
                           )
                          )
                          (set_local $6
                           (select
                            (get_local $6)
                            (i32.const 8)
                            (i32.gt_u
                             (get_local $6)
                             (i32.const 8)
                            )
                           )
                          )
                          (set_local $19
                           (i32.const 120)
                          )
                          (br $__rjti$3)
                         )
                         (set_local $5
                          (get_local $11)
                         )
                         (br $__rjti$3)
                        )
                        (if
                         (i32.or
                          (tee_local $5
                           (i32.load
                            (get_local $14)
                           )
                          )
                          (tee_local $7
                           (i32.load offset=4
                            (get_local $14)
                           )
                          )
                         )
                         (block
                          (set_local $8
                           (get_local $25)
                          )
                          (loop $while-in32
                           (i32.store8
                            (tee_local $8
                             (i32.add
                              (get_local $8)
                              (i32.const -1)
                             )
                            )
                            (i32.or
                             (i32.and
                              (get_local $5)
                              (i32.const 7)
                             )
                             (i32.const 48)
                            )
                           )
                           (br_if $while-in32
                            (i32.or
                             (tee_local $5
                              (call $_bitshift64Lshr
                               (get_local $5)
                               (get_local $7)
                               (i32.const 3)
                              )
                             )
                             (tee_local $7
                              (get_global $tempRet0)
                             )
                            )
                           )
                          )
                         )
                         (set_local $8
                          (get_local $25)
                         )
                        )
                        (if
                         (i32.and
                          (get_local $11)
                          (i32.const 8)
                         )
                         (block
                          (set_local $5
                           (get_local $11)
                          )
                          (set_local $6
                           (select
                            (tee_local $11
                             (i32.add
                              (i32.sub
                               (get_local $39)
                               (tee_local $7
                                (get_local $8)
                               )
                              )
                              (i32.const 1)
                             )
                            )
                            (get_local $6)
                            (i32.lt_s
                             (get_local $6)
                             (get_local $11)
                            )
                           )
                          )
                         )
                         (block
                          (set_local $7
                           (get_local $8)
                          )
                          (set_local $5
                           (get_local $11)
                          )
                         )
                        )
                        (set_local $8
                         (i32.const 0)
                        )
                        (set_local $9
                         (i32.const 4091)
                        )
                        (br $__rjti$8)
                       )
                       (set_local $5
                        (i32.load
                         (get_local $14)
                        )
                       )
                       (if
                        (i32.lt_s
                         (tee_local $7
                          (i32.load offset=4
                           (get_local $14)
                          )
                         )
                         (i32.const 0)
                        )
                        (block
                         (i32.store
                          (get_local $14)
                          (tee_local $5
                           (call $_i64Subtract
                            (i32.const 0)
                            (i32.const 0)
                            (get_local $5)
                            (get_local $7)
                           )
                          )
                         )
                         (i32.store offset=4
                          (get_local $14)
                          (tee_local $7
                           (get_global $tempRet0)
                          )
                         )
                         (set_local $8
                          (i32.const 1)
                         )
                         (set_local $9
                          (i32.const 4091)
                         )
                         (br $__rjti$4)
                        )
                       )
                       (set_local $9
                        (if (result i32)
                         (i32.and
                          (get_local $11)
                          (i32.const 2048)
                         )
                         (block (result i32)
                          (set_local $8
                           (i32.const 1)
                          )
                          (i32.const 4092)
                         )
                         (block (result i32)
                          (set_local $8
                           (tee_local $9
                            (i32.and
                             (get_local $11)
                             (i32.const 1)
                            )
                           )
                          )
                          (select
                           (i32.const 4093)
                           (i32.const 4091)
                           (get_local $9)
                          )
                         )
                        )
                       )
                       (br $__rjti$4)
                      )
                      (set_local $5
                       (i32.load
                        (get_local $14)
                       )
                      )
                      (set_local $7
                       (i32.load offset=4
                        (get_local $14)
                       )
                      )
                      (set_local $8
                       (i32.const 0)
                      )
                      (set_local $9
                       (i32.const 4091)
                      )
                      (br $__rjti$4)
                     )
                     (drop
                      (i32.load offset=4
                       (get_local $14)
                      )
                     )
                     (i32.store8
                      (get_local $40)
                      (i32.load
                       (get_local $14)
                      )
                     )
                     (set_local $5
                      (get_local $40)
                     )
                     (set_local $11
                      (get_local $8)
                     )
                     (set_local $12
                      (i32.const 1)
                     )
                     (set_local $8
                      (i32.const 0)
                     )
                     (set_local $9
                      (i32.const 4091)
                     )
                     (br $__rjto$8
                      (get_local $25)
                     )
                    )
                    (set_local $7
                     (call $_strerror
                      (i32.load
                       (call $___errno_location)
                      )
                     )
                    )
                    (br $__rjti$5)
                   )
                   (set_local $7
                    (select
                     (tee_local $5
                      (i32.load
                       (get_local $14)
                      )
                     )
                     (i32.const 4101)
                     (get_local $5)
                    )
                   )
                   (br $__rjti$5)
                  )
                  (drop
                   (i32.load offset=4
                    (get_local $14)
                   )
                  )
                  (i32.store
                   (get_local $41)
                   (i32.load
                    (get_local $14)
                   )
                  )
                  (i32.store
                   (get_local $44)
                   (i32.const 0)
                  )
                  (i32.store
                   (get_local $14)
                   (get_local $41)
                  )
                  (set_local $8
                   (i32.const -1)
                  )
                  (br $__rjti$6)
                 )
                 (if
                  (get_local $6)
                  (block
                   (set_local $8
                    (get_local $6)
                   )
                   (br $__rjti$6)
                  )
                  (block
                   (call $_pad
                    (get_local $0)
                    (i32.const 32)
                    (get_local $15)
                    (i32.const 0)
                    (get_local $11)
                   )
                   (br $__rjti$7
                    (i32.const 0)
                   )
                  )
                 )
                )
                (set_local $16
                 (f64.load
                  (get_local $14)
                 )
                )
                (i32.store
                 (get_local $20)
                 (i32.const 0)
                )
                (f64.store
                 (get_global $tempDoublePtr)
                 (get_local $16)
                )
                (drop
                 (i32.load
                  (get_global $tempDoublePtr)
                 )
                )
                (set_local $30
                 (if (result i32)
                  (i32.lt_s
                   (i32.load offset=4
                    (get_global $tempDoublePtr)
                   )
                   (i32.const 0)
                  )
                  (block (result i32)
                   (set_local $26
                    (i32.const 1)
                   )
                   (set_local $16
                    (f64.neg
                     (get_local $16)
                    )
                   )
                   (i32.const 4108)
                  )
                  (if (result i32)
                   (i32.and
                    (get_local $11)
                    (i32.const 2048)
                   )
                   (block (result i32)
                    (set_local $26
                     (i32.const 1)
                    )
                    (i32.const 4111)
                   )
                   (block (result i32)
                    (set_local $26
                     (tee_local $5
                      (i32.and
                       (get_local $11)
                       (i32.const 1)
                      )
                     )
                    )
                    (select
                     (i32.const 4114)
                     (i32.const 4109)
                     (get_local $5)
                    )
                   )
                  )
                 )
                )
                (f64.store
                 (get_global $tempDoublePtr)
                 (get_local $16)
                )
                (drop
                 (i32.load
                  (get_global $tempDoublePtr)
                 )
                )
                (set_local $7
                 (block $do-once49 (result i32)
                  (if (result i32)
                   (i32.lt_u
                    (i32.and
                     (i32.load offset=4
                      (get_global $tempDoublePtr)
                     )
                     (i32.const 2146435072)
                    )
                    (i32.const 2146435072)
                   )
                   (block (result i32)
                    (if
                     (tee_local $5
                      (f64.ne
                       (tee_local $23
                        (f64.mul
                         (call $_frexp
                          (get_local $16)
                          (get_local $20)
                         )
                         (f64.const 2)
                        )
                       )
                       (f64.const 0)
                      )
                     )
                     (i32.store
                      (get_local $20)
                      (i32.add
                       (i32.load
                        (get_local $20)
                       )
                       (i32.const -1)
                      )
                     )
                    )
                    (if
                     (i32.eq
                      (tee_local $24
                       (i32.or
                        (get_local $19)
                        (i32.const 32)
                       )
                      )
                      (i32.const 97)
                     )
                     (block
                      (set_local $9
                       (select
                        (i32.add
                         (get_local $30)
                         (i32.const 9)
                        )
                        (get_local $30)
                        (tee_local $13
                         (i32.and
                          (get_local $19)
                          (i32.const 32)
                         )
                        )
                       )
                      )
                      (set_local $16
                       (if (result f64)
                        (i32.or
                         (i32.gt_u
                          (get_local $6)
                          (i32.const 11)
                         )
                         (i32.eqz
                          (tee_local $5
                           (i32.sub
                            (i32.const 12)
                            (get_local $6)
                           )
                          )
                         )
                        )
                        (get_local $23)
                        (block (result f64)
                         (set_local $16
                          (f64.const 8)
                         )
                         (loop $while-in54
                          (set_local $16
                           (f64.mul
                            (get_local $16)
                            (f64.const 16)
                           )
                          )
                          (br_if $while-in54
                           (tee_local $5
                            (i32.add
                             (get_local $5)
                             (i32.const -1)
                            )
                           )
                          )
                         )
                         (if (result f64)
                          (i32.eq
                           (i32.load8_s
                            (get_local $9)
                           )
                           (i32.const 45)
                          )
                          (f64.neg
                           (f64.add
                            (get_local $16)
                            (f64.sub
                             (f64.neg
                              (get_local $23)
                             )
                             (get_local $16)
                            )
                           )
                          )
                          (f64.sub
                           (f64.add
                            (get_local $23)
                            (get_local $16)
                           )
                           (get_local $16)
                          )
                         )
                        )
                       )
                      )
                      (if
                       (i32.eq
                        (tee_local $5
                         (call $_fmt_u
                          (tee_local $5
                           (select
                            (i32.sub
                             (i32.const 0)
                             (tee_local $7
                              (i32.load
                               (get_local $20)
                              )
                             )
                            )
                            (get_local $7)
                            (i32.lt_s
                             (get_local $7)
                             (i32.const 0)
                            )
                           )
                          )
                          (i32.shr_s
                           (i32.shl
                            (i32.lt_s
                             (get_local $5)
                             (i32.const 0)
                            )
                            (i32.const 31)
                           )
                           (i32.const 31)
                          )
                          (get_local $33)
                         )
                        )
                        (get_local $33)
                       )
                       (block
                        (i32.store8
                         (get_local $42)
                         (i32.const 48)
                        )
                        (set_local $5
                         (get_local $42)
                        )
                       )
                      )
                      (set_local $12
                       (i32.or
                        (get_local $26)
                        (i32.const 2)
                       )
                      )
                      (i32.store8
                       (i32.add
                        (get_local $5)
                        (i32.const -1)
                       )
                       (i32.add
                        (i32.and
                         (i32.shr_s
                          (get_local $7)
                          (i32.const 31)
                         )
                         (i32.const 2)
                        )
                        (i32.const 43)
                       )
                      )
                      (i32.store8
                       (tee_local $8
                        (i32.add
                         (get_local $5)
                         (i32.const -2)
                        )
                       )
                       (i32.add
                        (get_local $19)
                        (i32.const 15)
                       )
                      )
                      (set_local $19
                       (i32.lt_s
                        (get_local $6)
                        (i32.const 1)
                       )
                      )
                      (set_local $18
                       (i32.eqz
                        (i32.and
                         (get_local $11)
                         (i32.const 8)
                        )
                       )
                      )
                      (set_local $5
                       (get_local $22)
                      )
                      (loop $while-in56
                       (i32.store8
                        (get_local $5)
                        (i32.or
                         (i32.load8_u
                          (i32.add
                           (tee_local $7
                            (call $f64-to-int
                             (get_local $16)
                            )
                           )
                           (i32.const 4075)
                          )
                         )
                         (get_local $13)
                        )
                       )
                       (set_local $16
                        (f64.mul
                         (f64.sub
                          (get_local $16)
                          (f64.convert_s/i32
                           (get_local $7)
                          )
                         )
                         (f64.const 16)
                        )
                       )
                       (set_local $5
                        (block $do-once57 (result i32)
                         (if (result i32)
                          (i32.eq
                           (i32.sub
                            (tee_local $7
                             (i32.add
                              (get_local $5)
                              (i32.const 1)
                             )
                            )
                            (get_local $37)
                           )
                           (i32.const 1)
                          )
                          (block (result i32)
                           (drop
                            (br_if $do-once57
                             (get_local $7)
                             (i32.and
                              (get_local $18)
                              (i32.and
                               (get_local $19)
                               (f64.eq
                                (get_local $16)
                                (f64.const 0)
                               )
                              )
                             )
                            )
                           )
                           (i32.store8
                            (get_local $7)
                            (i32.const 46)
                           )
                           (i32.add
                            (get_local $5)
                            (i32.const 2)
                           )
                          )
                          (get_local $7)
                         )
                        )
                       )
                       (br_if $while-in56
                        (f64.ne
                         (get_local $16)
                         (f64.const 0)
                        )
                       )
                      )
                      (call $_pad
                       (get_local $0)
                       (i32.const 32)
                       (get_local $15)
                       (tee_local $7
                        (i32.add
                         (tee_local $6
                          (select
                           (i32.sub
                            (i32.add
                             (get_local $47)
                             (get_local $6)
                            )
                            (get_local $8)
                           )
                           (i32.add
                            (i32.sub
                             (get_local $45)
                             (get_local $8)
                            )
                            (get_local $5)
                           )
                           (i32.and
                            (i32.ne
                             (get_local $6)
                             (i32.const 0)
                            )
                            (i32.lt_s
                             (i32.add
                              (get_local $46)
                              (get_local $5)
                             )
                             (get_local $6)
                            )
                           )
                          )
                         )
                         (get_local $12)
                        )
                       )
                       (get_local $11)
                      )
                      (if
                       (i32.eqz
                        (i32.and
                         (i32.load
                          (get_local $0)
                         )
                         (i32.const 32)
                        )
                       )
                       (drop
                        (call $___fwritex
                         (get_local $9)
                         (get_local $12)
                         (get_local $0)
                        )
                       )
                      )
                      (call $_pad
                       (get_local $0)
                       (i32.const 48)
                       (get_local $15)
                       (get_local $7)
                       (i32.xor
                        (get_local $11)
                        (i32.const 65536)
                       )
                      )
                      (set_local $5
                       (i32.sub
                        (get_local $5)
                        (get_local $37)
                       )
                      )
                      (if
                       (i32.eqz
                        (i32.and
                         (i32.load
                          (get_local $0)
                         )
                         (i32.const 32)
                        )
                       )
                       (drop
                        (call $___fwritex
                         (get_local $22)
                         (get_local $5)
                         (get_local $0)
                        )
                       )
                      )
                      (call $_pad
                       (get_local $0)
                       (i32.const 48)
                       (i32.sub
                        (get_local $6)
                        (i32.add
                         (get_local $5)
                         (tee_local $5
                          (i32.sub
                           (get_local $27)
                           (get_local $8)
                          )
                         )
                        )
                       )
                       (i32.const 0)
                       (i32.const 0)
                      )
                      (if
                       (i32.eqz
                        (i32.and
                         (i32.load
                          (get_local $0)
                         )
                         (i32.const 32)
                        )
                       )
                       (drop
                        (call $___fwritex
                         (get_local $8)
                         (get_local $5)
                         (get_local $0)
                        )
                       )
                      )
                      (call $_pad
                       (get_local $0)
                       (i32.const 32)
                       (get_local $15)
                       (get_local $7)
                       (i32.xor
                        (get_local $11)
                        (i32.const 8192)
                       )
                      )
                      (br $do-once49
                       (select
                        (get_local $15)
                        (get_local $7)
                        (i32.lt_s
                         (get_local $7)
                         (get_local $15)
                        )
                       )
                      )
                     )
                    )
                    (set_local $16
                     (if (result f64)
                      (get_local $5)
                      (block (result f64)
                       (i32.store
                        (get_local $20)
                        (tee_local $5
                         (i32.add
                          (i32.load
                           (get_local $20)
                          )
                          (i32.const -28)
                         )
                        )
                       )
                       (f64.mul
                        (get_local $23)
                        (f64.const 268435456)
                       )
                      )
                      (block (result f64)
                       (set_local $5
                        (i32.load
                         (get_local $20)
                        )
                       )
                       (get_local $23)
                      )
                     )
                    )
                    (set_local $7
                     (tee_local $8
                      (select
                       (get_local $48)
                       (get_local $49)
                       (i32.lt_s
                        (get_local $5)
                        (i32.const 0)
                       )
                      )
                     )
                    )
                    (loop $while-in60
                     (i32.store
                      (get_local $7)
                      (tee_local $5
                       (call $f64-to-int
                        (get_local $16)
                       )
                      )
                     )
                     (set_local $7
                      (i32.add
                       (get_local $7)
                       (i32.const 4)
                      )
                     )
                     (br_if $while-in60
                      (f64.ne
                       (tee_local $16
                        (f64.mul
                         (f64.sub
                          (get_local $16)
                          (f64.convert_u/i32
                           (get_local $5)
                          )
                         )
                         (f64.const 1e9)
                        )
                       )
                       (f64.const 0)
                      )
                     )
                    )
                    (if
                     (i32.gt_s
                      (tee_local $9
                       (i32.load
                        (get_local $20)
                       )
                      )
                      (i32.const 0)
                     )
                     (block
                      (set_local $5
                       (get_local $8)
                      )
                      (loop $while-in62
                       (set_local $13
                        (select
                         (i32.const 29)
                         (get_local $9)
                         (i32.gt_s
                          (get_local $9)
                          (i32.const 29)
                         )
                        )
                       )
                       (block $do-once63
                        (if
                         (i32.ge_u
                          (tee_local $9
                           (i32.add
                            (get_local $7)
                            (i32.const -4)
                           )
                          )
                          (get_local $5)
                         )
                         (block
                          (set_local $12
                           (i32.const 0)
                          )
                          (loop $while-in66
                           (i32.store
                            (get_local $9)
                            (call $___uremdi3
                             (tee_local $12
                              (call $_i64Add
                               (call $_bitshift64Shl
                                (i32.load
                                 (get_local $9)
                                )
                                (i32.const 0)
                                (get_local $13)
                               )
                               (get_global $tempRet0)
                               (get_local $12)
                               (i32.const 0)
                              )
                             )
                             (tee_local $18
                              (get_global $tempRet0)
                             )
                             (i32.const 1000000000)
                            )
                           )
                           (set_local $12
                            (call $___udivdi3
                             (get_local $12)
                             (get_local $18)
                             (i32.const 1000000000)
                            )
                           )
                           (br_if $while-in66
                            (i32.ge_u
                             (tee_local $9
                              (i32.add
                               (get_local $9)
                               (i32.const -4)
                              )
                             )
                             (get_local $5)
                            )
                           )
                          )
                          (br_if $do-once63
                           (i32.eqz
                            (get_local $12)
                           )
                          )
                          (i32.store
                           (tee_local $5
                            (i32.add
                             (get_local $5)
                             (i32.const -4)
                            )
                           )
                           (get_local $12)
                          )
                         )
                        )
                       )
                       (loop $while-in68
                        (if
                         (i32.gt_u
                          (get_local $7)
                          (get_local $5)
                         )
                         (if
                          (i32.eqz
                           (i32.load
                            (tee_local $9
                             (i32.add
                              (get_local $7)
                              (i32.const -4)
                             )
                            )
                           )
                          )
                          (block
                           (set_local $7
                            (get_local $9)
                           )
                           (br $while-in68)
                          )
                         )
                        )
                       )
                       (i32.store
                        (get_local $20)
                        (tee_local $9
                         (i32.sub
                          (i32.load
                           (get_local $20)
                          )
                          (get_local $13)
                         )
                        )
                       )
                       (br_if $while-in62
                        (i32.gt_s
                         (get_local $9)
                         (i32.const 0)
                        )
                       )
                      )
                     )
                     (set_local $5
                      (get_local $8)
                     )
                    )
                    (set_local $18
                     (select
                      (i32.const 6)
                      (get_local $6)
                      (i32.lt_s
                       (get_local $6)
                       (i32.const 0)
                      )
                     )
                    )
                    (if
                     (i32.lt_s
                      (get_local $9)
                      (i32.const 0)
                     )
                     (block
                      (set_local $21
                       (i32.add
                        (call $i32s-div
                         (i32.add
                          (get_local $18)
                          (i32.const 25)
                         )
                         (i32.const 9)
                        )
                        (i32.const 1)
                       )
                      )
                      (set_local $31
                       (i32.eq
                        (get_local $24)
                        (i32.const 102)
                       )
                      )
                      (set_local $6
                       (get_local $5)
                      )
                      (set_local $5
                       (get_local $7)
                      )
                      (loop $while-in70
                       (set_local $13
                        (select
                         (i32.const 9)
                         (tee_local $7
                          (i32.sub
                           (i32.const 0)
                           (get_local $9)
                          )
                         )
                         (i32.gt_s
                          (get_local $7)
                          (i32.const 9)
                         )
                        )
                       )
                       (block $do-once71
                        (if
                         (i32.lt_u
                          (get_local $6)
                          (get_local $5)
                         )
                         (block
                          (set_local $12
                           (i32.add
                            (i32.shl
                             (i32.const 1)
                             (get_local $13)
                            )
                            (i32.const -1)
                           )
                          )
                          (set_local $38
                           (i32.shr_u
                            (i32.const 1000000000)
                            (get_local $13)
                           )
                          )
                          (set_local $9
                           (i32.const 0)
                          )
                          (set_local $7
                           (get_local $6)
                          )
                          (loop $while-in74
                           (i32.store
                            (get_local $7)
                            (i32.add
                             (i32.shr_u
                              (tee_local $32
                               (i32.load
                                (get_local $7)
                               )
                              )
                              (get_local $13)
                             )
                             (get_local $9)
                            )
                           )
                           (set_local $9
                            (i32.mul
                             (i32.and
                              (get_local $32)
                              (get_local $12)
                             )
                             (get_local $38)
                            )
                           )
                           (br_if $while-in74
                            (i32.lt_u
                             (tee_local $7
                              (i32.add
                               (get_local $7)
                               (i32.const 4)
                              )
                             )
                             (get_local $5)
                            )
                           )
                          )
                          (set_local $7
                           (select
                            (get_local $6)
                            (i32.add
                             (get_local $6)
                             (i32.const 4)
                            )
                            (i32.load
                             (get_local $6)
                            )
                           )
                          )
                          (br_if $do-once71
                           (i32.eqz
                            (get_local $9)
                           )
                          )
                          (i32.store
                           (get_local $5)
                           (get_local $9)
                          )
                          (set_local $5
                           (i32.add
                            (get_local $5)
                            (i32.const 4)
                           )
                          )
                         )
                         (set_local $7
                          (select
                           (get_local $6)
                           (i32.add
                            (get_local $6)
                            (i32.const 4)
                           )
                           (i32.load
                            (get_local $6)
                           )
                          )
                         )
                        )
                       )
                       (set_local $12
                        (select
                         (i32.add
                          (tee_local $6
                           (select
                            (get_local $8)
                            (get_local $7)
                            (get_local $31)
                           )
                          )
                          (i32.shl
                           (get_local $21)
                           (i32.const 2)
                          )
                         )
                         (get_local $5)
                         (i32.gt_s
                          (i32.shr_s
                           (i32.sub
                            (get_local $5)
                            (get_local $6)
                           )
                           (i32.const 2)
                          )
                          (get_local $21)
                         )
                        )
                       )
                       (i32.store
                        (get_local $20)
                        (tee_local $9
                         (i32.add
                          (i32.load
                           (get_local $20)
                          )
                          (get_local $13)
                         )
                        )
                       )
                       (set_local $5
                        (if (result i32)
                         (i32.lt_s
                          (get_local $9)
                          (i32.const 0)
                         )
                         (block
                          (set_local $6
                           (get_local $7)
                          )
                          (set_local $5
                           (get_local $12)
                          )
                          (br $while-in70)
                         )
                         (block (result i32)
                          (set_local $9
                           (get_local $12)
                          )
                          (get_local $7)
                         )
                        )
                       )
                      )
                     )
                     (set_local $9
                      (get_local $7)
                     )
                    )
                    (set_local $21
                     (get_local $8)
                    )
                    (block $do-once75
                     (if
                      (i32.lt_u
                       (get_local $5)
                       (get_local $9)
                      )
                      (block
                       (set_local $7
                        (i32.mul
                         (i32.shr_s
                          (i32.sub
                           (get_local $21)
                           (get_local $5)
                          )
                          (i32.const 2)
                         )
                         (i32.const 9)
                        )
                       )
                       (br_if $do-once75
                        (i32.lt_u
                         (tee_local $12
                          (i32.load
                           (get_local $5)
                          )
                         )
                         (i32.const 10)
                        )
                       )
                       (set_local $6
                        (i32.const 10)
                       )
                       (loop $while-in78
                        (set_local $7
                         (i32.add
                          (get_local $7)
                          (i32.const 1)
                         )
                        )
                        (br_if $while-in78
                         (i32.ge_u
                          (get_local $12)
                          (tee_local $6
                           (i32.mul
                            (get_local $6)
                            (i32.const 10)
                           )
                          )
                         )
                        )
                       )
                      )
                      (set_local $7
                       (i32.const 0)
                      )
                     )
                    )
                    (set_local $5
                     (if (result i32)
                      (i32.lt_s
                       (tee_local $6
                        (i32.add
                         (i32.sub
                          (get_local $18)
                          (select
                           (get_local $7)
                           (i32.const 0)
                           (i32.ne
                            (get_local $24)
                            (i32.const 102)
                           )
                          )
                         )
                         (i32.shr_s
                          (i32.shl
                           (i32.and
                            (tee_local $31
                             (i32.ne
                              (get_local $18)
                              (i32.const 0)
                             )
                            )
                            (tee_local $38
                             (i32.eq
                              (get_local $24)
                              (i32.const 103)
                             )
                            )
                           )
                           (i32.const 31)
                          )
                          (i32.const 31)
                         )
                        )
                       )
                       (i32.add
                        (i32.mul
                         (i32.shr_s
                          (i32.sub
                           (get_local $9)
                           (get_local $21)
                          )
                          (i32.const 2)
                         )
                         (i32.const 9)
                        )
                        (i32.const -9)
                       )
                      )
                      (block (result i32)
                       (set_local $13
                        (call $i32s-div
                         (tee_local $6
                          (i32.add
                           (get_local $6)
                           (i32.const 9216)
                          )
                         )
                         (i32.const 9)
                        )
                       )
                       (if
                        (i32.lt_s
                         (tee_local $6
                          (i32.add
                           (i32.rem_s
                            (get_local $6)
                            (i32.const 9)
                           )
                           (i32.const 1)
                          )
                         )
                         (i32.const 9)
                        )
                        (block
                         (set_local $12
                          (i32.const 10)
                         )
                         (loop $while-in80
                          (set_local $12
                           (i32.mul
                            (get_local $12)
                            (i32.const 10)
                           )
                          )
                          (br_if $while-in80
                           (i32.ne
                            (tee_local $6
                             (i32.add
                              (get_local $6)
                              (i32.const 1)
                             )
                            )
                            (i32.const 9)
                           )
                          )
                         )
                        )
                        (set_local $12
                         (i32.const 10)
                        )
                       )
                       (set_local $13
                        (call $i32u-rem
                         (tee_local $24
                          (i32.load
                           (tee_local $6
                            (i32.add
                             (i32.add
                              (get_local $8)
                              (i32.shl
                               (get_local $13)
                               (i32.const 2)
                              )
                             )
                             (i32.const -4092)
                            )
                           )
                          )
                         )
                         (get_local $12)
                        )
                       )
                       (block $do-once81
                        (if
                         (i32.eqz
                          (i32.and
                           (tee_local $32
                            (i32.eq
                             (i32.add
                              (get_local $6)
                              (i32.const 4)
                             )
                             (get_local $9)
                            )
                           )
                           (i32.eqz
                            (get_local $13)
                           )
                          )
                         )
                         (block
                          (set_local $50
                           (call $i32u-div
                            (get_local $24)
                            (get_local $12)
                           )
                          )
                          (set_local $16
                           (if (result f64)
                            (i32.lt_u
                             (get_local $13)
                             (tee_local $51
                              (call $i32s-div
                               (get_local $12)
                               (i32.const 2)
                              )
                             )
                            )
                            (f64.const 0.5)
                            (select
                             (f64.const 1)
                             (f64.const 1.5)
                             (i32.and
                              (get_local $32)
                              (i32.eq
                               (get_local $13)
                               (get_local $51)
                              )
                             )
                            )
                           )
                          )
                          (set_local $23
                           (select
                            (f64.const 9007199254740994)
                            (f64.const 9007199254740992)
                            (i32.and
                             (get_local $50)
                             (i32.const 1)
                            )
                           )
                          )
                          (block $do-once83
                           (if
                            (get_local $26)
                            (block
                             (br_if $do-once83
                              (i32.ne
                               (i32.load8_s
                                (get_local $30)
                               )
                               (i32.const 45)
                              )
                             )
                             (set_local $23
                              (f64.neg
                               (get_local $23)
                              )
                             )
                             (set_local $16
                              (f64.neg
                               (get_local $16)
                              )
                             )
                            )
                           )
                          )
                          (i32.store
                           (get_local $6)
                           (tee_local $13
                            (i32.sub
                             (get_local $24)
                             (get_local $13)
                            )
                           )
                          )
                          (br_if $do-once81
                           (f64.eq
                            (f64.add
                             (get_local $23)
                             (get_local $16)
                            )
                            (get_local $23)
                           )
                          )
                          (i32.store
                           (get_local $6)
                           (tee_local $7
                            (i32.add
                             (get_local $13)
                             (get_local $12)
                            )
                           )
                          )
                          (if
                           (i32.gt_u
                            (get_local $7)
                            (i32.const 999999999)
                           )
                           (loop $while-in86
                            (i32.store
                             (get_local $6)
                             (i32.const 0)
                            )
                            (if
                             (i32.lt_u
                              (tee_local $6
                               (i32.add
                                (get_local $6)
                                (i32.const -4)
                               )
                              )
                              (get_local $5)
                             )
                             (i32.store
                              (tee_local $5
                               (i32.add
                                (get_local $5)
                                (i32.const -4)
                               )
                              )
                              (i32.const 0)
                             )
                            )
                            (i32.store
                             (get_local $6)
                             (tee_local $7
                              (i32.add
                               (i32.load
                                (get_local $6)
                               )
                               (i32.const 1)
                              )
                             )
                            )
                            (br_if $while-in86
                             (i32.gt_u
                              (get_local $7)
                              (i32.const 999999999)
                             )
                            )
                           )
                          )
                          (set_local $7
                           (i32.mul
                            (i32.shr_s
                             (i32.sub
                              (get_local $21)
                              (get_local $5)
                             )
                             (i32.const 2)
                            )
                            (i32.const 9)
                           )
                          )
                          (br_if $do-once81
                           (i32.lt_u
                            (tee_local $13
                             (i32.load
                              (get_local $5)
                             )
                            )
                            (i32.const 10)
                           )
                          )
                          (set_local $12
                           (i32.const 10)
                          )
                          (loop $while-in88
                           (set_local $7
                            (i32.add
                             (get_local $7)
                             (i32.const 1)
                            )
                           )
                           (br_if $while-in88
                            (i32.ge_u
                             (get_local $13)
                             (tee_local $12
                              (i32.mul
                               (get_local $12)
                               (i32.const 10)
                              )
                             )
                            )
                           )
                          )
                         )
                        )
                       )
                       (set_local $12
                        (get_local $5)
                       )
                       (set_local $13
                        (get_local $7)
                       )
                       (select
                        (tee_local $5
                         (i32.add
                          (get_local $6)
                          (i32.const 4)
                         )
                        )
                        (get_local $9)
                        (i32.gt_u
                         (get_local $9)
                         (get_local $5)
                        )
                       )
                      )
                      (block (result i32)
                       (set_local $12
                        (get_local $5)
                       )
                       (set_local $13
                        (get_local $7)
                       )
                       (get_local $9)
                      )
                     )
                    )
                    (set_local $32
                     (i32.sub
                      (i32.const 0)
                      (get_local $13)
                     )
                    )
                    (set_local $9
                     (loop $while-in90 (result i32)
                      (block $while-out89 (result i32)
                       (if
                        (i32.le_u
                         (get_local $5)
                         (get_local $12)
                        )
                        (block
                         (set_local $24
                          (i32.const 0)
                         )
                         (br $while-out89
                          (get_local $5)
                         )
                        )
                       )
                       (if (result i32)
                        (i32.load
                         (tee_local $7
                          (i32.add
                           (get_local $5)
                           (i32.const -4)
                          )
                         )
                        )
                        (block (result i32)
                         (set_local $24
                          (i32.const 1)
                         )
                         (get_local $5)
                        )
                        (block
                         (set_local $5
                          (get_local $7)
                         )
                         (br $while-in90)
                        )
                       )
                      )
                     )
                    )
                    (call $_pad
                     (get_local $0)
                     (i32.const 32)
                     (get_local $15)
                     (tee_local $13
                      (i32.add
                       (i32.add
                        (i32.add
                         (i32.add
                          (get_local $26)
                          (i32.const 1)
                         )
                         (tee_local $5
                          (block $do-once91 (result i32)
                           (if (result i32)
                            (get_local $38)
                            (block (result i32)
                             (set_local $7
                              (if (result i32)
                               (i32.and
                                (i32.gt_s
                                 (tee_local $5
                                  (i32.add
                                   (i32.xor
                                    (get_local $31)
                                    (i32.const 1)
                                   )
                                   (get_local $18)
                                  )
                                 )
                                 (get_local $13)
                                )
                                (i32.gt_s
                                 (get_local $13)
                                 (i32.const -5)
                                )
                               )
                               (block (result i32)
                                (set_local $18
                                 (i32.sub
                                  (i32.add
                                   (get_local $5)
                                   (i32.const -1)
                                  )
                                  (get_local $13)
                                 )
                                )
                                (i32.add
                                 (get_local $19)
                                 (i32.const -1)
                                )
                               )
                               (block (result i32)
                                (set_local $18
                                 (i32.add
                                  (get_local $5)
                                  (i32.const -1)
                                 )
                                )
                                (i32.add
                                 (get_local $19)
                                 (i32.const -2)
                                )
                               )
                              )
                             )
                             (if
                              (tee_local $5
                               (i32.and
                                (get_local $11)
                                (i32.const 8)
                               )
                              )
                              (block
                               (set_local $21
                                (get_local $5)
                               )
                               (br $do-once91
                                (get_local $18)
                               )
                              )
                             )
                             (block $do-once93
                              (if
                               (get_local $24)
                               (block
                                (if
                                 (i32.eqz
                                  (tee_local $19
                                   (i32.load
                                    (i32.add
                                     (get_local $9)
                                     (i32.const -4)
                                    )
                                   )
                                  )
                                 )
                                 (block
                                  (set_local $5
                                   (i32.const 9)
                                  )
                                  (br $do-once93)
                                 )
                                )
                                (set_local $5
                                 (if (result i32)
                                  (call $i32u-rem
                                   (get_local $19)
                                   (i32.const 10)
                                  )
                                  (block
                                   (set_local $5
                                    (i32.const 0)
                                   )
                                   (br $do-once93)
                                  )
                                  (block (result i32)
                                   (set_local $6
                                    (i32.const 10)
                                   )
                                   (i32.const 0)
                                  )
                                 )
                                )
                                (loop $while-in96
                                 (set_local $5
                                  (i32.add
                                   (get_local $5)
                                   (i32.const 1)
                                  )
                                 )
                                 (br_if $while-in96
                                  (i32.eqz
                                   (call $i32u-rem
                                    (get_local $19)
                                    (tee_local $6
                                     (i32.mul
                                      (get_local $6)
                                      (i32.const 10)
                                     )
                                    )
                                   )
                                  )
                                 )
                                )
                               )
                               (set_local $5
                                (i32.const 9)
                               )
                              )
                             )
                             (set_local $6
                              (i32.add
                               (i32.mul
                                (i32.shr_s
                                 (i32.sub
                                  (get_local $9)
                                  (get_local $21)
                                 )
                                 (i32.const 2)
                                )
                                (i32.const 9)
                               )
                               (i32.const -9)
                              )
                             )
                             (if (result i32)
                              (i32.eq
                               (i32.or
                                (get_local $7)
                                (i32.const 32)
                               )
                               (i32.const 102)
                              )
                              (block (result i32)
                               (set_local $21
                                (i32.const 0)
                               )
                               (select
                                (get_local $18)
                                (tee_local $5
                                 (select
                                  (i32.const 0)
                                  (tee_local $5
                                   (i32.sub
                                    (get_local $6)
                                    (get_local $5)
                                   )
                                  )
                                  (i32.lt_s
                                   (get_local $5)
                                   (i32.const 0)
                                  )
                                 )
                                )
                                (i32.lt_s
                                 (get_local $18)
                                 (get_local $5)
                                )
                               )
                              )
                              (block (result i32)
                               (set_local $21
                                (i32.const 0)
                               )
                               (select
                                (get_local $18)
                                (tee_local $5
                                 (select
                                  (i32.const 0)
                                  (tee_local $5
                                   (i32.sub
                                    (i32.add
                                     (get_local $6)
                                     (get_local $13)
                                    )
                                    (get_local $5)
                                   )
                                  )
                                  (i32.lt_s
                                   (get_local $5)
                                   (i32.const 0)
                                  )
                                 )
                                )
                                (i32.lt_s
                                 (get_local $18)
                                 (get_local $5)
                                )
                               )
                              )
                             )
                            )
                            (block (result i32)
                             (set_local $21
                              (i32.and
                               (get_local $11)
                               (i32.const 8)
                              )
                             )
                             (set_local $7
                              (get_local $19)
                             )
                             (get_local $18)
                            )
                           )
                          )
                         )
                        )
                        (i32.ne
                         (tee_local $31
                          (i32.or
                           (get_local $5)
                           (get_local $21)
                          )
                         )
                         (i32.const 0)
                        )
                       )
                       (if (result i32)
                        (tee_local $18
                         (i32.eq
                          (i32.or
                           (get_local $7)
                           (i32.const 32)
                          )
                          (i32.const 102)
                         )
                        )
                        (block (result i32)
                         (set_local $19
                          (i32.const 0)
                         )
                         (select
                          (get_local $13)
                          (i32.const 0)
                          (i32.gt_s
                           (get_local $13)
                           (i32.const 0)
                          )
                         )
                        )
                        (block (result i32)
                         (if
                          (i32.lt_s
                           (i32.sub
                            (get_local $27)
                            (tee_local $6
                             (call $_fmt_u
                              (tee_local $6
                               (select
                                (get_local $32)
                                (get_local $13)
                                (i32.lt_s
                                 (get_local $13)
                                 (i32.const 0)
                                )
                               )
                              )
                              (i32.shr_s
                               (i32.shl
                                (i32.lt_s
                                 (get_local $6)
                                 (i32.const 0)
                                )
                                (i32.const 31)
                               )
                               (i32.const 31)
                              )
                              (get_local $33)
                             )
                            )
                           )
                           (i32.const 2)
                          )
                          (loop $while-in98
                           (i32.store8
                            (tee_local $6
                             (i32.add
                              (get_local $6)
                              (i32.const -1)
                             )
                            )
                            (i32.const 48)
                           )
                           (br_if $while-in98
                            (i32.lt_s
                             (i32.sub
                              (get_local $27)
                              (get_local $6)
                             )
                             (i32.const 2)
                            )
                           )
                          )
                         )
                         (i32.store8
                          (i32.add
                           (get_local $6)
                           (i32.const -1)
                          )
                          (i32.add
                           (i32.and
                            (i32.shr_s
                             (get_local $13)
                             (i32.const 31)
                            )
                            (i32.const 2)
                           )
                           (i32.const 43)
                          )
                         )
                         (i32.store8
                          (tee_local $19
                           (i32.add
                            (get_local $6)
                            (i32.const -2)
                           )
                          )
                          (get_local $7)
                         )
                         (i32.sub
                          (get_local $27)
                          (get_local $19)
                         )
                        )
                       )
                      )
                     )
                     (get_local $11)
                    )
                    (if
                     (i32.eqz
                      (i32.and
                       (i32.load
                        (get_local $0)
                       )
                       (i32.const 32)
                      )
                     )
                     (drop
                      (call $___fwritex
                       (get_local $30)
                       (get_local $26)
                       (get_local $0)
                      )
                     )
                    )
                    (call $_pad
                     (get_local $0)
                     (i32.const 48)
                     (get_local $15)
                     (get_local $13)
                     (i32.xor
                      (get_local $11)
                      (i32.const 65536)
                     )
                    )
                    (block $do-once99
                     (if
                      (get_local $18)
                      (block
                       (set_local $6
                        (tee_local $12
                         (select
                          (get_local $8)
                          (get_local $12)
                          (i32.gt_u
                           (get_local $12)
                           (get_local $8)
                          )
                         )
                        )
                       )
                       (loop $while-in102
                        (set_local $7
                         (call $_fmt_u
                          (i32.load
                           (get_local $6)
                          )
                          (i32.const 0)
                          (get_local $29)
                         )
                        )
                        (block $do-once103
                         (if
                          (i32.eq
                           (get_local $6)
                           (get_local $12)
                          )
                          (block
                           (br_if $do-once103
                            (i32.ne
                             (get_local $7)
                             (get_local $29)
                            )
                           )
                           (i32.store8
                            (get_local $34)
                            (i32.const 48)
                           )
                           (set_local $7
                            (get_local $34)
                           )
                          )
                          (block
                           (br_if $do-once103
                            (i32.le_u
                             (get_local $7)
                             (get_local $22)
                            )
                           )
                           (loop $while-in106
                            (i32.store8
                             (tee_local $7
                              (i32.add
                               (get_local $7)
                               (i32.const -1)
                              )
                             )
                             (i32.const 48)
                            )
                            (br_if $while-in106
                             (i32.gt_u
                              (get_local $7)
                              (get_local $22)
                             )
                            )
                           )
                          )
                         )
                        )
                        (if
                         (i32.eqz
                          (i32.and
                           (i32.load
                            (get_local $0)
                           )
                           (i32.const 32)
                          )
                         )
                         (drop
                          (call $___fwritex
                           (get_local $7)
                           (i32.sub
                            (get_local $43)
                            (get_local $7)
                           )
                           (get_local $0)
                          )
                         )
                        )
                        (if
                         (i32.le_u
                          (tee_local $7
                           (i32.add
                            (get_local $6)
                            (i32.const 4)
                           )
                          )
                          (get_local $8)
                         )
                         (block
                          (set_local $6
                           (get_local $7)
                          )
                          (br $while-in102)
                         )
                        )
                       )
                       (block $do-once107
                        (if
                         (get_local $31)
                         (block
                          (br_if $do-once107
                           (i32.and
                            (i32.load
                             (get_local $0)
                            )
                            (i32.const 32)
                           )
                          )
                          (drop
                           (call $___fwritex
                            (i32.const 4143)
                            (i32.const 1)
                            (get_local $0)
                           )
                          )
                         )
                        )
                       )
                       (if
                        (i32.and
                         (i32.gt_s
                          (get_local $5)
                          (i32.const 0)
                         )
                         (i32.lt_u
                          (get_local $7)
                          (get_local $9)
                         )
                        )
                        (loop $while-in110
                         (if
                          (i32.gt_u
                           (tee_local $6
                            (call $_fmt_u
                             (i32.load
                              (get_local $7)
                             )
                             (i32.const 0)
                             (get_local $29)
                            )
                           )
                           (get_local $22)
                          )
                          (loop $while-in112
                           (i32.store8
                            (tee_local $6
                             (i32.add
                              (get_local $6)
                              (i32.const -1)
                             )
                            )
                            (i32.const 48)
                           )
                           (br_if $while-in112
                            (i32.gt_u
                             (get_local $6)
                             (get_local $22)
                            )
                           )
                          )
                         )
                         (if
                          (i32.eqz
                           (i32.and
                            (i32.load
                             (get_local $0)
                            )
                            (i32.const 32)
                           )
                          )
                          (drop
                           (call $___fwritex
                            (get_local $6)
                            (select
                             (i32.const 9)
                             (get_local $5)
                             (i32.gt_s
                              (get_local $5)
                              (i32.const 9)
                             )
                            )
                            (get_local $0)
                           )
                          )
                         )
                         (set_local $6
                          (i32.add
                           (get_local $5)
                           (i32.const -9)
                          )
                         )
                         (set_local $5
                          (if (result i32)
                           (i32.and
                            (i32.gt_s
                             (get_local $5)
                             (i32.const 9)
                            )
                            (i32.lt_u
                             (tee_local $7
                              (i32.add
                               (get_local $7)
                               (i32.const 4)
                              )
                             )
                             (get_local $9)
                            )
                           )
                           (block
                            (set_local $5
                             (get_local $6)
                            )
                            (br $while-in110)
                           )
                           (get_local $6)
                          )
                         )
                        )
                       )
                       (call $_pad
                        (get_local $0)
                        (i32.const 48)
                        (i32.add
                         (get_local $5)
                         (i32.const 9)
                        )
                        (i32.const 9)
                        (i32.const 0)
                       )
                      )
                      (block
                       (set_local $9
                        (select
                         (get_local $9)
                         (i32.add
                          (get_local $12)
                          (i32.const 4)
                         )
                         (get_local $24)
                        )
                       )
                       (if
                        (i32.gt_s
                         (get_local $5)
                         (i32.const -1)
                        )
                        (block
                         (set_local $18
                          (i32.eqz
                           (get_local $21)
                          )
                         )
                         (set_local $6
                          (get_local $12)
                         )
                         (set_local $7
                          (get_local $5)
                         )
                         (loop $while-in114
                          (if
                           (i32.eq
                            (tee_local $5
                             (call $_fmt_u
                              (i32.load
                               (get_local $6)
                              )
                              (i32.const 0)
                              (get_local $29)
                             )
                            )
                            (get_local $29)
                           )
                           (block
                            (i32.store8
                             (get_local $34)
                             (i32.const 48)
                            )
                            (set_local $5
                             (get_local $34)
                            )
                           )
                          )
                          (block $do-once115
                           (if
                            (i32.eq
                             (get_local $6)
                             (get_local $12)
                            )
                            (block
                             (if
                              (i32.eqz
                               (i32.and
                                (i32.load
                                 (get_local $0)
                                )
                                (i32.const 32)
                               )
                              )
                              (drop
                               (call $___fwritex
                                (get_local $5)
                                (i32.const 1)
                                (get_local $0)
                               )
                              )
                             )
                             (set_local $5
                              (i32.add
                               (get_local $5)
                               (i32.const 1)
                              )
                             )
                             (br_if $do-once115
                              (i32.and
                               (get_local $18)
                               (i32.lt_s
                                (get_local $7)
                                (i32.const 1)
                               )
                              )
                             )
                             (br_if $do-once115
                              (i32.and
                               (i32.load
                                (get_local $0)
                               )
                               (i32.const 32)
                              )
                             )
                             (drop
                              (call $___fwritex
                               (i32.const 4143)
                               (i32.const 1)
                               (get_local $0)
                              )
                             )
                            )
                            (block
                             (br_if $do-once115
                              (i32.le_u
                               (get_local $5)
                               (get_local $22)
                              )
                             )
                             (loop $while-in118
                              (i32.store8
                               (tee_local $5
                                (i32.add
                                 (get_local $5)
                                 (i32.const -1)
                                )
                               )
                               (i32.const 48)
                              )
                              (br_if $while-in118
                               (i32.gt_u
                                (get_local $5)
                                (get_local $22)
                               )
                              )
                             )
                            )
                           )
                          )
                          (set_local $8
                           (i32.sub
                            (get_local $43)
                            (get_local $5)
                           )
                          )
                          (if
                           (i32.eqz
                            (i32.and
                             (i32.load
                              (get_local $0)
                             )
                             (i32.const 32)
                            )
                           )
                           (drop
                            (call $___fwritex
                             (get_local $5)
                             (select
                              (get_local $8)
                              (get_local $7)
                              (i32.gt_s
                               (get_local $7)
                               (get_local $8)
                              )
                             )
                             (get_local $0)
                            )
                           )
                          )
                          (br_if $while-in114
                           (i32.and
                            (i32.lt_u
                             (tee_local $6
                              (i32.add
                               (get_local $6)
                               (i32.const 4)
                              )
                             )
                             (get_local $9)
                            )
                            (i32.gt_s
                             (tee_local $7
                              (i32.sub
                               (get_local $7)
                               (get_local $8)
                              )
                             )
                             (i32.const -1)
                            )
                           )
                          )
                         )
                         (set_local $5
                          (get_local $7)
                         )
                        )
                       )
                       (call $_pad
                        (get_local $0)
                        (i32.const 48)
                        (i32.add
                         (get_local $5)
                         (i32.const 18)
                        )
                        (i32.const 18)
                        (i32.const 0)
                       )
                       (br_if $do-once99
                        (i32.and
                         (i32.load
                          (get_local $0)
                         )
                         (i32.const 32)
                        )
                       )
                       (drop
                        (call $___fwritex
                         (get_local $19)
                         (i32.sub
                          (get_local $27)
                          (get_local $19)
                         )
                         (get_local $0)
                        )
                       )
                      )
                     )
                    )
                    (call $_pad
                     (get_local $0)
                     (i32.const 32)
                     (get_local $15)
                     (get_local $13)
                     (i32.xor
                      (get_local $11)
                      (i32.const 8192)
                     )
                    )
                    (select
                     (get_local $15)
                     (get_local $13)
                     (i32.lt_s
                      (get_local $13)
                      (get_local $15)
                     )
                    )
                   )
                   (block (result i32)
                    (call $_pad
                     (get_local $0)
                     (i32.const 32)
                     (get_local $15)
                     (tee_local $7
                      (i32.add
                       (tee_local $9
                        (select
                         (i32.const 0)
                         (get_local $26)
                         (tee_local $6
                          (f64.ne
                           (get_local $16)
                           (get_local $16)
                          )
                         )
                        )
                       )
                       (i32.const 3)
                      )
                     )
                     (get_local $8)
                    )
                    (if
                     (i32.eqz
                      (i32.and
                       (tee_local $5
                        (i32.load
                         (get_local $0)
                        )
                       )
                       (i32.const 32)
                      )
                     )
                     (block
                      (drop
                       (call $___fwritex
                        (get_local $30)
                        (get_local $9)
                        (get_local $0)
                       )
                      )
                      (set_local $5
                       (i32.load
                        (get_local $0)
                       )
                      )
                     )
                    )
                    (set_local $6
                     (select
                      (select
                       (i32.const 4135)
                       (i32.const 4139)
                       (tee_local $8
                        (i32.ne
                         (i32.and
                          (get_local $19)
                          (i32.const 32)
                         )
                         (i32.const 0)
                        )
                       )
                      )
                      (select
                       (i32.const 4127)
                       (i32.const 4131)
                       (get_local $8)
                      )
                      (get_local $6)
                     )
                    )
                    (if
                     (i32.eqz
                      (i32.and
                       (get_local $5)
                       (i32.const 32)
                      )
                     )
                     (drop
                      (call $___fwritex
                       (get_local $6)
                       (i32.const 3)
                       (get_local $0)
                      )
                     )
                    )
                    (call $_pad
                     (get_local $0)
                     (i32.const 32)
                     (get_local $15)
                     (get_local $7)
                     (i32.xor
                      (get_local $11)
                      (i32.const 8192)
                     )
                    )
                    (select
                     (get_local $15)
                     (get_local $7)
                     (i32.lt_s
                      (get_local $7)
                      (get_local $15)
                     )
                    )
                   )
                  )
                 )
                )
                (set_local $5
                 (get_local $10)
                )
                (set_local $10
                 (get_local $7)
                )
                (br $label$continue$L1)
               )
               (set_local $12
                (get_local $6)
               )
               (set_local $8
                (i32.const 0)
               )
               (set_local $9
                (i32.const 4091)
               )
               (br $__rjto$8
                (get_local $25)
               )
              )
              (set_local $9
               (i32.and
                (get_local $19)
                (i32.const 32)
               )
              )
              (if
               (i32.or
                (tee_local $7
                 (i32.load
                  (get_local $14)
                 )
                )
                (tee_local $11
                 (i32.load offset=4
                  (get_local $14)
                 )
                )
               )
               (block
                (set_local $8
                 (get_local $25)
                )
                (loop $while-in123
                 (i32.store8
                  (tee_local $8
                   (i32.add
                    (get_local $8)
                    (i32.const -1)
                   )
                  )
                  (i32.or
                   (i32.load8_u
                    (i32.add
                     (i32.and
                      (get_local $7)
                      (i32.const 15)
                     )
                     (i32.const 4075)
                    )
                   )
                   (get_local $9)
                  )
                 )
                 (br_if $while-in123
                  (i32.or
                   (tee_local $7
                    (call $_bitshift64Lshr
                     (get_local $7)
                     (get_local $11)
                     (i32.const 4)
                    )
                   )
                   (tee_local $11
                    (get_global $tempRet0)
                   )
                  )
                 )
                )
                (set_local $7
                 (get_local $8)
                )
                (set_local $8
                 (if (result i32)
                  (i32.or
                   (i32.eqz
                    (i32.and
                     (get_local $5)
                     (i32.const 8)
                    )
                   )
                   (i32.eqz
                    (i32.or
                     (i32.load
                      (get_local $14)
                     )
                     (i32.load offset=4
                      (get_local $14)
                     )
                    )
                   )
                  )
                  (block (result i32)
                   (set_local $9
                    (i32.const 4091)
                   )
                   (i32.const 0)
                  )
                  (block (result i32)
                   (set_local $9
                    (i32.add
                     (i32.shr_s
                      (get_local $19)
                      (i32.const 4)
                     )
                     (i32.const 4091)
                    )
                   )
                   (i32.const 2)
                  )
                 )
                )
               )
               (block
                (set_local $7
                 (get_local $25)
                )
                (set_local $8
                 (i32.const 0)
                )
                (set_local $9
                 (i32.const 4091)
                )
               )
              )
              (br $__rjti$8)
             )
             (set_local $7
              (call $_fmt_u
               (get_local $5)
               (get_local $7)
               (get_local $25)
              )
             )
             (set_local $5
              (get_local $11)
             )
             (br $__rjti$8)
            )
            (set_local $19
             (i32.eqz
              (tee_local $13
               (call $_memchr
                (get_local $7)
                (get_local $6)
               )
              )
             )
            )
            (set_local $11
             (get_local $8)
            )
            (set_local $12
             (select
              (get_local $6)
              (i32.sub
               (get_local $13)
               (tee_local $5
                (get_local $7)
               )
              )
              (get_local $19)
             )
            )
            (set_local $8
             (i32.const 0)
            )
            (set_local $9
             (i32.const 4091)
            )
            (br $__rjto$8
             (select
              (i32.add
               (get_local $5)
               (get_local $6)
              )
              (get_local $13)
              (get_local $19)
             )
            )
           )
           (set_local $5
            (i32.const 0)
           )
           (set_local $7
            (i32.const 0)
           )
           (set_local $6
            (i32.load
             (get_local $14)
            )
           )
           (loop $while-in125
            (block $while-out124
             (br_if $while-out124
              (i32.eqz
               (tee_local $9
                (i32.load
                 (get_local $6)
                )
               )
              )
             )
             (br_if $while-out124
              (i32.or
               (i32.lt_s
                (tee_local $7
                 (call $_wctomb
                  (get_local $36)
                  (get_local $9)
                 )
                )
                (i32.const 0)
               )
               (i32.gt_u
                (get_local $7)
                (i32.sub
                 (get_local $8)
                 (get_local $5)
                )
               )
              )
             )
             (set_local $6
              (i32.add
               (get_local $6)
               (i32.const 4)
              )
             )
             (br_if $while-in125
              (i32.gt_u
               (get_local $8)
               (tee_local $5
                (i32.add
                 (get_local $7)
                 (get_local $5)
                )
               )
              )
             )
            )
           )
           (if
            (i32.lt_s
             (get_local $7)
             (i32.const 0)
            )
            (block
             (set_local $17
              (i32.const -1)
             )
             (br $label$break$L1)
            )
           )
           (call $_pad
            (get_local $0)
            (i32.const 32)
            (get_local $15)
            (get_local $5)
            (get_local $11)
           )
           (if (result i32)
            (get_local $5)
            (block (result i32)
             (set_local $6
              (i32.const 0)
             )
             (set_local $7
              (i32.load
               (get_local $14)
              )
             )
             (loop $while-in127
              (drop
               (br_if $__rjti$7
                (get_local $5)
                (i32.eqz
                 (tee_local $8
                  (i32.load
                   (get_local $7)
                  )
                 )
                )
               )
              )
              (drop
               (br_if $__rjti$7
                (get_local $5)
                (i32.gt_s
                 (tee_local $6
                  (i32.add
                   (tee_local $8
                    (call $_wctomb
                     (get_local $36)
                     (get_local $8)
                    )
                   )
                   (get_local $6)
                  )
                 )
                 (get_local $5)
                )
               )
              )
              (if
               (i32.eqz
                (i32.and
                 (i32.load
                  (get_local $0)
                 )
                 (i32.const 32)
                )
               )
               (drop
                (call $___fwritex
                 (get_local $36)
                 (get_local $8)
                 (get_local $0)
                )
               )
              )
              (set_local $7
               (i32.add
                (get_local $7)
                (i32.const 4)
               )
              )
              (br_if $while-in127
               (i32.lt_u
                (get_local $6)
                (get_local $5)
               )
              )
             )
             (get_local $5)
            )
            (i32.const 0)
           )
          )
         )
         (call $_pad
          (get_local $0)
          (i32.const 32)
          (get_local $15)
          (get_local $7)
          (i32.xor
           (get_local $11)
           (i32.const 8192)
          )
         )
         (set_local $5
          (get_local $10)
         )
         (set_local $10
          (select
           (get_local $15)
           (get_local $7)
           (i32.gt_s
            (get_local $15)
            (get_local $7)
           )
          )
         )
         (br $label$continue$L1)
        )
        (set_local $11
         (select
          (i32.and
           (get_local $5)
           (i32.const -65537)
          )
          (get_local $5)
          (i32.gt_s
           (get_local $6)
           (i32.const -1)
          )
         )
        )
        (if (result i32)
         (i32.or
          (get_local $6)
          (tee_local $5
           (i32.or
            (i32.ne
             (i32.load
              (get_local $14)
             )
             (i32.const 0)
            )
            (i32.ne
             (i32.load offset=4
              (get_local $14)
             )
             (i32.const 0)
            )
           )
          )
         )
         (block (result i32)
          (set_local $12
           (select
            (get_local $6)
            (tee_local $7
             (i32.add
              (i32.xor
               (i32.and
                (get_local $5)
                (i32.const 1)
               )
               (i32.const 1)
              )
              (i32.sub
               (get_local $39)
               (tee_local $5
                (get_local $7)
               )
              )
             )
            )
            (i32.gt_s
             (get_local $6)
             (get_local $7)
            )
           )
          )
          (get_local $25)
         )
         (block (result i32)
          (set_local $12
           (i32.const 0)
          )
          (tee_local $5
           (get_local $25)
          )
         )
        )
       )
      )
      (call $_pad
       (get_local $0)
       (i32.const 32)
       (tee_local $7
        (select
         (tee_local $6
          (i32.add
           (get_local $8)
           (tee_local $12
            (select
             (tee_local $13
              (i32.sub
               (get_local $7)
               (get_local $5)
              )
             )
             (get_local $12)
             (i32.lt_s
              (get_local $12)
              (get_local $13)
             )
            )
           )
          )
         )
         (get_local $15)
         (i32.lt_s
          (get_local $15)
          (get_local $6)
         )
        )
       )
       (get_local $6)
       (get_local $11)
      )
      (if
       (i32.eqz
        (i32.and
         (i32.load
          (get_local $0)
         )
         (i32.const 32)
        )
       )
       (drop
        (call $___fwritex
         (get_local $9)
         (get_local $8)
         (get_local $0)
        )
       )
      )
      (call $_pad
       (get_local $0)
       (i32.const 48)
       (get_local $7)
       (get_local $6)
       (i32.xor
        (get_local $11)
        (i32.const 65536)
       )
      )
      (call $_pad
       (get_local $0)
       (i32.const 48)
       (get_local $12)
       (get_local $13)
       (i32.const 0)
      )
      (if
       (i32.eqz
        (i32.and
         (i32.load
          (get_local $0)
         )
         (i32.const 32)
        )
       )
       (drop
        (call $___fwritex
         (get_local $5)
         (get_local $13)
         (get_local $0)
        )
       )
      )
      (call $_pad
       (get_local $0)
       (i32.const 32)
       (get_local $7)
       (get_local $6)
       (i32.xor
        (get_local $11)
        (i32.const 8192)
       )
      )
      (set_local $5
       (get_local $10)
      )
      (set_local $10
       (get_local $7)
      )
      (br $label$continue$L1)
     )
    )
    (br $label$break$L343)
   )
   (if
    (i32.eqz
     (get_local $0)
    )
    (if
     (get_local $1)
     (block
      (set_local $0
       (i32.const 1)
      )
      (loop $while-in130
       (if
        (tee_local $1
         (i32.load
          (i32.add
           (get_local $4)
           (i32.shl
            (get_local $0)
            (i32.const 2)
           )
          )
         )
        )
        (block
         (call $_pop_arg_336
          (i32.add
           (get_local $3)
           (i32.shl
            (get_local $0)
            (i32.const 3)
           )
          )
          (get_local $1)
          (get_local $2)
         )
         (br_if $while-in130
          (i32.lt_s
           (tee_local $0
            (i32.add
             (get_local $0)
             (i32.const 1)
            )
           )
           (i32.const 10)
          )
         )
         (set_local $17
          (i32.const 1)
         )
         (br $label$break$L343)
        )
       )
      )
      (if
       (i32.lt_s
        (get_local $0)
        (i32.const 10)
       )
       (loop $while-in132
        (if
         (i32.load
          (i32.add
           (get_local $4)
           (i32.shl
            (get_local $0)
            (i32.const 2)
           )
          )
         )
         (block
          (set_local $17
           (i32.const -1)
          )
          (br $label$break$L343)
         )
        )
        (br_if $while-in132
         (i32.lt_s
          (tee_local $0
           (i32.add
            (get_local $0)
            (i32.const 1)
           )
          )
          (i32.const 10)
         )
        )
        (set_local $17
         (i32.const 1)
        )
       )
       (set_local $17
        (i32.const 1)
       )
      )
     )
     (set_local $17
      (i32.const 0)
     )
    )
   )
  )
  (set_global $STACKTOP
   (get_local $35)
  )
  (get_local $17)
 )
 (func $_pop_arg_336 (; 49 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32)
  (local $3 i32)
  (local $4 f64)
  (local $5 i32)
  (block $label$break$L1
   (if
    (i32.le_u
     (get_local $1)
     (i32.const 20)
    )
    (block $switch-default
     (block $switch-case9
      (block $switch-case8
       (block $switch-case7
        (block $switch-case6
         (block $switch-case5
          (block $switch-case4
           (block $switch-case3
            (block $switch-case2
             (block $switch-case1
              (block $switch-case
               (br_table $switch-case $switch-case1 $switch-case2 $switch-case3 $switch-case4 $switch-case5 $switch-case6 $switch-case7 $switch-case8 $switch-case9 $switch-default
                (i32.sub
                 (get_local $1)
                 (i32.const 9)
                )
               )
              )
              (set_local $3
               (i32.load
                (tee_local $1
                 (i32.and
                  (i32.add
                   (i32.load
                    (get_local $2)
                   )
                   (i32.const 3)
                  )
                  (i32.const -4)
                 )
                )
               )
              )
              (i32.store
               (get_local $2)
               (i32.add
                (get_local $1)
                (i32.const 4)
               )
              )
              (i32.store
               (get_local $0)
               (get_local $3)
              )
              (br $label$break$L1)
             )
             (set_local $1
              (i32.load
               (tee_local $3
                (i32.and
                 (i32.add
                  (i32.load
                   (get_local $2)
                  )
                  (i32.const 3)
                 )
                 (i32.const -4)
                )
               )
              )
             )
             (i32.store
              (get_local $2)
              (i32.add
               (get_local $3)
               (i32.const 4)
              )
             )
             (i32.store
              (get_local $0)
              (get_local $1)
             )
             (i32.store offset=4
              (get_local $0)
              (i32.shr_s
               (i32.shl
                (i32.lt_s
                 (get_local $1)
                 (i32.const 0)
                )
                (i32.const 31)
               )
               (i32.const 31)
              )
             )
             (br $label$break$L1)
            )
            (set_local $3
             (i32.load
              (tee_local $1
               (i32.and
                (i32.add
                 (i32.load
                  (get_local $2)
                 )
                 (i32.const 3)
                )
                (i32.const -4)
               )
              )
             )
            )
            (i32.store
             (get_local $2)
             (i32.add
              (get_local $1)
              (i32.const 4)
             )
            )
            (i32.store
             (get_local $0)
             (get_local $3)
            )
            (i32.store offset=4
             (get_local $0)
             (i32.const 0)
            )
            (br $label$break$L1)
           )
           (set_local $5
            (i32.load
             (tee_local $3
              (tee_local $1
               (i32.and
                (i32.add
                 (i32.load
                  (get_local $2)
                 )
                 (i32.const 7)
                )
                (i32.const -8)
               )
              )
             )
            )
           )
           (set_local $3
            (i32.load offset=4
             (get_local $3)
            )
           )
           (i32.store
            (get_local $2)
            (i32.add
             (get_local $1)
             (i32.const 8)
            )
           )
           (i32.store
            (get_local $0)
            (get_local $5)
           )
           (i32.store offset=4
            (get_local $0)
            (get_local $3)
           )
           (br $label$break$L1)
          )
          (set_local $3
           (i32.load
            (tee_local $1
             (i32.and
              (i32.add
               (i32.load
                (get_local $2)
               )
               (i32.const 3)
              )
              (i32.const -4)
             )
            )
           )
          )
          (i32.store
           (get_local $2)
           (i32.add
            (get_local $1)
            (i32.const 4)
           )
          )
          (i32.store
           (get_local $0)
           (tee_local $1
            (i32.shr_s
             (i32.shl
              (i32.and
               (get_local $3)
               (i32.const 65535)
              )
              (i32.const 16)
             )
             (i32.const 16)
            )
           )
          )
          (i32.store offset=4
           (get_local $0)
           (i32.shr_s
            (i32.shl
             (i32.lt_s
              (get_local $1)
              (i32.const 0)
             )
             (i32.const 31)
            )
            (i32.const 31)
           )
          )
          (br $label$break$L1)
         )
         (set_local $3
          (i32.load
           (tee_local $1
            (i32.and
             (i32.add
              (i32.load
               (get_local $2)
              )
              (i32.const 3)
             )
             (i32.const -4)
            )
           )
          )
         )
         (i32.store
          (get_local $2)
          (i32.add
           (get_local $1)
           (i32.const 4)
          )
         )
         (i32.store
          (get_local $0)
          (i32.and
           (get_local $3)
           (i32.const 65535)
          )
         )
         (i32.store offset=4
          (get_local $0)
          (i32.const 0)
         )
         (br $label$break$L1)
        )
        (set_local $3
         (i32.load
          (tee_local $1
           (i32.and
            (i32.add
             (i32.load
              (get_local $2)
             )
             (i32.const 3)
            )
            (i32.const -4)
           )
          )
         )
        )
        (i32.store
         (get_local $2)
         (i32.add
          (get_local $1)
          (i32.const 4)
         )
        )
        (i32.store
         (get_local $0)
         (tee_local $1
          (i32.shr_s
           (i32.shl
            (i32.and
             (get_local $3)
             (i32.const 255)
            )
            (i32.const 24)
           )
           (i32.const 24)
          )
         )
        )
        (i32.store offset=4
         (get_local $0)
         (i32.shr_s
          (i32.shl
           (i32.lt_s
            (get_local $1)
            (i32.const 0)
           )
           (i32.const 31)
          )
          (i32.const 31)
         )
        )
        (br $label$break$L1)
       )
       (set_local $3
        (i32.load
         (tee_local $1
          (i32.and
           (i32.add
            (i32.load
             (get_local $2)
            )
            (i32.const 3)
           )
           (i32.const -4)
          )
         )
        )
       )
       (i32.store
        (get_local $2)
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
       )
       (i32.store
        (get_local $0)
        (i32.and
         (get_local $3)
         (i32.const 255)
        )
       )
       (i32.store offset=4
        (get_local $0)
        (i32.const 0)
       )
       (br $label$break$L1)
      )
      (set_local $4
       (f64.load
        (tee_local $1
         (i32.and
          (i32.add
           (i32.load
            (get_local $2)
           )
           (i32.const 7)
          )
          (i32.const -8)
         )
        )
       )
      )
      (i32.store
       (get_local $2)
       (i32.add
        (get_local $1)
        (i32.const 8)
       )
      )
      (f64.store
       (get_local $0)
       (get_local $4)
      )
      (br $label$break$L1)
     )
     (set_local $4
      (f64.load
       (tee_local $1
        (i32.and
         (i32.add
          (i32.load
           (get_local $2)
          )
          (i32.const 7)
         )
         (i32.const -8)
        )
       )
      )
     )
     (i32.store
      (get_local $2)
      (i32.add
       (get_local $1)
       (i32.const 8)
      )
     )
     (f64.store
      (get_local $0)
      (get_local $4)
     )
    )
   )
  )
 )
 (func $_fmt_u (; 50 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (if
   (i32.or
    (i32.gt_u
     (get_local $1)
     (i32.const 0)
    )
    (i32.and
     (i32.eqz
      (get_local $1)
     )
     (i32.gt_u
      (get_local $0)
      (i32.const -1)
     )
    )
   )
   (loop $while-in
    (i32.store8
     (tee_local $2
      (i32.add
       (get_local $2)
       (i32.const -1)
      )
     )
     (i32.or
      (tee_local $3
       (call $___uremdi3
        (get_local $0)
        (get_local $1)
        (i32.const 10)
       )
      )
      (i32.const 48)
     )
    )
    (set_local $3
     (call $___udivdi3
      (get_local $0)
      (get_local $1)
      (i32.const 10)
     )
    )
    (set_local $4
     (get_global $tempRet0)
    )
    (set_local $0
     (if (result i32)
      (i32.or
       (i32.gt_u
        (get_local $1)
        (i32.const 9)
       )
       (i32.and
        (i32.eq
         (get_local $1)
         (i32.const 9)
        )
        (i32.gt_u
         (get_local $0)
         (i32.const -1)
        )
       )
      )
      (block
       (set_local $0
        (get_local $3)
       )
       (set_local $1
        (get_local $4)
       )
       (br $while-in)
      )
      (get_local $3)
     )
    )
   )
  )
  (if
   (get_local $0)
   (loop $while-in1
    (i32.store8
     (tee_local $2
      (i32.add
       (get_local $2)
       (i32.const -1)
      )
     )
     (i32.or
      (call $i32u-rem
       (get_local $0)
       (i32.const 10)
      )
      (i32.const 48)
     )
    )
    (set_local $1
     (call $i32u-div
      (get_local $0)
      (i32.const 10)
     )
    )
    (if
     (i32.ge_u
      (get_local $0)
      (i32.const 10)
     )
     (block
      (set_local $0
       (get_local $1)
      )
      (br $while-in1)
     )
    )
   )
  )
  (get_local $2)
 )
 (func $_pad (; 51 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (param $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (set_local $7
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 256)
   )
  )
  (if
   (i32.ge_s
    (get_global $STACKTOP)
    (get_global $STACK_MAX)
   )
   (call $abort)
  )
  (set_local $6
   (get_local $7)
  )
  (block $do-once
   (if
    (i32.and
     (i32.gt_s
      (get_local $2)
      (get_local $3)
     )
     (i32.eqz
      (i32.and
       (get_local $4)
       (i32.const 73728)
      )
     )
    )
    (block
     (drop
      (call $_memset
       (get_local $6)
       (get_local $1)
       (select
        (i32.const 256)
        (tee_local $5
         (i32.sub
          (get_local $2)
          (get_local $3)
         )
        )
        (i32.gt_u
         (get_local $5)
         (i32.const 256)
        )
       )
      )
     )
     (set_local $4
      (i32.eqz
       (i32.and
        (tee_local $1
         (i32.load
          (get_local $0)
         )
        )
        (i32.const 32)
       )
      )
     )
     (if
      (i32.gt_u
       (get_local $5)
       (i32.const 255)
      )
      (block
       (loop $while-in
        (if
         (get_local $4)
         (block
          (drop
           (call $___fwritex
            (get_local $6)
            (i32.const 256)
            (get_local $0)
           )
          )
          (set_local $1
           (i32.load
            (get_local $0)
           )
          )
         )
        )
        (set_local $4
         (i32.eqz
          (i32.and
           (get_local $1)
           (i32.const 32)
          )
         )
        )
        (br_if $while-in
         (i32.gt_u
          (tee_local $5
           (i32.add
            (get_local $5)
            (i32.const -256)
           )
          )
          (i32.const 255)
         )
        )
       )
       (br_if $do-once
        (i32.eqz
         (get_local $4)
        )
       )
       (set_local $5
        (i32.and
         (i32.sub
          (get_local $2)
          (get_local $3)
         )
         (i32.const 255)
        )
       )
      )
      (br_if $do-once
       (i32.eqz
        (get_local $4)
       )
      )
     )
     (drop
      (call $___fwritex
       (get_local $6)
       (get_local $5)
       (get_local $0)
      )
     )
    )
   )
  )
  (set_global $STACKTOP
   (get_local $7)
  )
 )
 (func $_malloc (; 52 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (local $16 i32)
  (local $17 i32)
  (local $18 i32)
  (block $folding-inner0
   (set_local $0
    (block $do-once (result i32)
     (if (result i32)
      (i32.lt_u
       (get_local $0)
       (i32.const 245)
      )
      (block (result i32)
       (if
        (i32.and
         (tee_local $10
          (i32.shr_u
           (tee_local $6
            (i32.load
             (i32.const 176)
            )
           )
           (tee_local $13
            (i32.shr_u
             (tee_local $2
              (select
               (i32.const 16)
               (i32.and
                (i32.add
                 (get_local $0)
                 (i32.const 11)
                )
                (i32.const -8)
               )
               (i32.lt_u
                (get_local $0)
                (i32.const 11)
               )
              )
             )
             (i32.const 3)
            )
           )
          )
         )
         (i32.const 3)
        )
        (block
         (set_local $11
          (i32.load
           (tee_local $1
            (i32.add
             (tee_local $7
              (i32.load
               (tee_local $3
                (i32.add
                 (tee_local $2
                  (i32.add
                   (i32.shl
                    (tee_local $4
                     (i32.add
                      (i32.xor
                       (i32.and
                        (get_local $10)
                        (i32.const 1)
                       )
                       (i32.const 1)
                      )
                      (get_local $13)
                     )
                    )
                    (i32.const 3)
                   )
                   (i32.const 216)
                  )
                 )
                 (i32.const 8)
                )
               )
              )
             )
             (i32.const 8)
            )
           )
          )
         )
         (if
          (i32.eq
           (get_local $2)
           (get_local $11)
          )
          (i32.store
           (i32.const 176)
           (i32.and
            (get_local $6)
            (i32.xor
             (i32.shl
              (i32.const 1)
              (get_local $4)
             )
             (i32.const -1)
            )
           )
          )
          (block
           (if
            (i32.lt_u
             (get_local $11)
             (i32.load
              (i32.const 192)
             )
            )
            (call $_abort)
           )
           (if
            (i32.eq
             (i32.load
              (tee_local $0
               (i32.add
                (get_local $11)
                (i32.const 12)
               )
              )
             )
             (get_local $7)
            )
            (block
             (i32.store
              (get_local $0)
              (get_local $2)
             )
             (i32.store
              (get_local $3)
              (get_local $11)
             )
            )
            (call $_abort)
           )
          )
         )
         (i32.store offset=4
          (get_local $7)
          (i32.or
           (tee_local $0
            (i32.shl
             (get_local $4)
             (i32.const 3)
            )
           )
           (i32.const 3)
          )
         )
         (i32.store
          (tee_local $0
           (i32.add
            (i32.add
             (get_local $7)
             (get_local $0)
            )
            (i32.const 4)
           )
          )
          (i32.or
           (i32.load
            (get_local $0)
           )
           (i32.const 1)
          )
         )
         (return
          (get_local $1)
         )
        )
       )
       (if (result i32)
        (i32.gt_u
         (get_local $2)
         (tee_local $0
          (i32.load
           (i32.const 184)
          )
         )
        )
        (block (result i32)
         (if
          (get_local $10)
          (block
           (set_local $7
            (i32.and
             (i32.shr_u
              (tee_local $3
               (i32.add
                (i32.and
                 (tee_local $3
                  (i32.and
                   (i32.shl
                    (get_local $10)
                    (get_local $13)
                   )
                   (i32.or
                    (tee_local $3
                     (i32.shl
                      (i32.const 2)
                      (get_local $13)
                     )
                    )
                    (i32.sub
                     (i32.const 0)
                     (get_local $3)
                    )
                   )
                  )
                 )
                 (i32.sub
                  (i32.const 0)
                  (get_local $3)
                 )
                )
                (i32.const -1)
               )
              )
              (i32.const 12)
             )
             (i32.const 16)
            )
           )
           (set_local $10
            (i32.load
             (tee_local $4
              (i32.add
               (tee_local $8
                (i32.load
                 (tee_local $3
                  (i32.add
                   (tee_local $7
                    (i32.add
                     (i32.shl
                      (tee_local $11
                       (i32.add
                        (i32.or
                         (i32.or
                          (i32.or
                           (i32.or
                            (tee_local $3
                             (i32.and
                              (i32.shr_u
                               (tee_local $4
                                (i32.shr_u
                                 (get_local $3)
                                 (get_local $7)
                                )
                               )
                               (i32.const 5)
                              )
                              (i32.const 8)
                             )
                            )
                            (get_local $7)
                           )
                           (tee_local $3
                            (i32.and
                             (i32.shr_u
                              (tee_local $4
                               (i32.shr_u
                                (get_local $4)
                                (get_local $3)
                               )
                              )
                              (i32.const 2)
                             )
                             (i32.const 4)
                            )
                           )
                          )
                          (tee_local $3
                           (i32.and
                            (i32.shr_u
                             (tee_local $4
                              (i32.shr_u
                               (get_local $4)
                               (get_local $3)
                              )
                             )
                             (i32.const 1)
                            )
                            (i32.const 2)
                           )
                          )
                         )
                         (tee_local $3
                          (i32.and
                           (i32.shr_u
                            (tee_local $4
                             (i32.shr_u
                              (get_local $4)
                              (get_local $3)
                             )
                            )
                            (i32.const 1)
                           )
                           (i32.const 1)
                          )
                         )
                        )
                        (i32.shr_u
                         (get_local $4)
                         (get_local $3)
                        )
                       )
                      )
                      (i32.const 3)
                     )
                     (i32.const 216)
                    )
                   )
                   (i32.const 8)
                  )
                 )
                )
               )
               (i32.const 8)
              )
             )
            )
           )
           (if
            (i32.eq
             (get_local $7)
             (get_local $10)
            )
            (block
             (i32.store
              (i32.const 176)
              (i32.and
               (get_local $6)
               (i32.xor
                (i32.shl
                 (i32.const 1)
                 (get_local $11)
                )
                (i32.const -1)
               )
              )
             )
             (set_local $9
              (get_local $0)
             )
            )
            (block
             (if
              (i32.lt_u
               (get_local $10)
               (i32.load
                (i32.const 192)
               )
              )
              (call $_abort)
             )
             (if
              (i32.eq
               (i32.load
                (tee_local $0
                 (i32.add
                  (get_local $10)
                  (i32.const 12)
                 )
                )
               )
               (get_local $8)
              )
              (block
               (i32.store
                (get_local $0)
                (get_local $7)
               )
               (i32.store
                (get_local $3)
                (get_local $10)
               )
               (set_local $9
                (i32.load
                 (i32.const 184)
                )
               )
              )
              (call $_abort)
             )
            )
           )
           (i32.store offset=4
            (get_local $8)
            (i32.or
             (get_local $2)
             (i32.const 3)
            )
           )
           (i32.store offset=4
            (tee_local $7
             (i32.add
              (get_local $8)
              (get_local $2)
             )
            )
            (i32.or
             (tee_local $11
              (i32.sub
               (i32.shl
                (get_local $11)
                (i32.const 3)
               )
               (get_local $2)
              )
             )
             (i32.const 1)
            )
           )
           (i32.store
            (i32.add
             (get_local $7)
             (get_local $11)
            )
            (get_local $11)
           )
           (if
            (get_local $9)
            (block
             (set_local $6
              (i32.load
               (i32.const 196)
              )
             )
             (set_local $2
              (i32.add
               (i32.shl
                (tee_local $0
                 (i32.shr_u
                  (get_local $9)
                  (i32.const 3)
                 )
                )
                (i32.const 3)
               )
               (i32.const 216)
              )
             )
             (if
              (i32.and
               (tee_local $3
                (i32.load
                 (i32.const 176)
                )
               )
               (tee_local $0
                (i32.shl
                 (i32.const 1)
                 (get_local $0)
                )
               )
              )
              (if
               (i32.lt_u
                (tee_local $0
                 (i32.load
                  (tee_local $3
                   (i32.add
                    (get_local $2)
                    (i32.const 8)
                   )
                  )
                 )
                )
                (i32.load
                 (i32.const 192)
                )
               )
               (call $_abort)
               (block
                (set_local $5
                 (get_local $3)
                )
                (set_local $1
                 (get_local $0)
                )
               )
              )
              (block
               (i32.store
                (i32.const 176)
                (i32.or
                 (get_local $3)
                 (get_local $0)
                )
               )
               (set_local $5
                (i32.add
                 (get_local $2)
                 (i32.const 8)
                )
               )
               (set_local $1
                (get_local $2)
               )
              )
             )
             (i32.store
              (get_local $5)
              (get_local $6)
             )
             (i32.store offset=12
              (get_local $1)
              (get_local $6)
             )
             (i32.store offset=8
              (get_local $6)
              (get_local $1)
             )
             (i32.store offset=12
              (get_local $6)
              (get_local $2)
             )
            )
           )
           (i32.store
            (i32.const 184)
            (get_local $11)
           )
           (i32.store
            (i32.const 196)
            (get_local $7)
           )
           (return
            (get_local $4)
           )
          )
         )
         (if (result i32)
          (tee_local $0
           (i32.load
            (i32.const 180)
           )
          )
          (block
           (set_local $7
            (i32.and
             (i32.shr_u
              (tee_local $0
               (i32.add
                (i32.and
                 (get_local $0)
                 (i32.sub
                  (i32.const 0)
                  (get_local $0)
                 )
                )
                (i32.const -1)
               )
              )
              (i32.const 12)
             )
             (i32.const 16)
            )
           )
           (set_local $11
            (i32.sub
             (i32.and
              (i32.load offset=4
               (tee_local $0
                (i32.load offset=480
                 (i32.shl
                  (i32.add
                   (i32.or
                    (i32.or
                     (i32.or
                      (i32.or
                       (tee_local $0
                        (i32.and
                         (i32.shr_u
                          (tee_local $1
                           (i32.shr_u
                            (get_local $0)
                            (get_local $7)
                           )
                          )
                          (i32.const 5)
                         )
                         (i32.const 8)
                        )
                       )
                       (get_local $7)
                      )
                      (tee_local $0
                       (i32.and
                        (i32.shr_u
                         (tee_local $1
                          (i32.shr_u
                           (get_local $1)
                           (get_local $0)
                          )
                         )
                         (i32.const 2)
                        )
                        (i32.const 4)
                       )
                      )
                     )
                     (tee_local $0
                      (i32.and
                       (i32.shr_u
                        (tee_local $1
                         (i32.shr_u
                          (get_local $1)
                          (get_local $0)
                         )
                        )
                        (i32.const 1)
                       )
                       (i32.const 2)
                      )
                     )
                    )
                    (tee_local $0
                     (i32.and
                      (i32.shr_u
                       (tee_local $1
                        (i32.shr_u
                         (get_local $1)
                         (get_local $0)
                        )
                       )
                       (i32.const 1)
                      )
                      (i32.const 1)
                     )
                    )
                   )
                   (i32.shr_u
                    (get_local $1)
                    (get_local $0)
                   )
                  )
                  (i32.const 2)
                 )
                )
               )
              )
              (i32.const -8)
             )
             (get_local $2)
            )
           )
           (set_local $7
            (get_local $0)
           )
           (loop $while-in
            (block $while-out
             (if
              (tee_local $1
               (i32.load offset=16
                (get_local $0)
               )
              )
              (set_local $0
               (get_local $1)
              )
              (if
               (i32.eqz
                (tee_local $0
                 (i32.load offset=20
                  (get_local $0)
                 )
                )
               )
               (block
                (set_local $6
                 (get_local $11)
                )
                (set_local $8
                 (get_local $7)
                )
                (br $while-out)
               )
              )
             )
             (set_local $6
              (i32.lt_u
               (tee_local $1
                (i32.sub
                 (i32.and
                  (i32.load offset=4
                   (get_local $0)
                  )
                  (i32.const -8)
                 )
                 (get_local $2)
                )
               )
               (get_local $11)
              )
             )
             (set_local $11
              (select
               (get_local $1)
               (get_local $11)
               (get_local $6)
              )
             )
             (set_local $7
              (select
               (get_local $0)
               (get_local $7)
               (get_local $6)
              )
             )
             (br $while-in)
            )
           )
           (if
            (i32.lt_u
             (get_local $8)
             (tee_local $10
              (i32.load
               (i32.const 192)
              )
             )
            )
            (call $_abort)
           )
           (if
            (i32.ge_u
             (get_local $8)
             (tee_local $5
              (i32.add
               (get_local $8)
               (get_local $2)
              )
             )
            )
            (call $_abort)
           )
           (set_local $9
            (i32.load offset=24
             (get_local $8)
            )
           )
           (block $do-once4
            (if
             (i32.eq
              (tee_local $0
               (i32.load offset=12
                (get_local $8)
               )
              )
              (get_local $8)
             )
             (block
              (if
               (i32.eqz
                (tee_local $1
                 (i32.load
                  (tee_local $0
                   (i32.add
                    (get_local $8)
                    (i32.const 20)
                   )
                  )
                 )
                )
               )
               (br_if $do-once4
                (i32.eqz
                 (tee_local $1
                  (i32.load
                   (tee_local $0
                    (i32.add
                     (get_local $8)
                     (i32.const 16)
                    )
                   )
                  )
                 )
                )
               )
              )
              (loop $while-in7
               (if
                (tee_local $7
                 (i32.load
                  (tee_local $11
                   (i32.add
                    (get_local $1)
                    (i32.const 20)
                   )
                  )
                 )
                )
                (block
                 (set_local $1
                  (get_local $7)
                 )
                 (set_local $0
                  (get_local $11)
                 )
                 (br $while-in7)
                )
               )
               (if
                (tee_local $7
                 (i32.load
                  (tee_local $11
                   (i32.add
                    (get_local $1)
                    (i32.const 16)
                   )
                  )
                 )
                )
                (block
                 (set_local $1
                  (get_local $7)
                 )
                 (set_local $0
                  (get_local $11)
                 )
                 (br $while-in7)
                )
               )
              )
              (if
               (i32.lt_u
                (get_local $0)
                (get_local $10)
               )
               (call $_abort)
               (block
                (i32.store
                 (get_local $0)
                 (i32.const 0)
                )
                (set_local $4
                 (get_local $1)
                )
               )
              )
             )
             (block
              (if
               (i32.lt_u
                (tee_local $11
                 (i32.load offset=8
                  (get_local $8)
                 )
                )
                (get_local $10)
               )
               (call $_abort)
              )
              (if
               (i32.ne
                (i32.load
                 (tee_local $7
                  (i32.add
                   (get_local $11)
                   (i32.const 12)
                  )
                 )
                )
                (get_local $8)
               )
               (call $_abort)
              )
              (if
               (i32.eq
                (i32.load
                 (tee_local $1
                  (i32.add
                   (get_local $0)
                   (i32.const 8)
                  )
                 )
                )
                (get_local $8)
               )
               (block
                (i32.store
                 (get_local $7)
                 (get_local $0)
                )
                (i32.store
                 (get_local $1)
                 (get_local $11)
                )
                (set_local $4
                 (get_local $0)
                )
               )
               (call $_abort)
              )
             )
            )
           )
           (block $do-once8
            (if
             (get_local $9)
             (block
              (if
               (i32.eq
                (get_local $8)
                (i32.load
                 (tee_local $0
                  (i32.add
                   (i32.shl
                    (tee_local $1
                     (i32.load offset=28
                      (get_local $8)
                     )
                    )
                    (i32.const 2)
                   )
                   (i32.const 480)
                  )
                 )
                )
               )
               (block
                (i32.store
                 (get_local $0)
                 (get_local $4)
                )
                (if
                 (i32.eqz
                  (get_local $4)
                 )
                 (block
                  (i32.store
                   (i32.const 180)
                   (i32.and
                    (i32.load
                     (i32.const 180)
                    )
                    (i32.xor
                     (i32.shl
                      (i32.const 1)
                      (get_local $1)
                     )
                     (i32.const -1)
                    )
                   )
                  )
                  (br $do-once8)
                 )
                )
               )
               (block
                (if
                 (i32.lt_u
                  (get_local $9)
                  (i32.load
                   (i32.const 192)
                  )
                 )
                 (call $_abort)
                )
                (if
                 (i32.eq
                  (i32.load
                   (tee_local $0
                    (i32.add
                     (get_local $9)
                     (i32.const 16)
                    )
                   )
                  )
                  (get_local $8)
                 )
                 (i32.store
                  (get_local $0)
                  (get_local $4)
                 )
                 (i32.store offset=20
                  (get_local $9)
                  (get_local $4)
                 )
                )
                (br_if $do-once8
                 (i32.eqz
                  (get_local $4)
                 )
                )
               )
              )
              (if
               (i32.lt_u
                (get_local $4)
                (tee_local $0
                 (i32.load
                  (i32.const 192)
                 )
                )
               )
               (call $_abort)
              )
              (i32.store offset=24
               (get_local $4)
               (get_local $9)
              )
              (if
               (tee_local $1
                (i32.load offset=16
                 (get_local $8)
                )
               )
               (if
                (i32.lt_u
                 (get_local $1)
                 (get_local $0)
                )
                (call $_abort)
                (block
                 (i32.store offset=16
                  (get_local $4)
                  (get_local $1)
                 )
                 (i32.store offset=24
                  (get_local $1)
                  (get_local $4)
                 )
                )
               )
              )
              (if
               (tee_local $0
                (i32.load offset=20
                 (get_local $8)
                )
               )
               (if
                (i32.lt_u
                 (get_local $0)
                 (i32.load
                  (i32.const 192)
                 )
                )
                (call $_abort)
                (block
                 (i32.store offset=20
                  (get_local $4)
                  (get_local $0)
                 )
                 (i32.store offset=24
                  (get_local $0)
                  (get_local $4)
                 )
                )
               )
              )
             )
            )
           )
           (if
            (i32.lt_u
             (get_local $6)
             (i32.const 16)
            )
            (block
             (i32.store offset=4
              (get_local $8)
              (i32.or
               (tee_local $0
                (i32.add
                 (get_local $6)
                 (get_local $2)
                )
               )
               (i32.const 3)
              )
             )
             (i32.store
              (tee_local $0
               (i32.add
                (i32.add
                 (get_local $8)
                 (get_local $0)
                )
                (i32.const 4)
               )
              )
              (i32.or
               (i32.load
                (get_local $0)
               )
               (i32.const 1)
              )
             )
            )
            (block
             (i32.store offset=4
              (get_local $8)
              (i32.or
               (get_local $2)
               (i32.const 3)
              )
             )
             (i32.store offset=4
              (get_local $5)
              (i32.or
               (get_local $6)
               (i32.const 1)
              )
             )
             (i32.store
              (i32.add
               (get_local $5)
               (get_local $6)
              )
              (get_local $6)
             )
             (if
              (tee_local $0
               (i32.load
                (i32.const 184)
               )
              )
              (block
               (set_local $4
                (i32.load
                 (i32.const 196)
                )
               )
               (set_local $2
                (i32.add
                 (i32.shl
                  (tee_local $0
                   (i32.shr_u
                    (get_local $0)
                    (i32.const 3)
                   )
                  )
                  (i32.const 3)
                 )
                 (i32.const 216)
                )
               )
               (if
                (i32.and
                 (tee_local $1
                  (i32.load
                   (i32.const 176)
                  )
                 )
                 (tee_local $0
                  (i32.shl
                   (i32.const 1)
                   (get_local $0)
                  )
                 )
                )
                (if
                 (i32.lt_u
                  (tee_local $0
                   (i32.load
                    (tee_local $1
                     (i32.add
                      (get_local $2)
                      (i32.const 8)
                     )
                    )
                   )
                  )
                  (i32.load
                   (i32.const 192)
                  )
                 )
                 (call $_abort)
                 (block
                  (set_local $12
                   (get_local $1)
                  )
                  (set_local $3
                   (get_local $0)
                  )
                 )
                )
                (block
                 (i32.store
                  (i32.const 176)
                  (i32.or
                   (get_local $1)
                   (get_local $0)
                  )
                 )
                 (set_local $12
                  (i32.add
                   (get_local $2)
                   (i32.const 8)
                  )
                 )
                 (set_local $3
                  (get_local $2)
                 )
                )
               )
               (i32.store
                (get_local $12)
                (get_local $4)
               )
               (i32.store offset=12
                (get_local $3)
                (get_local $4)
               )
               (i32.store offset=8
                (get_local $4)
                (get_local $3)
               )
               (i32.store offset=12
                (get_local $4)
                (get_local $2)
               )
              )
             )
             (i32.store
              (i32.const 184)
              (get_local $6)
             )
             (i32.store
              (i32.const 196)
              (get_local $5)
             )
            )
           )
           (return
            (i32.add
             (get_local $8)
             (i32.const 8)
            )
           )
          )
          (get_local $2)
         )
        )
        (get_local $2)
       )
      )
      (if (result i32)
       (i32.gt_u
        (get_local $0)
        (i32.const -65)
       )
       (i32.const -1)
       (block (result i32)
        (set_local $2
         (i32.and
          (tee_local $0
           (i32.add
            (get_local $0)
            (i32.const 11)
           )
          )
          (i32.const -8)
         )
        )
        (if (result i32)
         (tee_local $18
          (i32.load
           (i32.const 180)
          )
         )
         (block (result i32)
          (set_local $14
           (if (result i32)
            (tee_local $0
             (i32.shr_u
              (get_local $0)
              (i32.const 8)
             )
            )
            (if (result i32)
             (i32.gt_u
              (get_local $2)
              (i32.const 16777215)
             )
             (i32.const 31)
             (i32.or
              (i32.and
               (i32.shr_u
                (get_local $2)
                (i32.add
                 (tee_local $0
                  (i32.add
                   (i32.sub
                    (i32.const 14)
                    (i32.or
                     (i32.or
                      (tee_local $0
                       (i32.and
                        (i32.shr_u
                         (i32.add
                          (tee_local $1
                           (i32.shl
                            (get_local $0)
                            (tee_local $3
                             (i32.and
                              (i32.shr_u
                               (i32.add
                                (get_local $0)
                                (i32.const 1048320)
                               )
                               (i32.const 16)
                              )
                              (i32.const 8)
                             )
                            )
                           )
                          )
                          (i32.const 520192)
                         )
                         (i32.const 16)
                        )
                        (i32.const 4)
                       )
                      )
                      (get_local $3)
                     )
                     (tee_local $0
                      (i32.and
                       (i32.shr_u
                        (i32.add
                         (tee_local $1
                          (i32.shl
                           (get_local $1)
                           (get_local $0)
                          )
                         )
                         (i32.const 245760)
                        )
                        (i32.const 16)
                       )
                       (i32.const 2)
                      )
                     )
                    )
                   )
                   (i32.shr_u
                    (i32.shl
                     (get_local $1)
                     (get_local $0)
                    )
                    (i32.const 15)
                   )
                  )
                 )
                 (i32.const 7)
                )
               )
               (i32.const 1)
              )
              (i32.shl
               (get_local $0)
               (i32.const 1)
              )
             )
            )
            (i32.const 0)
           )
          )
          (set_local $3
           (i32.sub
            (i32.const 0)
            (get_local $2)
           )
          )
          (block $__rjto$3
           (block $__rjti$3
            (if
             (tee_local $0
              (i32.load offset=480
               (i32.shl
                (get_local $14)
                (i32.const 2)
               )
              )
             )
             (block
              (set_local $9
               (i32.shl
                (get_local $2)
                (select
                 (i32.const 0)
                 (i32.sub
                  (i32.const 25)
                  (i32.shr_u
                   (get_local $14)
                   (i32.const 1)
                  )
                 )
                 (i32.eq
                  (get_local $14)
                  (i32.const 31)
                 )
                )
               )
              )
              (set_local $1
               (i32.const 0)
              )
              (loop $while-in14
               (if
                (i32.lt_u
                 (tee_local $4
                  (i32.sub
                   (tee_local $12
                    (i32.and
                     (i32.load offset=4
                      (get_local $0)
                     )
                     (i32.const -8)
                    )
                   )
                   (get_local $2)
                  )
                 )
                 (get_local $3)
                )
                (set_local $1
                 (if (result i32)
                  (i32.eq
                   (get_local $12)
                   (get_local $2)
                  )
                  (block
                   (set_local $1
                    (get_local $4)
                   )
                   (set_local $3
                    (get_local $0)
                   )
                   (br $__rjti$3)
                  )
                  (block (result i32)
                   (set_local $3
                    (get_local $4)
                   )
                   (get_local $0)
                  )
                 )
                )
               )
               (set_local $0
                (select
                 (get_local $5)
                 (tee_local $4
                  (i32.load offset=20
                   (get_local $0)
                  )
                 )
                 (i32.or
                  (i32.eqz
                   (get_local $4)
                  )
                  (i32.eq
                   (get_local $4)
                   (tee_local $12
                    (i32.load
                     (i32.add
                      (i32.add
                       (get_local $0)
                       (i32.const 16)
                      )
                      (i32.shl
                       (i32.shr_u
                        (get_local $9)
                        (i32.const 31)
                       )
                       (i32.const 2)
                      )
                     )
                    )
                   )
                  )
                 )
                )
               )
               (set_local $4
                (i32.shl
                 (get_local $9)
                 (i32.xor
                  (tee_local $5
                   (i32.eqz
                    (get_local $12)
                   )
                  )
                  (i32.const 1)
                 )
                )
               )
               (set_local $0
                (if (result i32)
                 (get_local $5)
                 (block (result i32)
                  (set_local $4
                   (get_local $0)
                  )
                  (get_local $1)
                 )
                 (block
                  (set_local $5
                   (get_local $0)
                  )
                  (set_local $9
                   (get_local $4)
                  )
                  (set_local $0
                   (get_local $12)
                  )
                  (br $while-in14)
                 )
                )
               )
              )
             )
             (set_local $0
              (i32.const 0)
             )
            )
            (if
             (i32.eqz
              (i32.or
               (get_local $4)
               (get_local $0)
              )
             )
             (block
              (drop
               (br_if $do-once
                (get_local $2)
                (i32.eqz
                 (tee_local $1
                  (i32.and
                   (get_local $18)
                   (i32.or
                    (tee_local $1
                     (i32.shl
                      (i32.const 2)
                      (get_local $14)
                     )
                    )
                    (i32.sub
                     (i32.const 0)
                     (get_local $1)
                    )
                   )
                  )
                 )
                )
               )
              )
              (set_local $12
               (i32.and
                (i32.shr_u
                 (tee_local $1
                  (i32.add
                   (i32.and
                    (get_local $1)
                    (i32.sub
                     (i32.const 0)
                     (get_local $1)
                    )
                   )
                   (i32.const -1)
                  )
                 )
                 (i32.const 12)
                )
                (i32.const 16)
               )
              )
              (set_local $4
               (i32.load offset=480
                (i32.shl
                 (i32.add
                  (i32.or
                   (i32.or
                    (i32.or
                     (i32.or
                      (tee_local $1
                       (i32.and
                        (i32.shr_u
                         (tee_local $4
                          (i32.shr_u
                           (get_local $1)
                           (get_local $12)
                          )
                         )
                         (i32.const 5)
                        )
                        (i32.const 8)
                       )
                      )
                      (get_local $12)
                     )
                     (tee_local $1
                      (i32.and
                       (i32.shr_u
                        (tee_local $4
                         (i32.shr_u
                          (get_local $4)
                          (get_local $1)
                         )
                        )
                        (i32.const 2)
                       )
                       (i32.const 4)
                      )
                     )
                    )
                    (tee_local $1
                     (i32.and
                      (i32.shr_u
                       (tee_local $4
                        (i32.shr_u
                         (get_local $4)
                         (get_local $1)
                        )
                       )
                       (i32.const 1)
                      )
                      (i32.const 2)
                     )
                    )
                   )
                   (tee_local $1
                    (i32.and
                     (i32.shr_u
                      (tee_local $4
                       (i32.shr_u
                        (get_local $4)
                        (get_local $1)
                       )
                      )
                      (i32.const 1)
                     )
                     (i32.const 1)
                    )
                   )
                  )
                  (i32.shr_u
                   (get_local $4)
                   (get_local $1)
                  )
                 )
                 (i32.const 2)
                )
               )
              )
             )
            )
            (set_local $4
             (if (result i32)
              (get_local $4)
              (block
               (set_local $1
                (get_local $3)
               )
               (set_local $3
                (get_local $4)
               )
               (br $__rjti$3)
              )
              (get_local $0)
             )
            )
            (br $__rjto$3)
           )
           (loop $while-in16
            (set_local $12
             (i32.lt_u
              (tee_local $4
               (i32.sub
                (i32.and
                 (i32.load offset=4
                  (get_local $3)
                 )
                 (i32.const -8)
                )
                (get_local $2)
               )
              )
              (get_local $1)
             )
            )
            (set_local $1
             (select
              (get_local $4)
              (get_local $1)
              (get_local $12)
             )
            )
            (set_local $0
             (select
              (get_local $3)
              (get_local $0)
              (get_local $12)
             )
            )
            (if
             (tee_local $4
              (i32.load offset=16
               (get_local $3)
              )
             )
             (block
              (set_local $3
               (get_local $4)
              )
              (br $while-in16)
             )
            )
            (br_if $while-in16
             (tee_local $3
              (i32.load offset=20
               (get_local $3)
              )
             )
            )
           )
           (set_local $4
            (get_local $0)
           )
           (set_local $3
            (get_local $1)
           )
          )
          (if (result i32)
           (get_local $4)
           (if (result i32)
            (i32.lt_u
             (get_local $3)
             (i32.sub
              (i32.load
               (i32.const 184)
              )
              (get_local $2)
             )
            )
            (block
             (if
              (i32.lt_u
               (get_local $4)
               (tee_local $8
                (i32.load
                 (i32.const 192)
                )
               )
              )
              (call $_abort)
             )
             (if
              (i32.ge_u
               (get_local $4)
               (tee_local $5
                (i32.add
                 (get_local $4)
                 (get_local $2)
                )
               )
              )
              (call $_abort)
             )
             (set_local $12
              (i32.load offset=24
               (get_local $4)
              )
             )
             (block $do-once17
              (if
               (i32.eq
                (tee_local $0
                 (i32.load offset=12
                  (get_local $4)
                 )
                )
                (get_local $4)
               )
               (block
                (if
                 (i32.eqz
                  (tee_local $1
                   (i32.load
                    (tee_local $0
                     (i32.add
                      (get_local $4)
                      (i32.const 20)
                     )
                    )
                   )
                  )
                 )
                 (br_if $do-once17
                  (i32.eqz
                   (tee_local $1
                    (i32.load
                     (tee_local $0
                      (i32.add
                       (get_local $4)
                       (i32.const 16)
                      )
                     )
                    )
                   )
                  )
                 )
                )
                (loop $while-in20
                 (if
                  (tee_local $7
                   (i32.load
                    (tee_local $11
                     (i32.add
                      (get_local $1)
                      (i32.const 20)
                     )
                    )
                   )
                  )
                  (block
                   (set_local $1
                    (get_local $7)
                   )
                   (set_local $0
                    (get_local $11)
                   )
                   (br $while-in20)
                  )
                 )
                 (if
                  (tee_local $7
                   (i32.load
                    (tee_local $11
                     (i32.add
                      (get_local $1)
                      (i32.const 16)
                     )
                    )
                   )
                  )
                  (block
                   (set_local $1
                    (get_local $7)
                   )
                   (set_local $0
                    (get_local $11)
                   )
                   (br $while-in20)
                  )
                 )
                )
                (if
                 (i32.lt_u
                  (get_local $0)
                  (get_local $8)
                 )
                 (call $_abort)
                 (block
                  (i32.store
                   (get_local $0)
                   (i32.const 0)
                  )
                  (set_local $10
                   (get_local $1)
                  )
                 )
                )
               )
               (block
                (if
                 (i32.lt_u
                  (tee_local $11
                   (i32.load offset=8
                    (get_local $4)
                   )
                  )
                  (get_local $8)
                 )
                 (call $_abort)
                )
                (if
                 (i32.ne
                  (i32.load
                   (tee_local $7
                    (i32.add
                     (get_local $11)
                     (i32.const 12)
                    )
                   )
                  )
                  (get_local $4)
                 )
                 (call $_abort)
                )
                (if
                 (i32.eq
                  (i32.load
                   (tee_local $1
                    (i32.add
                     (get_local $0)
                     (i32.const 8)
                    )
                   )
                  )
                  (get_local $4)
                 )
                 (block
                  (i32.store
                   (get_local $7)
                   (get_local $0)
                  )
                  (i32.store
                   (get_local $1)
                   (get_local $11)
                  )
                  (set_local $10
                   (get_local $0)
                  )
                 )
                 (call $_abort)
                )
               )
              )
             )
             (block $do-once21
              (if
               (get_local $12)
               (block
                (if
                 (i32.eq
                  (get_local $4)
                  (i32.load
                   (tee_local $0
                    (i32.add
                     (i32.shl
                      (tee_local $1
                       (i32.load offset=28
                        (get_local $4)
                       )
                      )
                      (i32.const 2)
                     )
                     (i32.const 480)
                    )
                   )
                  )
                 )
                 (block
                  (i32.store
                   (get_local $0)
                   (get_local $10)
                  )
                  (if
                   (i32.eqz
                    (get_local $10)
                   )
                   (block
                    (i32.store
                     (i32.const 180)
                     (i32.and
                      (i32.load
                       (i32.const 180)
                      )
                      (i32.xor
                       (i32.shl
                        (i32.const 1)
                        (get_local $1)
                       )
                       (i32.const -1)
                      )
                     )
                    )
                    (br $do-once21)
                   )
                  )
                 )
                 (block
                  (if
                   (i32.lt_u
                    (get_local $12)
                    (i32.load
                     (i32.const 192)
                    )
                   )
                   (call $_abort)
                  )
                  (if
                   (i32.eq
                    (i32.load
                     (tee_local $0
                      (i32.add
                       (get_local $12)
                       (i32.const 16)
                      )
                     )
                    )
                    (get_local $4)
                   )
                   (i32.store
                    (get_local $0)
                    (get_local $10)
                   )
                   (i32.store offset=20
                    (get_local $12)
                    (get_local $10)
                   )
                  )
                  (br_if $do-once21
                   (i32.eqz
                    (get_local $10)
                   )
                  )
                 )
                )
                (if
                 (i32.lt_u
                  (get_local $10)
                  (tee_local $0
                   (i32.load
                    (i32.const 192)
                   )
                  )
                 )
                 (call $_abort)
                )
                (i32.store offset=24
                 (get_local $10)
                 (get_local $12)
                )
                (if
                 (tee_local $1
                  (i32.load offset=16
                   (get_local $4)
                  )
                 )
                 (if
                  (i32.lt_u
                   (get_local $1)
                   (get_local $0)
                  )
                  (call $_abort)
                  (block
                   (i32.store offset=16
                    (get_local $10)
                    (get_local $1)
                   )
                   (i32.store offset=24
                    (get_local $1)
                    (get_local $10)
                   )
                  )
                 )
                )
                (if
                 (tee_local $0
                  (i32.load offset=20
                   (get_local $4)
                  )
                 )
                 (if
                  (i32.lt_u
                   (get_local $0)
                   (i32.load
                    (i32.const 192)
                   )
                  )
                  (call $_abort)
                  (block
                   (i32.store offset=20
                    (get_local $10)
                    (get_local $0)
                   )
                   (i32.store offset=24
                    (get_local $0)
                    (get_local $10)
                   )
                  )
                 )
                )
               )
              )
             )
             (block $do-once25
              (if
               (i32.lt_u
                (get_local $3)
                (i32.const 16)
               )
               (block
                (i32.store offset=4
                 (get_local $4)
                 (i32.or
                  (tee_local $0
                   (i32.add
                    (get_local $3)
                    (get_local $2)
                   )
                  )
                  (i32.const 3)
                 )
                )
                (i32.store
                 (tee_local $0
                  (i32.add
                   (i32.add
                    (get_local $4)
                    (get_local $0)
                   )
                   (i32.const 4)
                  )
                 )
                 (i32.or
                  (i32.load
                   (get_local $0)
                  )
                  (i32.const 1)
                 )
                )
               )
               (block
                (i32.store offset=4
                 (get_local $4)
                 (i32.or
                  (get_local $2)
                  (i32.const 3)
                 )
                )
                (i32.store offset=4
                 (get_local $5)
                 (i32.or
                  (get_local $3)
                  (i32.const 1)
                 )
                )
                (i32.store
                 (i32.add
                  (get_local $5)
                  (get_local $3)
                 )
                 (get_local $3)
                )
                (set_local $0
                 (i32.shr_u
                  (get_local $3)
                  (i32.const 3)
                 )
                )
                (if
                 (i32.lt_u
                  (get_local $3)
                  (i32.const 256)
                 )
                 (block
                  (set_local $3
                   (i32.add
                    (i32.shl
                     (get_local $0)
                     (i32.const 3)
                    )
                    (i32.const 216)
                   )
                  )
                  (if
                   (i32.and
                    (tee_local $1
                     (i32.load
                      (i32.const 176)
                     )
                    )
                    (tee_local $0
                     (i32.shl
                      (i32.const 1)
                      (get_local $0)
                     )
                    )
                   )
                   (if
                    (i32.lt_u
                     (tee_local $0
                      (i32.load
                       (tee_local $1
                        (i32.add
                         (get_local $3)
                         (i32.const 8)
                        )
                       )
                      )
                     )
                     (i32.load
                      (i32.const 192)
                     )
                    )
                    (call $_abort)
                    (block
                     (set_local $13
                      (get_local $1)
                     )
                     (set_local $6
                      (get_local $0)
                     )
                    )
                   )
                   (block
                    (i32.store
                     (i32.const 176)
                     (i32.or
                      (get_local $1)
                      (get_local $0)
                     )
                    )
                    (set_local $13
                     (i32.add
                      (get_local $3)
                      (i32.const 8)
                     )
                    )
                    (set_local $6
                     (get_local $3)
                    )
                   )
                  )
                  (i32.store
                   (get_local $13)
                   (get_local $5)
                  )
                  (i32.store offset=12
                   (get_local $6)
                   (get_local $5)
                  )
                  (i32.store offset=8
                   (get_local $5)
                   (get_local $6)
                  )
                  (i32.store offset=12
                   (get_local $5)
                   (get_local $3)
                  )
                  (br $do-once25)
                 )
                )
                (set_local $2
                 (i32.add
                  (i32.shl
                   (tee_local $7
                    (if (result i32)
                     (tee_local $0
                      (i32.shr_u
                       (get_local $3)
                       (i32.const 8)
                      )
                     )
                     (if (result i32)
                      (i32.gt_u
                       (get_local $3)
                       (i32.const 16777215)
                      )
                      (i32.const 31)
                      (i32.or
                       (i32.and
                        (i32.shr_u
                         (get_local $3)
                         (i32.add
                          (tee_local $0
                           (i32.add
                            (i32.sub
                             (i32.const 14)
                             (i32.or
                              (i32.or
                               (tee_local $0
                                (i32.and
                                 (i32.shr_u
                                  (i32.add
                                   (tee_local $1
                                    (i32.shl
                                     (get_local $0)
                                     (tee_local $2
                                      (i32.and
                                       (i32.shr_u
                                        (i32.add
                                         (get_local $0)
                                         (i32.const 1048320)
                                        )
                                        (i32.const 16)
                                       )
                                       (i32.const 8)
                                      )
                                     )
                                    )
                                   )
                                   (i32.const 520192)
                                  )
                                  (i32.const 16)
                                 )
                                 (i32.const 4)
                                )
                               )
                               (get_local $2)
                              )
                              (tee_local $0
                               (i32.and
                                (i32.shr_u
                                 (i32.add
                                  (tee_local $1
                                   (i32.shl
                                    (get_local $1)
                                    (get_local $0)
                                   )
                                  )
                                  (i32.const 245760)
                                 )
                                 (i32.const 16)
                                )
                                (i32.const 2)
                               )
                              )
                             )
                            )
                            (i32.shr_u
                             (i32.shl
                              (get_local $1)
                              (get_local $0)
                             )
                             (i32.const 15)
                            )
                           )
                          )
                          (i32.const 7)
                         )
                        )
                        (i32.const 1)
                       )
                       (i32.shl
                        (get_local $0)
                        (i32.const 1)
                       )
                      )
                     )
                     (i32.const 0)
                    )
                   )
                   (i32.const 2)
                  )
                  (i32.const 480)
                 )
                )
                (i32.store offset=28
                 (get_local $5)
                 (get_local $7)
                )
                (i32.store offset=4
                 (tee_local $0
                  (i32.add
                   (get_local $5)
                   (i32.const 16)
                  )
                 )
                 (i32.const 0)
                )
                (i32.store
                 (get_local $0)
                 (i32.const 0)
                )
                (if
                 (i32.eqz
                  (i32.and
                   (tee_local $1
                    (i32.load
                     (i32.const 180)
                    )
                   )
                   (tee_local $0
                    (i32.shl
                     (i32.const 1)
                     (get_local $7)
                    )
                   )
                  )
                 )
                 (block
                  (i32.store
                   (i32.const 180)
                   (i32.or
                    (get_local $1)
                    (get_local $0)
                   )
                  )
                  (i32.store
                   (get_local $2)
                   (get_local $5)
                  )
                  (i32.store offset=24
                   (get_local $5)
                   (get_local $2)
                  )
                  (i32.store offset=12
                   (get_local $5)
                   (get_local $5)
                  )
                  (i32.store offset=8
                   (get_local $5)
                   (get_local $5)
                  )
                  (br $do-once25)
                 )
                )
                (set_local $7
                 (i32.shl
                  (get_local $3)
                  (select
                   (i32.const 0)
                   (i32.sub
                    (i32.const 25)
                    (i32.shr_u
                     (get_local $7)
                     (i32.const 1)
                    )
                   )
                   (i32.eq
                    (get_local $7)
                    (i32.const 31)
                   )
                  )
                 )
                )
                (set_local $0
                 (i32.load
                  (get_local $2)
                 )
                )
                (block $__rjto$1
                 (block $__rjti$1
                  (loop $while-in28
                   (br_if $__rjti$1
                    (i32.eq
                     (i32.and
                      (i32.load offset=4
                       (get_local $0)
                      )
                      (i32.const -8)
                     )
                     (get_local $3)
                    )
                   )
                   (set_local $2
                    (i32.shl
                     (get_local $7)
                     (i32.const 1)
                    )
                   )
                   (if
                    (tee_local $1
                     (i32.load
                      (tee_local $7
                       (i32.add
                        (i32.add
                         (get_local $0)
                         (i32.const 16)
                        )
                        (i32.shl
                         (i32.shr_u
                          (get_local $7)
                          (i32.const 31)
                         )
                         (i32.const 2)
                        )
                       )
                      )
                     )
                    )
                    (block
                     (set_local $7
                      (get_local $2)
                     )
                     (set_local $0
                      (get_local $1)
                     )
                     (br $while-in28)
                    )
                   )
                  )
                  (if
                   (i32.lt_u
                    (get_local $7)
                    (i32.load
                     (i32.const 192)
                    )
                   )
                   (call $_abort)
                   (block
                    (i32.store
                     (get_local $7)
                     (get_local $5)
                    )
                    (i32.store offset=24
                     (get_local $5)
                     (get_local $0)
                    )
                    (i32.store offset=12
                     (get_local $5)
                     (get_local $5)
                    )
                    (i32.store offset=8
                     (get_local $5)
                     (get_local $5)
                    )
                    (br $do-once25)
                   )
                  )
                  (br $__rjto$1)
                 )
                 (if
                  (i32.and
                   (i32.ge_u
                    (tee_local $2
                     (i32.load
                      (tee_local $3
                       (i32.add
                        (get_local $0)
                        (i32.const 8)
                       )
                      )
                     )
                    )
                    (tee_local $1
                     (i32.load
                      (i32.const 192)
                     )
                    )
                   )
                   (i32.ge_u
                    (get_local $0)
                    (get_local $1)
                   )
                  )
                  (block
                   (i32.store offset=12
                    (get_local $2)
                    (get_local $5)
                   )
                   (i32.store
                    (get_local $3)
                    (get_local $5)
                   )
                   (i32.store offset=8
                    (get_local $5)
                    (get_local $2)
                   )
                   (i32.store offset=12
                    (get_local $5)
                    (get_local $0)
                   )
                   (i32.store offset=24
                    (get_local $5)
                    (i32.const 0)
                   )
                  )
                  (call $_abort)
                 )
                )
               )
              )
             )
             (return
              (i32.add
               (get_local $4)
               (i32.const 8)
              )
             )
            )
            (get_local $2)
           )
           (get_local $2)
          )
         )
         (get_local $2)
        )
       )
      )
     )
    )
   )
   (if
    (i32.ge_u
     (tee_local $1
      (i32.load
       (i32.const 184)
      )
     )
     (get_local $0)
    )
    (block
     (set_local $2
      (i32.load
       (i32.const 196)
      )
     )
     (if
      (i32.gt_u
       (tee_local $3
        (i32.sub
         (get_local $1)
         (get_local $0)
        )
       )
       (i32.const 15)
      )
      (block
       (i32.store
        (i32.const 196)
        (tee_local $1
         (i32.add
          (get_local $2)
          (get_local $0)
         )
        )
       )
       (i32.store
        (i32.const 184)
        (get_local $3)
       )
       (i32.store offset=4
        (get_local $1)
        (i32.or
         (get_local $3)
         (i32.const 1)
        )
       )
       (i32.store
        (i32.add
         (get_local $1)
         (get_local $3)
        )
        (get_local $3)
       )
       (i32.store offset=4
        (get_local $2)
        (i32.or
         (get_local $0)
         (i32.const 3)
        )
       )
      )
      (block
       (i32.store
        (i32.const 184)
        (i32.const 0)
       )
       (i32.store
        (i32.const 196)
        (i32.const 0)
       )
       (i32.store offset=4
        (get_local $2)
        (i32.or
         (get_local $1)
         (i32.const 3)
        )
       )
       (i32.store
        (tee_local $0
         (i32.add
          (i32.add
           (get_local $2)
           (get_local $1)
          )
          (i32.const 4)
         )
        )
        (i32.or
         (i32.load
          (get_local $0)
         )
         (i32.const 1)
        )
       )
      )
     )
     (return
      (i32.add
       (get_local $2)
       (i32.const 8)
      )
     )
    )
   )
   (br_if $folding-inner0
    (i32.gt_u
     (tee_local $1
      (i32.load
       (i32.const 188)
      )
     )
     (get_local $0)
    )
   )
   (if
    (i32.eqz
     (i32.load
      (i32.const 648)
     )
    )
    (if
     (i32.and
      (i32.add
       (tee_local $1
        (call $_sysconf
         (i32.const 30)
        )
       )
       (i32.const -1)
      )
      (get_local $1)
     )
     (call $_abort)
     (block
      (i32.store
       (i32.const 656)
       (get_local $1)
      )
      (i32.store
       (i32.const 652)
       (get_local $1)
      )
      (i32.store
       (i32.const 660)
       (i32.const -1)
      )
      (i32.store
       (i32.const 664)
       (i32.const -1)
      )
      (i32.store
       (i32.const 668)
       (i32.const 0)
      )
      (i32.store
       (i32.const 620)
       (i32.const 0)
      )
      (i32.store
       (i32.const 648)
       (i32.xor
        (i32.and
         (call $_time
          (i32.const 0)
         )
         (i32.const -16)
        )
        (i32.const 1431655768)
       )
      )
     )
    )
   )
   (if
    (i32.le_u
     (tee_local $6
      (i32.and
       (tee_local $5
        (i32.add
         (tee_local $1
          (i32.load
           (i32.const 656)
          )
         )
         (tee_local $9
          (i32.add
           (get_local $0)
           (i32.const 47)
          )
         )
        )
       )
       (tee_local $12
        (i32.sub
         (i32.const 0)
         (get_local $1)
        )
       )
      )
     )
     (get_local $0)
    )
    (return
     (i32.const 0)
    )
   )
   (if
    (tee_local $2
     (i32.load
      (i32.const 616)
     )
    )
    (if
     (i32.or
      (i32.le_u
       (tee_local $1
        (i32.add
         (tee_local $3
          (i32.load
           (i32.const 608)
          )
         )
         (get_local $6)
        )
       )
       (get_local $3)
      )
      (i32.gt_u
       (get_local $1)
       (get_local $2)
      )
     )
     (return
      (i32.const 0)
     )
    )
   )
   (set_local $10
    (i32.add
     (get_local $0)
     (i32.const 48)
    )
   )
   (block $__rjto$13
    (block $__rjti$13
     (if
      (i32.eqz
       (i32.and
        (i32.load
         (i32.const 620)
        )
        (i32.const 4)
       )
      )
      (block
       (block $label$break$L279
        (block $__rjti$5
         (block $__rjti$4
          (br_if $__rjti$4
           (i32.eqz
            (tee_local $4
             (i32.load
              (i32.const 200)
             )
            )
           )
          )
          (set_local $1
           (i32.const 624)
          )
          (loop $while-in34
           (block $while-out33
            (if
             (i32.le_u
              (tee_local $3
               (i32.load
                (get_local $1)
               )
              )
              (get_local $4)
             )
             (if
              (i32.gt_u
               (i32.add
                (get_local $3)
                (i32.load
                 (tee_local $2
                  (i32.add
                   (get_local $1)
                   (i32.const 4)
                  )
                 )
                )
               )
               (get_local $4)
              )
              (block
               (set_local $4
                (get_local $1)
               )
               (br $while-out33)
              )
             )
            )
            (br_if $while-in34
             (tee_local $1
              (i32.load offset=8
               (get_local $1)
              )
             )
            )
            (br $__rjti$4)
           )
          )
          (if
           (i32.lt_u
            (tee_local $3
             (i32.and
              (i32.sub
               (get_local $5)
               (i32.load
                (i32.const 188)
               )
              )
              (get_local $12)
             )
            )
            (i32.const 2147483647)
           )
           (if
            (i32.eq
             (tee_local $1
              (call $_sbrk
               (get_local $3)
              )
             )
             (i32.add
              (i32.load
               (get_local $4)
              )
              (i32.load
               (get_local $2)
              )
             )
            )
            (br_if $__rjti$13
             (i32.ne
              (get_local $1)
              (i32.const -1)
             )
            )
            (block
             (set_local $2
              (get_local $1)
             )
             (br $__rjti$5)
            )
           )
          )
          (br $label$break$L279)
         )
         (if
          (i32.ne
           (tee_local $1
            (call $_sbrk
             (i32.const 0)
            )
           )
           (i32.const -1)
          )
          (block
           (set_local $3
            (if (result i32)
             (i32.and
              (tee_local $2
               (i32.add
                (tee_local $4
                 (i32.load
                  (i32.const 652)
                 )
                )
                (i32.const -1)
               )
              )
              (tee_local $3
               (get_local $1)
              )
             )
             (i32.add
              (i32.sub
               (get_local $6)
               (get_local $3)
              )
              (i32.and
               (i32.add
                (get_local $2)
                (get_local $3)
               )
               (i32.sub
                (i32.const 0)
                (get_local $4)
               )
              )
             )
             (get_local $6)
            )
           )
           (set_local $12
            (i32.add
             (tee_local $4
              (i32.load
               (i32.const 608)
              )
             )
             (get_local $3)
            )
           )
           (if
            (i32.and
             (i32.gt_u
              (get_local $3)
              (get_local $0)
             )
             (i32.lt_u
              (get_local $3)
              (i32.const 2147483647)
             )
            )
            (block
             (if
              (tee_local $2
               (i32.load
                (i32.const 616)
               )
              )
              (br_if $label$break$L279
               (i32.or
                (i32.le_u
                 (get_local $12)
                 (get_local $4)
                )
                (i32.gt_u
                 (get_local $12)
                 (get_local $2)
                )
               )
              )
             )
             (br_if $__rjti$13
              (i32.eq
               (tee_local $2
                (call $_sbrk
                 (get_local $3)
                )
               )
               (get_local $1)
              )
             )
             (br $__rjti$5)
            )
           )
          )
         )
         (br $label$break$L279)
        )
        (set_local $1
         (get_local $3)
        )
        (set_local $4
         (i32.sub
          (i32.const 0)
          (get_local $1)
         )
        )
        (set_local $3
         (if (result i32)
          (i32.and
           (i32.gt_u
            (get_local $10)
            (get_local $1)
           )
           (i32.and
            (i32.lt_u
             (get_local $1)
             (i32.const 2147483647)
            )
            (i32.ne
             (get_local $2)
             (i32.const -1)
            )
           )
          )
          (if (result i32)
           (i32.lt_u
            (tee_local $3
             (i32.and
              (i32.add
               (i32.sub
                (get_local $9)
                (get_local $1)
               )
               (tee_local $3
                (i32.load
                 (i32.const 656)
                )
               )
              )
              (i32.sub
               (i32.const 0)
               (get_local $3)
              )
             )
            )
            (i32.const 2147483647)
           )
           (if (result i32)
            (i32.eq
             (call $_sbrk
              (get_local $3)
             )
             (i32.const -1)
            )
            (block
             (drop
              (call $_sbrk
               (get_local $4)
              )
             )
             (br $label$break$L279)
            )
            (i32.add
             (get_local $3)
             (get_local $1)
            )
           )
           (get_local $1)
          )
          (get_local $1)
         )
        )
        (if
         (i32.ne
          (get_local $2)
          (i32.const -1)
         )
         (block
          (set_local $1
           (get_local $2)
          )
          (br $__rjti$13)
         )
        )
       )
       (i32.store
        (i32.const 620)
        (i32.or
         (i32.load
          (i32.const 620)
         )
         (i32.const 4)
        )
       )
      )
     )
     (if
      (i32.lt_u
       (get_local $6)
       (i32.const 2147483647)
      )
      (if
       (i32.and
        (i32.lt_u
         (tee_local $1
          (call $_sbrk
           (get_local $6)
          )
         )
         (tee_local $3
          (call $_sbrk
           (i32.const 0)
          )
         )
        )
        (i32.and
         (i32.ne
          (get_local $1)
          (i32.const -1)
         )
         (i32.ne
          (get_local $3)
          (i32.const -1)
         )
        )
       )
       (br_if $__rjti$13
        (i32.gt_u
         (tee_local $3
          (i32.sub
           (get_local $3)
           (get_local $1)
          )
         )
         (i32.add
          (get_local $0)
          (i32.const 40)
         )
        )
       )
      )
     )
     (br $__rjto$13)
    )
    (i32.store
     (i32.const 608)
     (tee_local $2
      (i32.add
       (i32.load
        (i32.const 608)
       )
       (get_local $3)
      )
     )
    )
    (if
     (i32.gt_u
      (get_local $2)
      (i32.load
       (i32.const 612)
      )
     )
     (i32.store
      (i32.const 612)
      (get_local $2)
     )
    )
    (block $do-once40
     (if
      (tee_local $5
       (i32.load
        (i32.const 200)
       )
      )
      (block
       (set_local $2
        (i32.const 624)
       )
       (block $__rjto$10
        (block $__rjti$10
         (loop $while-in45
          (br_if $__rjti$10
           (i32.eq
            (get_local $1)
            (i32.add
             (tee_local $10
              (i32.load
               (get_local $2)
              )
             )
             (tee_local $6
              (i32.load
               (tee_local $4
                (i32.add
                 (get_local $2)
                 (i32.const 4)
                )
               )
              )
             )
            )
           )
          )
          (br_if $while-in45
           (tee_local $2
            (i32.load offset=8
             (get_local $2)
            )
           )
          )
         )
         (br $__rjto$10)
        )
        (if
         (i32.eqz
          (i32.and
           (i32.load offset=12
            (get_local $2)
           )
           (i32.const 8)
          )
         )
         (if
          (i32.and
           (i32.lt_u
            (get_local $5)
            (get_local $1)
           )
           (i32.ge_u
            (get_local $5)
            (get_local $10)
           )
          )
          (block
           (i32.store
            (get_local $4)
            (i32.add
             (get_local $6)
             (get_local $3)
            )
           )
           (set_local $2
            (i32.add
             (get_local $5)
             (tee_local $1
              (select
               (i32.and
                (i32.sub
                 (i32.const 0)
                 (tee_local $1
                  (i32.add
                   (get_local $5)
                   (i32.const 8)
                  )
                 )
                )
                (i32.const 7)
               )
               (i32.const 0)
               (i32.and
                (get_local $1)
                (i32.const 7)
               )
              )
             )
            )
           )
           (set_local $1
            (i32.add
             (i32.sub
              (get_local $3)
              (get_local $1)
             )
             (i32.load
              (i32.const 188)
             )
            )
           )
           (i32.store
            (i32.const 200)
            (get_local $2)
           )
           (i32.store
            (i32.const 188)
            (get_local $1)
           )
           (i32.store offset=4
            (get_local $2)
            (i32.or
             (get_local $1)
             (i32.const 1)
            )
           )
           (i32.store offset=4
            (i32.add
             (get_local $2)
             (get_local $1)
            )
            (i32.const 40)
           )
           (i32.store
            (i32.const 204)
            (i32.load
             (i32.const 664)
            )
           )
           (br $do-once40)
          )
         )
        )
       )
       (if
        (i32.lt_u
         (get_local $1)
         (tee_local $4
          (i32.load
           (i32.const 192)
          )
         )
        )
        (block
         (i32.store
          (i32.const 192)
          (get_local $1)
         )
         (set_local $4
          (get_local $1)
         )
        )
       )
       (set_local $10
        (i32.add
         (get_local $1)
         (get_local $3)
        )
       )
       (set_local $2
        (i32.const 624)
       )
       (block $__rjto$11
        (block $__rjti$11
         (loop $while-in47
          (if
           (i32.eq
            (i32.load
             (get_local $2)
            )
            (get_local $10)
           )
           (block
            (set_local $6
             (get_local $2)
            )
            (br $__rjti$11)
           )
          )
          (br_if $while-in47
           (tee_local $2
            (i32.load offset=8
             (get_local $2)
            )
           )
          )
         )
         (set_local $4
          (i32.const 624)
         )
         (br $__rjto$11)
        )
        (set_local $4
         (if (result i32)
          (i32.and
           (i32.load offset=12
            (get_local $2)
           )
           (i32.const 8)
          )
          (i32.const 624)
          (block
           (i32.store
            (get_local $6)
            (get_local $1)
           )
           (i32.store
            (tee_local $2
             (i32.add
              (get_local $2)
              (i32.const 4)
             )
            )
            (i32.add
             (i32.load
              (get_local $2)
             )
             (get_local $3)
            )
           )
           (set_local $9
            (i32.add
             (tee_local $12
              (i32.add
               (get_local $1)
               (select
                (i32.and
                 (i32.sub
                  (i32.const 0)
                  (tee_local $1
                   (i32.add
                    (get_local $1)
                    (i32.const 8)
                   )
                  )
                 )
                 (i32.const 7)
                )
                (i32.const 0)
                (i32.and
                 (get_local $1)
                 (i32.const 7)
                )
               )
              )
             )
             (get_local $0)
            )
           )
           (set_local $7
            (i32.sub
             (i32.sub
              (tee_local $6
               (i32.add
                (get_local $10)
                (select
                 (i32.and
                  (i32.sub
                   (i32.const 0)
                   (tee_local $1
                    (i32.add
                     (get_local $10)
                     (i32.const 8)
                    )
                   )
                  )
                  (i32.const 7)
                 )
                 (i32.const 0)
                 (i32.and
                  (get_local $1)
                  (i32.const 7)
                 )
                )
               )
              )
              (get_local $12)
             )
             (get_local $0)
            )
           )
           (i32.store offset=4
            (get_local $12)
            (i32.or
             (get_local $0)
             (i32.const 3)
            )
           )
           (block $do-once48
            (if
             (i32.eq
              (get_local $6)
              (get_local $5)
             )
             (block
              (i32.store
               (i32.const 188)
               (tee_local $0
                (i32.add
                 (i32.load
                  (i32.const 188)
                 )
                 (get_local $7)
                )
               )
              )
              (i32.store
               (i32.const 200)
               (get_local $9)
              )
              (i32.store offset=4
               (get_local $9)
               (i32.or
                (get_local $0)
                (i32.const 1)
               )
              )
             )
             (block
              (if
               (i32.eq
                (get_local $6)
                (i32.load
                 (i32.const 196)
                )
               )
               (block
                (i32.store
                 (i32.const 184)
                 (tee_local $0
                  (i32.add
                   (i32.load
                    (i32.const 184)
                   )
                   (get_local $7)
                  )
                 )
                )
                (i32.store
                 (i32.const 196)
                 (get_local $9)
                )
                (i32.store offset=4
                 (get_local $9)
                 (i32.or
                  (get_local $0)
                  (i32.const 1)
                 )
                )
                (i32.store
                 (i32.add
                  (get_local $9)
                  (get_local $0)
                 )
                 (get_local $0)
                )
                (br $do-once48)
               )
              )
              (i32.store
               (tee_local $0
                (i32.add
                 (tee_local $0
                  (if (result i32)
                   (i32.eq
                    (i32.and
                     (tee_local $0
                      (i32.load offset=4
                       (get_local $6)
                      )
                     )
                     (i32.const 3)
                    )
                    (i32.const 1)
                   )
                   (block (result i32)
                    (set_local $10
                     (i32.and
                      (get_local $0)
                      (i32.const -8)
                     )
                    )
                    (set_local $1
                     (i32.shr_u
                      (get_local $0)
                      (i32.const 3)
                     )
                    )
                    (block $label$break$L331
                     (if
                      (i32.lt_u
                       (get_local $0)
                       (i32.const 256)
                      )
                      (block
                       (set_local $2
                        (i32.load offset=12
                         (get_local $6)
                        )
                       )
                       (block $do-once51
                        (if
                         (i32.ne
                          (tee_local $3
                           (i32.load offset=8
                            (get_local $6)
                           )
                          )
                          (tee_local $0
                           (i32.add
                            (i32.shl
                             (get_local $1)
                             (i32.const 3)
                            )
                            (i32.const 216)
                           )
                          )
                         )
                         (block
                          (if
                           (i32.lt_u
                            (get_local $3)
                            (get_local $4)
                           )
                           (call $_abort)
                          )
                          (br_if $do-once51
                           (i32.eq
                            (i32.load offset=12
                             (get_local $3)
                            )
                            (get_local $6)
                           )
                          )
                          (call $_abort)
                         )
                        )
                       )
                       (if
                        (i32.eq
                         (get_local $2)
                         (get_local $3)
                        )
                        (block
                         (i32.store
                          (i32.const 176)
                          (i32.and
                           (i32.load
                            (i32.const 176)
                           )
                           (i32.xor
                            (i32.shl
                             (i32.const 1)
                             (get_local $1)
                            )
                            (i32.const -1)
                           )
                          )
                         )
                         (br $label$break$L331)
                        )
                       )
                       (block $do-once53
                        (if
                         (i32.eq
                          (get_local $2)
                          (get_local $0)
                         )
                         (set_local $15
                          (i32.add
                           (get_local $2)
                           (i32.const 8)
                          )
                         )
                         (block
                          (if
                           (i32.lt_u
                            (get_local $2)
                            (get_local $4)
                           )
                           (call $_abort)
                          )
                          (if
                           (i32.eq
                            (i32.load
                             (tee_local $0
                              (i32.add
                               (get_local $2)
                               (i32.const 8)
                              )
                             )
                            )
                            (get_local $6)
                           )
                           (block
                            (set_local $15
                             (get_local $0)
                            )
                            (br $do-once53)
                           )
                          )
                          (call $_abort)
                         )
                        )
                       )
                       (i32.store offset=12
                        (get_local $3)
                        (get_local $2)
                       )
                       (i32.store
                        (get_local $15)
                        (get_local $3)
                       )
                      )
                      (block
                       (set_local $5
                        (i32.load offset=24
                         (get_local $6)
                        )
                       )
                       (block $do-once55
                        (if
                         (i32.eq
                          (tee_local $0
                           (i32.load offset=12
                            (get_local $6)
                           )
                          )
                          (get_local $6)
                         )
                         (block
                          (if
                           (i32.eqz
                            (tee_local $1
                             (i32.load
                              (tee_local $0
                               (i32.add
                                (tee_local $3
                                 (i32.add
                                  (get_local $6)
                                  (i32.const 16)
                                 )
                                )
                                (i32.const 4)
                               )
                              )
                             )
                            )
                           )
                           (block
                            (br_if $do-once55
                             (i32.eqz
                              (tee_local $1
                               (i32.load
                                (get_local $3)
                               )
                              )
                             )
                            )
                            (set_local $0
                             (get_local $3)
                            )
                           )
                          )
                          (loop $while-in58
                           (if
                            (tee_local $3
                             (i32.load
                              (tee_local $2
                               (i32.add
                                (get_local $1)
                                (i32.const 20)
                               )
                              )
                             )
                            )
                            (block
                             (set_local $1
                              (get_local $3)
                             )
                             (set_local $0
                              (get_local $2)
                             )
                             (br $while-in58)
                            )
                           )
                           (if
                            (tee_local $3
                             (i32.load
                              (tee_local $2
                               (i32.add
                                (get_local $1)
                                (i32.const 16)
                               )
                              )
                             )
                            )
                            (block
                             (set_local $1
                              (get_local $3)
                             )
                             (set_local $0
                              (get_local $2)
                             )
                             (br $while-in58)
                            )
                           )
                          )
                          (if
                           (i32.lt_u
                            (get_local $0)
                            (get_local $4)
                           )
                           (call $_abort)
                           (block
                            (i32.store
                             (get_local $0)
                             (i32.const 0)
                            )
                            (set_local $8
                             (get_local $1)
                            )
                           )
                          )
                         )
                         (block
                          (if
                           (i32.lt_u
                            (tee_local $2
                             (i32.load offset=8
                              (get_local $6)
                             )
                            )
                            (get_local $4)
                           )
                           (call $_abort)
                          )
                          (if
                           (i32.ne
                            (i32.load
                             (tee_local $3
                              (i32.add
                               (get_local $2)
                               (i32.const 12)
                              )
                             )
                            )
                            (get_local $6)
                           )
                           (call $_abort)
                          )
                          (if
                           (i32.eq
                            (i32.load
                             (tee_local $1
                              (i32.add
                               (get_local $0)
                               (i32.const 8)
                              )
                             )
                            )
                            (get_local $6)
                           )
                           (block
                            (i32.store
                             (get_local $3)
                             (get_local $0)
                            )
                            (i32.store
                             (get_local $1)
                             (get_local $2)
                            )
                            (set_local $8
                             (get_local $0)
                            )
                           )
                           (call $_abort)
                          )
                         )
                        )
                       )
                       (br_if $label$break$L331
                        (i32.eqz
                         (get_local $5)
                        )
                       )
                       (block $do-once59
                        (if
                         (i32.eq
                          (get_local $6)
                          (i32.load
                           (tee_local $0
                            (i32.add
                             (i32.shl
                              (tee_local $1
                               (i32.load offset=28
                                (get_local $6)
                               )
                              )
                              (i32.const 2)
                             )
                             (i32.const 480)
                            )
                           )
                          )
                         )
                         (block
                          (i32.store
                           (get_local $0)
                           (get_local $8)
                          )
                          (br_if $do-once59
                           (get_local $8)
                          )
                          (i32.store
                           (i32.const 180)
                           (i32.and
                            (i32.load
                             (i32.const 180)
                            )
                            (i32.xor
                             (i32.shl
                              (i32.const 1)
                              (get_local $1)
                             )
                             (i32.const -1)
                            )
                           )
                          )
                          (br $label$break$L331)
                         )
                         (block
                          (if
                           (i32.lt_u
                            (get_local $5)
                            (i32.load
                             (i32.const 192)
                            )
                           )
                           (call $_abort)
                          )
                          (if
                           (i32.eq
                            (i32.load
                             (tee_local $0
                              (i32.add
                               (get_local $5)
                               (i32.const 16)
                              )
                             )
                            )
                            (get_local $6)
                           )
                           (i32.store
                            (get_local $0)
                            (get_local $8)
                           )
                           (i32.store offset=20
                            (get_local $5)
                            (get_local $8)
                           )
                          )
                          (br_if $label$break$L331
                           (i32.eqz
                            (get_local $8)
                           )
                          )
                         )
                        )
                       )
                       (if
                        (i32.lt_u
                         (get_local $8)
                         (tee_local $1
                          (i32.load
                           (i32.const 192)
                          )
                         )
                        )
                        (call $_abort)
                       )
                       (i32.store offset=24
                        (get_local $8)
                        (get_local $5)
                       )
                       (if
                        (tee_local $3
                         (i32.load
                          (tee_local $0
                           (i32.add
                            (get_local $6)
                            (i32.const 16)
                           )
                          )
                         )
                        )
                        (if
                         (i32.lt_u
                          (get_local $3)
                          (get_local $1)
                         )
                         (call $_abort)
                         (block
                          (i32.store offset=16
                           (get_local $8)
                           (get_local $3)
                          )
                          (i32.store offset=24
                           (get_local $3)
                           (get_local $8)
                          )
                         )
                        )
                       )
                       (br_if $label$break$L331
                        (i32.eqz
                         (tee_local $0
                          (i32.load offset=4
                           (get_local $0)
                          )
                         )
                        )
                       )
                       (if
                        (i32.lt_u
                         (get_local $0)
                         (i32.load
                          (i32.const 192)
                         )
                        )
                        (call $_abort)
                        (block
                         (i32.store offset=20
                          (get_local $8)
                          (get_local $0)
                         )
                         (i32.store offset=24
                          (get_local $0)
                          (get_local $8)
                         )
                        )
                       )
                      )
                     )
                    )
                    (set_local $7
                     (i32.add
                      (get_local $10)
                      (get_local $7)
                     )
                    )
                    (i32.add
                     (get_local $6)
                     (get_local $10)
                    )
                   )
                   (get_local $6)
                  )
                 )
                 (i32.const 4)
                )
               )
               (i32.and
                (i32.load
                 (get_local $0)
                )
                (i32.const -2)
               )
              )
              (i32.store offset=4
               (get_local $9)
               (i32.or
                (get_local $7)
                (i32.const 1)
               )
              )
              (i32.store
               (i32.add
                (get_local $9)
                (get_local $7)
               )
               (get_local $7)
              )
              (set_local $0
               (i32.shr_u
                (get_local $7)
                (i32.const 3)
               )
              )
              (if
               (i32.lt_u
                (get_local $7)
                (i32.const 256)
               )
               (block
                (set_local $3
                 (i32.add
                  (i32.shl
                   (get_local $0)
                   (i32.const 3)
                  )
                  (i32.const 216)
                 )
                )
                (block $do-once63
                 (if
                  (i32.and
                   (tee_local $1
                    (i32.load
                     (i32.const 176)
                    )
                   )
                   (tee_local $0
                    (i32.shl
                     (i32.const 1)
                     (get_local $0)
                    )
                   )
                  )
                  (block
                   (if
                    (i32.ge_u
                     (tee_local $0
                      (i32.load
                       (tee_local $1
                        (i32.add
                         (get_local $3)
                         (i32.const 8)
                        )
                       )
                      )
                     )
                     (i32.load
                      (i32.const 192)
                     )
                    )
                    (block
                     (set_local $16
                      (get_local $1)
                     )
                     (set_local $11
                      (get_local $0)
                     )
                     (br $do-once63)
                    )
                   )
                   (call $_abort)
                  )
                  (block
                   (i32.store
                    (i32.const 176)
                    (i32.or
                     (get_local $1)
                     (get_local $0)
                    )
                   )
                   (set_local $16
                    (i32.add
                     (get_local $3)
                     (i32.const 8)
                    )
                   )
                   (set_local $11
                    (get_local $3)
                   )
                  )
                 )
                )
                (i32.store
                 (get_local $16)
                 (get_local $9)
                )
                (i32.store offset=12
                 (get_local $11)
                 (get_local $9)
                )
                (i32.store offset=8
                 (get_local $9)
                 (get_local $11)
                )
                (i32.store offset=12
                 (get_local $9)
                 (get_local $3)
                )
                (br $do-once48)
               )
              )
              (set_local $3
               (i32.add
                (i32.shl
                 (tee_local $2
                  (block $do-once65 (result i32)
                   (if (result i32)
                    (tee_local $0
                     (i32.shr_u
                      (get_local $7)
                      (i32.const 8)
                     )
                    )
                    (block (result i32)
                     (drop
                      (br_if $do-once65
                       (i32.const 31)
                       (i32.gt_u
                        (get_local $7)
                        (i32.const 16777215)
                       )
                      )
                     )
                     (i32.or
                      (i32.and
                       (i32.shr_u
                        (get_local $7)
                        (i32.add
                         (tee_local $0
                          (i32.add
                           (i32.sub
                            (i32.const 14)
                            (i32.or
                             (i32.or
                              (tee_local $0
                               (i32.and
                                (i32.shr_u
                                 (i32.add
                                  (tee_local $1
                                   (i32.shl
                                    (get_local $0)
                                    (tee_local $3
                                     (i32.and
                                      (i32.shr_u
                                       (i32.add
                                        (get_local $0)
                                        (i32.const 1048320)
                                       )
                                       (i32.const 16)
                                      )
                                      (i32.const 8)
                                     )
                                    )
                                   )
                                  )
                                  (i32.const 520192)
                                 )
                                 (i32.const 16)
                                )
                                (i32.const 4)
                               )
                              )
                              (get_local $3)
                             )
                             (tee_local $0
                              (i32.and
                               (i32.shr_u
                                (i32.add
                                 (tee_local $1
                                  (i32.shl
                                   (get_local $1)
                                   (get_local $0)
                                  )
                                 )
                                 (i32.const 245760)
                                )
                                (i32.const 16)
                               )
                               (i32.const 2)
                              )
                             )
                            )
                           )
                           (i32.shr_u
                            (i32.shl
                             (get_local $1)
                             (get_local $0)
                            )
                            (i32.const 15)
                           )
                          )
                         )
                         (i32.const 7)
                        )
                       )
                       (i32.const 1)
                      )
                      (i32.shl
                       (get_local $0)
                       (i32.const 1)
                      )
                     )
                    )
                    (i32.const 0)
                   )
                  )
                 )
                 (i32.const 2)
                )
                (i32.const 480)
               )
              )
              (i32.store offset=28
               (get_local $9)
               (get_local $2)
              )
              (i32.store offset=4
               (tee_local $0
                (i32.add
                 (get_local $9)
                 (i32.const 16)
                )
               )
               (i32.const 0)
              )
              (i32.store
               (get_local $0)
               (i32.const 0)
              )
              (if
               (i32.eqz
                (i32.and
                 (tee_local $1
                  (i32.load
                   (i32.const 180)
                  )
                 )
                 (tee_local $0
                  (i32.shl
                   (i32.const 1)
                   (get_local $2)
                  )
                 )
                )
               )
               (block
                (i32.store
                 (i32.const 180)
                 (i32.or
                  (get_local $1)
                  (get_local $0)
                 )
                )
                (i32.store
                 (get_local $3)
                 (get_local $9)
                )
                (i32.store offset=24
                 (get_local $9)
                 (get_local $3)
                )
                (i32.store offset=12
                 (get_local $9)
                 (get_local $9)
                )
                (i32.store offset=8
                 (get_local $9)
                 (get_local $9)
                )
                (br $do-once48)
               )
              )
              (set_local $2
               (i32.shl
                (get_local $7)
                (select
                 (i32.const 0)
                 (i32.sub
                  (i32.const 25)
                  (i32.shr_u
                   (get_local $2)
                   (i32.const 1)
                  )
                 )
                 (i32.eq
                  (get_local $2)
                  (i32.const 31)
                 )
                )
               )
              )
              (set_local $0
               (i32.load
                (get_local $3)
               )
              )
              (block $__rjto$7
               (block $__rjti$7
                (loop $while-in68
                 (br_if $__rjti$7
                  (i32.eq
                   (i32.and
                    (i32.load offset=4
                     (get_local $0)
                    )
                    (i32.const -8)
                   )
                   (get_local $7)
                  )
                 )
                 (set_local $3
                  (i32.shl
                   (get_local $2)
                   (i32.const 1)
                  )
                 )
                 (if
                  (tee_local $1
                   (i32.load
                    (tee_local $2
                     (i32.add
                      (i32.add
                       (get_local $0)
                       (i32.const 16)
                      )
                      (i32.shl
                       (i32.shr_u
                        (get_local $2)
                        (i32.const 31)
                       )
                       (i32.const 2)
                      )
                     )
                    )
                   )
                  )
                  (block
                   (set_local $2
                    (get_local $3)
                   )
                   (set_local $0
                    (get_local $1)
                   )
                   (br $while-in68)
                  )
                 )
                )
                (if
                 (i32.lt_u
                  (get_local $2)
                  (i32.load
                   (i32.const 192)
                  )
                 )
                 (call $_abort)
                 (block
                  (i32.store
                   (get_local $2)
                   (get_local $9)
                  )
                  (i32.store offset=24
                   (get_local $9)
                   (get_local $0)
                  )
                  (i32.store offset=12
                   (get_local $9)
                   (get_local $9)
                  )
                  (i32.store offset=8
                   (get_local $9)
                   (get_local $9)
                  )
                  (br $do-once48)
                 )
                )
                (br $__rjto$7)
               )
               (if
                (i32.and
                 (i32.ge_u
                  (tee_local $2
                   (i32.load
                    (tee_local $3
                     (i32.add
                      (get_local $0)
                      (i32.const 8)
                     )
                    )
                   )
                  )
                  (tee_local $1
                   (i32.load
                    (i32.const 192)
                   )
                  )
                 )
                 (i32.ge_u
                  (get_local $0)
                  (get_local $1)
                 )
                )
                (block
                 (i32.store offset=12
                  (get_local $2)
                  (get_local $9)
                 )
                 (i32.store
                  (get_local $3)
                  (get_local $9)
                 )
                 (i32.store offset=8
                  (get_local $9)
                  (get_local $2)
                 )
                 (i32.store offset=12
                  (get_local $9)
                  (get_local $0)
                 )
                 (i32.store offset=24
                  (get_local $9)
                  (i32.const 0)
                 )
                )
                (call $_abort)
               )
              )
             )
            )
           )
           (return
            (i32.add
             (get_local $12)
             (i32.const 8)
            )
           )
          )
         )
        )
       )
       (loop $while-in70
        (block $while-out69
         (if
          (i32.le_u
           (tee_local $2
            (i32.load
             (get_local $4)
            )
           )
           (get_local $5)
          )
          (br_if $while-out69
           (i32.gt_u
            (tee_local $2
             (i32.add
              (get_local $2)
              (i32.load offset=4
               (get_local $4)
              )
             )
            )
            (get_local $5)
           )
          )
         )
         (set_local $4
          (i32.load offset=8
           (get_local $4)
          )
         )
         (br $while-in70)
        )
       )
       (set_local $11
        (i32.add
         (tee_local $4
          (i32.add
           (get_local $2)
           (i32.const -47)
          )
         )
         (i32.const 8)
        )
       )
       (set_local $8
        (i32.add
         (tee_local $10
          (select
           (get_local $5)
           (tee_local $4
            (i32.add
             (get_local $4)
             (select
              (i32.and
               (i32.sub
                (i32.const 0)
                (get_local $11)
               )
               (i32.const 7)
              )
              (i32.const 0)
              (i32.and
               (get_local $11)
               (i32.const 7)
              )
             )
            )
           )
           (i32.lt_u
            (get_local $4)
            (tee_local $11
             (i32.add
              (get_local $5)
              (i32.const 16)
             )
            )
           )
          )
         )
         (i32.const 8)
        )
       )
       (i32.store
        (i32.const 200)
        (tee_local $6
         (i32.add
          (get_local $1)
          (tee_local $4
           (select
            (i32.and
             (i32.sub
              (i32.const 0)
              (tee_local $4
               (i32.add
                (get_local $1)
                (i32.const 8)
               )
              )
             )
             (i32.const 7)
            )
            (i32.const 0)
            (i32.and
             (get_local $4)
             (i32.const 7)
            )
           )
          )
         )
        )
       )
       (i32.store
        (i32.const 188)
        (tee_local $4
         (i32.sub
          (i32.add
           (get_local $3)
           (i32.const -40)
          )
          (get_local $4)
         )
        )
       )
       (i32.store offset=4
        (get_local $6)
        (i32.or
         (get_local $4)
         (i32.const 1)
        )
       )
       (i32.store offset=4
        (i32.add
         (get_local $6)
         (get_local $4)
        )
        (i32.const 40)
       )
       (i32.store
        (i32.const 204)
        (i32.load
         (i32.const 664)
        )
       )
       (i32.store
        (tee_local $4
         (i32.add
          (get_local $10)
          (i32.const 4)
         )
        )
        (i32.const 27)
       )
       (i32.store
        (get_local $8)
        (i32.load
         (i32.const 624)
        )
       )
       (i32.store offset=4
        (get_local $8)
        (i32.load
         (i32.const 628)
        )
       )
       (i32.store offset=8
        (get_local $8)
        (i32.load
         (i32.const 632)
        )
       )
       (i32.store offset=12
        (get_local $8)
        (i32.load
         (i32.const 636)
        )
       )
       (i32.store
        (i32.const 624)
        (get_local $1)
       )
       (i32.store
        (i32.const 628)
        (get_local $3)
       )
       (i32.store
        (i32.const 636)
        (i32.const 0)
       )
       (i32.store
        (i32.const 632)
        (get_local $8)
       )
       (set_local $1
        (i32.add
         (get_local $10)
         (i32.const 24)
        )
       )
       (loop $while-in72
        (i32.store
         (tee_local $1
          (i32.add
           (get_local $1)
           (i32.const 4)
          )
         )
         (i32.const 7)
        )
        (br_if $while-in72
         (i32.lt_u
          (i32.add
           (get_local $1)
           (i32.const 4)
          )
          (get_local $2)
         )
        )
       )
       (if
        (i32.ne
         (get_local $10)
         (get_local $5)
        )
        (block
         (i32.store
          (get_local $4)
          (i32.and
           (i32.load
            (get_local $4)
           )
           (i32.const -2)
          )
         )
         (i32.store offset=4
          (get_local $5)
          (i32.or
           (tee_local $6
            (i32.sub
             (get_local $10)
             (get_local $5)
            )
           )
           (i32.const 1)
          )
         )
         (i32.store
          (get_local $10)
          (get_local $6)
         )
         (set_local $1
          (i32.shr_u
           (get_local $6)
           (i32.const 3)
          )
         )
         (if
          (i32.lt_u
           (get_local $6)
           (i32.const 256)
          )
          (block
           (set_local $2
            (i32.add
             (i32.shl
              (get_local $1)
              (i32.const 3)
             )
             (i32.const 216)
            )
           )
           (if
            (i32.and
             (tee_local $3
              (i32.load
               (i32.const 176)
              )
             )
             (tee_local $1
              (i32.shl
               (i32.const 1)
               (get_local $1)
              )
             )
            )
            (if
             (i32.lt_u
              (tee_local $1
               (i32.load
                (tee_local $3
                 (i32.add
                  (get_local $2)
                  (i32.const 8)
                 )
                )
               )
              )
              (i32.load
               (i32.const 192)
              )
             )
             (call $_abort)
             (block
              (set_local $17
               (get_local $3)
              )
              (set_local $7
               (get_local $1)
              )
             )
            )
            (block
             (i32.store
              (i32.const 176)
              (i32.or
               (get_local $3)
               (get_local $1)
              )
             )
             (set_local $17
              (i32.add
               (get_local $2)
               (i32.const 8)
              )
             )
             (set_local $7
              (get_local $2)
             )
            )
           )
           (i32.store
            (get_local $17)
            (get_local $5)
           )
           (i32.store offset=12
            (get_local $7)
            (get_local $5)
           )
           (i32.store offset=8
            (get_local $5)
            (get_local $7)
           )
           (i32.store offset=12
            (get_local $5)
            (get_local $2)
           )
           (br $do-once40)
          )
         )
         (set_local $2
          (i32.add
           (i32.shl
            (tee_local $4
             (if (result i32)
              (tee_local $1
               (i32.shr_u
                (get_local $6)
                (i32.const 8)
               )
              )
              (if (result i32)
               (i32.gt_u
                (get_local $6)
                (i32.const 16777215)
               )
               (i32.const 31)
               (i32.or
                (i32.and
                 (i32.shr_u
                  (get_local $6)
                  (i32.add
                   (tee_local $1
                    (i32.add
                     (i32.sub
                      (i32.const 14)
                      (i32.or
                       (i32.or
                        (tee_local $1
                         (i32.and
                          (i32.shr_u
                           (i32.add
                            (tee_local $3
                             (i32.shl
                              (get_local $1)
                              (tee_local $2
                               (i32.and
                                (i32.shr_u
                                 (i32.add
                                  (get_local $1)
                                  (i32.const 1048320)
                                 )
                                 (i32.const 16)
                                )
                                (i32.const 8)
                               )
                              )
                             )
                            )
                            (i32.const 520192)
                           )
                           (i32.const 16)
                          )
                          (i32.const 4)
                         )
                        )
                        (get_local $2)
                       )
                       (tee_local $1
                        (i32.and
                         (i32.shr_u
                          (i32.add
                           (tee_local $3
                            (i32.shl
                             (get_local $3)
                             (get_local $1)
                            )
                           )
                           (i32.const 245760)
                          )
                          (i32.const 16)
                         )
                         (i32.const 2)
                        )
                       )
                      )
                     )
                     (i32.shr_u
                      (i32.shl
                       (get_local $3)
                       (get_local $1)
                      )
                      (i32.const 15)
                     )
                    )
                   )
                   (i32.const 7)
                  )
                 )
                 (i32.const 1)
                )
                (i32.shl
                 (get_local $1)
                 (i32.const 1)
                )
               )
              )
              (i32.const 0)
             )
            )
            (i32.const 2)
           )
           (i32.const 480)
          )
         )
         (i32.store offset=28
          (get_local $5)
          (get_local $4)
         )
         (i32.store offset=20
          (get_local $5)
          (i32.const 0)
         )
         (i32.store
          (get_local $11)
          (i32.const 0)
         )
         (if
          (i32.eqz
           (i32.and
            (tee_local $3
             (i32.load
              (i32.const 180)
             )
            )
            (tee_local $1
             (i32.shl
              (i32.const 1)
              (get_local $4)
             )
            )
           )
          )
          (block
           (i32.store
            (i32.const 180)
            (i32.or
             (get_local $3)
             (get_local $1)
            )
           )
           (i32.store
            (get_local $2)
            (get_local $5)
           )
           (i32.store offset=24
            (get_local $5)
            (get_local $2)
           )
           (i32.store offset=12
            (get_local $5)
            (get_local $5)
           )
           (i32.store offset=8
            (get_local $5)
            (get_local $5)
           )
           (br $do-once40)
          )
         )
         (set_local $4
          (i32.shl
           (get_local $6)
           (select
            (i32.const 0)
            (i32.sub
             (i32.const 25)
             (i32.shr_u
              (get_local $4)
              (i32.const 1)
             )
            )
            (i32.eq
             (get_local $4)
             (i32.const 31)
            )
           )
          )
         )
         (set_local $1
          (i32.load
           (get_local $2)
          )
         )
         (block $__rjto$9
          (block $__rjti$9
           (loop $while-in74
            (br_if $__rjti$9
             (i32.eq
              (i32.and
               (i32.load offset=4
                (get_local $1)
               )
               (i32.const -8)
              )
              (get_local $6)
             )
            )
            (set_local $2
             (i32.shl
              (get_local $4)
              (i32.const 1)
             )
            )
            (if
             (tee_local $3
              (i32.load
               (tee_local $4
                (i32.add
                 (i32.add
                  (get_local $1)
                  (i32.const 16)
                 )
                 (i32.shl
                  (i32.shr_u
                   (get_local $4)
                   (i32.const 31)
                  )
                  (i32.const 2)
                 )
                )
               )
              )
             )
             (block
              (set_local $4
               (get_local $2)
              )
              (set_local $1
               (get_local $3)
              )
              (br $while-in74)
             )
            )
           )
           (if
            (i32.lt_u
             (get_local $4)
             (i32.load
              (i32.const 192)
             )
            )
            (call $_abort)
            (block
             (i32.store
              (get_local $4)
              (get_local $5)
             )
             (i32.store offset=24
              (get_local $5)
              (get_local $1)
             )
             (i32.store offset=12
              (get_local $5)
              (get_local $5)
             )
             (i32.store offset=8
              (get_local $5)
              (get_local $5)
             )
             (br $do-once40)
            )
           )
           (br $__rjto$9)
          )
          (if
           (i32.and
            (i32.ge_u
             (tee_local $4
              (i32.load
               (tee_local $2
                (i32.add
                 (get_local $1)
                 (i32.const 8)
                )
               )
              )
             )
             (tee_local $3
              (i32.load
               (i32.const 192)
              )
             )
            )
            (i32.ge_u
             (get_local $1)
             (get_local $3)
            )
           )
           (block
            (i32.store offset=12
             (get_local $4)
             (get_local $5)
            )
            (i32.store
             (get_local $2)
             (get_local $5)
            )
            (i32.store offset=8
             (get_local $5)
             (get_local $4)
            )
            (i32.store offset=12
             (get_local $5)
             (get_local $1)
            )
            (i32.store offset=24
             (get_local $5)
             (i32.const 0)
            )
           )
           (call $_abort)
          )
         )
        )
       )
      )
      (block
       (if
        (i32.or
         (i32.eqz
          (tee_local $2
           (i32.load
            (i32.const 192)
           )
          )
         )
         (i32.lt_u
          (get_local $1)
          (get_local $2)
         )
        )
        (i32.store
         (i32.const 192)
         (get_local $1)
        )
       )
       (i32.store
        (i32.const 624)
        (get_local $1)
       )
       (i32.store
        (i32.const 628)
        (get_local $3)
       )
       (i32.store
        (i32.const 636)
        (i32.const 0)
       )
       (i32.store
        (i32.const 212)
        (i32.load
         (i32.const 648)
        )
       )
       (i32.store
        (i32.const 208)
        (i32.const -1)
       )
       (set_local $2
        (i32.const 0)
       )
       (loop $while-in43
        (i32.store offset=12
         (tee_local $4
          (i32.add
           (i32.shl
            (get_local $2)
            (i32.const 3)
           )
           (i32.const 216)
          )
         )
         (get_local $4)
        )
        (i32.store offset=8
         (get_local $4)
         (get_local $4)
        )
        (br_if $while-in43
         (i32.ne
          (tee_local $2
           (i32.add
            (get_local $2)
            (i32.const 1)
           )
          )
          (i32.const 32)
         )
        )
       )
       (i32.store
        (i32.const 200)
        (tee_local $2
         (i32.add
          (get_local $1)
          (tee_local $1
           (select
            (i32.and
             (i32.sub
              (i32.const 0)
              (tee_local $1
               (i32.add
                (get_local $1)
                (i32.const 8)
               )
              )
             )
             (i32.const 7)
            )
            (i32.const 0)
            (i32.and
             (get_local $1)
             (i32.const 7)
            )
           )
          )
         )
        )
       )
       (i32.store
        (i32.const 188)
        (tee_local $1
         (i32.sub
          (i32.add
           (get_local $3)
           (i32.const -40)
          )
          (get_local $1)
         )
        )
       )
       (i32.store offset=4
        (get_local $2)
        (i32.or
         (get_local $1)
         (i32.const 1)
        )
       )
       (i32.store offset=4
        (i32.add
         (get_local $2)
         (get_local $1)
        )
        (i32.const 40)
       )
       (i32.store
        (i32.const 204)
        (i32.load
         (i32.const 664)
        )
       )
      )
     )
    )
    (br_if $folding-inner0
     (i32.gt_u
      (tee_local $1
       (i32.load
        (i32.const 188)
       )
      )
      (get_local $0)
     )
    )
   )
   (i32.store
    (call $___errno_location)
    (i32.const 12)
   )
   (return
    (i32.const 0)
   )
  )
  (i32.store
   (i32.const 188)
   (tee_local $3
    (i32.sub
     (get_local $1)
     (get_local $0)
    )
   )
  )
  (i32.store
   (i32.const 200)
   (tee_local $1
    (i32.add
     (tee_local $2
      (i32.load
       (i32.const 200)
      )
     )
     (get_local $0)
    )
   )
  )
  (i32.store offset=4
   (get_local $1)
   (i32.or
    (get_local $3)
    (i32.const 1)
   )
  )
  (i32.store offset=4
   (get_local $2)
   (i32.or
    (get_local $0)
    (i32.const 3)
   )
  )
  (i32.add
   (get_local $2)
   (i32.const 8)
  )
 )
 (func $_free (; 53 ;) (; has Stack IR ;) (param $0 i32)
  (local $1 i32)
  (local $2 i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (local $6 i32)
  (local $7 i32)
  (local $8 i32)
  (local $9 i32)
  (local $10 i32)
  (local $11 i32)
  (local $12 i32)
  (local $13 i32)
  (local $14 i32)
  (local $15 i32)
  (if
   (i32.eqz
    (get_local $0)
   )
   (return)
  )
  (if
   (i32.lt_u
    (tee_local $1
     (i32.add
      (get_local $0)
      (i32.const -8)
     )
    )
    (tee_local $11
     (i32.load
      (i32.const 192)
     )
    )
   )
   (call $_abort)
  )
  (if
   (i32.eq
    (tee_local $5
     (i32.and
      (tee_local $7
       (i32.load
        (i32.add
         (get_local $0)
         (i32.const -4)
        )
       )
      )
      (i32.const 3)
     )
    )
    (i32.const 1)
   )
   (call $_abort)
  )
  (set_local $8
   (i32.add
    (get_local $1)
    (tee_local $0
     (i32.and
      (get_local $7)
      (i32.const -8)
     )
    )
   )
  )
  (block $do-once
   (if
    (i32.and
     (get_local $7)
     (i32.const 1)
    )
    (block
     (set_local $2
      (get_local $1)
     )
     (set_local $3
      (get_local $0)
     )
    )
    (block
     (set_local $7
      (i32.load
       (get_local $1)
      )
     )
     (if
      (i32.eqz
       (get_local $5)
      )
      (return)
     )
     (if
      (i32.lt_u
       (tee_local $1
        (i32.sub
         (get_local $1)
         (get_local $7)
        )
       )
       (get_local $11)
      )
      (call $_abort)
     )
     (set_local $0
      (i32.add
       (get_local $7)
       (get_local $0)
      )
     )
     (if
      (i32.eq
       (get_local $1)
       (i32.load
        (i32.const 196)
       )
      )
      (block
       (if
        (i32.ne
         (i32.and
          (tee_local $3
           (i32.load
            (tee_local $2
             (i32.add
              (get_local $8)
              (i32.const 4)
             )
            )
           )
          )
          (i32.const 3)
         )
         (i32.const 3)
        )
        (block
         (set_local $2
          (get_local $1)
         )
         (set_local $3
          (get_local $0)
         )
         (br $do-once)
        )
       )
       (i32.store
        (i32.const 184)
        (get_local $0)
       )
       (i32.store
        (get_local $2)
        (i32.and
         (get_local $3)
         (i32.const -2)
        )
       )
       (i32.store offset=4
        (get_local $1)
        (i32.or
         (get_local $0)
         (i32.const 1)
        )
       )
       (i32.store
        (i32.add
         (get_local $1)
         (get_local $0)
        )
        (get_local $0)
       )
       (return)
      )
     )
     (set_local $5
      (i32.shr_u
       (get_local $7)
       (i32.const 3)
      )
     )
     (if
      (i32.lt_u
       (get_local $7)
       (i32.const 256)
      )
      (block
       (set_local $6
        (i32.load offset=12
         (get_local $1)
        )
       )
       (if
        (i32.ne
         (tee_local $2
          (i32.load offset=8
           (get_local $1)
          )
         )
         (tee_local $3
          (i32.add
           (i32.shl
            (get_local $5)
            (i32.const 3)
           )
           (i32.const 216)
          )
         )
        )
        (block
         (if
          (i32.lt_u
           (get_local $2)
           (get_local $11)
          )
          (call $_abort)
         )
         (if
          (i32.ne
           (i32.load offset=12
            (get_local $2)
           )
           (get_local $1)
          )
          (call $_abort)
         )
        )
       )
       (if
        (i32.eq
         (get_local $6)
         (get_local $2)
        )
        (block
         (i32.store
          (i32.const 176)
          (i32.and
           (i32.load
            (i32.const 176)
           )
           (i32.xor
            (i32.shl
             (i32.const 1)
             (get_local $5)
            )
            (i32.const -1)
           )
          )
         )
         (set_local $2
          (get_local $1)
         )
         (set_local $3
          (get_local $0)
         )
         (br $do-once)
        )
       )
       (if
        (i32.eq
         (get_local $6)
         (get_local $3)
        )
        (set_local $4
         (i32.add
          (get_local $6)
          (i32.const 8)
         )
        )
        (block
         (if
          (i32.lt_u
           (get_local $6)
           (get_local $11)
          )
          (call $_abort)
         )
         (if
          (i32.eq
           (i32.load
            (tee_local $3
             (i32.add
              (get_local $6)
              (i32.const 8)
             )
            )
           )
           (get_local $1)
          )
          (set_local $4
           (get_local $3)
          )
          (call $_abort)
         )
        )
       )
       (i32.store offset=12
        (get_local $2)
        (get_local $6)
       )
       (i32.store
        (get_local $4)
        (get_local $2)
       )
       (set_local $2
        (get_local $1)
       )
       (set_local $3
        (get_local $0)
       )
       (br $do-once)
      )
     )
     (set_local $12
      (i32.load offset=24
       (get_local $1)
      )
     )
     (block $do-once0
      (if
       (i32.eq
        (tee_local $4
         (i32.load offset=12
          (get_local $1)
         )
        )
        (get_local $1)
       )
       (block
        (if
         (i32.eqz
          (tee_local $5
           (i32.load
            (tee_local $4
             (i32.add
              (tee_local $7
               (i32.add
                (get_local $1)
                (i32.const 16)
               )
              )
              (i32.const 4)
             )
            )
           )
          )
         )
         (block
          (br_if $do-once0
           (i32.eqz
            (tee_local $5
             (i32.load
              (get_local $7)
             )
            )
           )
          )
          (set_local $4
           (get_local $7)
          )
         )
        )
        (loop $while-in
         (if
          (tee_local $7
           (i32.load
            (tee_local $10
             (i32.add
              (get_local $5)
              (i32.const 20)
             )
            )
           )
          )
          (block
           (set_local $5
            (get_local $7)
           )
           (set_local $4
            (get_local $10)
           )
           (br $while-in)
          )
         )
         (if
          (tee_local $7
           (i32.load
            (tee_local $10
             (i32.add
              (get_local $5)
              (i32.const 16)
             )
            )
           )
          )
          (block
           (set_local $5
            (get_local $7)
           )
           (set_local $4
            (get_local $10)
           )
           (br $while-in)
          )
         )
        )
        (if
         (i32.lt_u
          (get_local $4)
          (get_local $11)
         )
         (call $_abort)
         (block
          (i32.store
           (get_local $4)
           (i32.const 0)
          )
          (set_local $6
           (get_local $5)
          )
         )
        )
       )
       (block
        (if
         (i32.lt_u
          (tee_local $10
           (i32.load offset=8
            (get_local $1)
           )
          )
          (get_local $11)
         )
         (call $_abort)
        )
        (if
         (i32.ne
          (i32.load
           (tee_local $7
            (i32.add
             (get_local $10)
             (i32.const 12)
            )
           )
          )
          (get_local $1)
         )
         (call $_abort)
        )
        (if
         (i32.eq
          (i32.load
           (tee_local $5
            (i32.add
             (get_local $4)
             (i32.const 8)
            )
           )
          )
          (get_local $1)
         )
         (block
          (i32.store
           (get_local $7)
           (get_local $4)
          )
          (i32.store
           (get_local $5)
           (get_local $10)
          )
          (set_local $6
           (get_local $4)
          )
         )
         (call $_abort)
        )
       )
      )
     )
     (if
      (get_local $12)
      (block
       (if
        (i32.eq
         (get_local $1)
         (i32.load
          (tee_local $4
           (i32.add
            (i32.shl
             (tee_local $5
              (i32.load offset=28
               (get_local $1)
              )
             )
             (i32.const 2)
            )
            (i32.const 480)
           )
          )
         )
        )
        (block
         (i32.store
          (get_local $4)
          (get_local $6)
         )
         (if
          (i32.eqz
           (get_local $6)
          )
          (block
           (i32.store
            (i32.const 180)
            (i32.and
             (i32.load
              (i32.const 180)
             )
             (i32.xor
              (i32.shl
               (i32.const 1)
               (get_local $5)
              )
              (i32.const -1)
             )
            )
           )
           (set_local $2
            (get_local $1)
           )
           (set_local $3
            (get_local $0)
           )
           (br $do-once)
          )
         )
        )
        (block
         (if
          (i32.lt_u
           (get_local $12)
           (i32.load
            (i32.const 192)
           )
          )
          (call $_abort)
         )
         (if
          (i32.eq
           (i32.load
            (tee_local $4
             (i32.add
              (get_local $12)
              (i32.const 16)
             )
            )
           )
           (get_local $1)
          )
          (i32.store
           (get_local $4)
           (get_local $6)
          )
          (i32.store offset=20
           (get_local $12)
           (get_local $6)
          )
         )
         (if
          (i32.eqz
           (get_local $6)
          )
          (block
           (set_local $2
            (get_local $1)
           )
           (set_local $3
            (get_local $0)
           )
           (br $do-once)
          )
         )
        )
       )
       (if
        (i32.lt_u
         (get_local $6)
         (tee_local $5
          (i32.load
           (i32.const 192)
          )
         )
        )
        (call $_abort)
       )
       (i32.store offset=24
        (get_local $6)
        (get_local $12)
       )
       (if
        (tee_local $7
         (i32.load
          (tee_local $4
           (i32.add
            (get_local $1)
            (i32.const 16)
           )
          )
         )
        )
        (if
         (i32.lt_u
          (get_local $7)
          (get_local $5)
         )
         (call $_abort)
         (block
          (i32.store offset=16
           (get_local $6)
           (get_local $7)
          )
          (i32.store offset=24
           (get_local $7)
           (get_local $6)
          )
         )
        )
       )
       (if
        (tee_local $4
         (i32.load offset=4
          (get_local $4)
         )
        )
        (if
         (i32.lt_u
          (get_local $4)
          (i32.load
           (i32.const 192)
          )
         )
         (call $_abort)
         (block
          (i32.store offset=20
           (get_local $6)
           (get_local $4)
          )
          (i32.store offset=24
           (get_local $4)
           (get_local $6)
          )
          (set_local $2
           (get_local $1)
          )
          (set_local $3
           (get_local $0)
          )
         )
        )
        (block
         (set_local $2
          (get_local $1)
         )
         (set_local $3
          (get_local $0)
         )
        )
       )
      )
      (block
       (set_local $2
        (get_local $1)
       )
       (set_local $3
        (get_local $0)
       )
      )
     )
    )
   )
  )
  (if
   (i32.ge_u
    (get_local $2)
    (get_local $8)
   )
   (call $_abort)
  )
  (if
   (i32.eqz
    (i32.and
     (tee_local $1
      (i32.load
       (tee_local $0
        (i32.add
         (get_local $8)
         (i32.const 4)
        )
       )
      )
     )
     (i32.const 1)
    )
   )
   (call $_abort)
  )
  (if
   (i32.and
    (get_local $1)
    (i32.const 2)
   )
   (block
    (i32.store
     (get_local $0)
     (i32.and
      (get_local $1)
      (i32.const -2)
     )
    )
    (i32.store offset=4
     (get_local $2)
     (i32.or
      (get_local $3)
      (i32.const 1)
     )
    )
    (i32.store
     (i32.add
      (get_local $2)
      (get_local $3)
     )
     (get_local $3)
    )
   )
   (block
    (if
     (i32.eq
      (get_local $8)
      (i32.load
       (i32.const 200)
      )
     )
     (block
      (i32.store
       (i32.const 188)
       (tee_local $0
        (i32.add
         (i32.load
          (i32.const 188)
         )
         (get_local $3)
        )
       )
      )
      (i32.store
       (i32.const 200)
       (get_local $2)
      )
      (i32.store offset=4
       (get_local $2)
       (i32.or
        (get_local $0)
        (i32.const 1)
       )
      )
      (if
       (i32.ne
        (get_local $2)
        (i32.load
         (i32.const 196)
        )
       )
       (return)
      )
      (i32.store
       (i32.const 196)
       (i32.const 0)
      )
      (i32.store
       (i32.const 184)
       (i32.const 0)
      )
      (return)
     )
    )
    (if
     (i32.eq
      (get_local $8)
      (i32.load
       (i32.const 196)
      )
     )
     (block
      (i32.store
       (i32.const 184)
       (tee_local $0
        (i32.add
         (i32.load
          (i32.const 184)
         )
         (get_local $3)
        )
       )
      )
      (i32.store
       (i32.const 196)
       (get_local $2)
      )
      (i32.store offset=4
       (get_local $2)
       (i32.or
        (get_local $0)
        (i32.const 1)
       )
      )
      (i32.store
       (i32.add
        (get_local $2)
        (get_local $0)
       )
       (get_local $0)
      )
      (return)
     )
    )
    (set_local $5
     (i32.add
      (i32.and
       (get_local $1)
       (i32.const -8)
      )
      (get_local $3)
     )
    )
    (set_local $3
     (i32.shr_u
      (get_local $1)
      (i32.const 3)
     )
    )
    (block $do-once4
     (if
      (i32.lt_u
       (get_local $1)
       (i32.const 256)
      )
      (block
       (set_local $4
        (i32.load offset=12
         (get_local $8)
        )
       )
       (if
        (i32.ne
         (tee_local $1
          (i32.load offset=8
           (get_local $8)
          )
         )
         (tee_local $0
          (i32.add
           (i32.shl
            (get_local $3)
            (i32.const 3)
           )
           (i32.const 216)
          )
         )
        )
        (block
         (if
          (i32.lt_u
           (get_local $1)
           (i32.load
            (i32.const 192)
           )
          )
          (call $_abort)
         )
         (if
          (i32.ne
           (i32.load offset=12
            (get_local $1)
           )
           (get_local $8)
          )
          (call $_abort)
         )
        )
       )
       (if
        (i32.eq
         (get_local $4)
         (get_local $1)
        )
        (block
         (i32.store
          (i32.const 176)
          (i32.and
           (i32.load
            (i32.const 176)
           )
           (i32.xor
            (i32.shl
             (i32.const 1)
             (get_local $3)
            )
            (i32.const -1)
           )
          )
         )
         (br $do-once4)
        )
       )
       (if
        (i32.eq
         (get_local $4)
         (get_local $0)
        )
        (set_local $14
         (i32.add
          (get_local $4)
          (i32.const 8)
         )
        )
        (block
         (if
          (i32.lt_u
           (get_local $4)
           (i32.load
            (i32.const 192)
           )
          )
          (call $_abort)
         )
         (if
          (i32.eq
           (i32.load
            (tee_local $0
             (i32.add
              (get_local $4)
              (i32.const 8)
             )
            )
           )
           (get_local $8)
          )
          (set_local $14
           (get_local $0)
          )
          (call $_abort)
         )
        )
       )
       (i32.store offset=12
        (get_local $1)
        (get_local $4)
       )
       (i32.store
        (get_local $14)
        (get_local $1)
       )
      )
      (block
       (set_local $6
        (i32.load offset=24
         (get_local $8)
        )
       )
       (block $do-once6
        (if
         (i32.eq
          (tee_local $0
           (i32.load offset=12
            (get_local $8)
           )
          )
          (get_local $8)
         )
         (block
          (if
           (i32.eqz
            (tee_local $3
             (i32.load
              (tee_local $0
               (i32.add
                (tee_local $1
                 (i32.add
                  (get_local $8)
                  (i32.const 16)
                 )
                )
                (i32.const 4)
               )
              )
             )
            )
           )
           (block
            (br_if $do-once6
             (i32.eqz
              (tee_local $3
               (i32.load
                (get_local $1)
               )
              )
             )
            )
            (set_local $0
             (get_local $1)
            )
           )
          )
          (loop $while-in9
           (if
            (tee_local $1
             (i32.load
              (tee_local $4
               (i32.add
                (get_local $3)
                (i32.const 20)
               )
              )
             )
            )
            (block
             (set_local $3
              (get_local $1)
             )
             (set_local $0
              (get_local $4)
             )
             (br $while-in9)
            )
           )
           (if
            (tee_local $1
             (i32.load
              (tee_local $4
               (i32.add
                (get_local $3)
                (i32.const 16)
               )
              )
             )
            )
            (block
             (set_local $3
              (get_local $1)
             )
             (set_local $0
              (get_local $4)
             )
             (br $while-in9)
            )
           )
          )
          (if
           (i32.lt_u
            (get_local $0)
            (i32.load
             (i32.const 192)
            )
           )
           (call $_abort)
           (block
            (i32.store
             (get_local $0)
             (i32.const 0)
            )
            (set_local $9
             (get_local $3)
            )
           )
          )
         )
         (block
          (if
           (i32.lt_u
            (tee_local $4
             (i32.load offset=8
              (get_local $8)
             )
            )
            (i32.load
             (i32.const 192)
            )
           )
           (call $_abort)
          )
          (if
           (i32.ne
            (i32.load
             (tee_local $1
              (i32.add
               (get_local $4)
               (i32.const 12)
              )
             )
            )
            (get_local $8)
           )
           (call $_abort)
          )
          (if
           (i32.eq
            (i32.load
             (tee_local $3
              (i32.add
               (get_local $0)
               (i32.const 8)
              )
             )
            )
            (get_local $8)
           )
           (block
            (i32.store
             (get_local $1)
             (get_local $0)
            )
            (i32.store
             (get_local $3)
             (get_local $4)
            )
            (set_local $9
             (get_local $0)
            )
           )
           (call $_abort)
          )
         )
        )
       )
       (if
        (get_local $6)
        (block
         (if
          (i32.eq
           (get_local $8)
           (i32.load
            (tee_local $0
             (i32.add
              (i32.shl
               (tee_local $3
                (i32.load offset=28
                 (get_local $8)
                )
               )
               (i32.const 2)
              )
              (i32.const 480)
             )
            )
           )
          )
          (block
           (i32.store
            (get_local $0)
            (get_local $9)
           )
           (if
            (i32.eqz
             (get_local $9)
            )
            (block
             (i32.store
              (i32.const 180)
              (i32.and
               (i32.load
                (i32.const 180)
               )
               (i32.xor
                (i32.shl
                 (i32.const 1)
                 (get_local $3)
                )
                (i32.const -1)
               )
              )
             )
             (br $do-once4)
            )
           )
          )
          (block
           (if
            (i32.lt_u
             (get_local $6)
             (i32.load
              (i32.const 192)
             )
            )
            (call $_abort)
           )
           (if
            (i32.eq
             (i32.load
              (tee_local $0
               (i32.add
                (get_local $6)
                (i32.const 16)
               )
              )
             )
             (get_local $8)
            )
            (i32.store
             (get_local $0)
             (get_local $9)
            )
            (i32.store offset=20
             (get_local $6)
             (get_local $9)
            )
           )
           (br_if $do-once4
            (i32.eqz
             (get_local $9)
            )
           )
          )
         )
         (if
          (i32.lt_u
           (get_local $9)
           (tee_local $3
            (i32.load
             (i32.const 192)
            )
           )
          )
          (call $_abort)
         )
         (i32.store offset=24
          (get_local $9)
          (get_local $6)
         )
         (if
          (tee_local $1
           (i32.load
            (tee_local $0
             (i32.add
              (get_local $8)
              (i32.const 16)
             )
            )
           )
          )
          (if
           (i32.lt_u
            (get_local $1)
            (get_local $3)
           )
           (call $_abort)
           (block
            (i32.store offset=16
             (get_local $9)
             (get_local $1)
            )
            (i32.store offset=24
             (get_local $1)
             (get_local $9)
            )
           )
          )
         )
         (if
          (tee_local $0
           (i32.load offset=4
            (get_local $0)
           )
          )
          (if
           (i32.lt_u
            (get_local $0)
            (i32.load
             (i32.const 192)
            )
           )
           (call $_abort)
           (block
            (i32.store offset=20
             (get_local $9)
             (get_local $0)
            )
            (i32.store offset=24
             (get_local $0)
             (get_local $9)
            )
           )
          )
         )
        )
       )
      )
     )
    )
    (i32.store offset=4
     (get_local $2)
     (i32.or
      (get_local $5)
      (i32.const 1)
     )
    )
    (i32.store
     (i32.add
      (get_local $2)
      (get_local $5)
     )
     (get_local $5)
    )
    (set_local $3
     (if (result i32)
      (i32.eq
       (get_local $2)
       (i32.load
        (i32.const 196)
       )
      )
      (block
       (i32.store
        (i32.const 184)
        (get_local $5)
       )
       (return)
      )
      (get_local $5)
     )
    )
   )
  )
  (set_local $0
   (i32.shr_u
    (get_local $3)
    (i32.const 3)
   )
  )
  (if
   (i32.lt_u
    (get_local $3)
    (i32.const 256)
   )
   (block
    (set_local $1
     (i32.add
      (i32.shl
       (get_local $0)
       (i32.const 3)
      )
      (i32.const 216)
     )
    )
    (if
     (i32.and
      (tee_local $3
       (i32.load
        (i32.const 176)
       )
      )
      (tee_local $0
       (i32.shl
        (i32.const 1)
        (get_local $0)
       )
      )
     )
     (if
      (i32.lt_u
       (tee_local $0
        (i32.load
         (tee_local $3
          (i32.add
           (get_local $1)
           (i32.const 8)
          )
         )
        )
       )
       (i32.load
        (i32.const 192)
       )
      )
      (call $_abort)
      (block
       (set_local $15
        (get_local $3)
       )
       (set_local $13
        (get_local $0)
       )
      )
     )
     (block
      (i32.store
       (i32.const 176)
       (i32.or
        (get_local $3)
        (get_local $0)
       )
      )
      (set_local $15
       (i32.add
        (get_local $1)
        (i32.const 8)
       )
      )
      (set_local $13
       (get_local $1)
      )
     )
    )
    (i32.store
     (get_local $15)
     (get_local $2)
    )
    (i32.store offset=12
     (get_local $13)
     (get_local $2)
    )
    (i32.store offset=8
     (get_local $2)
     (get_local $13)
    )
    (i32.store offset=12
     (get_local $2)
     (get_local $1)
    )
    (return)
   )
  )
  (set_local $4
   (i32.add
    (i32.shl
     (tee_local $5
      (if (result i32)
       (tee_local $0
        (i32.shr_u
         (get_local $3)
         (i32.const 8)
        )
       )
       (if (result i32)
        (i32.gt_u
         (get_local $3)
         (i32.const 16777215)
        )
        (i32.const 31)
        (i32.or
         (i32.and
          (i32.shr_u
           (get_local $3)
           (i32.add
            (tee_local $0
             (i32.add
              (i32.sub
               (i32.const 14)
               (i32.or
                (i32.or
                 (tee_local $0
                  (i32.and
                   (i32.shr_u
                    (i32.add
                     (tee_local $1
                      (i32.shl
                       (get_local $0)
                       (tee_local $4
                        (i32.and
                         (i32.shr_u
                          (i32.add
                           (get_local $0)
                           (i32.const 1048320)
                          )
                          (i32.const 16)
                         )
                         (i32.const 8)
                        )
                       )
                      )
                     )
                     (i32.const 520192)
                    )
                    (i32.const 16)
                   )
                   (i32.const 4)
                  )
                 )
                 (get_local $4)
                )
                (tee_local $0
                 (i32.and
                  (i32.shr_u
                   (i32.add
                    (tee_local $1
                     (i32.shl
                      (get_local $1)
                      (get_local $0)
                     )
                    )
                    (i32.const 245760)
                   )
                   (i32.const 16)
                  )
                  (i32.const 2)
                 )
                )
               )
              )
              (i32.shr_u
               (i32.shl
                (get_local $1)
                (get_local $0)
               )
               (i32.const 15)
              )
             )
            )
            (i32.const 7)
           )
          )
          (i32.const 1)
         )
         (i32.shl
          (get_local $0)
          (i32.const 1)
         )
        )
       )
       (i32.const 0)
      )
     )
     (i32.const 2)
    )
    (i32.const 480)
   )
  )
  (i32.store offset=28
   (get_local $2)
   (get_local $5)
  )
  (i32.store offset=20
   (get_local $2)
   (i32.const 0)
  )
  (i32.store offset=16
   (get_local $2)
   (i32.const 0)
  )
  (block $do-once12
   (if
    (i32.and
     (tee_local $1
      (i32.load
       (i32.const 180)
      )
     )
     (tee_local $0
      (i32.shl
       (i32.const 1)
       (get_local $5)
      )
     )
    )
    (block
     (set_local $5
      (i32.shl
       (get_local $3)
       (select
        (i32.const 0)
        (i32.sub
         (i32.const 25)
         (i32.shr_u
          (get_local $5)
          (i32.const 1)
         )
        )
        (i32.eq
         (get_local $5)
         (i32.const 31)
        )
       )
      )
     )
     (set_local $0
      (i32.load
       (get_local $4)
      )
     )
     (block $__rjto$1
      (block $__rjti$1
       (loop $while-in15
        (br_if $__rjti$1
         (i32.eq
          (i32.and
           (i32.load offset=4
            (get_local $0)
           )
           (i32.const -8)
          )
          (get_local $3)
         )
        )
        (set_local $4
         (i32.shl
          (get_local $5)
          (i32.const 1)
         )
        )
        (if
         (tee_local $1
          (i32.load
           (tee_local $5
            (i32.add
             (i32.add
              (get_local $0)
              (i32.const 16)
             )
             (i32.shl
              (i32.shr_u
               (get_local $5)
               (i32.const 31)
              )
              (i32.const 2)
             )
            )
           )
          )
         )
         (block
          (set_local $5
           (get_local $4)
          )
          (set_local $0
           (get_local $1)
          )
          (br $while-in15)
         )
        )
       )
       (if
        (i32.lt_u
         (get_local $5)
         (i32.load
          (i32.const 192)
         )
        )
        (call $_abort)
        (block
         (i32.store
          (get_local $5)
          (get_local $2)
         )
         (i32.store offset=24
          (get_local $2)
          (get_local $0)
         )
         (i32.store offset=12
          (get_local $2)
          (get_local $2)
         )
         (i32.store offset=8
          (get_local $2)
          (get_local $2)
         )
         (br $do-once12)
        )
       )
       (br $__rjto$1)
      )
      (if
       (i32.and
        (i32.ge_u
         (tee_local $4
          (i32.load
           (tee_local $1
            (i32.add
             (get_local $0)
             (i32.const 8)
            )
           )
          )
         )
         (tee_local $3
          (i32.load
           (i32.const 192)
          )
         )
        )
        (i32.ge_u
         (get_local $0)
         (get_local $3)
        )
       )
       (block
        (i32.store offset=12
         (get_local $4)
         (get_local $2)
        )
        (i32.store
         (get_local $1)
         (get_local $2)
        )
        (i32.store offset=8
         (get_local $2)
         (get_local $4)
        )
        (i32.store offset=12
         (get_local $2)
         (get_local $0)
        )
        (i32.store offset=24
         (get_local $2)
         (i32.const 0)
        )
       )
       (call $_abort)
      )
     )
    )
    (block
     (i32.store
      (i32.const 180)
      (i32.or
       (get_local $1)
       (get_local $0)
      )
     )
     (i32.store
      (get_local $4)
      (get_local $2)
     )
     (i32.store offset=24
      (get_local $2)
      (get_local $4)
     )
     (i32.store offset=12
      (get_local $2)
      (get_local $2)
     )
     (i32.store offset=8
      (get_local $2)
      (get_local $2)
     )
    )
   )
  )
  (i32.store
   (i32.const 208)
   (tee_local $0
    (i32.add
     (i32.load
      (i32.const 208)
     )
     (i32.const -1)
    )
   )
  )
  (set_local $0
   (if (result i32)
    (get_local $0)
    (return)
    (i32.const 632)
   )
  )
  (loop $while-in17
   (set_local $0
    (i32.add
     (tee_local $3
      (i32.load
       (get_local $0)
      )
     )
     (i32.const 8)
    )
   )
   (br_if $while-in17
    (get_local $3)
   )
  )
  (i32.store
   (i32.const 208)
   (i32.const -1)
  )
 )
 (func $runPostSets (; 54 ;) (; has Stack IR ;)
  (nop)
 )
 (func $_i64Subtract (; 55 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (set_global $tempRet0
   (i32.sub
    (i32.sub
     (get_local $1)
     (get_local $3)
    )
    (i32.gt_u
     (get_local $2)
     (get_local $0)
    )
   )
  )
  (i32.sub
   (get_local $0)
   (get_local $2)
  )
 )
 (func $_i64Add (; 56 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (local $4 i32)
  (set_global $tempRet0
   (i32.add
    (i32.add
     (get_local $1)
     (get_local $3)
    )
    (i32.lt_u
     (tee_local $4
      (i32.add
       (get_local $0)
       (get_local $2)
      )
     )
     (get_local $0)
    )
   )
  )
  (get_local $4)
 )
 (func $_memset (; 57 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (local $4 i32)
  (local $5 i32)
  (set_local $4
   (i32.add
    (get_local $0)
    (get_local $2)
   )
  )
  (if
   (i32.ge_s
    (get_local $2)
    (i32.const 20)
   )
   (block
    (set_local $1
     (i32.and
      (get_local $1)
      (i32.const 255)
     )
    )
    (if
     (tee_local $3
      (i32.and
       (get_local $0)
       (i32.const 3)
      )
     )
     (block
      (set_local $3
       (i32.sub
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
        (get_local $3)
       )
      )
      (loop $while-in
       (if
        (i32.lt_s
         (get_local $0)
         (get_local $3)
        )
        (block
         (i32.store8
          (get_local $0)
          (get_local $1)
         )
         (set_local $0
          (i32.add
           (get_local $0)
           (i32.const 1)
          )
         )
         (br $while-in)
        )
       )
      )
     )
    )
    (set_local $3
     (i32.or
      (i32.or
       (i32.or
        (get_local $1)
        (i32.shl
         (get_local $1)
         (i32.const 8)
        )
       )
       (i32.shl
        (get_local $1)
        (i32.const 16)
       )
      )
      (i32.shl
       (get_local $1)
       (i32.const 24)
      )
     )
    )
    (set_local $5
     (i32.and
      (get_local $4)
      (i32.const -4)
     )
    )
    (loop $while-in1
     (if
      (i32.lt_s
       (get_local $0)
       (get_local $5)
      )
      (block
       (i32.store
        (get_local $0)
        (get_local $3)
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
       (br $while-in1)
      )
     )
    )
   )
  )
  (loop $while-in3
   (if
    (i32.lt_s
     (get_local $0)
     (get_local $4)
    )
    (block
     (i32.store8
      (get_local $0)
      (get_local $1)
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (br $while-in3)
    )
   )
  )
  (i32.sub
   (get_local $0)
   (get_local $2)
  )
 )
 (func $_bitshift64Lshr (; 58 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 32)
   )
   (block
    (set_global $tempRet0
     (i32.shr_u
      (get_local $1)
      (get_local $2)
     )
    )
    (return
     (i32.or
      (i32.shr_u
       (get_local $0)
       (get_local $2)
      )
      (i32.shl
       (i32.and
        (get_local $1)
        (i32.sub
         (i32.shl
          (i32.const 1)
          (get_local $2)
         )
         (i32.const 1)
        )
       )
       (i32.sub
        (i32.const 32)
        (get_local $2)
       )
      )
     )
    )
   )
  )
  (set_global $tempRet0
   (i32.const 0)
  )
  (i32.shr_u
   (get_local $1)
   (i32.sub
    (get_local $2)
    (i32.const 32)
   )
  )
 )
 (func $_bitshift64Shl (; 59 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (if
   (i32.lt_s
    (get_local $2)
    (i32.const 32)
   )
   (block
    (set_global $tempRet0
     (i32.or
      (i32.shl
       (get_local $1)
       (get_local $2)
      )
      (i32.shr_u
       (i32.and
        (get_local $0)
        (i32.shl
         (i32.sub
          (i32.shl
           (i32.const 1)
           (get_local $2)
          )
          (i32.const 1)
         )
         (i32.sub
          (i32.const 32)
          (get_local $2)
         )
        )
       )
       (i32.sub
        (i32.const 32)
        (get_local $2)
       )
      )
     )
    )
    (return
     (i32.shl
      (get_local $0)
      (get_local $2)
     )
    )
   )
  )
  (set_global $tempRet0
   (i32.shl
    (get_local $0)
    (i32.sub
     (get_local $2)
     (i32.const 32)
    )
   )
  )
  (i32.const 0)
 )
 (func $_memcpy (; 60 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (if
   (i32.ge_s
    (get_local $2)
    (i32.const 4096)
   )
   (return
    (call $_emscripten_memcpy_big
     (get_local $0)
     (get_local $1)
     (get_local $2)
    )
   )
  )
  (set_local $3
   (get_local $0)
  )
  (if
   (i32.eq
    (i32.and
     (get_local $0)
     (i32.const 3)
    )
    (i32.and
     (get_local $1)
     (i32.const 3)
    )
   )
   (block
    (loop $while-in
     (if
      (i32.and
       (get_local $0)
       (i32.const 3)
      )
      (block
       (if
        (i32.eqz
         (get_local $2)
        )
        (return
         (get_local $3)
        )
       )
       (i32.store8
        (get_local $0)
        (i32.load8_s
         (get_local $1)
        )
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 1)
        )
       )
       (set_local $1
        (i32.add
         (get_local $1)
         (i32.const 1)
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 1)
        )
       )
       (br $while-in)
      )
     )
    )
    (loop $while-in1
     (if
      (i32.ge_s
       (get_local $2)
       (i32.const 4)
      )
      (block
       (i32.store
        (get_local $0)
        (i32.load
         (get_local $1)
        )
       )
       (set_local $0
        (i32.add
         (get_local $0)
         (i32.const 4)
        )
       )
       (set_local $1
        (i32.add
         (get_local $1)
         (i32.const 4)
        )
       )
       (set_local $2
        (i32.sub
         (get_local $2)
         (i32.const 4)
        )
       )
       (br $while-in1)
      )
     )
    )
   )
  )
  (loop $while-in3
   (if
    (i32.gt_s
     (get_local $2)
     (i32.const 0)
    )
    (block
     (i32.store8
      (get_local $0)
      (i32.load8_s
       (get_local $1)
      )
     )
     (set_local $0
      (i32.add
       (get_local $0)
       (i32.const 1)
      )
     )
     (set_local $1
      (i32.add
       (get_local $1)
       (i32.const 1)
      )
     )
     (set_local $2
      (i32.sub
       (get_local $2)
       (i32.const 1)
      )
     )
     (br $while-in3)
    )
   )
  )
  (get_local $3)
 )
 (func $___udivdi3 (; 61 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $___udivmoddi4
   (get_local $0)
   (get_local $1)
   (get_local $2)
   (i32.const 0)
   (i32.const 0)
  )
 )
 (func $___uremdi3 (; 62 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (local $3 i32)
  (set_local $3
   (get_global $STACKTOP)
  )
  (set_global $STACKTOP
   (i32.add
    (get_global $STACKTOP)
    (i32.const 16)
   )
  )
  (drop
   (call $___udivmoddi4
    (get_local $0)
    (get_local $1)
    (get_local $2)
    (i32.const 0)
    (get_local $3)
   )
  )
  (set_global $STACKTOP
   (get_local $3)
  )
  (set_global $tempRet0
   (i32.load offset=4
    (get_local $3)
   )
  )
  (i32.load
   (get_local $3)
  )
 )
 (func $___udivmoddi4 (; 63 ;) (; has Stack IR ;) (param $xl i32) (param $xh i32) (param $yl i32) (param $yh i32) (param $r i32) (result i32)
  (local $x64 i64)
  (local $y64 i64)
  (set_local $x64
   (i64.or
    (i64.extend_u/i32
     (get_local $xl)
    )
    (i64.shl
     (i64.extend_u/i32
      (get_local $xh)
     )
     (i64.const 32)
    )
   )
  )
  (set_local $y64
   (i64.or
    (i64.extend_u/i32
     (get_local $yl)
    )
    (i64.shl
     (i64.extend_u/i32
      (get_local $yh)
     )
     (i64.const 32)
    )
   )
  )
  (if
   (get_local $r)
   (i64.store
    (get_local $r)
    (i64.rem_u
     (get_local $x64)
     (get_local $y64)
    )
   )
  )
  (set_local $x64
   (i64.div_u
    (get_local $x64)
    (get_local $y64)
   )
  )
  (set_global $tempRet0
   (i32.wrap/i64
    (i64.shr_u
     (get_local $x64)
     (i64.const 32)
    )
   )
  )
  (i32.wrap/i64
   (get_local $x64)
  )
 )
 (func $dynCall_ii (; 64 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (result i32)
  (call_indirect (type $FUNCSIG$ii)
   (get_local $1)
   (i32.and
    (get_local $0)
    (i32.const 1)
   )
  )
 )
 (func $dynCall_iiii (; 65 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (param $3 i32) (result i32)
  (call_indirect (type $FUNCSIG$iiii)
   (get_local $1)
   (get_local $2)
   (get_local $3)
   (i32.add
    (i32.and
     (get_local $0)
     (i32.const 7)
    )
    (i32.const 2)
   )
  )
 )
 (func $dynCall_vi (; 66 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32)
  (call_indirect (type $FUNCSIG$vi)
   (get_local $1)
   (i32.add
    (i32.and
     (get_local $0)
     (i32.const 7)
    )
    (i32.const 10)
   )
  )
 )
 (func $b0 (; 67 ;) (; has Stack IR ;) (param $0 i32) (result i32)
  (call $nullFunc_ii
   (i32.const 0)
  )
  (i32.const 0)
 )
 (func $b1 (; 68 ;) (; has Stack IR ;) (param $0 i32) (param $1 i32) (param $2 i32) (result i32)
  (call $nullFunc_iiii
   (i32.const 1)
  )
  (i32.const 0)
 )
 (func $b2 (; 69 ;) (; has Stack IR ;) (param $0 i32)
  (call $nullFunc_vi
   (i32.const 2)
  )
 )
)
