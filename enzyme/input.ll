; ModuleID = 'test.cpp'
source_filename = "test.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

$_Z11matvec_realPdS_ = comdat any

@enzyme_const = external global i32, align 4

; Function Attrs: noinline norecurse optnone uwtable mustprogress
define i32 @main(i32 %argc, i8** %argv) #0 {
entry:
  %argc.addr = alloca i32, align 4
  %argv.addr = alloca i8**, align 8
  %Min = alloca double*, align 8
  %Mout = alloca double*, align 8
  %Vin = alloca double*, align 8
  %Vout = alloca double*, align 8
  store i32 %argc, i32* %argc.addr, align 4
  store i8** %argv, i8*** %argv.addr, align 8
  %call = call noalias nonnull i8* @_Znam(i64 800) #7
  %0 = bitcast i8* %call to double*
  store double* %0, double** %Min, align 8
  %call1 = call noalias nonnull i8* @_Znam(i64 800) #7
  %1 = bitcast i8* %call1 to double*
  store double* %1, double** %Mout, align 8
  %call2 = call noalias nonnull i8* @_Znam(i64 80) #7
  %2 = bitcast i8* %call2 to double*
  store double* %2, double** %Vin, align 8
  %call3 = call noalias nonnull i8* @_Znam(i64 80) #7
  %3 = bitcast i8* %call3 to double*
  store double* %3, double** %Vout, align 8
  %4 = load double*, double** %Mout, align 8
  %5 = bitcast double* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 800, i1 false)
  %6 = load double*, double** %Vout, align 8
  %7 = bitcast double* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 80, i1 false)
  %8 = load double*, double** %Min, align 8
  %9 = load double*, double** %Mout, align 8
  %10 = load double*, double** %Vin, align 8
  %11 = load double*, double** %Vout, align 8
  call void @_ZL13enzyme_sincosPdS_S_S_(double* %8, double* %9, double* %10, double* %11)
  ret i32 0
}

; Function Attrs: nobuiltin allocsize(0)
declare nonnull i8* @_Znam(i64) #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline optnone uwtable mustprogress
define internal void @_ZL13enzyme_sincosPdS_S_S_(double* %Min, double* %Mout, double* %Vin, double* %Vout) #3 {
entry:
  %Min.addr = alloca double*, align 8
  %Mout.addr = alloca double*, align 8
  %Vin.addr = alloca double*, align 8
  %Vout.addr = alloca double*, align 8
  store double* %Min, double** %Min.addr, align 8
  store double* %Mout, double** %Mout.addr, align 8
  store double* %Vin, double** %Vin.addr, align 8
  store double* %Vout, double** %Vout.addr, align 8
  %0 = load double*, double** %Min.addr, align 8
  %1 = load double*, double** %Mout.addr, align 8
  %2 = load i32, i32* @enzyme_const, align 4
  %3 = load double*, double** %Vin.addr, align 8
  %call = call double @_Z17__enzyme_autodiffIdJPFdPdS0_ES0_S0_iS0_EET_DpT0_(double (double*, double*)* @_Z11matvec_realPdS_, double* %0, double* %1, i32 %2, double* %3)
  ret void
}

declare double @_Z17__enzyme_autodiffIdJPFdPdS0_ES0_S0_iS0_EET_DpT0_(double (double*, double*)*, double*, double*, i32, double*) #4

; Function Attrs: noinline nounwind optnone uwtable mustprogress
define linkonce_odr double @_Z11matvec_realPdS_(double* %mat, double* %vec) #5 comdat {
entry:
  %mat.addr = alloca double*, align 8
  %vec.addr = alloca double*, align 8
  %out = alloca double*, align 8
  %i = alloca i32, align 4
  %a1 = alloca double, align 8
  %a2 = alloca double, align 8
  store double* %mat, double** %mat.addr, align 8
  store double* %vec, double** %vec.addr, align 8
  %call = call noalias i8* @malloc(i64 80) #8
  %0 = bitcast i8* %call to double*
  store double* %0, double** %out, align 8
  %1 = load double*, double** %out, align 8
  %arrayidx = getelementptr inbounds double, double* %1, i64 0
  store double 1.000000e+00, double* %arrayidx, align 8
  store i32 0, i32* %i, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4
  %cmp = icmp slt i32 %2, 6
  br i1 %cmp, label %for.body, label %for.end

for.body:                                         ; preds = %for.cond
  %3 = load double*, double** %mat.addr, align 8
  %4 = load i32, i32* %i, align 4
  %idxprom = sext i32 %4 to i64
  %arrayidx1 = getelementptr inbounds double, double* %3, i64 %idxprom
  %5 = load double, double* %arrayidx1, align 8
  %6 = load double*, double** %vec.addr, align 8
  %7 = load i32, i32* %i, align 4
  %idxprom2 = sext i32 %7 to i64
  %arrayidx3 = getelementptr inbounds double, double* %6, i64 %idxprom2
  %8 = load double, double* %arrayidx3, align 8
  %mul = fmul double %5, %8
  store double %mul, double* %a1, align 8
  %9 = load double*, double** %mat.addr, align 8
  %10 = load i32, i32* %i, align 4
  %idxprom4 = sext i32 %10 to i64
  %arrayidx5 = getelementptr inbounds double, double* %9, i64 %idxprom4
  %11 = load double, double* %arrayidx5, align 8
  %12 = load double*, double** %vec.addr, align 8
  %13 = load i32, i32* %i, align 4
  %idxprom6 = sext i32 %13 to i64
  %arrayidx7 = getelementptr inbounds double, double* %12, i64 %idxprom6
  %14 = load double, double* %arrayidx7, align 8
  %mul8 = fmul double %11, %14
  store double %mul8, double* %a2, align 8
  %15 = load double, double* %a1, align 8
  %tobool = fcmp une double %15, 0.000000e+00
  br i1 %tobool, label %if.then, label %if.end

if.then:                                          ; preds = %for.body
  %16 = load double, double* %a1, align 8
  %17 = load double, double* %a2, align 8
  %add = fadd double %16, %17
  %18 = load double*, double** %out, align 8
  %arrayidx9 = getelementptr inbounds double, double* %18, i64 0
  %19 = load double, double* %arrayidx9, align 8
  %add10 = fadd double %19, %add
  store double %add10, double* %arrayidx9, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc

for.inc:                                          ; preds = %if.end
  %20 = load i32, i32* %i, align 4
  %inc = add nsw i32 %20, 1
  store i32 %inc, i32* %i, align 4
  br label %for.cond, !llvm.loop !3

for.end:                                          ; preds = %for.cond
  %21 = load double*, double** %out, align 8
  %22 = bitcast double* %21 to i8*
  call void @free(i8* %22) #8
  %23 = load double*, double** %out, align 8
  %arrayidx11 = getelementptr inbounds double, double* %23, i64 0
  %24 = load double, double* %arrayidx11, align 8
  ret double %24
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #6

; Function Attrs: nounwind
declare void @free(i8*) #6

attributes #0 = { noinline norecurse optnone uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nobuiltin allocsize(0) "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #3 = { noinline optnone uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noinline nounwind optnone uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { builtin allocsize(0) }
attributes #8 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
