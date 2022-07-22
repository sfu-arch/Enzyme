; ModuleID = 'input.ll'
source_filename = "taylorlog.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"F_Node: call.i.2, Parent: x, call\0A0" = global [35 x i8] c"F_Node: call.i.2, Parent: x, call\0A\00"
@"F_Node: call.i.3, Parent: x, call\0A0" = global [35 x i8] c"F_Node: call.i.3, Parent: x, call\0A\00"
@"F_Node: call.i.4, Parent: x, call\0A0" = global [35 x i8] c"F_Node: call.i.4, Parent: x, call\0A\00"
@"F_Node: call.i.5, Parent: x, call\0A0" = global [35 x i8] c"F_Node: call.i.5, Parent: x, call\0A\00"
@"F_Node: call.i.6, Parent: x, call\0A0" = global [35 x i8] c"F_Node: call.i.6, Parent: x, call\0A\00"
@"F_Node: call.i.7, Parent: x, call\0A0" = global [35 x i8] c"F_Node: call.i.7, Parent: x, call\0A\00"
@"F_Node: call.i.8, Parent: x, call\0A0" = global [35 x i8] c"F_Node: call.i.8, Parent: x, call\0A\00"
@"F_Node: call.i.9, Parent: x, call\0A0" = global [35 x i8] c"F_Node: call.i.9, Parent: x, call\0A\00"
@"R_Node: %18, Parent: %17, Parent: %16, arithmetic_fadd\0A0" = global [56 x i8] c"R_Node: %18, Parent: %17, Parent: %16, arithmetic_fadd\0A\00"
@"R_Node: %22, Parent: %21, Parent: %16, arithmetic_fadd\0A0" = global [56 x i8] c"R_Node: %22, Parent: %21, Parent: %16, arithmetic_fadd\0A\00"
@"R_Node: d0diffecall.i.9, Parent: %25, arithmetic_fdiv\0A0" = global [55 x i8] c"R_Node: d0diffecall.i.9, Parent: %25, arithmetic_fdiv\0A\00"
@"R_Node: %29, Parent: %28, Parent: d0diffecall.i.9, arithmetic_fadd\0A0" = global [68 x i8] c"R_Node: %29, Parent: %28, Parent: d0diffecall.i.9, arithmetic_fadd\0A\00"
@"R_Node: %33, Parent: x, call\0A0" = global [30 x i8] c"R_Node: %33, Parent: x, call\0A\00"
@"R_Node: %36, Parent: %32, Parent: %33, arithmetic_fmul\0A0" = global [56 x i8] c"R_Node: %36, Parent: %32, Parent: %33, arithmetic_fmul\0A\00"
@"R_Node: %39, Parent: %36, arithmetic_fmul\0A0" = global [43 x i8] c"R_Node: %39, Parent: %36, arithmetic_fmul\0A\00"
@"R_Node: %43, Parent: %42, Parent: %39, arithmetic_fadd\0A0" = global [56 x i8] c"R_Node: %43, Parent: %42, Parent: %39, arithmetic_fadd\0A\00"
@"R_Node: %48, Parent: %47, Parent: %46, arithmetic_fadd\0A0" = global [56 x i8] c"R_Node: %48, Parent: %47, Parent: %46, arithmetic_fadd\0A\00"
@"R_Node: %52, Parent: %51, Parent: %46, arithmetic_fadd\0A0" = global [56 x i8] c"R_Node: %52, Parent: %51, Parent: %46, arithmetic_fadd\0A\00"
@"R_Node: d0diffecall.i.8, Parent: %55, arithmetic_fdiv\0A0" = global [55 x i8] c"R_Node: d0diffecall.i.8, Parent: %55, arithmetic_fdiv\0A\00"
@"R_Node: %59, Parent: %58, Parent: d0diffecall.i.8, arithmetic_fadd\0A0" = global [68 x i8] c"R_Node: %59, Parent: %58, Parent: d0diffecall.i.8, arithmetic_fadd\0A\00"
@"R_Node: %63, Parent: x, call\0A0" = global [30 x i8] c"R_Node: %63, Parent: x, call\0A\00"
@"R_Node: %66, Parent: %62, Parent: %63, arithmetic_fmul\0A0" = global [56 x i8] c"R_Node: %66, Parent: %62, Parent: %63, arithmetic_fmul\0A\00"
@"R_Node: %69, Parent: %66, arithmetic_fmul\0A0" = global [43 x i8] c"R_Node: %69, Parent: %66, arithmetic_fmul\0A\00"
@"R_Node: %73, Parent: %72, Parent: %69, arithmetic_fadd\0A0" = global [56 x i8] c"R_Node: %73, Parent: %72, Parent: %69, arithmetic_fadd\0A\00"
@"R_Node: %78, Parent: %77, Parent: %76, arithmetic_fadd\0A0" = global [56 x i8] c"R_Node: %78, Parent: %77, Parent: %76, arithmetic_fadd\0A\00"
@"R_Node: %82, Parent: %81, Parent: %76, arithmetic_fadd\0A0" = global [56 x i8] c"R_Node: %82, Parent: %81, Parent: %76, arithmetic_fadd\0A\00"
@"R_Node: m0diffecall.i.7, Parent: %85, arithmetic_fmul\0A0" = global [55 x i8] c"R_Node: m0diffecall.i.7, Parent: %85, arithmetic_fmul\0A\00"
@"R_Node: %89, Parent: %88, Parent: m0diffecall.i.7, arithmetic_fadd\0A0" = global [68 x i8] c"R_Node: %89, Parent: %88, Parent: m0diffecall.i.7, arithmetic_fadd\0A\00"
@"R_Node: %93, Parent: x, call\0A0" = global [30 x i8] c"R_Node: %93, Parent: x, call\0A\00"
@"R_Node: %96, Parent: %92, Parent: %93, arithmetic_fmul\0A0" = global [56 x i8] c"R_Node: %96, Parent: %92, Parent: %93, arithmetic_fmul\0A\00"
@"R_Node: %99, Parent: %96, arithmetic_fmul\0A0" = global [43 x i8] c"R_Node: %99, Parent: %96, arithmetic_fmul\0A\00"
@"R_Node: %103, Parent: %102, Parent: %99, arithmetic_fadd\0A0" = global [58 x i8] c"R_Node: %103, Parent: %102, Parent: %99, arithmetic_fadd\0A\00"
@"R_Node: %108, Parent: %107, Parent: %106, arithmetic_fadd\0A0" = global [59 x i8] c"R_Node: %108, Parent: %107, Parent: %106, arithmetic_fadd\0A\00"
@"R_Node: %112, Parent: %111, Parent: %106, arithmetic_fadd\0A0" = global [59 x i8] c"R_Node: %112, Parent: %111, Parent: %106, arithmetic_fadd\0A\00"
@"R_Node: d0diffecall.i.6, Parent: %115, arithmetic_fdiv\0A0" = global [56 x i8] c"R_Node: d0diffecall.i.6, Parent: %115, arithmetic_fdiv\0A\00"
@"R_Node: %119, Parent: %118, Parent: d0diffecall.i.6, arithmetic_fadd\0A0" = global [70 x i8] c"R_Node: %119, Parent: %118, Parent: d0diffecall.i.6, arithmetic_fadd\0A\00"
@"R_Node: %123, Parent: x, call\0A0" = global [31 x i8] c"R_Node: %123, Parent: x, call\0A\00"
@"R_Node: %126, Parent: %122, Parent: %123, arithmetic_fmul\0A0" = global [59 x i8] c"R_Node: %126, Parent: %122, Parent: %123, arithmetic_fmul\0A\00"
@"R_Node: %129, Parent: %126, arithmetic_fmul\0A0" = global [45 x i8] c"R_Node: %129, Parent: %126, arithmetic_fmul\0A\00"
@"R_Node: %133, Parent: %132, Parent: %129, arithmetic_fadd\0A0" = global [59 x i8] c"R_Node: %133, Parent: %132, Parent: %129, arithmetic_fadd\0A\00"
@"R_Node: %138, Parent: %137, Parent: %136, arithmetic_fadd\0A0" = global [59 x i8] c"R_Node: %138, Parent: %137, Parent: %136, arithmetic_fadd\0A\00"
@"R_Node: %142, Parent: %141, Parent: %136, arithmetic_fadd\0A0" = global [59 x i8] c"R_Node: %142, Parent: %141, Parent: %136, arithmetic_fadd\0A\00"
@"R_Node: d0diffecall.i.5, Parent: %145, arithmetic_fdiv\0A0" = global [56 x i8] c"R_Node: d0diffecall.i.5, Parent: %145, arithmetic_fdiv\0A\00"
@"R_Node: %149, Parent: %148, Parent: d0diffecall.i.5, arithmetic_fadd\0A0" = global [70 x i8] c"R_Node: %149, Parent: %148, Parent: d0diffecall.i.5, arithmetic_fadd\0A\00"
@"R_Node: %153, Parent: x, call\0A0" = global [31 x i8] c"R_Node: %153, Parent: x, call\0A\00"
@"R_Node: %156, Parent: %152, Parent: %153, arithmetic_fmul\0A0" = global [59 x i8] c"R_Node: %156, Parent: %152, Parent: %153, arithmetic_fmul\0A\00"
@"R_Node: %159, Parent: %156, arithmetic_fmul\0A0" = global [45 x i8] c"R_Node: %159, Parent: %156, arithmetic_fmul\0A\00"
@"R_Node: %163, Parent: %162, Parent: %159, arithmetic_fadd\0A0" = global [59 x i8] c"R_Node: %163, Parent: %162, Parent: %159, arithmetic_fadd\0A\00"
@"R_Node: %168, Parent: %167, Parent: %166, arithmetic_fadd\0A0" = global [59 x i8] c"R_Node: %168, Parent: %167, Parent: %166, arithmetic_fadd\0A\00"
@"R_Node: %172, Parent: %171, Parent: %166, arithmetic_fadd\0A0" = global [59 x i8] c"R_Node: %172, Parent: %171, Parent: %166, arithmetic_fadd\0A\00"
@"R_Node: d0diffecall.i.4, Parent: %175, arithmetic_fdiv\0A0" = global [56 x i8] c"R_Node: d0diffecall.i.4, Parent: %175, arithmetic_fdiv\0A\00"
@"R_Node: %179, Parent: %178, Parent: d0diffecall.i.4, arithmetic_fadd\0A0" = global [70 x i8] c"R_Node: %179, Parent: %178, Parent: d0diffecall.i.4, arithmetic_fadd\0A\00"
@"R_Node: %183, Parent: x, call\0A0" = global [31 x i8] c"R_Node: %183, Parent: x, call\0A\00"
@"R_Node: %186, Parent: %182, Parent: %183, arithmetic_fmul\0A0" = global [59 x i8] c"R_Node: %186, Parent: %182, Parent: %183, arithmetic_fmul\0A\00"
@"R_Node: %189, Parent: %186, arithmetic_fmul\0A0" = global [45 x i8] c"R_Node: %189, Parent: %186, arithmetic_fmul\0A\00"
@"R_Node: %193, Parent: %192, Parent: %189, arithmetic_fadd\0A0" = global [59 x i8] c"R_Node: %193, Parent: %192, Parent: %189, arithmetic_fadd\0A\00"
@"R_Node: %198, Parent: %197, Parent: %196, arithmetic_fadd\0A0" = global [59 x i8] c"R_Node: %198, Parent: %197, Parent: %196, arithmetic_fadd\0A\00"
@"R_Node: %202, Parent: %201, Parent: %196, arithmetic_fadd\0A0" = global [59 x i8] c"R_Node: %202, Parent: %201, Parent: %196, arithmetic_fadd\0A\00"
@"R_Node: m0diffecall.i.3, Parent: %205, arithmetic_fmul\0A0" = global [56 x i8] c"R_Node: m0diffecall.i.3, Parent: %205, arithmetic_fmul\0A\00"
@"R_Node: %209, Parent: %208, Parent: m0diffecall.i.3, arithmetic_fadd\0A0" = global [70 x i8] c"R_Node: %209, Parent: %208, Parent: m0diffecall.i.3, arithmetic_fadd\0A\00"
@"R_Node: %213, Parent: x, call\0A0" = global [31 x i8] c"R_Node: %213, Parent: x, call\0A\00"
@"R_Node: %216, Parent: %212, Parent: %213, arithmetic_fmul\0A0" = global [59 x i8] c"R_Node: %216, Parent: %212, Parent: %213, arithmetic_fmul\0A\00"
@"R_Node: %219, Parent: %216, arithmetic_fmul\0A0" = global [45 x i8] c"R_Node: %219, Parent: %216, arithmetic_fmul\0A\00"
@"R_Node: %223, Parent: %222, Parent: %219, arithmetic_fadd\0A0" = global [59 x i8] c"R_Node: %223, Parent: %222, Parent: %219, arithmetic_fadd\0A\00"
@"R_Node: %228, Parent: %227, Parent: %226, arithmetic_fadd\0A0" = global [59 x i8] c"R_Node: %228, Parent: %227, Parent: %226, arithmetic_fadd\0A\00"
@"R_Node: %232, Parent: %231, Parent: %226, arithmetic_fadd\0A0" = global [59 x i8] c"R_Node: %232, Parent: %231, Parent: %226, arithmetic_fadd\0A\00"
@"R_Node: d0diffecall.i.2, Parent: %235, arithmetic_fdiv\0A0" = global [56 x i8] c"R_Node: d0diffecall.i.2, Parent: %235, arithmetic_fdiv\0A\00"
@"R_Node: %239, Parent: %238, Parent: d0diffecall.i.2, arithmetic_fadd\0A0" = global [70 x i8] c"R_Node: %239, Parent: %238, Parent: d0diffecall.i.2, arithmetic_fadd\0A\00"
@"R_Node: %243, Parent: x, call\0A0" = global [31 x i8] c"R_Node: %243, Parent: x, call\0A\00"
@"R_Node: %246, Parent: %242, Parent: %243, arithmetic_fmul\0A0" = global [59 x i8] c"R_Node: %246, Parent: %242, Parent: %243, arithmetic_fmul\0A\00"
@"R_Node: %249, Parent: %246, arithmetic_fmul\0A0" = global [45 x i8] c"R_Node: %249, Parent: %246, arithmetic_fmul\0A\00"
@"R_Node: %253, Parent: %252, Parent: %249, arithmetic_fadd\0A0" = global [59 x i8] c"R_Node: %253, Parent: %252, Parent: %249, arithmetic_fadd\0A\00"
@"R_Node: %258, Parent: %257, Parent: %256, arithmetic_fadd\0A0" = global [59 x i8] c"R_Node: %258, Parent: %257, Parent: %256, arithmetic_fadd\0A\00"
@"R_Node: %262, Parent: %261, Parent: %256, arithmetic_fadd\0A0" = global [59 x i8] c"R_Node: %262, Parent: %261, Parent: %256, arithmetic_fadd\0A\00"
@"R_Node: m0diffesquare, Parent: %265, arithmetic_fmul\0A0" = global [54 x i8] c"R_Node: m0diffesquare, Parent: %265, arithmetic_fmul\0A\00"
@"R_Node: %269, Parent: %268, Parent: m0diffesquare, arithmetic_fadd\0A0" = global [68 x i8] c"R_Node: %269, Parent: %268, Parent: m0diffesquare, arithmetic_fadd\0A\00"
@"R_Node: m0diffex, Parent: %272, Parent: x, arithmetic_fmul\0A0" = global [60 x i8] c"R_Node: m0diffex, Parent: %272, Parent: x, arithmetic_fmul\0A\00"
@"R_Node: m1diffex, Parent: %272, Parent: x, arithmetic_fmul\0A0" = global [60 x i8] c"R_Node: m1diffex, Parent: %272, Parent: x, arithmetic_fmul\0A\00"
@"R_Node: %278, Parent: %277, Parent: m0diffex, arithmetic_fadd\0A0" = global [63 x i8] c"R_Node: %278, Parent: %277, Parent: m0diffex, arithmetic_fadd\0A\00"
@"R_Node: %282, Parent: %281, Parent: m1diffex, arithmetic_fadd\0A0" = global [63 x i8] c"R_Node: %282, Parent: %281, Parent: m1diffex, arithmetic_fadd\0A\00"
@"R_Node: %287, Parent: %286, Parent: %285, arithmetic_fadd\0A0" = global [59 x i8] c"R_Node: %287, Parent: %286, Parent: %285, arithmetic_fadd\0A\00"
@"R_Node: %291, Parent: %290, insertvalue\0A0" = global [41 x i8] c"R_Node: %291, Parent: %290, insertvalue\0A\00"
@"F_Node: x, Parent: root, arg\0A" = global [30 x i8] c"F_Node: x, Parent: root, arg\0A\00"
@"F_Node: differeturn, Parent: root, arg\0A" = global [40 x i8] c"F_Node: differeturn, Parent: root, arg\0A\00"

; Function Attrs: norecurse uwtable mustprogress
define i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #0 {
entry:
  %0 = call { double } @diffe_ZL11sincos_reald(double 0x3DA5FD7FE1796495, double 1.000000e+00)
  %1 = extractvalue { double } %0, 0
  ret i32 0
}

; Function Attrs: nofree norecurse nounwind uwtable mustprogress
define internal double @_ZL11sincos_reald(double %x) #1 {
entry:
  %add = fadd double %x, 0.000000e+00
  %square = fmul double %x, %x
  %div.1 = fmul double %square, 5.000000e-01
  %add.1 = fadd double %add, %div.1
  %call.i.2 = tail call double @pow(double %x, double 3.000000e+00) #5
  %div.2 = fdiv double %call.i.2, 3.000000e+00
  %add.2 = fadd double %add.1, %div.2
  %call.i.3 = tail call double @pow(double %x, double 4.000000e+00) #5
  %div.3 = fmul double %call.i.3, 2.500000e-01
  %add.3 = fadd double %add.2, %div.3
  %call.i.4 = tail call double @pow(double %x, double 5.000000e+00) #5
  %div.4 = fdiv double %call.i.4, 5.000000e+00
  %add.4 = fadd double %add.3, %div.4
  %call.i.5 = tail call double @pow(double %x, double 6.000000e+00) #5
  %div.5 = fdiv double %call.i.5, 6.000000e+00
  %add.5 = fadd double %add.4, %div.5
  %call.i.6 = tail call double @pow(double %x, double 7.000000e+00) #5
  %div.6 = fdiv double %call.i.6, 7.000000e+00
  %add.6 = fadd double %add.5, %div.6
  %call.i.7 = tail call double @pow(double %x, double 8.000000e+00) #5
  %div.7 = fmul double %call.i.7, 1.250000e-01
  %add.7 = fadd double %add.6, %div.7
  %call.i.8 = tail call double @pow(double %x, double 9.000000e+00) #5
  %div.8 = fdiv double %call.i.8, 9.000000e+00
  %add.8 = fadd double %add.7, %div.8
  %call.i.9 = tail call double @pow(double %x, double 1.000000e+01) #5
  %div.9 = fdiv double %call.i.9, 1.000000e+01
  %add.9 = fadd double %add.8, %div.9
  ret double %add.9
}

declare double @_Z17__enzyme_autodiffIdJPFddEdEET_DpT0_(double (double)*, double) local_unnamed_addr #2

; Function Attrs: nofree nounwind willreturn
declare double @pow(double, double) local_unnamed_addr #3

; Function Attrs: nofree norecurse nounwind uwtable mustprogress
define internal double @preprocess__ZL11sincos_reald(double %x) #1 {
entry:
  %add = fadd double %x, 0.000000e+00
  %square = fmul double %x, %x
  %div.1 = fmul double %square, 5.000000e-01
  %add.1 = fadd double %add, %div.1
  %call.i.2 = tail call double @pow(double %x, double 3.000000e+00) #5
  %div.2 = fdiv double %call.i.2, 3.000000e+00
  %add.2 = fadd double %add.1, %div.2
  %call.i.3 = tail call double @pow(double %x, double 4.000000e+00) #5
  %div.3 = fmul double %call.i.3, 2.500000e-01
  %add.3 = fadd double %add.2, %div.3
  %call.i.4 = tail call double @pow(double %x, double 5.000000e+00) #5
  %div.4 = fdiv double %call.i.4, 5.000000e+00
  %add.4 = fadd double %add.3, %div.4
  %call.i.5 = tail call double @pow(double %x, double 6.000000e+00) #5
  %div.5 = fdiv double %call.i.5, 6.000000e+00
  %add.5 = fadd double %add.4, %div.5
  %call.i.6 = tail call double @pow(double %x, double 7.000000e+00) #5
  %div.6 = fdiv double %call.i.6, 7.000000e+00
  %add.6 = fadd double %add.5, %div.6
  %call.i.7 = tail call double @pow(double %x, double 8.000000e+00) #5
  %div.7 = fmul double %call.i.7, 1.250000e-01
  %add.7 = fadd double %add.6, %div.7
  %call.i.8 = tail call double @pow(double %x, double 9.000000e+00) #5
  %div.8 = fdiv double %call.i.8, 9.000000e+00
  %add.8 = fadd double %add.7, %div.8
  %call.i.9 = tail call double @pow(double %x, double 1.000000e+01) #5
  %div.9 = fdiv double %call.i.9, 1.000000e+01
  %add.9 = fadd double %add.8, %div.9
  ret double %add.9
}

; Function Attrs: nofree norecurse nounwind uwtable mustprogress
define internal { double } @diffe_ZL11sincos_reald(double %x, double %differeturn) #1 {
entry:
  %0 = bitcast [40 x i8]* @"F_Node: differeturn, Parent: root, arg\0A" to i8*
  %1 = call i32 (i8*, ...) @printf(i8* %0)
  %2 = bitcast [30 x i8]* @"F_Node: x, Parent: root, arg\0A" to i8*
  %3 = call i32 (i8*, ...) @printf(i8* %2)
  %call.i.2 = tail call double @pow(double %x, double 3.000000e+00) #5
  %4 = bitcast [35 x i8]* @"F_Node: call.i.2, Parent: x, call\0A0" to i8*
  %5 = call i32 (i8*, ...) @printf(i8* %4)
  %call.i.3 = tail call double @pow(double %x, double 4.000000e+00) #5
  %6 = bitcast [35 x i8]* @"F_Node: call.i.3, Parent: x, call\0A0" to i8*
  %7 = call i32 (i8*, ...) @printf(i8* %6)
  %call.i.4 = tail call double @pow(double %x, double 5.000000e+00) #5
  %8 = bitcast [35 x i8]* @"F_Node: call.i.4, Parent: x, call\0A0" to i8*
  %9 = call i32 (i8*, ...) @printf(i8* %8)
  %call.i.5 = tail call double @pow(double %x, double 6.000000e+00) #5
  %10 = bitcast [35 x i8]* @"F_Node: call.i.5, Parent: x, call\0A0" to i8*
  %11 = call i32 (i8*, ...) @printf(i8* %10)
  %call.i.6 = tail call double @pow(double %x, double 7.000000e+00) #5
  %12 = bitcast [35 x i8]* @"F_Node: call.i.6, Parent: x, call\0A0" to i8*
  %13 = call i32 (i8*, ...) @printf(i8* %12)
  %call.i.7 = tail call double @pow(double %x, double 8.000000e+00) #5
  %14 = bitcast [35 x i8]* @"F_Node: call.i.7, Parent: x, call\0A0" to i8*
  %15 = call i32 (i8*, ...) @printf(i8* %14)
  %call.i.8 = tail call double @pow(double %x, double 9.000000e+00) #5
  %16 = bitcast [35 x i8]* @"F_Node: call.i.8, Parent: x, call\0A0" to i8*
  %17 = call i32 (i8*, ...) @printf(i8* %16)
  %call.i.9 = tail call double @pow(double %x, double 1.000000e+01) #5
  %18 = bitcast [35 x i8]* @"F_Node: call.i.9, Parent: x, call\0A0" to i8*
  %19 = call i32 (i8*, ...) @printf(i8* %18)
  br label %invertentry

invertentry:                                      ; preds = %entry
  %20 = fadd fast double 0.000000e+00, %differeturn
  %21 = bitcast [56 x i8]* @"R_Node: %18, Parent: %17, Parent: %16, arithmetic_fadd\0A0" to i8*
  %22 = call i32 (i8*, ...) @printf(i8* %21)
  %23 = fadd fast double 0.000000e+00, %differeturn
  %24 = bitcast [56 x i8]* @"R_Node: %22, Parent: %21, Parent: %16, arithmetic_fadd\0A0" to i8*
  %25 = call i32 (i8*, ...) @printf(i8* %24)
  %d0diffecall.i.9 = fdiv fast double %23, 1.000000e+01
  %26 = bitcast [55 x i8]* @"R_Node: d0diffecall.i.9, Parent: %25, arithmetic_fdiv\0A0" to i8*
  %27 = call i32 (i8*, ...) @printf(i8* %26)
  %28 = fadd fast double 0.000000e+00, %d0diffecall.i.9
  %29 = bitcast [68 x i8]* @"R_Node: %29, Parent: %28, Parent: d0diffecall.i.9, arithmetic_fadd\0A0" to i8*
  %30 = call i32 (i8*, ...) @printf(i8* %29)
  %31 = call fast double @llvm.pow.f64(double %x, double 9.000000e+00)
  %32 = bitcast [30 x i8]* @"R_Node: %33, Parent: x, call\0A0" to i8*
  %33 = call i32 (i8*, ...) @printf(i8* %32)
  %34 = fmul fast double %28, %31
  %35 = bitcast [56 x i8]* @"R_Node: %36, Parent: %32, Parent: %33, arithmetic_fmul\0A0" to i8*
  %36 = call i32 (i8*, ...) @printf(i8* %35)
  %37 = fmul fast double %34, 1.000000e+01
  %38 = bitcast [43 x i8]* @"R_Node: %39, Parent: %36, arithmetic_fmul\0A0" to i8*
  %39 = call i32 (i8*, ...) @printf(i8* %38)
  %40 = fadd fast double 0.000000e+00, %37
  %41 = bitcast [56 x i8]* @"R_Node: %43, Parent: %42, Parent: %39, arithmetic_fadd\0A0" to i8*
  %42 = call i32 (i8*, ...) @printf(i8* %41)
  %43 = fadd fast double 0.000000e+00, %20
  %44 = bitcast [56 x i8]* @"R_Node: %48, Parent: %47, Parent: %46, arithmetic_fadd\0A0" to i8*
  %45 = call i32 (i8*, ...) @printf(i8* %44)
  %46 = fadd fast double 0.000000e+00, %20
  %47 = bitcast [56 x i8]* @"R_Node: %52, Parent: %51, Parent: %46, arithmetic_fadd\0A0" to i8*
  %48 = call i32 (i8*, ...) @printf(i8* %47)
  %d0diffecall.i.8 = fdiv fast double %46, 9.000000e+00
  %49 = bitcast [55 x i8]* @"R_Node: d0diffecall.i.8, Parent: %55, arithmetic_fdiv\0A0" to i8*
  %50 = call i32 (i8*, ...) @printf(i8* %49)
  %51 = fadd fast double 0.000000e+00, %d0diffecall.i.8
  %52 = bitcast [68 x i8]* @"R_Node: %59, Parent: %58, Parent: d0diffecall.i.8, arithmetic_fadd\0A0" to i8*
  %53 = call i32 (i8*, ...) @printf(i8* %52)
  %54 = call fast double @llvm.pow.f64(double %x, double 8.000000e+00)
  %55 = bitcast [30 x i8]* @"R_Node: %63, Parent: x, call\0A0" to i8*
  %56 = call i32 (i8*, ...) @printf(i8* %55)
  %57 = fmul fast double %51, %54
  %58 = bitcast [56 x i8]* @"R_Node: %66, Parent: %62, Parent: %63, arithmetic_fmul\0A0" to i8*
  %59 = call i32 (i8*, ...) @printf(i8* %58)
  %60 = fmul fast double %57, 9.000000e+00
  %61 = bitcast [43 x i8]* @"R_Node: %69, Parent: %66, arithmetic_fmul\0A0" to i8*
  %62 = call i32 (i8*, ...) @printf(i8* %61)
  %63 = fadd fast double %40, %60
  %64 = bitcast [56 x i8]* @"R_Node: %73, Parent: %72, Parent: %69, arithmetic_fadd\0A0" to i8*
  %65 = call i32 (i8*, ...) @printf(i8* %64)
  %66 = fadd fast double 0.000000e+00, %43
  %67 = bitcast [56 x i8]* @"R_Node: %78, Parent: %77, Parent: %76, arithmetic_fadd\0A0" to i8*
  %68 = call i32 (i8*, ...) @printf(i8* %67)
  %69 = fadd fast double 0.000000e+00, %43
  %70 = bitcast [56 x i8]* @"R_Node: %82, Parent: %81, Parent: %76, arithmetic_fadd\0A0" to i8*
  %71 = call i32 (i8*, ...) @printf(i8* %70)
  %m0diffecall.i.7 = fmul fast double %69, 1.250000e-01
  %72 = bitcast [55 x i8]* @"R_Node: m0diffecall.i.7, Parent: %85, arithmetic_fmul\0A0" to i8*
  %73 = call i32 (i8*, ...) @printf(i8* %72)
  %74 = fadd fast double 0.000000e+00, %m0diffecall.i.7
  %75 = bitcast [68 x i8]* @"R_Node: %89, Parent: %88, Parent: m0diffecall.i.7, arithmetic_fadd\0A0" to i8*
  %76 = call i32 (i8*, ...) @printf(i8* %75)
  %77 = call fast double @llvm.pow.f64(double %x, double 7.000000e+00)
  %78 = bitcast [30 x i8]* @"R_Node: %93, Parent: x, call\0A0" to i8*
  %79 = call i32 (i8*, ...) @printf(i8* %78)
  %80 = fmul fast double %74, %77
  %81 = bitcast [56 x i8]* @"R_Node: %96, Parent: %92, Parent: %93, arithmetic_fmul\0A0" to i8*
  %82 = call i32 (i8*, ...) @printf(i8* %81)
  %83 = fmul fast double %80, 8.000000e+00
  %84 = bitcast [43 x i8]* @"R_Node: %99, Parent: %96, arithmetic_fmul\0A0" to i8*
  %85 = call i32 (i8*, ...) @printf(i8* %84)
  %86 = fadd fast double %63, %83
  %87 = bitcast [58 x i8]* @"R_Node: %103, Parent: %102, Parent: %99, arithmetic_fadd\0A0" to i8*
  %88 = call i32 (i8*, ...) @printf(i8* %87)
  %89 = fadd fast double 0.000000e+00, %66
  %90 = bitcast [59 x i8]* @"R_Node: %108, Parent: %107, Parent: %106, arithmetic_fadd\0A0" to i8*
  %91 = call i32 (i8*, ...) @printf(i8* %90)
  %92 = fadd fast double 0.000000e+00, %66
  %93 = bitcast [59 x i8]* @"R_Node: %112, Parent: %111, Parent: %106, arithmetic_fadd\0A0" to i8*
  %94 = call i32 (i8*, ...) @printf(i8* %93)
  %d0diffecall.i.6 = fdiv fast double %92, 7.000000e+00
  %95 = bitcast [56 x i8]* @"R_Node: d0diffecall.i.6, Parent: %115, arithmetic_fdiv\0A0" to i8*
  %96 = call i32 (i8*, ...) @printf(i8* %95)
  %97 = fadd fast double 0.000000e+00, %d0diffecall.i.6
  %98 = bitcast [70 x i8]* @"R_Node: %119, Parent: %118, Parent: d0diffecall.i.6, arithmetic_fadd\0A0" to i8*
  %99 = call i32 (i8*, ...) @printf(i8* %98)
  %100 = call fast double @llvm.pow.f64(double %x, double 6.000000e+00)
  %101 = bitcast [31 x i8]* @"R_Node: %123, Parent: x, call\0A0" to i8*
  %102 = call i32 (i8*, ...) @printf(i8* %101)
  %103 = fmul fast double %97, %100
  %104 = bitcast [59 x i8]* @"R_Node: %126, Parent: %122, Parent: %123, arithmetic_fmul\0A0" to i8*
  %105 = call i32 (i8*, ...) @printf(i8* %104)
  %106 = fmul fast double %103, 7.000000e+00
  %107 = bitcast [45 x i8]* @"R_Node: %129, Parent: %126, arithmetic_fmul\0A0" to i8*
  %108 = call i32 (i8*, ...) @printf(i8* %107)
  %109 = fadd fast double %86, %106
  %110 = bitcast [59 x i8]* @"R_Node: %133, Parent: %132, Parent: %129, arithmetic_fadd\0A0" to i8*
  %111 = call i32 (i8*, ...) @printf(i8* %110)
  %112 = fadd fast double 0.000000e+00, %89
  %113 = bitcast [59 x i8]* @"R_Node: %138, Parent: %137, Parent: %136, arithmetic_fadd\0A0" to i8*
  %114 = call i32 (i8*, ...) @printf(i8* %113)
  %115 = fadd fast double 0.000000e+00, %89
  %116 = bitcast [59 x i8]* @"R_Node: %142, Parent: %141, Parent: %136, arithmetic_fadd\0A0" to i8*
  %117 = call i32 (i8*, ...) @printf(i8* %116)
  %d0diffecall.i.5 = fdiv fast double %115, 6.000000e+00
  %118 = bitcast [56 x i8]* @"R_Node: d0diffecall.i.5, Parent: %145, arithmetic_fdiv\0A0" to i8*
  %119 = call i32 (i8*, ...) @printf(i8* %118)
  %120 = fadd fast double 0.000000e+00, %d0diffecall.i.5
  %121 = bitcast [70 x i8]* @"R_Node: %149, Parent: %148, Parent: d0diffecall.i.5, arithmetic_fadd\0A0" to i8*
  %122 = call i32 (i8*, ...) @printf(i8* %121)
  %123 = call fast double @llvm.pow.f64(double %x, double 5.000000e+00)
  %124 = bitcast [31 x i8]* @"R_Node: %153, Parent: x, call\0A0" to i8*
  %125 = call i32 (i8*, ...) @printf(i8* %124)
  %126 = fmul fast double %120, %123
  %127 = bitcast [59 x i8]* @"R_Node: %156, Parent: %152, Parent: %153, arithmetic_fmul\0A0" to i8*
  %128 = call i32 (i8*, ...) @printf(i8* %127)
  %129 = fmul fast double %126, 6.000000e+00
  %130 = bitcast [45 x i8]* @"R_Node: %159, Parent: %156, arithmetic_fmul\0A0" to i8*
  %131 = call i32 (i8*, ...) @printf(i8* %130)
  %132 = fadd fast double %109, %129
  %133 = bitcast [59 x i8]* @"R_Node: %163, Parent: %162, Parent: %159, arithmetic_fadd\0A0" to i8*
  %134 = call i32 (i8*, ...) @printf(i8* %133)
  %135 = fadd fast double 0.000000e+00, %112
  %136 = bitcast [59 x i8]* @"R_Node: %168, Parent: %167, Parent: %166, arithmetic_fadd\0A0" to i8*
  %137 = call i32 (i8*, ...) @printf(i8* %136)
  %138 = fadd fast double 0.000000e+00, %112
  %139 = bitcast [59 x i8]* @"R_Node: %172, Parent: %171, Parent: %166, arithmetic_fadd\0A0" to i8*
  %140 = call i32 (i8*, ...) @printf(i8* %139)
  %d0diffecall.i.4 = fdiv fast double %138, 5.000000e+00
  %141 = bitcast [56 x i8]* @"R_Node: d0diffecall.i.4, Parent: %175, arithmetic_fdiv\0A0" to i8*
  %142 = call i32 (i8*, ...) @printf(i8* %141)
  %143 = fadd fast double 0.000000e+00, %d0diffecall.i.4
  %144 = bitcast [70 x i8]* @"R_Node: %179, Parent: %178, Parent: d0diffecall.i.4, arithmetic_fadd\0A0" to i8*
  %145 = call i32 (i8*, ...) @printf(i8* %144)
  %146 = call fast double @llvm.pow.f64(double %x, double 4.000000e+00)
  %147 = bitcast [31 x i8]* @"R_Node: %183, Parent: x, call\0A0" to i8*
  %148 = call i32 (i8*, ...) @printf(i8* %147)
  %149 = fmul fast double %143, %146
  %150 = bitcast [59 x i8]* @"R_Node: %186, Parent: %182, Parent: %183, arithmetic_fmul\0A0" to i8*
  %151 = call i32 (i8*, ...) @printf(i8* %150)
  %152 = fmul fast double %149, 5.000000e+00
  %153 = bitcast [45 x i8]* @"R_Node: %189, Parent: %186, arithmetic_fmul\0A0" to i8*
  %154 = call i32 (i8*, ...) @printf(i8* %153)
  %155 = fadd fast double %132, %152
  %156 = bitcast [59 x i8]* @"R_Node: %193, Parent: %192, Parent: %189, arithmetic_fadd\0A0" to i8*
  %157 = call i32 (i8*, ...) @printf(i8* %156)
  %158 = fadd fast double 0.000000e+00, %135
  %159 = bitcast [59 x i8]* @"R_Node: %198, Parent: %197, Parent: %196, arithmetic_fadd\0A0" to i8*
  %160 = call i32 (i8*, ...) @printf(i8* %159)
  %161 = fadd fast double 0.000000e+00, %135
  %162 = bitcast [59 x i8]* @"R_Node: %202, Parent: %201, Parent: %196, arithmetic_fadd\0A0" to i8*
  %163 = call i32 (i8*, ...) @printf(i8* %162)
  %m0diffecall.i.3 = fmul fast double %161, 2.500000e-01
  %164 = bitcast [56 x i8]* @"R_Node: m0diffecall.i.3, Parent: %205, arithmetic_fmul\0A0" to i8*
  %165 = call i32 (i8*, ...) @printf(i8* %164)
  %166 = fadd fast double 0.000000e+00, %m0diffecall.i.3
  %167 = bitcast [70 x i8]* @"R_Node: %209, Parent: %208, Parent: m0diffecall.i.3, arithmetic_fadd\0A0" to i8*
  %168 = call i32 (i8*, ...) @printf(i8* %167)
  %169 = call fast double @llvm.pow.f64(double %x, double 3.000000e+00)
  %170 = bitcast [31 x i8]* @"R_Node: %213, Parent: x, call\0A0" to i8*
  %171 = call i32 (i8*, ...) @printf(i8* %170)
  %172 = fmul fast double %166, %169
  %173 = bitcast [59 x i8]* @"R_Node: %216, Parent: %212, Parent: %213, arithmetic_fmul\0A0" to i8*
  %174 = call i32 (i8*, ...) @printf(i8* %173)
  %175 = fmul fast double %172, 4.000000e+00
  %176 = bitcast [45 x i8]* @"R_Node: %219, Parent: %216, arithmetic_fmul\0A0" to i8*
  %177 = call i32 (i8*, ...) @printf(i8* %176)
  %178 = fadd fast double %155, %175
  %179 = bitcast [59 x i8]* @"R_Node: %223, Parent: %222, Parent: %219, arithmetic_fadd\0A0" to i8*
  %180 = call i32 (i8*, ...) @printf(i8* %179)
  %181 = fadd fast double 0.000000e+00, %158
  %182 = bitcast [59 x i8]* @"R_Node: %228, Parent: %227, Parent: %226, arithmetic_fadd\0A0" to i8*
  %183 = call i32 (i8*, ...) @printf(i8* %182)
  %184 = fadd fast double 0.000000e+00, %158
  %185 = bitcast [59 x i8]* @"R_Node: %232, Parent: %231, Parent: %226, arithmetic_fadd\0A0" to i8*
  %186 = call i32 (i8*, ...) @printf(i8* %185)
  %d0diffecall.i.2 = fdiv fast double %184, 3.000000e+00
  %187 = bitcast [56 x i8]* @"R_Node: d0diffecall.i.2, Parent: %235, arithmetic_fdiv\0A0" to i8*
  %188 = call i32 (i8*, ...) @printf(i8* %187)
  %189 = fadd fast double 0.000000e+00, %d0diffecall.i.2
  %190 = bitcast [70 x i8]* @"R_Node: %239, Parent: %238, Parent: d0diffecall.i.2, arithmetic_fadd\0A0" to i8*
  %191 = call i32 (i8*, ...) @printf(i8* %190)
  %192 = call fast double @llvm.pow.f64(double %x, double 2.000000e+00)
  %193 = bitcast [31 x i8]* @"R_Node: %243, Parent: x, call\0A0" to i8*
  %194 = call i32 (i8*, ...) @printf(i8* %193)
  %195 = fmul fast double %189, %192
  %196 = bitcast [59 x i8]* @"R_Node: %246, Parent: %242, Parent: %243, arithmetic_fmul\0A0" to i8*
  %197 = call i32 (i8*, ...) @printf(i8* %196)
  %198 = fmul fast double %195, 3.000000e+00
  %199 = bitcast [45 x i8]* @"R_Node: %249, Parent: %246, arithmetic_fmul\0A0" to i8*
  %200 = call i32 (i8*, ...) @printf(i8* %199)
  %201 = fadd fast double %178, %198
  %202 = bitcast [59 x i8]* @"R_Node: %253, Parent: %252, Parent: %249, arithmetic_fadd\0A0" to i8*
  %203 = call i32 (i8*, ...) @printf(i8* %202)
  %204 = fadd fast double 0.000000e+00, %181
  %205 = bitcast [59 x i8]* @"R_Node: %258, Parent: %257, Parent: %256, arithmetic_fadd\0A0" to i8*
  %206 = call i32 (i8*, ...) @printf(i8* %205)
  %207 = fadd fast double 0.000000e+00, %181
  %208 = bitcast [59 x i8]* @"R_Node: %262, Parent: %261, Parent: %256, arithmetic_fadd\0A0" to i8*
  %209 = call i32 (i8*, ...) @printf(i8* %208)
  %m0diffesquare = fmul fast double %207, 5.000000e-01
  %210 = bitcast [54 x i8]* @"R_Node: m0diffesquare, Parent: %265, arithmetic_fmul\0A0" to i8*
  %211 = call i32 (i8*, ...) @printf(i8* %210)
  %212 = fadd fast double 0.000000e+00, %m0diffesquare
  %213 = bitcast [68 x i8]* @"R_Node: %269, Parent: %268, Parent: m0diffesquare, arithmetic_fadd\0A0" to i8*
  %214 = call i32 (i8*, ...) @printf(i8* %213)
  %m0diffex = fmul fast double %212, %x
  %215 = bitcast [60 x i8]* @"R_Node: m0diffex, Parent: %272, Parent: x, arithmetic_fmul\0A0" to i8*
  %216 = call i32 (i8*, ...) @printf(i8* %215)
  %m1diffex = fmul fast double %212, %x
  %217 = bitcast [60 x i8]* @"R_Node: m1diffex, Parent: %272, Parent: x, arithmetic_fmul\0A0" to i8*
  %218 = call i32 (i8*, ...) @printf(i8* %217)
  %219 = fadd fast double %201, %m0diffex
  %220 = bitcast [63 x i8]* @"R_Node: %278, Parent: %277, Parent: m0diffex, arithmetic_fadd\0A0" to i8*
  %221 = call i32 (i8*, ...) @printf(i8* %220)
  %222 = fadd fast double %219, %m1diffex
  %223 = bitcast [63 x i8]* @"R_Node: %282, Parent: %281, Parent: m1diffex, arithmetic_fadd\0A0" to i8*
  %224 = call i32 (i8*, ...) @printf(i8* %223)
  %225 = fadd fast double %222, %204
  %226 = bitcast [59 x i8]* @"R_Node: %287, Parent: %286, Parent: %285, arithmetic_fadd\0A0" to i8*
  %227 = call i32 (i8*, ...) @printf(i8* %226)
  %228 = insertvalue { double } undef, double %225, 0
  %229 = bitcast [41 x i8]* @"R_Node: %291, Parent: %290, insertvalue\0A0" to i8*
  %230 = call i32 (i8*, ...) @printf(i8* %229)
  ret { double } %228
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.pow.f64(double, double) #4

declare i32 @printf(i8*, ...)

attributes #0 = { norecurse uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nofree norecurse nounwind uwtable mustprogress "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nofree nounwind willreturn "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{i32 7, !"PIC Level", i32 2}
!2 = !{!"clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)"}
