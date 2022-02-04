; ModuleID = 'ode-raw.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind readnone uwtable willreturn
define dso_local { double, double } @_Z3foodd(double %in_0, double %in_1) #0 {
entry:
  %mul = fmul fast double %in_0, %in_0
  %0 = fmul fast double %in_1, %in_1
  %1 = fmul fast double %0, %0
  %mul4 = fmul fast double %1, %mul
  %.fca.0.insert = insertvalue { double, double } undef, double %mul4, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %mul, 1
  ret { double, double } %.fca.1.insert
}

; Function Attrs: nounwind uwtable mustprogress
define dso_local { double, double } @_Z4dfoodd(double %in_0, double %in_1) local_unnamed_addr #1 {
entry:
  %0 = call { double, double } @diffe_Z3foodd(double %in_0, double %in_1)
  ret { double, double } %0
}

; Function Attrs: nounwind readnone uwtable willreturn
define internal { double, double } @diffe_Z3foodd(double %in_0, double %in_1) #0 {
entry:
  %".fca.1.insert'de" = alloca { double, double }, align 8
  store { double, double } zeroinitializer, { double, double }* %".fca.1.insert'de", align 8
  %"mul'de" = alloca double, align 8
  store double 0.000000e+00, double* %"mul'de", align 8
  %".fca.0.insert'de" = alloca { double, double }, align 8
  store { double, double } zeroinitializer, { double, double }* %".fca.0.insert'de", align 8
  %"mul4'de" = alloca double, align 8
  store double 0.000000e+00, double* %"mul4'de", align 8
  %"'de" = alloca double, align 8
  store double 0.000000e+00, double* %"'de", align 8
  %"'de2" = alloca double, align 8
  store double 0.000000e+00, double* %"'de2", align 8
  %"in_1'de" = alloca double, align 8
  store double 0.000000e+00, double* %"in_1'de", align 8
  %"in_0'de" = alloca double, align 8
  store double 0.000000e+00, double* %"in_0'de", align 8
  %mul = fmul fast double %in_0, %in_0
  %0 = fmul fast double %in_1, %in_1
  %1 = fmul fast double %0, %0
  %mul4 = fmul fast double %1, %mul
  %.fca.0.insert = insertvalue { double, double } undef, double %mul4, 0
  br label %invertentry

invertentry:                                      ; preds = %entry
  %2 = load { double, double }, { double, double }* %".fca.1.insert'de", align 8
  %3 = extractvalue { double, double } %2, 1
  %4 = load double, double* %"mul'de", align 8
  %5 = fadd fast double %4, %3
  store double %5, double* %"mul'de", align 8
  %6 = load { double, double }, { double, double }* %".fca.1.insert'de", align 8
  %7 = insertvalue { double, double } %6, double 0.000000e+00, 1
  %8 = load { double, double }, { double, double }* %".fca.0.insert'de", align 8
  %9 = extractvalue { double, double } %7, 0
  %10 = getelementptr inbounds { double, double }, { double, double }* %".fca.0.insert'de", i32 0, i32 0
  %11 = load double, double* %10, align 8
  %12 = fadd fast double %11, %9
  store double %12, double* %10, align 8
  %13 = extractvalue { double, double } %7, 1
  %14 = getelementptr inbounds { double, double }, { double, double }* %".fca.0.insert'de", i32 0, i32 1
  %15 = load double, double* %14, align 8
  %16 = fadd fast double %15, %13
  store double %16, double* %14, align 8
  store { double, double } zeroinitializer, { double, double }* %".fca.1.insert'de", align 8
  %17 = load { double, double }, { double, double }* %".fca.0.insert'de", align 8
  %18 = extractvalue { double, double } %17, 0
  %19 = load double, double* %"mul4'de", align 8
  %20 = fadd fast double %19, %18
  store double %20, double* %"mul4'de", align 8
  store { double, double } zeroinitializer, { double, double }* %".fca.0.insert'de", align 8
  %21 = load double, double* %"mul4'de", align 8
  %m0diffe = fmul fast double %21, %mul
  %m1diffemul = fmul fast double %21, %1
  store double 0.000000e+00, double* %"mul4'de", align 8
  %22 = load double, double* %"'de", align 8
  %23 = fadd fast double %22, %m0diffe
  store double %23, double* %"'de", align 8
  %24 = load double, double* %"mul'de", align 8
  %25 = fadd fast double %24, %m1diffemul
  store double %25, double* %"mul'de", align 8
  %26 = load double, double* %"'de", align 8
  %m0diffe1 = fmul fast double %26, %0
  %m1diffe = fmul fast double %26, %0
  store double 0.000000e+00, double* %"'de", align 8
  %27 = load double, double* %"'de2", align 8
  %28 = fadd fast double %27, %m0diffe1
  store double %28, double* %"'de2", align 8
  %29 = load double, double* %"'de2", align 8
  %30 = fadd fast double %29, %m1diffe
  store double %30, double* %"'de2", align 8
  %31 = load double, double* %"'de2", align 8
  %m0diffein_1 = fmul fast double %31, %in_1
  %m1diffein_1 = fmul fast double %31, %in_1
  store double 0.000000e+00, double* %"'de2", align 8
  %32 = load double, double* %"in_1'de", align 8
  %33 = fadd fast double %32, %m0diffein_1
  store double %33, double* %"in_1'de", align 8
  %34 = load double, double* %"in_1'de", align 8
  %35 = fadd fast double %34, %m1diffein_1
  store double %35, double* %"in_1'de", align 8
  %36 = load double, double* %"mul'de", align 8
  %m0diffein_0 = fmul fast double %36, %in_0
  %m1diffein_0 = fmul fast double %36, %in_0
  store double 0.000000e+00, double* %"mul'de", align 8
  %37 = load double, double* %"in_0'de", align 8
  %38 = fadd fast double %37, %m0diffein_0
  store double %38, double* %"in_0'de", align 8
  %39 = load double, double* %"in_0'de", align 8
  %40 = fadd fast double %39, %m1diffein_0
  store double %40, double* %"in_0'de", align 8
  %41 = load double, double* %"in_0'de", align 8
  %42 = load double, double* %"in_1'de", align 8
  %43 = insertvalue { double, double } undef, double %41, 0
  %44 = insertvalue { double, double } %43, double %42, 1
  ret { double, double } %44
}

; Function Attrs: norecurse nounwind uwtable mustprogress
define dso_local i32 @main() local_unnamed_addr #2 {
entry:
  %0 = call { double, double } @diffe_Z3foodd(double 1.100000e+00, double 1.200000e+00)
  ret i32 0
}

; Function Attrs: nounwind readnone uwtable willreturn
define dso_local { double, double } @preprocess__Z3foodd(double %in_0, double %in_1) #0 {
entry:
  %mul = fmul fast double %in_0, %in_0
  %0 = fmul fast double %in_1, %in_1
  %1 = fmul fast double %0, %0
  %mul4 = fmul fast double %1, %mul
  %.fca.0.insert = insertvalue { double, double } undef, double %mul4, 0
  %.fca.1.insert = insertvalue { double, double } %.fca.0.insert, double %mul, 1
  ret { double, double } %.fca.1.insert
}

attributes #0 = { nounwind readnone uwtable willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { norecurse nounwind uwtable mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)"}
!1 = !{i32 1, !"wchar_size", i32 4}
