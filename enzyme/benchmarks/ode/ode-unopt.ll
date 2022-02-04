; ModuleID = 'ode.cpp'
source_filename = "ode.cpp"
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
  %call = tail call { double, double } @_Z17__enzyme_autodiffISt4pairIddEJPvddEET_DpT0_(i8* bitcast ({ double, double } (double, double)* @_Z3foodd to i8*), double %in_0, double %in_1) #4
  ret { double, double } %call
}

declare dso_local { double, double } @_Z17__enzyme_autodiffISt4pairIddEJPvddEET_DpT0_(i8*, double, double) local_unnamed_addr #2

; Function Attrs: norecurse nounwind uwtable mustprogress
define dso_local i32 @main() local_unnamed_addr #3 {
entry:
  %call.i = tail call { double, double } @_Z17__enzyme_autodiffISt4pairIddEJPvddEET_DpT0_(i8* bitcast ({ double, double } (double, double)* @_Z3foodd to i8*), double 1.100000e+00, double 1.200000e+00) #4
  ret i32 0
}

attributes #0 = { nounwind readnone uwtable willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { norecurse nounwind uwtable mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)"}
