; ModuleID = 'simple.llvm.bc'
source_filename = "simple.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outer = type { i32, %struct.inner, %struct.inner, double, %struct.inner, i32 }
%struct.inner = type { i32, double, i32 }

@.str = private unnamed_addr constant [26 x i8] c"The value is: %d %d %d %f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.outer, align 8
  store i32 0, i32* %1, align 4
  %3 = getelementptr inbounds %struct.outer, %struct.outer* %2, i32 0, i32 0
  store i32 10, i32* %3, align 8
  %4 = getelementptr inbounds %struct.outer, %struct.outer* %2, i32 0, i32 3
  store double 1.428570e-01, double* %4, align 8
  %5 = getelementptr inbounds %struct.outer, %struct.outer* %2, i32 0, i32 5
  store i32 12, i32* %5, align 8
  %6 = getelementptr inbounds %struct.outer, %struct.outer* %2, i32 0, i32 1
  %7 = getelementptr inbounds %struct.inner, %struct.inner* %6, i32 0, i32 0
  store i32 1, i32* %7, align 8
  %8 = getelementptr inbounds %struct.outer, %struct.outer* %2, i32 0, i32 1
  %9 = getelementptr inbounds %struct.inner, %struct.inner* %8, i32 0, i32 1
  store double 2.000000e+00, double* %9, align 8
  %10 = getelementptr inbounds %struct.outer, %struct.outer* %2, i32 0, i32 1
  %11 = getelementptr inbounds %struct.inner, %struct.inner* %10, i32 0, i32 2
  store i32 3, i32* %11, align 8
  %12 = getelementptr inbounds %struct.outer, %struct.outer* %2, i32 0, i32 2
  %13 = getelementptr inbounds %struct.inner, %struct.inner* %12, i32 0, i32 0
  store i32 10, i32* %13, align 8
  %14 = getelementptr inbounds %struct.outer, %struct.outer* %2, i32 0, i32 2
  %15 = getelementptr inbounds %struct.inner, %struct.inner* %14, i32 0, i32 1
  store double 1.900000e+01, double* %15, align 8
  %16 = getelementptr inbounds %struct.outer, %struct.outer* %2, i32 0, i32 2
  %17 = getelementptr inbounds %struct.inner, %struct.inner* %16, i32 0, i32 2
  store i32 199, i32* %17, align 8
  %18 = getelementptr inbounds %struct.outer, %struct.outer* %2, i32 0, i32 4
  %19 = getelementptr inbounds %struct.inner, %struct.inner* %18, i32 0, i32 0
  store i32 7, i32* %19, align 8
  %20 = getelementptr inbounds %struct.outer, %struct.outer* %2, i32 0, i32 4
  %21 = getelementptr inbounds %struct.inner, %struct.inner* %20, i32 0, i32 1
  store double 7.700000e+01, double* %21, align 8
  %22 = getelementptr inbounds %struct.outer, %struct.outer* %2, i32 0, i32 4
  %23 = getelementptr inbounds %struct.inner, %struct.inner* %22, i32 0, i32 2
  store i32 17, i32* %23, align 8
  %24 = getelementptr inbounds %struct.outer, %struct.outer* %2, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = getelementptr inbounds %struct.outer, %struct.outer* %2, i32 0, i32 1
  %27 = getelementptr inbounds %struct.inner, %struct.inner* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = getelementptr inbounds %struct.outer, %struct.outer* %2, i32 0, i32 4
  %30 = getelementptr inbounds %struct.inner, %struct.inner* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.outer, %struct.outer* %2, i32 0, i32 2
  %33 = getelementptr inbounds %struct.inner, %struct.inner* %32, i32 0, i32 1
  %34 = load double, double* %33, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i32 %25, i32 %28, i32 %31, double %34)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
