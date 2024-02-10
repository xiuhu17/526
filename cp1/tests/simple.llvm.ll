; ModuleID = 'simple.llvm.bc'
source_filename = "simple.c"
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.outerouter = type { i32, %struct.outer, %struct.inner, double, %struct.inner*, %struct.outer* }
%struct.outer = type { i32, %struct.inner, %struct.inner, double, %struct.inner, i32, %struct.inner* }
%struct.inner = type { i32, double, i32 }

@.str = private unnamed_addr constant [26 x i8] c"The value is: %d %d %d %f\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.outerouter, align 8
  %3 = alloca %struct.outer, align 8
  %4 = alloca %struct.inner, align 8
  %5 = alloca %struct.inner, align 8
  %6 = alloca %struct.inner, align 8
  %7 = alloca %struct.inner*, align 8
  %8 = alloca %struct.outer, align 8
  %9 = alloca %struct.inner, align 8
  %10 = alloca %struct.outer, align 8
  %11 = alloca %struct.outer*, align 8
  %12 = alloca %struct.inner, align 8
  store i32 0, i32* %1, align 4
  %13 = getelementptr inbounds %struct.inner, %struct.inner* %4, i32 0, i32 0
  store i32 111111, i32* %13, align 8
  %14 = getelementptr inbounds %struct.inner, %struct.inner* %4, i32 0, i32 1
  store double 1.111200e+04, double* %14, align 8
  %15 = getelementptr inbounds %struct.inner, %struct.inner* %4, i32 0, i32 2
  store i32 1113, i32* %15, align 8
  %16 = getelementptr inbounds %struct.inner, %struct.inner* %5, i32 0, i32 0
  store i32 222221, i32* %16, align 8
  %17 = getelementptr inbounds %struct.inner, %struct.inner* %5, i32 0, i32 1
  store double 2.222200e+04, double* %17, align 8
  %18 = getelementptr inbounds %struct.inner, %struct.inner* %5, i32 0, i32 2
  store i32 22223, i32* %18, align 8
  %19 = getelementptr inbounds %struct.inner, %struct.inner* %6, i32 0, i32 0
  store i32 33331, i32* %19, align 8
  %20 = getelementptr inbounds %struct.inner, %struct.inner* %6, i32 0, i32 1
  store double 3.332000e+03, double* %20, align 8
  %21 = getelementptr inbounds %struct.inner, %struct.inner* %6, i32 0, i32 2
  store i32 33333, i32* %21, align 8
  store %struct.inner* %6, %struct.inner** %7, align 8
  %22 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 1
  %24 = getelementptr inbounds %struct.outer, %struct.outer* %23, i32 0, i32 0
  store i32 444441, i32* %24, align 8
  %25 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 1
  %26 = getelementptr inbounds %struct.outer, %struct.outer* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.inner, %struct.inner* %26, i32 0, i32 0
  store i32 4441, i32* %27, align 8
  %28 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 1
  %29 = getelementptr inbounds %struct.outer, %struct.outer* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.inner, %struct.inner* %29, i32 0, i32 1
  store double 4.444200e+04, double* %30, align 8
  %31 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 1
  %32 = getelementptr inbounds %struct.outer, %struct.outer* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.inner, %struct.inner* %32, i32 0, i32 2
  store i32 44443, i32* %33, align 8
  %34 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 1
  %35 = getelementptr inbounds %struct.outer, %struct.outer* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.inner, %struct.inner* %35, i32 0, i32 0
  store i32 555551, i32* %36, align 8
  %37 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 1
  %38 = getelementptr inbounds %struct.outer, %struct.outer* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.inner, %struct.inner* %38, i32 0, i32 1
  store double 5.555520e+05, double* %39, align 8
  %40 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 1
  %41 = getelementptr inbounds %struct.outer, %struct.outer* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.inner, %struct.inner* %41, i32 0, i32 2
  store i32 55553, i32* %42, align 8
  %43 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 1
  %44 = getelementptr inbounds %struct.outer, %struct.outer* %43, i32 0, i32 3
  store double 6.666100e+04, double* %44, align 8
  %45 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 1
  %46 = getelementptr inbounds %struct.outer, %struct.outer* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.inner, %struct.inner* %46, i32 0, i32 0
  store i32 66661, i32* %47, align 8
  %48 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 1
  %49 = getelementptr inbounds %struct.outer, %struct.outer* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.inner, %struct.inner* %49, i32 0, i32 0
  store i32 6661, i32* %50, align 8
  %51 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 1
  %52 = getelementptr inbounds %struct.outer, %struct.outer* %51, i32 0, i32 4
  %53 = getelementptr inbounds %struct.inner, %struct.inner* %52, i32 0, i32 0
  store i32 6661, i32* %53, align 8
  %54 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 1
  %55 = getelementptr inbounds %struct.outer, %struct.outer* %54, i32 0, i32 4
  %56 = getelementptr inbounds %struct.inner, %struct.inner* %55, i32 0, i32 1
  store double 6.666100e+04, double* %56, align 8
  %57 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 1
  %58 = getelementptr inbounds %struct.outer, %struct.outer* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.inner, %struct.inner* %58, i32 0, i32 2
  store i32 77774, i32* %59, align 8
  %60 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 1
  %61 = getelementptr inbounds %struct.outer, %struct.outer* %60, i32 0, i32 5
  store i32 77779, i32* %61, align 8
  %62 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 1
  %63 = getelementptr inbounds %struct.outer, %struct.outer* %62, i32 0, i32 6
  store %struct.inner* %4, %struct.inner** %63, align 8
  %64 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 2
  %65 = getelementptr inbounds %struct.inner, %struct.inner* %64, i32 0, i32 0
  store i32 888881, i32* %65, align 8
  %66 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 2
  %67 = getelementptr inbounds %struct.inner, %struct.inner* %66, i32 0, i32 1
  store double 8.888200e+04, double* %67, align 8
  %68 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 2
  %69 = getelementptr inbounds %struct.inner, %struct.inner* %68, i32 0, i32 2
  store i32 88883, i32* %69, align 8
  %70 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 3
  store double 7.000000e+00, double* %70, align 8
  %71 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 4
  store %struct.inner* %5, %struct.inner** %71, align 8
  %72 = getelementptr inbounds %struct.inner, %struct.inner* %9, i32 0, i32 0
  store i32 999991, i32* %72, align 8
  %73 = getelementptr inbounds %struct.inner, %struct.inner* %9, i32 0, i32 1
  store double 9.999200e+04, double* %73, align 8
  %74 = getelementptr inbounds %struct.inner, %struct.inner* %9, i32 0, i32 2
  store i32 99993, i32* %74, align 8
  %75 = getelementptr inbounds %struct.outer, %struct.outer* %8, i32 0, i32 0
  store i32 9991, i32* %75, align 8
  %76 = getelementptr inbounds %struct.outer, %struct.outer* %8, i32 0, i32 1
  %77 = getelementptr inbounds %struct.inner, %struct.inner* %76, i32 0, i32 0
  store i32 99991, i32* %77, align 8
  %78 = getelementptr inbounds %struct.outer, %struct.outer* %8, i32 0, i32 1
  %79 = getelementptr inbounds %struct.inner, %struct.inner* %78, i32 0, i32 1
  store double 9.992000e+03, double* %79, align 8
  %80 = getelementptr inbounds %struct.outer, %struct.outer* %8, i32 0, i32 1
  %81 = getelementptr inbounds %struct.inner, %struct.inner* %80, i32 0, i32 2
  store i32 99993, i32* %81, align 8
  %82 = getelementptr inbounds %struct.outer, %struct.outer* %8, i32 0, i32 2
  %83 = getelementptr inbounds %struct.inner, %struct.inner* %82, i32 0, i32 0
  store i32 9991, i32* %83, align 8
  %84 = getelementptr inbounds %struct.outer, %struct.outer* %8, i32 0, i32 2
  %85 = getelementptr inbounds %struct.inner, %struct.inner* %84, i32 0, i32 1
  store double 9.992000e+03, double* %85, align 8
  %86 = getelementptr inbounds %struct.outer, %struct.outer* %8, i32 0, i32 2
  %87 = getelementptr inbounds %struct.inner, %struct.inner* %86, i32 0, i32 2
  store i32 9993, i32* %87, align 8
  %88 = getelementptr inbounds %struct.outer, %struct.outer* %8, i32 0, i32 3
  store double 9.999100e+04, double* %88, align 8
  %89 = getelementptr inbounds %struct.outer, %struct.outer* %8, i32 0, i32 4
  %90 = getelementptr inbounds %struct.inner, %struct.inner* %89, i32 0, i32 0
  store i32 9991, i32* %90, align 8
  %91 = getelementptr inbounds %struct.outer, %struct.outer* %8, i32 0, i32 4
  %92 = getelementptr inbounds %struct.inner, %struct.inner* %91, i32 0, i32 0
  store i32 99991, i32* %92, align 8
  %93 = getelementptr inbounds %struct.outer, %struct.outer* %8, i32 0, i32 4
  %94 = getelementptr inbounds %struct.inner, %struct.inner* %93, i32 0, i32 0
  store i32 9991, i32* %94, align 8
  %95 = getelementptr inbounds %struct.outer, %struct.outer* %8, i32 0, i32 4
  %96 = getelementptr inbounds %struct.inner, %struct.inner* %95, i32 0, i32 1
  store double 9.991000e+03, double* %96, align 8
  %97 = getelementptr inbounds %struct.outer, %struct.outer* %8, i32 0, i32 4
  %98 = getelementptr inbounds %struct.inner, %struct.inner* %97, i32 0, i32 2
  store i32 9994, i32* %98, align 8
  %99 = getelementptr inbounds %struct.outer, %struct.outer* %8, i32 0, i32 5
  store i32 9999, i32* %99, align 8
  %100 = getelementptr inbounds %struct.outer, %struct.outer* %8, i32 0, i32 6
  store %struct.inner* %9, %struct.inner** %100, align 8
  %101 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 5
  store %struct.outer* %8, %struct.outer** %101, align 8
  %102 = getelementptr inbounds %struct.inner, %struct.inner* %12, i32 0, i32 0
  store i32 1000000, i32* %102, align 8
  %103 = getelementptr inbounds %struct.inner, %struct.inner* %12, i32 0, i32 1
  store double 2.000000e+00, double* %103, align 8
  %104 = getelementptr inbounds %struct.inner, %struct.inner* %12, i32 0, i32 2
  store i32 300000000, i32* %104, align 8
  %105 = getelementptr inbounds %struct.outer, %struct.outer* %10, i32 0, i32 0
  store i32 1000, i32* %105, align 8
  %106 = getelementptr inbounds %struct.outer, %struct.outer* %10, i32 0, i32 1
  %107 = getelementptr inbounds %struct.inner, %struct.inner* %106, i32 0, i32 0
  store i32 100000, i32* %107, align 8
  %108 = getelementptr inbounds %struct.outer, %struct.outer* %10, i32 0, i32 1
  %109 = getelementptr inbounds %struct.inner, %struct.inner* %108, i32 0, i32 1
  store double 2.000000e+00, double* %109, align 8
  %110 = getelementptr inbounds %struct.outer, %struct.outer* %10, i32 0, i32 1
  %111 = getelementptr inbounds %struct.inner, %struct.inner* %110, i32 0, i32 2
  store i32 300000, i32* %111, align 8
  %112 = getelementptr inbounds %struct.outer, %struct.outer* %10, i32 0, i32 2
  %113 = getelementptr inbounds %struct.inner, %struct.inner* %112, i32 0, i32 0
  store i32 100, i32* %113, align 8
  %114 = getelementptr inbounds %struct.outer, %struct.outer* %10, i32 0, i32 2
  %115 = getelementptr inbounds %struct.inner, %struct.inner* %114, i32 0, i32 1
  store double 2.000000e+00, double* %115, align 8
  %116 = getelementptr inbounds %struct.outer, %struct.outer* %10, i32 0, i32 2
  %117 = getelementptr inbounds %struct.inner, %struct.inner* %116, i32 0, i32 2
  store i32 3000000, i32* %117, align 8
  %118 = getelementptr inbounds %struct.outer, %struct.outer* %10, i32 0, i32 3
  store double 1.000000e+00, double* %118, align 8
  %119 = getelementptr inbounds %struct.outer, %struct.outer* %10, i32 0, i32 4
  %120 = getelementptr inbounds %struct.inner, %struct.inner* %119, i32 0, i32 0
  store i32 10000000, i32* %120, align 8
  %121 = getelementptr inbounds %struct.outer, %struct.outer* %10, i32 0, i32 4
  %122 = getelementptr inbounds %struct.inner, %struct.inner* %121, i32 0, i32 0
  store i32 10000000, i32* %122, align 8
  %123 = getelementptr inbounds %struct.outer, %struct.outer* %10, i32 0, i32 4
  %124 = getelementptr inbounds %struct.inner, %struct.inner* %123, i32 0, i32 0
  store i32 100000000, i32* %124, align 8
  %125 = getelementptr inbounds %struct.outer, %struct.outer* %10, i32 0, i32 4
  %126 = getelementptr inbounds %struct.inner, %struct.inner* %125, i32 0, i32 1
  store double 1.000000e+00, double* %126, align 8
  %127 = getelementptr inbounds %struct.outer, %struct.outer* %10, i32 0, i32 4
  %128 = getelementptr inbounds %struct.inner, %struct.inner* %127, i32 0, i32 2
  store i32 400, i32* %128, align 8
  %129 = getelementptr inbounds %struct.outer, %struct.outer* %10, i32 0, i32 5
  store i32 90000, i32* %129, align 8
  %130 = getelementptr inbounds %struct.outer, %struct.outer* %10, i32 0, i32 6
  store %struct.inner* %12, %struct.inner** %130, align 8
  store %struct.outer* %10, %struct.outer** %11, align 8
  %131 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 1
  %132 = getelementptr inbounds %struct.outer, %struct.outer* %131, i32 0, i32 2
  %133 = getelementptr inbounds %struct.inner, %struct.inner* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 1
  %136 = getelementptr inbounds %struct.outer, %struct.outer* %135, i32 0, i32 4
  %137 = getelementptr inbounds %struct.inner, %struct.inner* %136, i32 0, i32 2
  %138 = load i32, i32* %137, align 8
  %139 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 2
  %140 = getelementptr inbounds %struct.inner, %struct.inner* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = getelementptr inbounds %struct.outerouter, %struct.outerouter* %2, i32 0, i32 4
  %143 = load %struct.inner*, %struct.inner** %142, align 8
  %144 = getelementptr inbounds %struct.inner, %struct.inner* %143, i32 0, i32 1
  %145 = load double, double* %144, align 8
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i32 0, i32 0), i32 %134, i32 %138, i32 %141, double %145)
  ret i32 0
}

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 8.0.0 (tags/RELEASE_800/final)"}
