; RUN: %opt < %s %loadEnzyme -enzyme -enzyme-preopt=false -O3 -S | FileCheck %s

%struct.Gradients = type { double, double }

; Function Attrs: nounwind
declare %struct.Gradients @__enzyme_fwdvectordiff(double (double)*, ...)

; Function Attrs: nounwind readnone uwtable
define double @tester(double %x) {
entry:
  %0 = tail call fast double @llvm.sin.f64(double %x)
  ret double %0
}

define %struct.Gradients @test_derivative(double %x) {
entry:
  %0 = tail call %struct.Gradients (double (double)*, ...) @__enzyme_fwdvectordiff(double (double)* nonnull @tester, double %x, [2 x double] [double 1.0, double 2.0])
  ret %struct.Gradients %0
}

; Function Attrs: nounwind readnone speculatable
declare double @llvm.cos.f64(double)

; Function Attrs: nounwind readnone speculatable
declare double @llvm.sin.f64(double)


; CHECK: define %struct.Gradients @test_derivative(double %x)
; CHECK-NEXT: entry:
; CHECK-NEXT:   %0 = tail call fast double @llvm.cos.f64(double %x) #2
; CHECK-NEXT:   %.splatinsert.i = insertelement <2 x double> poison, double %0, i32 0
; CHECK-NEXT:   %.splat.i = shufflevector <2 x double> %.splatinsert.i, <2 x double> poison, <2 x i32> zeroinitializer
; CHECK-NEXT:   %1 = fmul fast <2 x double> %.splat.i, <double 1.000000e+00, double 2.000000e+00>
; CHECK-NEXT:   %2 = extractelement <2 x double> %1, i64 0
; CHECK-NEXT:   %3 = insertvalue %struct.Gradients zeroinitializer, double %2, 0
; CHECK-NEXT:   %4 = extractelement <2 x double> %1, i64 1
; CHECK-NEXT:   %5 = insertvalue %struct.Gradients %3, double %4, 1
; CHECK-NEXT:   ret %struct.Gradients %5
; CHECK-NEXT: }