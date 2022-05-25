; ModuleID = 'ode.cpp'
source_filename = "ode.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.boost::array.1" = type { [1 x double] }
%struct.timeval = type { i64, i64 }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@.str = private unnamed_addr constant [10 x i8] c"iters=%d\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"Enzyme real %0.6f res=%f\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Enzyme forward %0.6f res=%f\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Enzyme combined %0.6f res'=%f\0A\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_ode.cpp, i8* null }]

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZStL8__ioinit() #2 section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @atexit(void ()*) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind uwtable willreturn mustprogress
define dso_local void @_Z6lorenzRKN5boost5arrayIdLm1EEERS1_d(%"class.boost::array.1"* nocapture nonnull readonly align 8 dereferenceable(8) %x, %"class.boost::array.1"* nocapture nonnull align 8 dereferenceable(8) %dxdt, double %t) local_unnamed_addr #4 {
entry:
  %arrayidx.i = getelementptr inbounds %"class.boost::array.1", %"class.boost::array.1"* %x, i64 0, i32 0, i64 0
  %0 = load double, double* %arrayidx.i, align 8, !tbaa !2
  %mul = fmul fast double %0, -1.200000e+00
  %arrayidx.i3 = getelementptr inbounds %"class.boost::array.1", %"class.boost::array.1"* %dxdt, i64 0, i32 0, i64 0
  store double %mul, double* %arrayidx.i3, align 8, !tbaa !2
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nounwind readnone uwtable
define dso_local double @_Z6foobardm(double %t, i64 %iters) #6 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %conv = uitofp i64 %iters to double
  %div = fdiv fast double %t, %conv
  %cmp.i.i.i.i = fcmp fast ogt double %div, 0.000000e+00
  %sub.i21.i.i.i = fsub fast double %div, %t
  %cmp2.i22.i.i.i = fcmp fast ole double %sub.i21.i.i.i, 0x3CB0000000000000
  %sub3.i23.i.i.i = fsub fast double %t, %div
  %cmp5.i24.i.i.i = fcmp fast ole double %sub3.i23.i.i.i, 0x3CB0000000000000
  %retval.0.i25.i.i.i = select i1 %cmp.i.i.i.i, i1 %cmp2.i22.i.i.i, i1 %cmp5.i24.i.i.i
  br i1 %retval.0.i25.i.i.i, label %while.body.i.i.i.preheader, label %_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit

while.body.i.i.i.preheader:                       ; preds = %entry
  %mul.i = fmul fast double %div, 1.200000e+00
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %while.body.i.i.i.preheader, %while.body.i.i.i
  %x.sroa.0.0 = phi double [ %0, %while.body.i.i.i ], [ 1.000000e+00, %while.body.i.i.i.preheader ]
  %step.027.i.i.i = phi i32 [ %inc.i.i.i, %while.body.i.i.i ], [ 0, %while.body.i.i.i.preheader ]
  %mul2.i.i.i.i.i.i.i.i = fmul fast double %mul.i, %x.sroa.0.0
  %0 = fsub fast double %x.sroa.0.0, %mul2.i.i.i.i.i.i.i.i
  %inc.i.i.i = add nuw nsw i32 %step.027.i.i.i, 1
  %conv.i.i.i = sitofp i32 %inc.i.i.i to double
  %mul.i.i.i = fmul fast double %div, %conv.i.i.i
  %add.i.i.i = fadd fast double %mul.i.i.i, %div
  %sub.i.i.i.i = fsub fast double %add.i.i.i, %t
  %cmp2.i.i.i.i = fcmp fast ole double %sub.i.i.i.i, 0x3CB0000000000000
  %sub3.i.i.i.i = fsub fast double %t, %add.i.i.i
  %cmp5.i.i.i.i = fcmp fast ole double %sub3.i.i.i.i, 0x3CB0000000000000
  %retval.0.i.i.i.i = select i1 %cmp.i.i.i.i, i1 %cmp2.i.i.i.i, i1 %cmp5.i.i.i.i
  br i1 %retval.0.i.i.i.i, label %while.body.i.i.i, label %_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit, !llvm.loop !6

_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit: ; preds = %while.body.i.i.i, %entry
  %x.sroa.0.1 = phi double [ 1.000000e+00, %entry ], [ %0, %while.body.i.i.i ]
  ret double %x.sroa.0.1
}

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #7 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %start.i = alloca %struct.timeval, align 8
  %end.i = alloca %struct.timeval, align 8
  %start5.i = alloca %struct.timeval, align 8
  %end6.i = alloca %struct.timeval, align 8
  %start14.i = alloca %struct.timeval, align 8
  %end15.i = alloca %struct.timeval, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %0 = load i8*, i8** %arrayidx, align 8, !tbaa !9
  %call.i = tail call i64 @strtol(i8* nocapture nonnull %0, i8** null, i32 10) #3
  %conv.i = trunc i64 %call.i to i32
  %div = sdiv i32 %conv.i, 20
  %cmp.not15 = icmp sgt i32 %div, %conv.i
  br i1 %cmp.not15, label %for.cond.cleanup, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %1 = bitcast %struct.timeval* %start.i to i8*
  %2 = bitcast %struct.timeval* %end.i to i8*
  %tv_sec.i38.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i, i64 0, i32 0
  %tv_sec1.i39.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i, i64 0, i32 0
  %tv_usec.i42.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i, i64 0, i32 1
  %tv_usec2.i43.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i, i64 0, i32 1
  %3 = bitcast %struct.timeval* %start5.i to i8*
  %4 = bitcast %struct.timeval* %end6.i to i8*
  %tv_sec.i2.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end6.i, i64 0, i32 0
  %tv_sec1.i3.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start5.i, i64 0, i32 0
  %tv_usec.i6.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end6.i, i64 0, i32 1
  %tv_usec2.i7.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start5.i, i64 0, i32 1
  %5 = bitcast %struct.timeval* %start14.i to i8*
  %6 = bitcast %struct.timeval* %end15.i to i8*
  %tv_sec.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end15.i, i64 0, i32 0
  %tv_sec1.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start14.i, i64 0, i32 0
  %tv_usec.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end15.i, i64 0, i32 1
  %tv_usec2.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start14.i, i64 0, i32 1
  %7 = sext i32 %div to i64
  %sext = shl i64 %call.i, 32
  %8 = ashr exact i64 %sext, 32
  br label %for.body

for.cond.cleanup:                                 ; preds = %_ZL13enzyme_sincosdm.exit, %entry
  ret i32 0

for.body:                                         ; preds = %for.body.lr.ph, %_ZL13enzyme_sincosdm.exit
  %indvars.iv = phi i64 [ %7, %for.body.lr.ph ], [ %indvars.iv.next, %_ZL13enzyme_sincosdm.exit ]
  %9 = trunc i64 %indvars.iv to i32
  %call1 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %9)
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #3
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #3
  %call.i12 = call i32 @gettimeofday(%struct.timeval* nonnull %start.i, i8* null) #3
  %conv.i.i = uitofp i64 %indvars.iv to double
  %div.i.i = fdiv fast double 2.100000e+00, %conv.i.i
  %10 = icmp eq i64 %indvars.iv, 0
  %sub.i21.i.i.i.i.i = fadd fast double %div.i.i, -2.100000e+00
  %cmp2.i22.i.i.i.i.i = fcmp fast ole double %sub.i21.i.i.i.i.i, 0x3CB0000000000000
  %sub3.i23.i.i.i.i.i = fsub fast double 2.100000e+00, %div.i.i
  %cmp5.i24.i.i.i.i.i = fcmp fast ole double %sub3.i23.i.i.i.i.i, 0x3CB0000000000000
  %retval.0.i25.i.i.i.i.i = select i1 %10, i1 %cmp5.i24.i.i.i.i.i, i1 %cmp2.i22.i.i.i.i.i
  br i1 %retval.0.i25.i.i.i.i.i, label %while.body.i.i.i.preheader.i.i, label %_Z6foobardm.exit.i

while.body.i.i.i.preheader.i.i:                   ; preds = %for.body
  %mul.i.i.i = fmul fast double %div.i.i, 1.200000e+00
  br label %while.body.i.i.i.i.i

while.body.i.i.i.i.i:                             ; preds = %while.body.i.i.i.i.i, %while.body.i.i.i.preheader.i.i
  %x.sroa.0.0.i.i = phi double [ %11, %while.body.i.i.i.i.i ], [ 1.000000e+00, %while.body.i.i.i.preheader.i.i ]
  %step.027.i.i.i.i.i = phi i32 [ %inc.i.i.i.i.i, %while.body.i.i.i.i.i ], [ 0, %while.body.i.i.i.preheader.i.i ]
  %mul2.i.i.i.i.i.i.i.i.i.i = fmul fast double %mul.i.i.i, %x.sroa.0.0.i.i
  %11 = fsub fast double %x.sroa.0.0.i.i, %mul2.i.i.i.i.i.i.i.i.i.i
  %inc.i.i.i.i.i = add nuw nsw i32 %step.027.i.i.i.i.i, 1
  %conv.i.i.i.i.i = sitofp i32 %inc.i.i.i.i.i to double
  %mul.i.i.i.i.i = fmul fast double %div.i.i, %conv.i.i.i.i.i
  %add.i.i.i.i.i = fadd fast double %mul.i.i.i.i.i, %div.i.i
  %sub.i.i.i.i.i.i = fadd fast double %add.i.i.i.i.i, -2.100000e+00
  %cmp2.i.i.i.i.i.i = fcmp fast ole double %sub.i.i.i.i.i.i, 0x3CB0000000000000
  %sub3.i.i.i.i.i.i = fsub fast double 2.100000e+00, %add.i.i.i.i.i
  %cmp5.i.i.i.i.i.i = fcmp fast ole double %sub3.i.i.i.i.i.i, 0x3CB0000000000000
  %retval.0.i.i.i.i.i.i = select i1 %10, i1 %cmp5.i.i.i.i.i.i, i1 %cmp2.i.i.i.i.i.i
  br i1 %retval.0.i.i.i.i.i.i, label %while.body.i.i.i.i.i, label %_Z6foobardm.exit.i, !llvm.loop !6

_Z6foobardm.exit.i:                               ; preds = %while.body.i.i.i.i.i, %for.body
  %x.sroa.0.1.i.i = phi double [ 1.000000e+00, %for.body ], [ %11, %while.body.i.i.i.i.i ]
  %call2.i = call i32 @gettimeofday(%struct.timeval* nonnull %end.i, i8* null) #3
  %12 = load i64, i64* %tv_sec.i38.i, align 8, !tbaa !11
  %13 = load i64, i64* %tv_sec1.i39.i, align 8, !tbaa !11
  %sub.i40.i = sub nsw i64 %12, %13
  %conv.i41.i = sitofp i64 %sub.i40.i to double
  %14 = load i64, i64* %tv_usec.i42.i, align 8, !tbaa !14
  %15 = load i64, i64* %tv_usec2.i43.i, align 8, !tbaa !14
  %sub3.i44.i = sub nsw i64 %14, %15
  %conv4.i45.i = sitofp i64 %sub3.i44.i to double
  %mul.i46.i = fmul fast double %conv4.i45.i, 0x3EB0C6F7A0B5ED8D
  %add.i47.i = fadd fast double %mul.i46.i, %conv.i41.i
  %conv5.i48.i = fptrunc double %add.i47.i to float
  %conv.i13 = fpext float %conv5.i48.i to double
  %call4.i = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), double %conv.i13, double %x.sroa.0.1.i.i)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #3
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #3
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #3
  %call7.i = call i32 @gettimeofday(%struct.timeval* nonnull %start5.i, i8* null) #3
  br i1 %retval.0.i25.i.i.i.i.i, label %while.body.i.i.i.preheader.i22.i, label %_ZL13enzyme_sincosdm.exit

while.body.i.i.i.preheader.i22.i:                 ; preds = %_Z6foobardm.exit.i
  %mul.i.i21.i = fmul fast double %div.i.i, 1.200000e+00
  br label %while.body.i.i.i.i35.i

while.body.i.i.i.i35.i:                           ; preds = %while.body.i.i.i.i35.i, %while.body.i.i.i.preheader.i22.i
  %x.sroa.0.0.i23.i = phi double [ %16, %while.body.i.i.i.i35.i ], [ 1.000000e+00, %while.body.i.i.i.preheader.i22.i ]
  %step.027.i.i.i.i24.i = phi i32 [ %inc.i.i.i.i26.i, %while.body.i.i.i.i35.i ], [ 0, %while.body.i.i.i.preheader.i22.i ]
  %mul2.i.i.i.i.i.i.i.i.i25.i = fmul fast double %mul.i.i21.i, %x.sroa.0.0.i23.i
  %16 = fsub fast double %x.sroa.0.0.i23.i, %mul2.i.i.i.i.i.i.i.i.i25.i
  %inc.i.i.i.i26.i = add nuw nsw i32 %step.027.i.i.i.i24.i, 1
  %conv.i.i.i.i27.i = sitofp i32 %inc.i.i.i.i26.i to double
  %mul.i.i.i.i28.i = fmul fast double %div.i.i, %conv.i.i.i.i27.i
  %add.i.i.i.i29.i = fadd fast double %mul.i.i.i.i28.i, %div.i.i
  %sub.i.i.i.i.i30.i = fadd fast double %add.i.i.i.i29.i, -2.100000e+00
  %cmp2.i.i.i.i.i31.i = fcmp fast ole double %sub.i.i.i.i.i30.i, 0x3CB0000000000000
  %sub3.i.i.i.i.i32.i = fsub fast double 2.100000e+00, %add.i.i.i.i29.i
  %cmp5.i.i.i.i.i33.i = fcmp fast ole double %sub3.i.i.i.i.i32.i, 0x3CB0000000000000
  %retval.0.i.i.i.i.i34.i = select i1 %10, i1 %cmp5.i.i.i.i.i33.i, i1 %cmp2.i.i.i.i.i31.i
  br i1 %retval.0.i.i.i.i.i34.i, label %while.body.i.i.i.i35.i, label %_ZL13enzyme_sincosdm.exit, !llvm.loop !6

_ZL13enzyme_sincosdm.exit:                        ; preds = %while.body.i.i.i.i35.i, %_Z6foobardm.exit.i
  %x.sroa.0.1.i36.i = phi double [ 1.000000e+00, %_Z6foobardm.exit.i ], [ %16, %while.body.i.i.i.i35.i ]
  %call10.i = call i32 @gettimeofday(%struct.timeval* nonnull %end6.i, i8* null) #3
  %17 = load i64, i64* %tv_sec.i2.i, align 8, !tbaa !11
  %18 = load i64, i64* %tv_sec1.i3.i, align 8, !tbaa !11
  %sub.i4.i = sub nsw i64 %17, %18
  %conv.i5.i = sitofp i64 %sub.i4.i to double
  %19 = load i64, i64* %tv_usec.i6.i, align 8, !tbaa !14
  %20 = load i64, i64* %tv_usec2.i7.i, align 8, !tbaa !14
  %sub3.i8.i = sub nsw i64 %19, %20
  %conv4.i9.i = sitofp i64 %sub3.i8.i to double
  %mul.i10.i = fmul fast double %conv4.i9.i, 0x3EB0C6F7A0B5ED8D
  %add.i11.i = fadd fast double %mul.i10.i, %conv.i5.i
  %conv5.i12.i = fptrunc double %add.i11.i to float
  %conv12.i = fpext float %conv5.i12.i to double
  %call13.i = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), double %conv12.i, double %x.sroa.0.1.i36.i)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #3
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #3
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #3
  %call16.i = call i32 @gettimeofday(%struct.timeval* nonnull %start14.i, i8* null) #3
  %call17.i = tail call fast double @_Z17__enzyme_autodiffIdJPFddmEdmEET_DpT0_(double (double, i64)* nonnull @_Z6foobardm, double 2.100000e+00, i64 %indvars.iv)
  %call18.i = call i32 @gettimeofday(%struct.timeval* nonnull %end15.i, i8* null) #3
  %21 = load i64, i64* %tv_sec.i.i, align 8, !tbaa !11
  %22 = load i64, i64* %tv_sec1.i.i, align 8, !tbaa !11
  %sub.i.i = sub nsw i64 %21, %22
  %conv.i1.i = sitofp i64 %sub.i.i to double
  %23 = load i64, i64* %tv_usec.i.i, align 8, !tbaa !14
  %24 = load i64, i64* %tv_usec2.i.i, align 8, !tbaa !14
  %sub3.i.i = sub nsw i64 %23, %24
  %conv4.i.i = sitofp i64 %sub3.i.i to double
  %mul.i.i = fmul fast double %conv4.i.i, 0x3EB0C6F7A0B5ED8D
  %add.i.i = fadd fast double %mul.i.i, %conv.i1.i
  %conv5.i.i = fptrunc double %add.i.i to float
  %conv20.i = fpext float %conv5.i.i to double
  %call21.i = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), double %conv20.i, double %call17.i)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #3
  %indvars.iv.next = add i64 %indvars.iv, %7
  %cmp.not = icmp sgt i64 %indvars.iv.next, %8
  br i1 %cmp.not, label %for.cond.cleanup, label %for.body, !llvm.loop !15
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind willreturn
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #8

declare dso_local double @_Z17__enzyme_autodiffIdJPFddmEdmEET_DpT0_(double (double, i64)*, double, i64) local_unnamed_addr #0

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_ode.cpp() #10 section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1) @_ZStL8__ioinit)
  %0 = tail call i32 @atexit(void ()* nonnull @__dtor__ZStL8__ioinit) #3
  ret void
}

attributes #0 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nofree norecurse nounwind uwtable willreturn mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { nounwind readnone uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #7 = { norecurse uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #8 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #9 = { nofree nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #10 = { uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)"}
!2 = !{!3, !3, i64 0}
!3 = !{!"double", !4, i64 0}
!4 = !{!"omnipotent char", !5, i64 0}
!5 = !{!"Simple C++ TBAA"}
!6 = distinct !{!6, !7, !8}
!7 = !{!"llvm.loop.mustprogress"}
!8 = !{!"llvm.loop.unroll.disable"}
!9 = !{!10, !10, i64 0}
!10 = !{!"any pointer", !4, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTS7timeval", !13, i64 0, !13, i64 8}
!13 = !{!"long", !4, i64 0}
!14 = !{!12, !13, i64 8}
!15 = distinct !{!15, !7, !8}
