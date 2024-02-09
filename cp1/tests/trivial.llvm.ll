; ModuleID = 'trivial.llvm.bc'
source_filename = "trivial.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SimpleStruct = type { i32, double, i32 }

@.str = private unnamed_addr constant [23 x i8] c"testSimple: %d %f % d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_func(%struct.SimpleStruct* byval align 8) #0 {
  %2 = alloca %struct.SimpleStruct, align 8
  %3 = bitcast %struct.SimpleStruct* %2 to i8*
  %4 = bitcast %struct.SimpleStruct* %0 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %3, i8* align 8 %4, i64 24, i1 false)
  %5 = getelementptr inbounds %struct.SimpleStruct, %struct.SimpleStruct* %2, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = getelementptr inbounds %struct.SimpleStruct, %struct.SimpleStruct* %2, i32 0, i32 1
  %8 = load double, double* %7, align 8
  %9 = getelementptr inbounds %struct.SimpleStruct, %struct.SimpleStruct* %2, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i32 %6, double %8, i32 %10)
  ret i32 0
}

; Function Attrs: argmemonly nounwind
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* nocapture writeonly, i8* nocapture readonly, i64, i1) #1

declare dso_local i32 @printf(i8*, ...) #2

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @test_func_ptr(%struct.SimpleStruct*) #0 {
  %2 = alloca %struct.SimpleStruct*, align 8
  %3 = alloca %struct.SimpleStruct, align 8
  store %struct.SimpleStruct* %0, %struct.SimpleStruct** %2, align 8
  %4 = load %struct.SimpleStruct*, %struct.SimpleStruct** %2, align 8
  %5 = bitcast %struct.SimpleStruct* %3 to i8*
  %6 = bitcast %struct.SimpleStruct* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %5, i8* align 8 %6, i64 24, i1 false)
  %7 = getelementptr inbounds %struct.SimpleStruct, %struct.SimpleStruct* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = getelementptr inbounds %struct.SimpleStruct, %struct.SimpleStruct* %3, i32 0, i32 1
  %10 = load double, double* %9, align 8
  %11 = getelementptr inbounds %struct.SimpleStruct, %struct.SimpleStruct* %3, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i32 %8, double %10, i32 %12)
  ret i32 0
}

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32, i8**) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca %struct.SimpleStruct, align 8
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %7 = getelementptr inbounds %struct.SimpleStruct, %struct.SimpleStruct* %6, i32 0, i32 0
  store i32 10, i32* %7, align 8
  %8 = getelementptr inbounds %struct.SimpleStruct, %struct.SimpleStruct* %6, i32 0, i32 1
  store double 1.428570e-01, double* %8, align 8
  %9 = getelementptr inbounds %struct.SimpleStruct, %struct.SimpleStruct* %6, i32 0, i32 2
  store i32 12, i32* %9, align 8
  %10 = getelementptr inbounds %struct.SimpleStruct, %struct.SimpleStruct* %6, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = getelementptr inbounds %struct.SimpleStruct, %struct.SimpleStruct* %6, i32 0, i32 1
  %13 = load double, double* %12, align 8
  %14 = getelementptr inbounds %struct.SimpleStruct, %struct.SimpleStruct* %6, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i32 0, i32 0), i32 %11, double %13, i32 %15)
  %17 = call i32 @test_func(%struct.SimpleStruct* byval align 8 %6)
  %18 = call i32 @test_func_ptr(%struct.SimpleStruct* %6)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
