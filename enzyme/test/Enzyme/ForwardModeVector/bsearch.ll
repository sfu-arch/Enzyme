; RUN: %opt < %s %loadEnzyme -enzyme -enzyme-preopt=false -inline -mem2reg -gvn -instsimplify -correlated-propagation -adce -simplifycfg -S | FileCheck %s

%struct.Gradients = type { double, double, double }

; Function Attrs: nounwind
declare %struct.Gradients @__enzyme_fwdvectordiff(i8*, double*, %struct.Gradients*, i64)

; Function Attrs: noinline norecurse nounwind uwtable
define  double @f(double* nocapture %x, i64 %n) #0 {
entry:
  br label %loop

loop:
  %j = phi i64 [ %nj, %end ], [ 0, %entry ]
  %sum = phi double [ %nsum, %end ], [ 0.000000e+00, %entry ]
  %nj = add nsw nuw i64 %j, 1
  %g0 = getelementptr inbounds double, double* %x, i64 %j
  br label %body

body:                              ; preds = %entry, %for.cond.cleanup6
  %i = phi i64 [ %next, %body ], [ 0, %loop ]
  %gep = getelementptr inbounds double, double* %g0, i64 %i
  %ld = load double, double* %gep, align 8
  %cmp = fcmp oeq double %ld, 3.141592e+00
  %next = add nuw i64 %i, 1
  br i1 %cmp, label %body, label %end

end:
  %gep2 = getelementptr inbounds double, double* %x, i64 %i
  %ld2 = load double, double* %gep2, align 8
  %nsum = fadd double %ld2, %sum
  %cmp2 = icmp ne i64 %nj, 10
  br i1 %cmp2, label %loop, label %exit

exit:
  ret double %nsum
}

; Function Attrs: noinline nounwind uwtable
define dso_local %struct.Gradients @dsumsquare(double* %x, %struct.Gradients* %xp, i64 %n) local_unnamed_addr #1 {
entry:
  %call = tail call %struct.Gradients @__enzyme_fwdvectordiff(i8* bitcast (double (double*, i64)* @f to i8*), double* %x, %struct.Gradients* %xp, i64 %n)
  ret %struct.Gradients %call
}

attributes #0 = { noinline norecurse nounwind uwtable }
attributes #1 = { noinline nounwind uwtable }


; CHECK: define internal <3 x double> @fwdvectordiffef(double* nocapture %x, <3 x double>* nocapture %"x'", i64 %n)
; CHECK-NEXT: entry:
; CHECK-NEXT:   br label %loop

; CHECK: loop:                                             ; preds = %end, %entry
; CHECK-NEXT:   %iv = phi i64 [ %iv.next, %end ], [ 0, %entry ]
; CHECK-NEXT:   %"sum'" = phi fast <3 x double> [ %1, %end ], [ zeroinitializer, %entry ]
; CHECK-NEXT:   %iv.next = add nuw nsw i64 %iv, 1
; CHECK-NEXT:   %g0 = getelementptr inbounds double, double* %x, i64 %iv
; CHECK-NEXT:   br label %body

; CHECK: body:                                             ; preds = %body, %loop
; CHECK-NEXT:   %iv1 = phi i64 [ %iv.next2, %body ], [ 0, %loop ]
; CHECK-NEXT:   %iv.next2 = add nuw nsw i64 %iv1, 1
; CHECK-NEXT:   %gep = getelementptr inbounds double, double* %g0, i64 %iv1
; CHECK-NEXT:   %ld = load double, double* %gep, align 8
; CHECK-NEXT:   %cmp = fcmp oeq double %ld, 0x400921FAFC8B007A
; CHECK-NEXT:   br i1 %cmp, label %body, label %end

; CHECK: end:                                              ; preds = %body
; CHECK-NEXT:   %"gep2'ipg" = getelementptr inbounds <3 x double>, <3 x double>* %"x'", i64 %iv1
; CHECK-NEXT:   %0 = load <3 x double>, <3 x double>* %"gep2'ipg", align 8
; CHECK-NEXT:   %1 = fadd fast <3 x double> %0, %"sum'"
; CHECK-NEXT:   %cmp2 = icmp ne i64 %iv.next, 10
; CHECK-NEXT:   br i1 %cmp2, label %loop, label %exit

; CHECK: exit:                                             ; preds = %end
; CHECK-NEXT:   ret <3 x double> %1
; CHECK-NEXT: }