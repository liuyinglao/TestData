(module
 (type $FUNCSIG$vi (func (param i32)))
 (import "env" "displaylog" (func $displaylog (param i32)))
 (table 0 anyfunc)
 (memory $0 1)
 (export "memory" (memory $0))
 (export "max" (func $max))
 (func $max (; 1 ;) (param $0 i32) (param $1 i32) (result i32)
  (call $displaylog
   (tee_local $0
    (select
     (get_local $0)
     (get_local $1)
     (i32.gt_s
      (get_local $0)
      (get_local $1)
     )
    )
   )
  )
  (get_local $0)
 )
)
