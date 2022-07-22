; ModuleID = 'nn.cpp'
source_filename = "nn.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%struct.mnist_image_t_ = type { [100 x i8] }
%struct.neural_network_t_ = type { [5 x float], [5 x [100 x float]] }

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@enzyme_const = external local_unnamed_addr global i32, align 4
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_nn.cpp, i8* null }]

declare void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: norecurse uwtable mustprogress
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #3 {
entry:
  %x = alloca [5 x %struct.mnist_image_t_], align 16
  %v = alloca [5 x %struct.neural_network_t_], align 16
  %x_grad = alloca [5 x %struct.mnist_image_t_], align 16
  %0 = getelementptr inbounds [5 x %struct.mnist_image_t_], [5 x %struct.mnist_image_t_]* %x, i64 0, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 500, i8* nonnull %0) #9
  %1 = bitcast [5 x %struct.neural_network_t_]* %v to i8*
  call void @llvm.lifetime.start.p0i8(i64 10100, i8* nonnull %1) #9
  %2 = getelementptr inbounds [5 x %struct.mnist_image_t_], [5 x %struct.mnist_image_t_]* %x_grad, i64 0, i64 0, i32 0, i64 0
  call void @llvm.lifetime.start.p0i8(i64 500, i8* nonnull %2) #9
  %3 = load i32, i32* @enzyme_const, align 4, !tbaa !3
  call void @_Z17__enzyme_autodiffIvJPFfPK14mnist_image_t_PK17neural_network_t_hEiPA5_S0_PA5_S3_S9_hEET_DpT0_(float (%struct.mnist_image_t_*, %struct.neural_network_t_*, i8)* nonnull @_ZL28neural_network_hypothesis_v2PK14mnist_image_t_PK17neural_network_t_h, i32 %3, [5 x %struct.mnist_image_t_]* nonnull %x, [5 x %struct.neural_network_t_]* nonnull %v, [5 x %struct.mnist_image_t_]* nonnull %x_grad, i8 zeroext 1)
  %arraydecay = getelementptr inbounds [5 x %struct.mnist_image_t_], [5 x %struct.mnist_image_t_]* %x, i64 0, i64 0
  %arraydecay1 = getelementptr inbounds [5 x %struct.neural_network_t_], [5 x %struct.neural_network_t_]* %v, i64 0, i64 0
  %call = call float @_ZL28neural_network_hypothesis_v2PK14mnist_image_t_PK17neural_network_t_h(%struct.mnist_image_t_* nonnull %arraydecay, %struct.neural_network_t_* nonnull %arraydecay1, i8 zeroext 1)
  call void @llvm.lifetime.end.p0i8(i64 500, i8* nonnull %2) #9
  call void @llvm.lifetime.end.p0i8(i64 10100, i8* nonnull %1) #9
  call void @llvm.lifetime.end.p0i8(i64 500, i8* nonnull %0) #9
  ret i32 0
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare void @_Z17__enzyme_autodiffIvJPFfPK14mnist_image_t_PK17neural_network_t_hEiPA5_S0_PA5_S3_S9_hEET_DpT0_(float (%struct.mnist_image_t_*, %struct.neural_network_t_*, i8)*, i32, [5 x %struct.mnist_image_t_]*, [5 x %struct.neural_network_t_]*, [5 x %struct.mnist_image_t_]*, i8 zeroext) local_unnamed_addr #0

; Function Attrs: nofree norecurse nounwind uwtable mustprogress
define internal float @_ZL28neural_network_hypothesis_v2PK14mnist_image_t_PK17neural_network_t_h(%struct.mnist_image_t_* nocapture readonly %image, %struct.neural_network_t_* nocapture readonly %network, i8 zeroext %label) #5 {
entry:
  %activations = alloca [5 x float], align 16
  %activations2 = alloca [5 x float], align 16
  %0 = bitcast [5 x float]* %activations to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %0) #9
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(20) %0, i8 0, i64 20, i1 false)
  br label %for.body

for.body:                                         ; preds = %entry, %for.inc14
  %indvars.iv39 = phi i64 [ 0, %entry ], [ %indvars.iv.next40, %for.inc14 ]
  %arrayidx = getelementptr inbounds %struct.neural_network_t_, %struct.neural_network_t_* %network, i64 0, i32 0, i64 %indvars.iv39
  %1 = load float, float* %arrayidx, align 4, !tbaa !7
  %arrayidx2 = getelementptr inbounds [5 x float], [5 x float]* %activations, i64 0, i64 %indvars.iv39
  store float %1, float* %arrayidx2, align 4, !tbaa !7
  br label %for.body5

for.body5:                                        ; preds = %for.body5, %for.body
  %indvars.iv = phi i64 [ 0, %for.body ], [ %indvars.iv.next.9, %for.body5 ]
  %2 = phi float [ %1, %for.body ], [ %add.9, %for.body5 ]
  %arrayidx9 = getelementptr inbounds %struct.neural_network_t_, %struct.neural_network_t_* %network, i64 0, i32 1, i64 %indvars.iv39, i64 %indvars.iv
  %3 = load float, float* %arrayidx9, align 4, !tbaa !7
  %arrayidx11 = getelementptr inbounds %struct.mnist_image_t_, %struct.mnist_image_t_* %image, i64 0, i32 0, i64 %indvars.iv
  %4 = load i8, i8* %arrayidx11, align 1, !tbaa !9
  %conv = uitofp i8 %4 to float
  %div = fdiv float %conv, 2.550000e+02
  %mul = fmul float %3, %div
  %add = fadd float %2, %mul
  %indvars.iv.next = or i64 %indvars.iv, 1
  %arrayidx9.1 = getelementptr inbounds %struct.neural_network_t_, %struct.neural_network_t_* %network, i64 0, i32 1, i64 %indvars.iv39, i64 %indvars.iv.next
  %5 = load float, float* %arrayidx9.1, align 4, !tbaa !7
  %arrayidx11.1 = getelementptr inbounds %struct.mnist_image_t_, %struct.mnist_image_t_* %image, i64 0, i32 0, i64 %indvars.iv.next
  %6 = load i8, i8* %arrayidx11.1, align 1, !tbaa !9
  %conv.1 = uitofp i8 %6 to float
  %div.1 = fdiv float %conv.1, 2.550000e+02
  %mul.1 = fmul float %5, %div.1
  %add.1 = fadd float %add, %mul.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2
  %arrayidx9.2 = getelementptr inbounds %struct.neural_network_t_, %struct.neural_network_t_* %network, i64 0, i32 1, i64 %indvars.iv39, i64 %indvars.iv.next.1
  %7 = load float, float* %arrayidx9.2, align 4, !tbaa !7
  %arrayidx11.2 = getelementptr inbounds %struct.mnist_image_t_, %struct.mnist_image_t_* %image, i64 0, i32 0, i64 %indvars.iv.next.1
  %8 = load i8, i8* %arrayidx11.2, align 1, !tbaa !9
  %conv.2 = uitofp i8 %8 to float
  %div.2 = fdiv float %conv.2, 2.550000e+02
  %mul.2 = fmul float %7, %div.2
  %add.2 = fadd float %add.1, %mul.2
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3
  %arrayidx9.3 = getelementptr inbounds %struct.neural_network_t_, %struct.neural_network_t_* %network, i64 0, i32 1, i64 %indvars.iv39, i64 %indvars.iv.next.2
  %9 = load float, float* %arrayidx9.3, align 4, !tbaa !7
  %arrayidx11.3 = getelementptr inbounds %struct.mnist_image_t_, %struct.mnist_image_t_* %image, i64 0, i32 0, i64 %indvars.iv.next.2
  %10 = load i8, i8* %arrayidx11.3, align 1, !tbaa !9
  %conv.3 = uitofp i8 %10 to float
  %div.3 = fdiv float %conv.3, 2.550000e+02
  %mul.3 = fmul float %9, %div.3
  %add.3 = fadd float %add.2, %mul.3
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4
  %arrayidx9.4 = getelementptr inbounds %struct.neural_network_t_, %struct.neural_network_t_* %network, i64 0, i32 1, i64 %indvars.iv39, i64 %indvars.iv.next.3
  %11 = load float, float* %arrayidx9.4, align 4, !tbaa !7
  %arrayidx11.4 = getelementptr inbounds %struct.mnist_image_t_, %struct.mnist_image_t_* %image, i64 0, i32 0, i64 %indvars.iv.next.3
  %12 = load i8, i8* %arrayidx11.4, align 1, !tbaa !9
  %conv.4 = uitofp i8 %12 to float
  %div.4 = fdiv float %conv.4, 2.550000e+02
  %mul.4 = fmul float %11, %div.4
  %add.4 = fadd float %add.3, %mul.4
  %indvars.iv.next.4 = add nuw nsw i64 %indvars.iv, 5
  %arrayidx9.5 = getelementptr inbounds %struct.neural_network_t_, %struct.neural_network_t_* %network, i64 0, i32 1, i64 %indvars.iv39, i64 %indvars.iv.next.4
  %13 = load float, float* %arrayidx9.5, align 4, !tbaa !7
  %arrayidx11.5 = getelementptr inbounds %struct.mnist_image_t_, %struct.mnist_image_t_* %image, i64 0, i32 0, i64 %indvars.iv.next.4
  %14 = load i8, i8* %arrayidx11.5, align 1, !tbaa !9
  %conv.5 = uitofp i8 %14 to float
  %div.5 = fdiv float %conv.5, 2.550000e+02
  %mul.5 = fmul float %13, %div.5
  %add.5 = fadd float %add.4, %mul.5
  %indvars.iv.next.5 = add nuw nsw i64 %indvars.iv, 6
  %arrayidx9.6 = getelementptr inbounds %struct.neural_network_t_, %struct.neural_network_t_* %network, i64 0, i32 1, i64 %indvars.iv39, i64 %indvars.iv.next.5
  %15 = load float, float* %arrayidx9.6, align 4, !tbaa !7
  %arrayidx11.6 = getelementptr inbounds %struct.mnist_image_t_, %struct.mnist_image_t_* %image, i64 0, i32 0, i64 %indvars.iv.next.5
  %16 = load i8, i8* %arrayidx11.6, align 1, !tbaa !9
  %conv.6 = uitofp i8 %16 to float
  %div.6 = fdiv float %conv.6, 2.550000e+02
  %mul.6 = fmul float %15, %div.6
  %add.6 = fadd float %add.5, %mul.6
  %indvars.iv.next.6 = add nuw nsw i64 %indvars.iv, 7
  %arrayidx9.7 = getelementptr inbounds %struct.neural_network_t_, %struct.neural_network_t_* %network, i64 0, i32 1, i64 %indvars.iv39, i64 %indvars.iv.next.6
  %17 = load float, float* %arrayidx9.7, align 4, !tbaa !7
  %arrayidx11.7 = getelementptr inbounds %struct.mnist_image_t_, %struct.mnist_image_t_* %image, i64 0, i32 0, i64 %indvars.iv.next.6
  %18 = load i8, i8* %arrayidx11.7, align 1, !tbaa !9
  %conv.7 = uitofp i8 %18 to float
  %div.7 = fdiv float %conv.7, 2.550000e+02
  %mul.7 = fmul float %17, %div.7
  %add.7 = fadd float %add.6, %mul.7
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8
  %arrayidx9.8 = getelementptr inbounds %struct.neural_network_t_, %struct.neural_network_t_* %network, i64 0, i32 1, i64 %indvars.iv39, i64 %indvars.iv.next.7
  %19 = load float, float* %arrayidx9.8, align 4, !tbaa !7
  %arrayidx11.8 = getelementptr inbounds %struct.mnist_image_t_, %struct.mnist_image_t_* %image, i64 0, i32 0, i64 %indvars.iv.next.7
  %20 = load i8, i8* %arrayidx11.8, align 1, !tbaa !9
  %conv.8 = uitofp i8 %20 to float
  %div.8 = fdiv float %conv.8, 2.550000e+02
  %mul.8 = fmul float %19, %div.8
  %add.8 = fadd float %add.7, %mul.8
  %indvars.iv.next.8 = add nuw nsw i64 %indvars.iv, 9
  %arrayidx9.9 = getelementptr inbounds %struct.neural_network_t_, %struct.neural_network_t_* %network, i64 0, i32 1, i64 %indvars.iv39, i64 %indvars.iv.next.8
  %21 = load float, float* %arrayidx9.9, align 4, !tbaa !7
  %arrayidx11.9 = getelementptr inbounds %struct.mnist_image_t_, %struct.mnist_image_t_* %image, i64 0, i32 0, i64 %indvars.iv.next.8
  %22 = load i8, i8* %arrayidx11.9, align 1, !tbaa !9
  %conv.9 = uitofp i8 %22 to float
  %div.9 = fdiv float %conv.9, 2.550000e+02
  %mul.9 = fmul float %21, %div.9
  %add.9 = fadd float %add.8, %mul.9
  %indvars.iv.next.9 = add nuw nsw i64 %indvars.iv, 10
  %exitcond.9.not = icmp eq i64 %indvars.iv.next.9, 100
  br i1 %exitcond.9.not, label %for.inc14, label %for.body5, !llvm.loop !10

for.inc14:                                        ; preds = %for.body5
  store float %add.9, float* %arrayidx2, align 4, !tbaa !7
  %indvars.iv.next40 = add nuw nsw i64 %indvars.iv39, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next40, 5
  br i1 %exitcond.not, label %for.end16, label %for.body, !llvm.loop !13

for.end16:                                        ; preds = %for.inc14
  %23 = bitcast [5 x float]* %activations2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 20, i8* nonnull %23) #9
  call void @llvm.memset.p0i8.i64(i8* nonnull align 16 dereferenceable(20) %23, i8 0, i64 20, i1 false)
  %arraydecay = getelementptr inbounds [5 x float], [5 x float]* %activations, i64 0, i64 0
  %24 = load float, float* %arraydecay, align 16, !tbaa !7
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.end16
  %indvars.iv10.i = phi i64 [ 1, %for.end16 ], [ %indvars.iv.next11.i, %for.body.i ]
  %max.06.i = phi float [ %24, %for.end16 ], [ %max.1.i, %for.body.i ]
  %arrayidx1.i = getelementptr inbounds [5 x float], [5 x float]* %activations, i64 0, i64 %indvars.iv10.i
  %25 = load float, float* %arrayidx1.i, align 4, !tbaa !7
  %cmp2.i = fcmp ogt float %25, %max.06.i
  %max.1.i = select i1 %cmp2.i, float %25, float %max.06.i
  %indvars.iv.next11.i = add nuw nsw i64 %indvars.iv10.i, 1
  %exitcond12.not.i = icmp eq i64 %indvars.iv.next11.i, 5
  br i1 %exitcond12.not.i, label %for.body7.i.preheader, label %for.body.i, !llvm.loop !14

for.body7.i.preheader:                            ; preds = %for.body.i
  %sub.i31 = fsub float %24, %max.1.i
  %call.i.i32 = tail call float @expf(float %sub.i31) #9
  %add.i33 = fadd float %call.i.i32, 0.000000e+00
  br label %for.body7.for.body7_crit_edge.i

for.body15.i.preheader:                           ; preds = %for.body7.for.body7_crit_edge.i
  %sub18.i41 = fsub float %24, %max.1.i
  %call.i1.i42 = tail call float @expf(float %sub18.i41) #9
  %div.i43 = fdiv float %call.i1.i42, %add.i
  %arrayidx21.i44 = getelementptr inbounds [5 x float], [5 x float]* %activations2, i64 0, i64 0
  store float %div.i43, float* %arrayidx21.i44, align 16, !tbaa !7
  br label %for.body15.i.for.body15.i_crit_edge

for.body7.for.body7_crit_edge.i:                  ; preds = %for.body7.i.preheader, %for.body7.for.body7_crit_edge.i
  %indvars.iv.next8.i35 = phi i64 [ 1, %for.body7.i.preheader ], [ %indvars.iv.next8.i, %for.body7.for.body7_crit_edge.i ]
  %add.i34 = phi float [ %add.i33, %for.body7.i.preheader ], [ %add.i, %for.body7.for.body7_crit_edge.i ]
  %arrayidx9.phi.trans.insert.i = getelementptr inbounds [5 x float], [5 x float]* %activations, i64 0, i64 %indvars.iv.next8.i35
  %.pre.i = load float, float* %arrayidx9.phi.trans.insert.i, align 4, !tbaa !7
  %sub.i = fsub float %.pre.i, %max.1.i
  %call.i.i = tail call float @expf(float %sub.i) #9
  %add.i = fadd float %add.i34, %call.i.i
  %indvars.iv.next8.i = add nuw nsw i64 %indvars.iv.next8.i35, 1
  %exitcond9.not.i = icmp eq i64 %indvars.iv.next8.i, 5
  br i1 %exitcond9.not.i, label %for.body15.i.preheader, label %for.body7.for.body7_crit_edge.i, !llvm.loop !15

for.body15.i.for.body15.i_crit_edge:              ; preds = %for.body15.i.preheader, %for.body15.i.for.body15.i_crit_edge
  %indvars.iv.next.i45 = phi i64 [ 1, %for.body15.i.preheader ], [ %indvars.iv.next.i, %for.body15.i.for.body15.i_crit_edge ]
  %arrayidx17.i.phi.trans.insert = getelementptr inbounds [5 x float], [5 x float]* %activations, i64 0, i64 %indvars.iv.next.i45
  %.pre = load float, float* %arrayidx17.i.phi.trans.insert, align 4, !tbaa !7
  %sub18.i = fsub float %.pre, %max.1.i
  %call.i1.i = tail call float @expf(float %sub18.i) #9
  %div.i = fdiv float %call.i1.i, %add.i
  %arrayidx21.i = getelementptr inbounds [5 x float], [5 x float]* %activations2, i64 0, i64 %indvars.iv.next.i45
  store float %div.i, float* %arrayidx21.i, align 4, !tbaa !7
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.next.i45, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 5
  br i1 %exitcond.not.i, label %_ZL25neural_network_softmax_v2PKfPfi.exit, label %for.body15.i.for.body15.i_crit_edge, !llvm.loop !16

_ZL25neural_network_softmax_v2PKfPfi.exit:        ; preds = %for.body15.i.for.body15.i_crit_edge
  %idxprom18 = zext i8 %label to i64
  %arrayidx19 = getelementptr inbounds [5 x float], [5 x float]* %activations2, i64 0, i64 %idxprom18
  %26 = load float, float* %arrayidx19, align 4, !tbaa !7
  %call.i = tail call float @logf(float %26) #9
  %fneg = fneg float %call.i
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %23) #9
  call void @llvm.lifetime.end.p0i8(i64 20, i8* nonnull %0) #9
  ret float %fneg
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: nofree nounwind willreturn
declare float @expf(float) local_unnamed_addr #7

; Function Attrs: nofree nounwind willreturn
declare float @logf(float) local_unnamed_addr #7

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_nn.cpp() #8 section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1) @_ZStL8__ioinit)
  %0 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #9
  ret void
}

attributes #0 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nofree nounwind }
attributes #3 = { norecurse uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nofree nosync nounwind willreturn }
attributes #5 = { nofree norecurse nounwind uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #7 = { nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { uwtable "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !8, i64 0}
!8 = !{!"float", !5, i64 0}
!9 = !{!5, !5, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
