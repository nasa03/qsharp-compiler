define %Array* @Microsoft__Quantum__Testing__QIR__TestArrayUpdate1__body(%String* %even) {
entry:
  %0 = call %Array* @__quantum__rt__array_create_1d(i32 8, i64 10)
  br label %header__1

header__1:                                        ; preds = %exiting__1, %entry
  %1 = phi i64 [ 0, %entry ], [ %6, %exiting__1 ]
  %2 = icmp sle i64 %1, 9
  br i1 %2, label %body__1, label %exit__1

body__1:                                          ; preds = %header__1
  %3 = call %String* @__quantum__rt__string_create(i32 0, i8* null)
  %4 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %0, i64 %1)
  %5 = bitcast i8* %4 to %String**
  store %String* %3, %String** %5
  br label %exiting__1

exiting__1:                                       ; preds = %body__1
  %6 = add i64 %1, 1
  br label %header__1

exit__1:                                          ; preds = %header__1
  %arr = alloca %Array*
  store %Array* %0, %Array** %arr
  call void @__quantum__rt__array_update_alias_count(%Array* %0, i64 1)
  br label %header__2

header__2:                                        ; preds = %exiting__2, %exit__1
  %7 = phi i64 [ 0, %exit__1 ], [ %12, %exiting__2 ]
  %8 = icmp sle i64 %7, 9
  br i1 %8, label %body__2, label %exit__2

body__2:                                          ; preds = %header__2
  %9 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %0, i64 %7)
  %10 = bitcast i8* %9 to %String**
  %11 = load %String*, %String** %10
  call void @__quantum__rt__string_update_reference_count(%String* %11, i64 1)
  br label %exiting__2

exiting__2:                                       ; preds = %body__2
  %12 = add i64 %7, 1
  br label %header__2

exit__2:                                          ; preds = %header__2
  call void @__quantum__rt__array_update_reference_count(%Array* %0, i64 1)
  br label %header__3

header__3:                                        ; preds = %exiting__3, %exit__2
  %i = phi i64 [ 0, %exit__2 ], [ %22, %exiting__3 ]
  %13 = icmp sle i64 %i, 9
  br i1 %13, label %body__3, label %exit__3

body__3:                                          ; preds = %header__3
  %14 = srem i64 %i, 2
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %condTrue__1, label %condFalse__1

condTrue__1:                                      ; preds = %body__3
  %16 = call %String* @__quantum__rt__string_create(i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @0, i32 0, i32 0))
  br label %condContinue__1

condFalse__1:                                     ; preds = %body__3
  call void @__quantum__rt__string_update_reference_count(%String* %even, i64 1)
  br label %condContinue__1

condContinue__1:                                  ; preds = %condFalse__1, %condTrue__1
  %str = phi %String* [ %16, %condTrue__1 ], [ %even, %condFalse__1 ]
  %17 = load %Array*, %Array** %arr
  call void @__quantum__rt__array_update_alias_count(%Array* %17, i64 -1)
  %18 = call %Array* @__quantum__rt__array_copy(%Array* %17, i1 false)
  %19 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %18, i64 %i)
  %20 = bitcast i8* %19 to %String**
  %21 = load %String*, %String** %20
  store %String* %str, %String** %20
  call void @__quantum__rt__array_update_alias_count(%Array* %18, i64 1)
  store %Array* %18, %Array** %arr
  call void @__quantum__rt__array_update_reference_count(%Array* %17, i64 -1)
  call void @__quantum__rt__string_update_reference_count(%String* %21, i64 -1)
  br label %exiting__3

exiting__3:                                       ; preds = %condContinue__1
  %22 = add i64 %i, 1
  br label %header__3

exit__3:                                          ; preds = %header__3
  %23 = load %Array*, %Array** %arr
  call void @__quantum__rt__array_update_alias_count(%Array* %23, i64 -1)
  br label %header__4

header__4:                                        ; preds = %exiting__4, %exit__3
  %24 = phi i64 [ 0, %exit__3 ], [ %29, %exiting__4 ]
  %25 = icmp sle i64 %24, 9
  br i1 %25, label %body__4, label %exit__4

body__4:                                          ; preds = %header__4
  %26 = call i8* @__quantum__rt__array_get_element_ptr_1d(%Array* %0, i64 %24)
  %27 = bitcast i8* %26 to %String**
  %28 = load %String*, %String** %27
  call void @__quantum__rt__string_update_reference_count(%String* %28, i64 -1)
  br label %exiting__4

exiting__4:                                       ; preds = %body__4
  %29 = add i64 %24, 1
  br label %header__4

exit__4:                                          ; preds = %header__4
  call void @__quantum__rt__array_update_reference_count(%Array* %0, i64 -1)
  ret %Array* %23
}