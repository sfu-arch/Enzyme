; ModuleID = 'ode-raw.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"ResultFormatStrIR1F_Node: %u, alloca\0A" = global [20 x i8] c"F_Node: %u, alloca\0A\00"
@"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" = global [30 x i8] c"R_Node: %u, Parent: %x, load\0A\00"
@"ResultFormatStrIR2R_Node: %u, Parent: %u, getelementptr\0A" = global [39 x i8] c"R_Node: %u, Parent: %u, getelementptr\0A\00"
@"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" = global [48 x i8] c"R_Node: %u, Parent: %u, Parent: %u, arithmetic\0A\00"
@"ResultFormatStrIRR_Node: %x, Parent: %d, store\0A" = global [31 x i8] c"R_Node: %x, Parent: %d, store\0A\00"
@"ResultFormatStrIR3F_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" = global [48 x i8] c"F_Node: %u, Parent: %u, Parent: %u, arithmetic\0A\00"
@"ResultFormatStrIR2F_Node: %u, Parent: %u, insertvalue\0A" = global [37 x i8] c"F_Node: %u, Parent: %u, insertvalue\0A\00"
@"ResultFormatStrIR2R_Node: %u, Parent: %u, insertvalue\0A" = global [37 x i8] c"R_Node: %u, Parent: %u, insertvalue\0A\00"
@"ResultFormatStrIRF_Node: %x, Parent: %d, store\0A" = global [31 x i8] c"F_Node: %x, Parent: %d, store\0A\00"
@"ResultFormatStrIR2R_Node: %u, Parent: %u, extractvalue\0A" = global [38 x i8] c"R_Node: %u, Parent: %u, extractvalue\0A\00"
@"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, insertvalue\0A" = global [49 x i8] c"R_Node: %u, Parent: %u, Parent: %u, insertvalue\0A\00"
@ResultFormatStrIR0 = global [17 x i8] c"F_Node: %u, Arg\0A\00"

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
  %0 = bitcast [17 x i8]* @ResultFormatStrIR0 to i8*
  %1 = call i32 (i8*, ...) @printf(i8* %0, i32 2)
  %2 = bitcast [17 x i8]* @ResultFormatStrIR0 to i8*
  %3 = call i32 (i8*, ...) @printf(i8* %2, i32 1)
  %4 = bitcast [20 x i8]* @"ResultFormatStrIR1F_Node: %u, alloca\0A" to i8*
  %5 = call i32 (i8*, ...) @printf(i8* %4, i32 3)
  store { double, double } zeroinitializer, { double, double }* %".fca.1.insert'de", align 8
  %6 = bitcast [31 x i8]* @"ResultFormatStrIRF_Node: %x, Parent: %d, store\0A" to i8*
  %7 = call i32 (i8*, ...) @printf(i8* %6, { double, double }* %".fca.1.insert'de", i32 0)
  %"mul'de" = alloca double, align 8, !node !2
  %8 = bitcast [20 x i8]* @"ResultFormatStrIR1F_Node: %u, alloca\0A" to i8*
  %9 = call i32 (i8*, ...) @printf(i8* %8, i32 5)
  store double 0.000000e+00, double* %"mul'de", align 8
  %10 = bitcast [31 x i8]* @"ResultFormatStrIRF_Node: %x, Parent: %d, store\0A" to i8*
  %11 = call i32 (i8*, ...) @printf(i8* %10, double* %"mul'de", i32 0)
  %".fca.0.insert'de" = alloca { double, double }, align 8
  %12 = bitcast [20 x i8]* @"ResultFormatStrIR1F_Node: %u, alloca\0A" to i8*
  %13 = call i32 (i8*, ...) @printf(i8* %12, i32 7)
  store { double, double } zeroinitializer, { double, double }* %".fca.0.insert'de", align 8
  %14 = bitcast [31 x i8]* @"ResultFormatStrIRF_Node: %x, Parent: %d, store\0A" to i8*
  %15 = call i32 (i8*, ...) @printf(i8* %14, { double, double }* %".fca.0.insert'de", i32 0)
  %"mul4'de" = alloca double, align 8
  %16 = bitcast [20 x i8]* @"ResultFormatStrIR1F_Node: %u, alloca\0A" to i8*
  %17 = call i32 (i8*, ...) @printf(i8* %16, i32 9)
  store double 0.000000e+00, double* %"mul4'de", align 8
  %18 = bitcast [31 x i8]* @"ResultFormatStrIRF_Node: %x, Parent: %d, store\0A" to i8*
  %19 = call i32 (i8*, ...) @printf(i8* %18, double* %"mul4'de", i32 0)
  %"'de" = alloca double, align 8, !node !2
  %20 = bitcast [20 x i8]* @"ResultFormatStrIR1F_Node: %u, alloca\0A" to i8*
  %21 = call i32 (i8*, ...) @printf(i8* %20, i32 11)
  store double 0.000000e+00, double* %"'de", align 8
  %22 = bitcast [31 x i8]* @"ResultFormatStrIRF_Node: %x, Parent: %d, store\0A" to i8*
  %23 = call i32 (i8*, ...) @printf(i8* %22, double* %"'de", i32 0)
  %"'de2" = alloca double, align 8, !node !2
  %24 = bitcast [20 x i8]* @"ResultFormatStrIR1F_Node: %u, alloca\0A" to i8*
  %25 = call i32 (i8*, ...) @printf(i8* %24, i32 13)
  store double 0.000000e+00, double* %"'de2", align 8
  %26 = bitcast [31 x i8]* @"ResultFormatStrIRF_Node: %x, Parent: %d, store\0A" to i8*
  %27 = call i32 (i8*, ...) @printf(i8* %26, double* %"'de2", i32 0)
  %"in_1'de" = alloca double, align 8, !node !2
  %28 = bitcast [20 x i8]* @"ResultFormatStrIR1F_Node: %u, alloca\0A" to i8*
  %29 = call i32 (i8*, ...) @printf(i8* %28, i32 15)
  store double 0.000000e+00, double* %"in_1'de", align 8
  %30 = bitcast [31 x i8]* @"ResultFormatStrIRF_Node: %x, Parent: %d, store\0A" to i8*
  %31 = call i32 (i8*, ...) @printf(i8* %30, double* %"in_1'de", i32 0)
  %"in_0'de" = alloca double, align 8, !node !2
  %32 = bitcast [20 x i8]* @"ResultFormatStrIR1F_Node: %u, alloca\0A" to i8*
  %33 = call i32 (i8*, ...) @printf(i8* %32, i32 17)
  store double 0.000000e+00, double* %"in_0'de", align 8
  %34 = bitcast [31 x i8]* @"ResultFormatStrIRF_Node: %x, Parent: %d, store\0A" to i8*
  %35 = call i32 (i8*, ...) @printf(i8* %34, double* %"in_0'de", i32 0)
  %mul = fmul fast double %in_0, %in_0, !node !2
  %36 = bitcast [48 x i8]* @"ResultFormatStrIR3F_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %37 = call i32 (i8*, ...) @printf(i8* %36, i32 19, i32 0, i32 0)
  %38 = fmul fast double %in_1, %in_1, !node !2
  %39 = bitcast [48 x i8]* @"ResultFormatStrIR3F_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %40 = call i32 (i8*, ...) @printf(i8* %39, i32 20, i32 0, i32 0)
  %41 = fmul fast double %38, %38, !node !2
  %42 = bitcast [48 x i8]* @"ResultFormatStrIR3F_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %43 = call i32 (i8*, ...) @printf(i8* %42, i32 21, i32 20, i32 20)
  %mul4 = fmul fast double %41, %mul, !node !2
  %44 = bitcast [48 x i8]* @"ResultFormatStrIR3F_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %45 = call i32 (i8*, ...) @printf(i8* %44, i32 22, i32 21, i32 19)
  %.fca.0.insert = insertvalue { double, double } undef, double %mul4, 0
  %46 = bitcast [37 x i8]* @"ResultFormatStrIR2F_Node: %u, Parent: %u, insertvalue\0A" to i8*
  %47 = call i32 (i8*, ...) @printf(i8* %46, i32 23, i32 22)
  br label %invertentry

invertentry:                                      ; preds = %entry
  %48 = load { double, double }, { double, double }* %".fca.1.insert'de", align 8
  %49 = bitcast [30 x i8]* @"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" to i8*
  %50 = call i32 (i8*, ...) @printf(i8* %49, i32 25, { double, double }* %".fca.1.insert'de")
  %51 = extractvalue { double, double } %48, 1
  %52 = bitcast [38 x i8]* @"ResultFormatStrIR2R_Node: %u, Parent: %u, extractvalue\0A" to i8*
  %53 = call i32 (i8*, ...) @printf(i8* %52, i32 26, i32 25)
  %54 = load double, double* %"mul'de", align 8, !node !2
  %55 = bitcast [30 x i8]* @"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" to i8*
  %56 = call i32 (i8*, ...) @printf(i8* %55, i32 27, double* %"mul'de")
  %57 = fadd fast double %54, %51, !node !2
  %58 = bitcast [48 x i8]* @"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %59 = call i32 (i8*, ...) @printf(i8* %58, i32 28, i32 27, i32 26)
  store double %57, double* %"mul'de", align 8
  %60 = bitcast [31 x i8]* @"ResultFormatStrIRR_Node: %x, Parent: %d, store\0A" to i8*
  %61 = call i32 (i8*, ...) @printf(i8* %60, double* %"mul'de", i32 28)
  %62 = load { double, double }, { double, double }* %".fca.1.insert'de", align 8
  %63 = bitcast [30 x i8]* @"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" to i8*
  %64 = call i32 (i8*, ...) @printf(i8* %63, i32 30, { double, double }* %".fca.1.insert'de")
  %65 = insertvalue { double, double } %62, double 0.000000e+00, 1
  %66 = bitcast [37 x i8]* @"ResultFormatStrIR2R_Node: %u, Parent: %u, insertvalue\0A" to i8*
  %67 = call i32 (i8*, ...) @printf(i8* %66, i32 31, i32 30)
  %68 = load { double, double }, { double, double }* %".fca.0.insert'de", align 8
  %69 = bitcast [30 x i8]* @"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" to i8*
  %70 = call i32 (i8*, ...) @printf(i8* %69, i32 32, { double, double }* %".fca.0.insert'de")
  %71 = extractvalue { double, double } %65, 0
  %72 = bitcast [38 x i8]* @"ResultFormatStrIR2R_Node: %u, Parent: %u, extractvalue\0A" to i8*
  %73 = call i32 (i8*, ...) @printf(i8* %72, i32 33, i32 31)
  %74 = getelementptr inbounds { double, double }, { double, double }* %".fca.0.insert'de", i32 0, i32 0
  %75 = bitcast [39 x i8]* @"ResultFormatStrIR2R_Node: %u, Parent: %u, getelementptr\0A" to i8*
  %76 = call i32 (i8*, ...) @printf(i8* %75, i32 34, i32 7)
  %77 = load double, double* %74, align 8
  %78 = bitcast [30 x i8]* @"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" to i8*
  %79 = call i32 (i8*, ...) @printf(i8* %78, i32 35, double* %74)
  %80 = fadd fast double %77, %71
  %81 = bitcast [48 x i8]* @"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %82 = call i32 (i8*, ...) @printf(i8* %81, i32 36, i32 35, i32 33)
  store double %80, double* %74, align 8
  %83 = bitcast [31 x i8]* @"ResultFormatStrIRR_Node: %x, Parent: %d, store\0A" to i8*
  %84 = call i32 (i8*, ...) @printf(i8* %83, double* %74, i32 36)
  %85 = extractvalue { double, double } %65, 1
  %86 = bitcast [38 x i8]* @"ResultFormatStrIR2R_Node: %u, Parent: %u, extractvalue\0A" to i8*
  %87 = call i32 (i8*, ...) @printf(i8* %86, i32 38, i32 31)
  %88 = getelementptr inbounds { double, double }, { double, double }* %".fca.0.insert'de", i32 0, i32 1
  %89 = bitcast [39 x i8]* @"ResultFormatStrIR2R_Node: %u, Parent: %u, getelementptr\0A" to i8*
  %90 = call i32 (i8*, ...) @printf(i8* %89, i32 39, i32 7)
  %91 = load double, double* %88, align 8
  %92 = bitcast [30 x i8]* @"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" to i8*
  %93 = call i32 (i8*, ...) @printf(i8* %92, i32 40, double* %88)
  %94 = fadd fast double %91, %85
  %95 = bitcast [48 x i8]* @"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %96 = call i32 (i8*, ...) @printf(i8* %95, i32 41, i32 40, i32 38)
  store double %94, double* %88, align 8
  %97 = bitcast [31 x i8]* @"ResultFormatStrIRR_Node: %x, Parent: %d, store\0A" to i8*
  %98 = call i32 (i8*, ...) @printf(i8* %97, double* %88, i32 41)
  store { double, double } zeroinitializer, { double, double }* %".fca.1.insert'de", align 8
  %99 = bitcast [31 x i8]* @"ResultFormatStrIRR_Node: %x, Parent: %d, store\0A" to i8*
  %100 = call i32 (i8*, ...) @printf(i8* %99, { double, double }* %".fca.1.insert'de", i32 0)
  %101 = load { double, double }, { double, double }* %".fca.0.insert'de", align 8
  %102 = bitcast [30 x i8]* @"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" to i8*
  %103 = call i32 (i8*, ...) @printf(i8* %102, i32 44, { double, double }* %".fca.0.insert'de")
  %104 = extractvalue { double, double } %101, 0
  %105 = bitcast [38 x i8]* @"ResultFormatStrIR2R_Node: %u, Parent: %u, extractvalue\0A" to i8*
  %106 = call i32 (i8*, ...) @printf(i8* %105, i32 45, i32 44)
  %107 = load double, double* %"mul4'de", align 8
  %108 = bitcast [30 x i8]* @"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" to i8*
  %109 = call i32 (i8*, ...) @printf(i8* %108, i32 46, double* %"mul4'de")
  %110 = fadd fast double %107, %104
  %111 = bitcast [48 x i8]* @"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %112 = call i32 (i8*, ...) @printf(i8* %111, i32 47, i32 46, i32 45)
  store double %110, double* %"mul4'de", align 8
  %113 = bitcast [31 x i8]* @"ResultFormatStrIRR_Node: %x, Parent: %d, store\0A" to i8*
  %114 = call i32 (i8*, ...) @printf(i8* %113, double* %"mul4'de", i32 47)
  store { double, double } zeroinitializer, { double, double }* %".fca.0.insert'de", align 8
  %115 = bitcast [31 x i8]* @"ResultFormatStrIRR_Node: %x, Parent: %d, store\0A" to i8*
  %116 = call i32 (i8*, ...) @printf(i8* %115, { double, double }* %".fca.0.insert'de", i32 0)
  %117 = load double, double* %"mul4'de", align 8
  %118 = bitcast [30 x i8]* @"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" to i8*
  %119 = call i32 (i8*, ...) @printf(i8* %118, i32 50, double* %"mul4'de")
  %m0diffe = fmul fast double %117, %mul, !node !2
  %120 = bitcast [48 x i8]* @"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %121 = call i32 (i8*, ...) @printf(i8* %120, i32 51, i32 50, i32 19)
  %m1diffemul = fmul fast double %117, %41, !node !2
  %122 = bitcast [48 x i8]* @"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %123 = call i32 (i8*, ...) @printf(i8* %122, i32 52, i32 50, i32 21)
  store double 0.000000e+00, double* %"mul4'de", align 8
  %124 = bitcast [31 x i8]* @"ResultFormatStrIRR_Node: %x, Parent: %d, store\0A" to i8*
  %125 = call i32 (i8*, ...) @printf(i8* %124, double* %"mul4'de", i32 0)
  %126 = load double, double* %"'de", align 8, !node !2
  %127 = bitcast [30 x i8]* @"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" to i8*
  %128 = call i32 (i8*, ...) @printf(i8* %127, i32 54, double* %"'de")
  %129 = fadd fast double %126, %m0diffe, !node !2
  %130 = bitcast [48 x i8]* @"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %131 = call i32 (i8*, ...) @printf(i8* %130, i32 55, i32 54, i32 51)
  store double %129, double* %"'de", align 8
  %132 = bitcast [31 x i8]* @"ResultFormatStrIRR_Node: %x, Parent: %d, store\0A" to i8*
  %133 = call i32 (i8*, ...) @printf(i8* %132, double* %"'de", i32 55)
  %134 = load double, double* %"mul'de", align 8, !node !2
  %135 = bitcast [30 x i8]* @"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" to i8*
  %136 = call i32 (i8*, ...) @printf(i8* %135, i32 57, double* %"mul'de")
  %137 = fadd fast double %134, %m1diffemul, !node !2
  %138 = bitcast [48 x i8]* @"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %139 = call i32 (i8*, ...) @printf(i8* %138, i32 58, i32 57, i32 52)
  store double %137, double* %"mul'de", align 8
  %140 = bitcast [31 x i8]* @"ResultFormatStrIRR_Node: %x, Parent: %d, store\0A" to i8*
  %141 = call i32 (i8*, ...) @printf(i8* %140, double* %"mul'de", i32 58)
  %142 = load double, double* %"'de", align 8, !node !2
  %143 = bitcast [30 x i8]* @"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" to i8*
  %144 = call i32 (i8*, ...) @printf(i8* %143, i32 60, double* %"'de")
  %m0diffe1 = fmul fast double %142, %38, !node !2
  %145 = bitcast [48 x i8]* @"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %146 = call i32 (i8*, ...) @printf(i8* %145, i32 61, i32 60, i32 20)
  %m1diffe = fmul fast double %142, %38, !node !2
  %147 = bitcast [48 x i8]* @"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %148 = call i32 (i8*, ...) @printf(i8* %147, i32 62, i32 60, i32 20)
  store double 0.000000e+00, double* %"'de", align 8
  %149 = bitcast [31 x i8]* @"ResultFormatStrIRR_Node: %x, Parent: %d, store\0A" to i8*
  %150 = call i32 (i8*, ...) @printf(i8* %149, double* %"'de", i32 0)
  %151 = load double, double* %"'de2", align 8, !node !2
  %152 = bitcast [30 x i8]* @"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" to i8*
  %153 = call i32 (i8*, ...) @printf(i8* %152, i32 64, double* %"'de2")
  %154 = fadd fast double %151, %m0diffe1, !node !2
  %155 = bitcast [48 x i8]* @"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %156 = call i32 (i8*, ...) @printf(i8* %155, i32 65, i32 64, i32 61)
  store double %154, double* %"'de2", align 8
  %157 = bitcast [31 x i8]* @"ResultFormatStrIRR_Node: %x, Parent: %d, store\0A" to i8*
  %158 = call i32 (i8*, ...) @printf(i8* %157, double* %"'de2", i32 65)
  %159 = load double, double* %"'de2", align 8, !node !2
  %160 = bitcast [30 x i8]* @"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" to i8*
  %161 = call i32 (i8*, ...) @printf(i8* %160, i32 67, double* %"'de2")
  %162 = fadd fast double %159, %m1diffe, !node !2
  %163 = bitcast [48 x i8]* @"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %164 = call i32 (i8*, ...) @printf(i8* %163, i32 68, i32 67, i32 62)
  store double %162, double* %"'de2", align 8
  %165 = bitcast [31 x i8]* @"ResultFormatStrIRR_Node: %x, Parent: %d, store\0A" to i8*
  %166 = call i32 (i8*, ...) @printf(i8* %165, double* %"'de2", i32 68)
  %167 = load double, double* %"'de2", align 8, !node !2
  %168 = bitcast [30 x i8]* @"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" to i8*
  %169 = call i32 (i8*, ...) @printf(i8* %168, i32 70, double* %"'de2")
  %m0diffein_1 = fmul fast double %167, %in_1, !node !2
  %170 = bitcast [48 x i8]* @"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %171 = call i32 (i8*, ...) @printf(i8* %170, i32 71, i32 70, i32 0)
  %m1diffein_1 = fmul fast double %167, %in_1, !node !2
  %172 = bitcast [48 x i8]* @"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %173 = call i32 (i8*, ...) @printf(i8* %172, i32 72, i32 70, i32 0)
  store double 0.000000e+00, double* %"'de2", align 8
  %174 = bitcast [31 x i8]* @"ResultFormatStrIRR_Node: %x, Parent: %d, store\0A" to i8*
  %175 = call i32 (i8*, ...) @printf(i8* %174, double* %"'de2", i32 0)
  %176 = load double, double* %"in_1'de", align 8, !node !2
  %177 = bitcast [30 x i8]* @"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" to i8*
  %178 = call i32 (i8*, ...) @printf(i8* %177, i32 74, double* %"in_1'de")
  %179 = fadd fast double %176, %m0diffein_1, !node !2
  %180 = bitcast [48 x i8]* @"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %181 = call i32 (i8*, ...) @printf(i8* %180, i32 75, i32 74, i32 71)
  store double %179, double* %"in_1'de", align 8
  %182 = bitcast [31 x i8]* @"ResultFormatStrIRR_Node: %x, Parent: %d, store\0A" to i8*
  %183 = call i32 (i8*, ...) @printf(i8* %182, double* %"in_1'de", i32 75)
  %184 = load double, double* %"in_1'de", align 8, !node !2
  %185 = bitcast [30 x i8]* @"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" to i8*
  %186 = call i32 (i8*, ...) @printf(i8* %185, i32 77, double* %"in_1'de")
  %187 = fadd fast double %184, %m1diffein_1, !node !2
  %188 = bitcast [48 x i8]* @"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %189 = call i32 (i8*, ...) @printf(i8* %188, i32 78, i32 77, i32 72)
  store double %187, double* %"in_1'de", align 8
  %190 = bitcast [31 x i8]* @"ResultFormatStrIRR_Node: %x, Parent: %d, store\0A" to i8*
  %191 = call i32 (i8*, ...) @printf(i8* %190, double* %"in_1'de", i32 78)
  %192 = load double, double* %"mul'de", align 8, !node !2
  %193 = bitcast [30 x i8]* @"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" to i8*
  %194 = call i32 (i8*, ...) @printf(i8* %193, i32 80, double* %"mul'de")
  %m0diffein_0 = fmul fast double %192, %in_0, !node !2
  %195 = bitcast [48 x i8]* @"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %196 = call i32 (i8*, ...) @printf(i8* %195, i32 81, i32 80, i32 0)
  %m1diffein_0 = fmul fast double %192, %in_0, !node !2
  %197 = bitcast [48 x i8]* @"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %198 = call i32 (i8*, ...) @printf(i8* %197, i32 82, i32 80, i32 0)
  store double 0.000000e+00, double* %"mul'de", align 8
  %199 = bitcast [31 x i8]* @"ResultFormatStrIRR_Node: %x, Parent: %d, store\0A" to i8*
  %200 = call i32 (i8*, ...) @printf(i8* %199, double* %"mul'de", i32 0)
  %201 = load double, double* %"in_0'de", align 8, !node !2
  %202 = bitcast [30 x i8]* @"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" to i8*
  %203 = call i32 (i8*, ...) @printf(i8* %202, i32 84, double* %"in_0'de")
  %204 = fadd fast double %201, %m0diffein_0, !node !2
  %205 = bitcast [48 x i8]* @"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %206 = call i32 (i8*, ...) @printf(i8* %205, i32 85, i32 84, i32 81)
  store double %204, double* %"in_0'de", align 8
  %207 = bitcast [31 x i8]* @"ResultFormatStrIRR_Node: %x, Parent: %d, store\0A" to i8*
  %208 = call i32 (i8*, ...) @printf(i8* %207, double* %"in_0'de", i32 85)
  %209 = load double, double* %"in_0'de", align 8, !node !2
  %210 = bitcast [30 x i8]* @"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" to i8*
  %211 = call i32 (i8*, ...) @printf(i8* %210, i32 87, double* %"in_0'de")
  %212 = fadd fast double %209, %m1diffein_0, !node !2
  %213 = bitcast [48 x i8]* @"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, arithmetic\0A" to i8*
  %214 = call i32 (i8*, ...) @printf(i8* %213, i32 88, i32 87, i32 82)
  store double %212, double* %"in_0'de", align 8
  %215 = bitcast [31 x i8]* @"ResultFormatStrIRR_Node: %x, Parent: %d, store\0A" to i8*
  %216 = call i32 (i8*, ...) @printf(i8* %215, double* %"in_0'de", i32 88)
  %217 = load double, double* %"in_0'de", align 8, !node !2
  %218 = bitcast [30 x i8]* @"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" to i8*
  %219 = call i32 (i8*, ...) @printf(i8* %218, i32 90, double* %"in_0'de")
  %220 = load double, double* %"in_1'de", align 8, !node !2
  %221 = bitcast [30 x i8]* @"ResultFormatStrIRR_Node: %u, Parent: %x, load\0A" to i8*
  %222 = call i32 (i8*, ...) @printf(i8* %221, i32 91, double* %"in_1'de")
  %223 = insertvalue { double, double } undef, double %217, 0
  %224 = bitcast [37 x i8]* @"ResultFormatStrIR2R_Node: %u, Parent: %u, insertvalue\0A" to i8*
  %225 = call i32 (i8*, ...) @printf(i8* %224, i32 92, i32 90)
  %226 = insertvalue { double, double } %223, double %220, 1
  %227 = bitcast [49 x i8]* @"ResultFormatStrIR3R_Node: %u, Parent: %u, Parent: %u, insertvalue\0A" to i8*
  %228 = call i32 (i8*, ...) @printf(i8* %227, i32 93, i32 92, i32 91)
  ret { double, double } %226
}

declare i32 @printf(i8*, ...)

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
!2 = !{!"true"}
