entry:
  %0 = call %Callable* @Microsoft__Quantum__Testing__QIR__ReturnGlobalId__body()
  %1 = call %Callable* @Microsoft__Quantum__Testing__QIR__ReturnLocalId__body()
  %2 = call i64 @Microsoft__Quantum__Testing__QIR__ReturnFunctionCall__body()
  %3 = call double @Microsoft__Quantum__Testing__QIR__ReturnOperationCall__body()
  %4 = call %Callable* @Microsoft__Quantum__Testing__QIR__ReturnPartialApplication__body()
  %5 = call { %TupleHeader, { %TupleHeader, i2, i64 }*, double }* @Microsoft__Quantum__Testing__QIR__ReturnUnwrapApplication__body()
  %6 = call %Callable* @Microsoft__Quantum__Testing__QIR__ReturnAdjointApplication__body()
  %7 = call %Callable* @Microsoft__Quantum__Testing__QIR__ReturnControlledApplication__body()
  %8 = call { %TupleHeader, i64, { %TupleHeader, %Callable*, %String* }* }* @Microsoft__Quantum__Testing__QIR__ReturnTuple__body()
  %9 = call %String* @Microsoft__Quantum__Testing__QIR__ReturnArrayItem__body()
  %10 = call i2 @Microsoft__Quantum__Testing__QIR__ReturnNamedItem__body()
  %11 = call %Array* @Microsoft__Quantum__Testing__QIR__ReturnArray__body()
  %12 = call %Array* @Microsoft__Quantum__Testing__QIR__ReturnNewArray__body()
  %13 = call %String* @Microsoft__Quantum__Testing__QIR__ReturnString__body()
  %14 = call %Range @Microsoft__Quantum__Testing__QIR__ReturnRange__body()
  %15 = call %Array* @Microsoft__Quantum__Testing__QIR__ReturnCopyAndUpdateArray__body()
  %16 = call { %TupleHeader, { %TupleHeader, i2, i64 }*, double }* @Microsoft__Quantum__Testing__QIR__ReturnCopyAndUpdateUdt__body()
  %17 = call %BigInt* @Microsoft__Quantum__Testing__QIR__ReturnConditional__body(i1 false)
  %18 = call i1 @Microsoft__Quantum__Testing__QIR__ReturnEquality__body(i64 4, i64 5)
  %19 = call i1 @Microsoft__Quantum__Testing__QIR__ReturnInequality__body(i64 5, i64 6)
  %20 = call i1 @Microsoft__Quantum__Testing__QIR__ReturnLessThan__body(i64 5, i64 6)
  %21 = call i1 @Microsoft__Quantum__Testing__QIR__ReturnLessThanOrEqual__body(i64 5, i64 6)
  %22 = call i1 @Microsoft__Quantum__Testing__QIR__ReturnGreaterThan__body(i64 5, i64 6)
  %23 = call i1 @Microsoft__Quantum__Testing__QIR__ReturnGreaterThanOrEqual__body(i64 5, i64 6)
  %24 = call i1 @Microsoft__Quantum__Testing__QIR__ReturnLogicalAnd__body(i1 true, i1 false)
  %25 = call i1 @Microsoft__Quantum__Testing__QIR__ReturnLogicalOr__body(i1 false, i1 true)
  %26 = call double @Microsoft__Quantum__Testing__QIR__ReturnAddition__body(double 1.000000e+00, double 2.000000e+00)
  %27 = call i64 @Microsoft__Quantum__Testing__QIR__ReturnSubtraction__body(i64 3, i64 4)
  %28 = call double @Microsoft__Quantum__Testing__QIR__ReturnMultiplication__body(double 1.000000e+00, double 2.000000e+00)
  %29 = call i64 @Microsoft__Quantum__Testing__QIR__ReturnDivision__body(i64 3, i64 4)
  %30 = call i64 @Microsoft__Quantum__Testing__QIR__ReturnExponentiation1__body(i64 5)
  %31 = call double @Microsoft__Quantum__Testing__QIR__ReturnExponentiation2__body(double 6.000000e+00)
  %32 = call %BigInt* @Microsoft__Quantum__Testing__QIR__ReturnExponentiation3__body(i64 7)
  %33 = call i64 @Microsoft__Quantum__Testing__QIR__ReturnModulo__body(i64 8)
  %34 = call i2 @Microsoft__Quantum__Testing__QIR__ReturnPauli__body()
  %35 = call %Result* @Microsoft__Quantum__Testing__QIR__ReturnResult__body()
  %36 = call i1 @Microsoft__Quantum__Testing__QIR__ReturnBool__body()
  %37 = call i64 @Microsoft__Quantum__Testing__QIR__ReturnInt__body()
  %38 = call double @Microsoft__Quantum__Testing__QIR__ReturnDouble__body()
  %39 = call %BigInt* @Microsoft__Quantum__Testing__QIR__ReturnBigInt__body()
  call void @Microsoft__Quantum__Testing__QIR__ReturnUnit__body()
  %40 = call i64 @Microsoft__Quantum__Testing__QIR__ReturnLeftShift__body()
  %41 = call %BigInt* @Microsoft__Quantum__Testing__QIR__ReturnRightShift__body()
  %42 = call i64 @Microsoft__Quantum__Testing__QIR__ReturnBXOr__body()
  %43 = call i64 @Microsoft__Quantum__Testing__QIR__ReturnBOr__body()
  %44 = call %BigInt* @Microsoft__Quantum__Testing__QIR__ReturnBAnd__body()
  %45 = call i1 @Microsoft__Quantum__Testing__QIR__ReturnNot__body()
  %46 = call i64 @Microsoft__Quantum__Testing__QIR__ReturnBNot__body()
  %47 = call double @Microsoft__Quantum__Testing__QIR__ReturnNegative__body(double 3.000000e+00)
  call void @__quantum__rt__callable_unreference(%Callable* %0)
  call void @__quantum__rt__callable_unreference(%Callable* %1)
  call void @__quantum__rt__callable_unreference(%Callable* %4)
  %48 = bitcast { %TupleHeader, { %TupleHeader, i2, i64 }*, double }* %5 to %TupleHeader*
  call void @__quantum__rt__tuple_unreference(%TupleHeader* %48)
  %49 = getelementptr { %TupleHeader, { %TupleHeader, i2, i64 }*, double }, { %TupleHeader, { %TupleHeader, i2, i64 }*, double }* %5, i64 0, i32 1
  %50 = load { %TupleHeader, i2, i64 }*, { %TupleHeader, i2, i64 }** %49
  %51 = bitcast { %TupleHeader, i2, i64 }* %50 to %TupleHeader*
  call void @__quantum__rt__tuple_unreference(%TupleHeader* %51)
  call void @__quantum__rt__callable_unreference(%Callable* %6)
  call void @__quantum__rt__callable_unreference(%Callable* %7)
  %52 = bitcast { %TupleHeader, i64, { %TupleHeader, %Callable*, %String* }* }* %8 to %TupleHeader*
  call void @__quantum__rt__tuple_unreference(%TupleHeader* %52)
  %53 = getelementptr { %TupleHeader, i64, { %TupleHeader, %Callable*, %String* }* }, { %TupleHeader, i64, { %TupleHeader, %Callable*, %String* }* }* %8, i64 0, i32 2
  %54 = load { %TupleHeader, %Callable*, %String* }*, { %TupleHeader, %Callable*, %String* }** %53
  %55 = bitcast { %TupleHeader, %Callable*, %String* }* %54 to %TupleHeader*
  call void @__quantum__rt__tuple_unreference(%TupleHeader* %55)
  %56 = getelementptr { %TupleHeader, %Callable*, %String* }, { %TupleHeader, %Callable*, %String* }* %54, i64 0, i32 1
  %57 = load %Callable*, %Callable** %56
  call void @__quantum__rt__callable_unreference(%Callable* %57)
  %58 = getelementptr { %TupleHeader, %Callable*, %String* }, { %TupleHeader, %Callable*, %String* }* %54, i64 0, i32 2
  %59 = load %String*, %String** %58
  call void @__quantum__rt__string_unreference(%String* %59)
  call void @__quantum__rt__string_unreference(%String* %9)
  call void @__quantum__rt__array_unreference(%Array* %11)
  call void @__quantum__rt__array_unreference(%Array* %12)
  call void @__quantum__rt__string_unreference(%String* %13)
  call void @__quantum__rt__array_unreference(%Array* %15)
  %60 = bitcast { %TupleHeader, { %TupleHeader, i2, i64 }*, double }* %16 to %TupleHeader*
  call void @__quantum__rt__tuple_unreference(%TupleHeader* %60)
  %61 = getelementptr { %TupleHeader, { %TupleHeader, i2, i64 }*, double }, { %TupleHeader, { %TupleHeader, i2, i64 }*, double }* %16, i64 0, i32 1
  %62 = load { %TupleHeader, i2, i64 }*, { %TupleHeader, i2, i64 }** %61
  %63 = bitcast { %TupleHeader, i2, i64 }* %62 to %TupleHeader*
  call void @__quantum__rt__tuple_unreference(%TupleHeader* %63)
  call void @__quantum__rt__bigint_unreference(%BigInt* %17)
  call void @__quantum__rt__bigint_unreference(%BigInt* %32)
  call void @__quantum__rt__result_unreference(%Result* %35)
  call void @__quantum__rt__bigint_unreference(%BigInt* %39)
  call void @__quantum__rt__bigint_unreference(%BigInt* %41)
  call void @__quantum__rt__bigint_unreference(%BigInt* %44)
  ret void
}
