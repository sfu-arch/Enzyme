; ModuleID = 'logsumexp-raw.ll'
source_filename = "logsumexp.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.adept::Stack" = type <{ %"class.adept::internal::StackStorageOrig", double*, %"class.std::vector", %"class.std::vector", %"class.std::__cxx11::list", %"struct.std::_List_iterator", i32, i32, i32, i32, i8, i8, i8, i8, i8, [3 x i8] }>
%"class.adept::internal::StackStorageOrig" = type { %"struct.adept::internal::Statement"*, double*, i32*, i32, i32, i32, i32 }
%"struct.adept::internal::Statement" = type { i32, i32 }
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { i32*, i32*, i32* }
%"class.std::__cxx11::list" = type { %"class.std::__cxx11::_List_base" }
%"class.std::__cxx11::_List_base" = type { %"struct.std::__cxx11::_List_base<adept::Gap, std::allocator<adept::Gap>>::_List_impl" }
%"struct.std::__cxx11::_List_base<adept::Gap, std::allocator<adept::Gap>>::_List_impl" = type { %"struct.std::__detail::_List_node_header" }
%"struct.std::__detail::_List_node_header" = type { %"struct.std::__detail::_List_node_base", i64 }
%"struct.std::__detail::_List_node_base" = type { %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"* }
%"struct.std::_List_iterator" = type { %"struct.std::__detail::_List_node_base"* }
%"struct.adept::internal::EndIndex" = type { i8 }
%"class.adept::internal::AllIndex" = type { i8 }
%"class.adept::invalid_operation" = type { %"class.adept::array_exception" }
%"class.adept::array_exception" = type { %"class.adept::exception" }
%"class.adept::exception" = type { %"class.std::exception", %"class.std::__cxx11::basic_string" }
%"class.std::exception" = type { i32 (...)** }
%"struct.adept::Gap" = type { i32, i32 }
%"struct.std::_List_node" = type { %"struct.std::__detail::_List_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [8 x i8] }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.adept::Array" = type { float*, %"class.adept::Storage"*, %"class.adept::ExpressionSize", %"class.adept::ExpressionSize" }
%"class.adept::Storage" = type opaque
%"class.adept::ExpressionSize" = type { [2 x i32] }
%"class.adept::SpecialMatrix" = type { float*, %"class.adept::Storage"*, i32, i32 }
%"class.adept::SpecialMatrix.9" = type { float*, %"class.adept::Storage"*, i32, i32 }
%"class.adept::Array.12" = type { double*, %"class.adept::Storage.14"*, %"class.adept::ExpressionSize", %"class.adept::ExpressionSize" }
%"class.adept::Storage.14" = type <{ double*, i32, i32, i32, [4 x i8] }>
%"class.adept::SpecialMatrix.15" = type { double*, %"class.adept::Storage.14"*, i32, i32 }
%"class.adept::SpecialMatrix.17" = type { double*, %"class.adept::Storage.14"*, i32, i32 }
%"struct.adept::Block" = type { [2 x double] }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { i32 (...)**, i64 }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.adept::Array.25" = type { float*, %"class.adept::Storage"*, %"class.adept::ExpressionSize.27", %"class.adept::ExpressionSize.27" }
%"class.adept::ExpressionSize.27" = type { [1 x i32] }
%"class.adept::Array.28" = type { double*, %"class.adept::Storage.14"*, %"class.adept::ExpressionSize.27", %"class.adept::ExpressionSize.27" }
%struct.timeval = type { i64, i64 }
%"class.adept::Active" = type <{ double, i32, [4 x i8] }>
%"class.adept::Array.30" = type { %"struct.adept::internal::GradientIndex.32", double*, %"class.adept::Storage.14"*, %"class.adept::ExpressionSize.27", %"class.adept::ExpressionSize.27" }
%"struct.adept::internal::GradientIndex.32" = type { i32 }
%"class.adept::ActiveConstReference" = type <{ double*, i32, [4 x i8] }>
%"struct.adept::internal::BinaryOperation" = type { %"struct.adept::internal::UnaryOperation", %"class.adept::Active"* }
%"struct.adept::internal::UnaryOperation" = type { %"class.adept::Active"* }
%"struct.adept::internal::UnaryOperation.38" = type { %"struct.adept::internal::BinaryOperation.39" }
%"struct.adept::internal::BinaryOperation.39" = type { %"struct.adept::internal::ArrayWrapper", %"class.adept::Active"* }
%"struct.adept::internal::ArrayWrapper" = type { double*, %"class.adept::Array.30"* }
%"struct.adept::Expression.34" = type { i8 }
%"struct.adept::Expression.37" = type { i8 }
%"struct.adept::Expression.35" = type { i8 }
%"class.adept::stack_already_active" = type { %"class.adept::autodiff_exception" }
%"class.adept::autodiff_exception" = type { %"class.adept::exception" }
%"class.adept::gradients_not_initialized" = type { %"class.adept::autodiff_exception" }
%"class.adept::feature_not_available" = type { %"class.adept::exception" }
%"class.adept::dependents_or_independents_not_identified" = type { %"class.adept::autodiff_exception" }
%"class.adept::invalid_dimension" = type { %"class.adept::array_exception" }
%"class.adept::gradient_out_of_range" = type { %"class.adept::autodiff_exception" }
%"class.std::bad_alloc" = type { %"class.std::exception" }

$_ZN5adept17invalid_operationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN5adept3invIfEENS_5ArrayILi2ET_Lb0EEERKS3_ = comdat any

$_ZN5adept3invIfLNS_8internal21SymmMatrixOrientationE0EEENS_13SpecialMatrixIT_NS1_10SymmEngineIXT0_EEELb0EEERKS7_ = comdat any

$_ZN5adept3invIfLNS_8internal21SymmMatrixOrientationE1EEENS_13SpecialMatrixIT_NS1_10SymmEngineIXT0_EEELb0EEERKS7_ = comdat any

$_ZN5adept3invIdEENS_5ArrayILi2ET_Lb0EEERKS3_ = comdat any

$_ZN5adept3invIdLNS_8internal21SymmMatrixOrientationE0EEENS_13SpecialMatrixIT_NS1_10SymmEngineIXT0_EEELb0EEERKS7_ = comdat any

$_ZN5adept3invIdLNS_8internal21SymmMatrixOrientationE1EEENS_13SpecialMatrixIT_NS1_10SymmEngineIXT0_EEELb0EEERKS7_ = comdat any

$_ZN5adept5solveIfEENS_5ArrayILi1ET_Lb0EEERKNS1_ILi2ES2_Lb0EEERKS3_ = comdat any

$_ZN5adept5solveIfLNS_8internal21SymmMatrixOrientationE0EEENS_5ArrayILi1ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_ = comdat any

$_ZN5adept5solveIfLNS_8internal21SymmMatrixOrientationE1EEENS_5ArrayILi1ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_ = comdat any

$_ZN5adept5solveIfEENS_5ArrayILi2ET_Lb0EEERKS3_S5_ = comdat any

$_ZN5adept5solveIfLNS_8internal21SymmMatrixOrientationE0EEENS_5ArrayILi2ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_ = comdat any

$_ZN5adept5solveIfLNS_8internal21SymmMatrixOrientationE1EEENS_5ArrayILi2ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_ = comdat any

$_ZN5adept5solveIdEENS_5ArrayILi1ET_Lb0EEERKNS1_ILi2ES2_Lb0EEERKS3_ = comdat any

$_ZN5adept5solveIdLNS_8internal21SymmMatrixOrientationE0EEENS_5ArrayILi1ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_ = comdat any

$_ZN5adept5solveIdLNS_8internal21SymmMatrixOrientationE1EEENS_5ArrayILi1ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_ = comdat any

$_ZN5adept5solveIdEENS_5ArrayILi2ET_Lb0EEERKS3_S5_ = comdat any

$_ZN5adept5solveIdLNS_8internal21SymmMatrixOrientationE0EEENS_5ArrayILi2ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_ = comdat any

$_ZN5adept5solveIdLNS_8internal21SymmMatrixOrientationE1EEENS_5ArrayILi2ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_ = comdat any

$_ZN5adept6ActiveIdEC2IdNS_20ActiveConstReferenceIdEEEERKNS_10ExpressionIT_T0_EEPNS_8internal9enable_ifIXaaeqsrS7_4rankLi0EsrS7_9is_activeEvE4typeE = comdat any

$_ZN5adept6ActiveIdEaSERKS1_ = comdat any

$_ZN5adept6ActiveIdED2Ev = comdat any

$_ZN5adept6ActiveIdEC2IdNS_8internal15BinaryOperationIdNS3_14UnaryOperationIdNS3_3LogES1_EENS3_3AddES1_EEEERKNS_10ExpressionIT_T0_EEPNS3_9enable_ifIXaaeqsrSC_4rankLi0EsrSC_9is_activeEvE4typeE = comdat any

$_ZN5adept17invalid_operationD0Ev = comdat any

$_ZNK5adept9exception4whatEv = comdat any

$_ZN5adept15array_exceptionD0Ev = comdat any

$_ZN5adept9exceptionD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN5adept20stack_already_activeD0Ev = comdat any

$_ZN5adept25gradients_not_initializedD0Ev = comdat any

$_ZN5adept21feature_not_availableD0Ev = comdat any

$_ZN5adept41dependents_or_independents_not_identifiedD0Ev = comdat any

$_ZN5adept5StackC2Eb = comdat any

$_ZN5adept5Stack13new_recordingEv = comdat any

$_ZN5adept5ArrayILi1EdLb1EE6resizeEPKib = comdat any

$_ZN5adept7StorageIdE11remove_linkEv = comdat any

$_ZN5adept8internal18exception_locationB5cxx11EPKci = comdat any

$_ZN5adept17invalid_dimensionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN5adept17invalid_dimensionD0Ev = comdat any

$_ZN5adept5Stack13set_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPKS4_ = comdat any

$_ZN5adept21gradient_out_of_rangeD0Ev = comdat any

$_ZNK5adept5Stack13get_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPS4_ = comdat any

$_ZN5adept5ArrayILi1EdLb0EE6resizeEPKib = comdat any

$_ZN5adept8internal13reduce_activeINS0_3SumIdEEdNS0_14UnaryOperationIdNS0_3ExpENS0_15BinaryOperationIdNS_5ArrayILi1EdLb1EEENS0_8SubtractENS_6ActiveIdEEEEEEEEvRKNS_10ExpressionIT0_T1_EERNSA_ISF_EE = comdat any

$_ZN5adept9exceptionD2Ev = comdat any

$_ZTWN5adept21_stack_current_threadE = comdat any

$_ZTSN5adept17invalid_operationE = comdat any

$_ZTSN5adept15array_exceptionE = comdat any

$_ZTSN5adept9exceptionE = comdat any

$_ZTIN5adept9exceptionE = comdat any

$_ZTIN5adept15array_exceptionE = comdat any

$_ZTIN5adept17invalid_operationE = comdat any

$_ZTSN5adept20stack_already_activeE = comdat any

$_ZTSN5adept18autodiff_exceptionE = comdat any

$_ZTIN5adept18autodiff_exceptionE = comdat any

$_ZTIN5adept20stack_already_activeE = comdat any

$_ZTSN5adept25gradients_not_initializedE = comdat any

$_ZTIN5adept25gradients_not_initializedE = comdat any

$_ZTSN5adept21feature_not_availableE = comdat any

$_ZTIN5adept21feature_not_availableE = comdat any

$_ZTSN5adept41dependents_or_independents_not_identifiedE = comdat any

$_ZTIN5adept41dependents_or_independents_not_identifiedE = comdat any

$_ZTVN5adept17invalid_operationE = comdat any

$_ZTVN5adept15array_exceptionE = comdat any

$_ZTVN5adept9exceptionE = comdat any

$_ZTVN5adept20stack_already_activeE = comdat any

$_ZTVN5adept25gradients_not_initializedE = comdat any

$_ZTVN5adept21feature_not_availableE = comdat any

$_ZTVN5adept41dependents_or_independents_not_identifiedE = comdat any

$_ZTSN5adept17invalid_dimensionE = comdat any

$_ZTIN5adept17invalid_dimensionE = comdat any

$_ZTVN5adept17invalid_dimensionE = comdat any

$_ZTSN5adept21gradient_out_of_rangeE = comdat any

$_ZTIN5adept21gradient_out_of_rangeE = comdat any

$_ZTVN5adept21gradient_out_of_rangeE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@_ZN5adept8internal21array_row_major_orderE = dso_local local_unnamed_addr global i8 1, align 1
@_ZN5adept8internal17array_print_styleE = dso_local local_unnamed_addr global i32 2, align 4
@_ZN5adept8internal16vector_separatorB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@_ZN5adept8internal19vector_print_beforeB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.3 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@_ZN5adept8internal18vector_print_afterB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@_ZN5adept8internal21array_opening_bracketB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN5adept8internal21array_closing_bracketB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN5adept8internal26array_contiguous_separatorB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@_ZN5adept8internal18array_print_beforeB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.12 = private unnamed_addr constant [3 x i8] c"\0A{\00", align 1
@_ZN5adept8internal17array_print_afterB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN5adept8internal24array_print_empty_beforeB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.15 = private unnamed_addr constant [13 x i8] c"(empty rank-\00", align 1
@_ZN5adept8internal23array_print_empty_afterB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@.str.17 = private unnamed_addr constant [8 x i8] c" array)\00", align 1
@_ZN5adept8internal18array_print_indentE = dso_local local_unnamed_addr global i8 1, align 1
@_ZN5adept8internal22array_print_empty_rankE = dso_local local_unnamed_addr global i8 1, align 1
@.str.18 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"Array print style not understood\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSN5adept17invalid_operationE = linkonce_odr dso_local constant [28 x i8] c"N5adept17invalid_operationE\00", comdat, align 1
@_ZTSN5adept15array_exceptionE = linkonce_odr dso_local constant [26 x i8] c"N5adept15array_exceptionE\00", comdat, align 1
@_ZTSN5adept9exceptionE = linkonce_odr dso_local constant [19 x i8] c"N5adept9exceptionE\00", comdat, align 1
@_ZTISt9exception = external dso_local constant i8*
@_ZTIN5adept9exceptionE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @_ZTSN5adept9exceptionE, i32 0, i32 0), i8* bitcast (i8** @_ZTISt9exception to i8*) }, comdat, align 8
@_ZTIN5adept15array_exceptionE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @_ZTSN5adept15array_exceptionE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept9exceptionE to i8*) }, comdat, align 8
@_ZTIN5adept17invalid_operationE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_ZTSN5adept17invalid_operationE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept15array_exceptionE to i8*) }, comdat, align 8
@_ZN5adept21_stack_current_threadE = dso_local thread_local global %"class.adept::Stack"* null, align 8
@_ZN5adept28_stack_current_thread_unsafeE = dso_local local_unnamed_addr global %"class.adept::Stack"* null, align 8
@.str.26 = private unnamed_addr constant [78 x i8] c"Attempt to activate an adept::Stack when one is already active in this thread\00", align 1
@_ZTSN5adept20stack_already_activeE = linkonce_odr dso_local constant [31 x i8] c"N5adept20stack_already_activeE\00", comdat, align 1
@_ZTSN5adept18autodiff_exceptionE = linkonce_odr dso_local constant [29 x i8] c"N5adept18autodiff_exceptionE\00", comdat, align 1
@_ZTIN5adept18autodiff_exceptionE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @_ZTSN5adept18autodiff_exceptionE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept9exceptionE to i8*) }, comdat, align 8
@_ZTIN5adept20stack_already_activeE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @_ZTSN5adept20stack_already_activeE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept18autodiff_exceptionE to i8*) }, comdat, align 8
@.str.27 = private unnamed_addr constant [107 x i8] c"Gradients not initialized: at least one call to set_gradient(s) is needed before a forward or reverse pass\00", align 1
@_ZTSN5adept25gradients_not_initializedE = linkonce_odr dso_local constant [36 x i8] c"N5adept25gradients_not_initializedE\00", comdat, align 1
@_ZTIN5adept25gradients_not_initializedE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @_ZTSN5adept25gradients_not_initializedE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept18autodiff_exceptionE to i8*) }, comdat, align 8
@.str.28 = private unnamed_addr constant [5 x i8] c": d[\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"] = \00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"0\0A\00", align 1
@.str.31 = private unnamed_addr constant [4 x i8] c" + \00", align 1
@.str.32 = private unnamed_addr constant [4 x i8] c"*d[\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.34 = private unnamed_addr constant [26 x i8] c"No gradients initialized\0A\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.36 = private unnamed_addr constant [42 x i8] c"Automatic Differentiation Stack (address \00", align 1
@.str.37 = private unnamed_addr constant [4 x i8] c"):\0A\00", align 1
@.str.38 = private unnamed_addr constant [37 x i8] c"   Currently attached - thread safe\0A\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"   Currently attached - thread unsafe\0A\00", align 1
@.str.40 = private unnamed_addr constant [23 x i8] c"   Currently detached\0A\00", align 1
@.str.41 = private unnamed_addr constant [22 x i8] c"   Recording status:\0A\00", align 1
@.str.42 = private unnamed_addr constant [23 x i8] c"      Recording is ON\0A\00", align 1
@.str.43 = private unnamed_addr constant [27 x i8] c"      Recording is PAUSED\0A\00", align 1
@.str.44 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.45 = private unnamed_addr constant [14 x i8] c" statements (\00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c" allocated)\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c" and \00", align 1
@.str.48 = private unnamed_addr constant [14 x i8] c" operations (\00", align 1
@.str.49 = private unnamed_addr constant [13 x i8] c" allocated)\0A\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c" gradients currently registered \00", align 1
@.str.51 = private unnamed_addr constant [16 x i8] c"and a total of \00", align 1
@.str.52 = private unnamed_addr constant [24 x i8] c" needed (current index \00", align 1
@.str.53 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.54 = private unnamed_addr constant [33 x i8] c"      Gradient list has no gaps\0A\00", align 1
@.str.55 = private unnamed_addr constant [25 x i8] c"      Gradient list has \00", align 1
@.str.56 = private unnamed_addr constant [8 x i8] c" gaps (\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"   Computation status:\0A\00", align 1
@.str.58 = private unnamed_addr constant [22 x i8] c" gradients assigned (\00", align 1
@.str.59 = private unnamed_addr constant [29 x i8] c"      0 gradients assigned (\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"      Jacobian size: \00", align 1
@.str.61 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.62 = private unnamed_addr constant [27 x i8] c"      Independent indices:\00", align 1
@.str.63 = private unnamed_addr constant [28 x i8] c"\0A      Dependent indices:  \00", align 1
@.str.64 = private unnamed_addr constant [51 x i8] c"      Parallel Jacobian calculation not available\0A\00", align 1
@_ZN5adept8internal26n_storage_objects_created_E = dso_local local_unnamed_addr global i32 0, align 4
@_ZN5adept8internal26n_storage_objects_deleted_E = dso_local local_unnamed_addr global i32 0, align 4
@.str.65 = private unnamed_addr constant [74 x i8] c"Cannot perform matrix-matrix multiplication because compiled without BLAS\00", align 1
@_ZTSN5adept21feature_not_availableE = linkonce_odr dso_local constant [32 x i8] c"N5adept21feature_not_availableE\00", comdat, align 1
@_ZTIN5adept21feature_not_availableE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @_ZTSN5adept21feature_not_availableE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept9exceptionE to i8*) }, comdat, align 8
@.str.66 = private unnamed_addr constant [74 x i8] c"Cannot perform matrix-vector multiplication because compiled without BLAS\00", align 1
@.str.67 = private unnamed_addr constant [84 x i8] c"Cannot perform symmetric matrix-matrix multiplication because compiled without BLAS\00", align 1
@.str.68 = private unnamed_addr constant [84 x i8] c"Cannot perform symmetric matrix-vector multiplication because compiled without BLAS\00", align 1
@.str.69 = private unnamed_addr constant [79 x i8] c"Cannot perform band matrix-vector multiplication because compiled without BLAS\00", align 1
@_ZN5adept3endE = dso_local local_unnamed_addr global %"struct.adept::internal::EndIndex" zeroinitializer, align 1
@_ZN5adept2__E = dso_local local_unnamed_addr global %"class.adept::internal::AllIndex" zeroinitializer, align 1
@.str.70 = private unnamed_addr constant [53 x i8] c"Cannot invert matrix because compiled without LAPACK\00", align 1
@.str.71 = private unnamed_addr constant [80 x i8] c"Dependent or independent variables not identified before a Jacobian computation\00", align 1
@_ZTSN5adept41dependents_or_independents_not_identifiedE = linkonce_odr dso_local constant [52 x i8] c"N5adept41dependents_or_independents_not_identifiedE\00", comdat, align 1
@_ZTIN5adept41dependents_or_independents_not_identifiedE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @_ZTSN5adept41dependents_or_independents_not_identifiedE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept18autodiff_exceptionE to i8*) }, comdat, align 8
@.str.72 = private unnamed_addr constant [6 x i8] c"2.0.6\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c" [4.2.1]\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"Adept version \00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"  Compiled with \00", align 1
@.str.78 = private unnamed_addr constant [19 x i8] c"  Compiler flags \22\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.80 = private unnamed_addr constant [41 x i8] c"  Jacobians processed in blocks of size \00", align 1
@.str.81 = private unnamed_addr constant [62 x i8] c"Cannot solve linear equations because compiled without LAPACK\00", align 1
@.str.82 = private unnamed_addr constant [47 x i8] c"linspace(x1,x2,n) with n=1 only valid if x1=x2\00", align 1
@.str.83 = private unnamed_addr constant [19 x i8] c"usage %s n repeat\0A\00", align 1
@.str.84 = private unnamed_addr constant [28 x i8] c"A misuse of arrays occurred\00", align 1
@_ZTVN5adept17invalid_operationE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_operationE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::invalid_operation"*)* @_ZN5adept17invalid_operationD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTVN5adept15array_exceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept15array_exceptionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::array_exception"*)* @_ZN5adept15array_exceptionD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTVN5adept9exceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept9exceptionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTVN5adept20stack_already_activeE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept20stack_already_activeE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::stack_already_active"*)* @_ZN5adept20stack_already_activeD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTVN5adept25gradients_not_initializedE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept25gradients_not_initializedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::gradients_not_initialized"*)* @_ZN5adept25gradients_not_initializedD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTVN5adept21feature_not_availableE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::feature_not_available"*)* @_ZN5adept21feature_not_availableD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTVN5adept41dependents_or_independents_not_identifiedE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept41dependents_or_independents_not_identifiedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::dependents_or_independents_not_identified"*)* @_ZN5adept41dependents_or_independents_not_identifiedD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@.str.85 = private unnamed_addr constant [42 x i8] c"adept2 forward (recording) %0.6f res'=%f\0A\00", align 1
@.str.86 = private unnamed_addr constant [38 x i8] c"adept2 forward reverse %0.6f res'=%f\0A\00", align 1
@.str.87 = private unnamed_addr constant [35 x i8] c"Negative array dimension requested\00", align 1
@.str.88 = private unnamed_addr constant [89 x i8] c"/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src/adept2/include/adept/Array.h\00", align 1
@_ZTSN5adept17invalid_dimensionE = linkonce_odr dso_local constant [28 x i8] c"N5adept17invalid_dimensionE\00", comdat, align 1
@_ZTIN5adept17invalid_dimensionE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_ZTSN5adept17invalid_dimensionE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept15array_exceptionE to i8*) }, comdat, align 8
@.str.89 = private unnamed_addr constant [58 x i8] c"Attempt to remove more links to a storage object than set\00", align 1
@.str.90 = private unnamed_addr constant [91 x i8] c"/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src/adept2/include/adept/Storage.h\00", align 1
@.str.93 = private unnamed_addr constant [6 x i8] c" (in \00", align 1
@.str.94 = private unnamed_addr constant [2 x i8] c")\00", align 1
@_ZTVN5adept17invalid_dimensionE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_dimensionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::invalid_dimension"*)* @_ZN5adept17invalid_dimensionD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@.str.95 = private unnamed_addr constant [99 x i8] c"Gradient index out of range: probably aReal objects have been created after a set_gradient(s) call\00", align 1
@_ZTSN5adept21gradient_out_of_rangeE = linkonce_odr dso_local constant [32 x i8] c"N5adept21gradient_out_of_rangeE\00", comdat, align 1
@_ZTIN5adept21gradient_out_of_rangeE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @_ZTSN5adept21gradient_out_of_rangeE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept18autodiff_exceptionE to i8*) }, comdat, align 8
@_ZTVN5adept21gradient_out_of_rangeE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21gradient_out_of_rangeE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::gradient_out_of_range"*)* @_ZN5adept21gradient_out_of_rangeD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@.str.96 = private unnamed_addr constant [32 x i8] c"tapenade forward %0.6f res'=%f\0A\00", align 1
@.str.97 = private unnamed_addr constant [44 x i8] c"tapenade forward and reverse %0.6f res'=%f\0A\00", align 1
@.str.98 = private unnamed_addr constant [30 x i8] c"enzyme forward %0.6f res'=%f\0A\00", align 1
@.str.99 = private unnamed_addr constant [42 x i8] c"enzyme forward and reverse %0.6f res'=%f\0A\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x i8*], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTISt9bad_alloc = external dso_local constant i8*
@_ZTVSt9bad_alloc = external dso_local unnamed_addr constant { [5 x i8*] }, align 8
@.str.101 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_logsumexp.cpp, i8* null }]

@_ZN5adept5StackD1Ev = dso_local unnamed_addr alias void (%"class.adept::Stack"*), void (%"class.adept::Stack"*)* @_ZN5adept5StackD2Ev
@_ZN5adept8internal16StackStorageOrigD1Ev = dso_local unnamed_addr alias void (%"class.adept::internal::StackStorageOrig"*), void (%"class.adept::internal::StackStorageOrig"*)* @_ZN5adept8internal16StackStorageOrigD2Ev

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1)) unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1)) unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #3

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #3

; Function Attrs: nounwind uwtable
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32)) unnamed_addr #4 align 2

; Function Attrs: uwtable
define dso_local void @_ZN5adept21set_array_print_styleENS_15ArrayPrintStyleE(i32 %ps) local_unnamed_addr #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  switch i32 %ps, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 3, label %sw.bb23
    i32 2, label %sw.bb35
  ]

sw.bb:                                            ; preds = %entry
  %0 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i64 %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %1 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i57 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i64 %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %2 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i59 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i64 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %3 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i61 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i64 %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %4 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i63 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i64 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %5 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i65 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i64 %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %6 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i67 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i64 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
  %7 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i69 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i64 %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %8 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i71 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i64 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %9 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i73 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i64 %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i64 12)
  %10 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i75 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i64 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i64 7)
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %11 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i77 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i64 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2)
  %12 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i79 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i64 %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %13 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i81 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i64 %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %14 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i83 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i64 %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %15 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i85 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i64 %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %16 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i87 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i64 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2)
  %17 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i89 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i64 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
  %18 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i91 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i64 %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %19 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i93 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i64 %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %20 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i95 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i64 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i64 5)
  %21 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i97 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i64 %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %22 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i99 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i64 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %23 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i101 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i64 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1)
  %24 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i103 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i64 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i64 1)
  %25 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i105 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i64 %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %26 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i107 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i64 %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %27 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i109 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i64 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %28 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i111 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i64 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i64 2)
  %29 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i113 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i64 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1)
  %30 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i115 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i64 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i64 1)
  %31 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i117 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i64 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1)
  %32 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i119 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i64 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i64 1)
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  %33 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i121 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i64 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2)
  %34 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i123 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i64 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 1)
  %35 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i125 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i64 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
  %36 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i127 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i64 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 1)
  %37 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i129 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i64 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
  %38 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i131 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i64 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2)
  %39 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i133 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i64 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 2)
  %40 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i135 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i64 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i64 2)
  %41 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i137 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i64 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
  %42 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i139 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i64 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i64 12)
  %43 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  %call3.i.i141 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i64 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i64 7)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %44 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %44) #32
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %46 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %45, %union.anon** %46, align 8, !tbaa !9
  %47 = bitcast %union.anon* %45 to i8*
  %48 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48) #32
  store i64 32, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i142 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %sw.default
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i142, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %49 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %49, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(32) %call5.i.i.i9.i142, i8* nonnull align 1 dereferenceable(32) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0), i64 32, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %49, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %50 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %50, i64 %49
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48) #32
  %51 = bitcast i8* %exception to %"class.adept::invalid_operation"*
  invoke void @_ZN5adept17invalid_operationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %51, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont49 unwind label %lpad48

invoke.cont49:                                    ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_operationE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad48

ehcleanup.thread:                                 ; preds = %sw.default
  %52 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %44) #32
  br label %cleanup.action

lpad48:                                           ; preds = %invoke.cont49, %call5.i.i.i9.i.noexc
  %cleanup.isactive.0 = phi i1 [ false, %invoke.cont49 ], [ true, %call5.i.i.i9.i.noexc ]
  %53 = landingpad { i8*, i32 }
          cleanup
  %54 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %54, %47
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i

if.then.i.i:                                      ; preds = %lpad48
  call void @_ZdlPv(i8* %54) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %44) #32
  br i1 %cleanup.isactive.0, label %cleanup.action, label %eh.resume

ehcleanup:                                        ; preds = %lpad48
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %44) #32
  br i1 %cleanup.isactive.0, label %cleanup.action, label %eh.resume

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i, %ehcleanup.thread
  %.pn146 = phi { i8*, i32 } [ %52, %ehcleanup.thread ], [ %53, %ehcleanup ], [ %53, %if.then.i.i ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

sw.epilog:                                        ; preds = %sw.bb35, %sw.bb23, %sw.bb11, %sw.bb
  %.sink147 = phi i8 [ 1, %sw.bb35 ], [ 1, %sw.bb23 ], [ 0, %sw.bb11 ], [ 0, %sw.bb ]
  %.sink = phi i8 [ 1, %sw.bb35 ], [ 0, %sw.bb23 ], [ 0, %sw.bb11 ], [ 1, %sw.bb ]
  store i8 %.sink147, i8* @_ZN5adept8internal18array_print_indentE, align 1, !tbaa !13
  store i8 %.sink, i8* @_ZN5adept8internal22array_print_empty_rankE, align 1, !tbaa !13
  store i32 %ps, i32* @_ZN5adept8internal17array_print_styleE, align 4, !tbaa !15
  ret void

eh.resume:                                        ; preds = %cleanup.action, %ehcleanup, %if.then.i.i
  %.pn145 = phi { i8*, i32 } [ %53, %ehcleanup ], [ %.pn146, %cleanup.action ], [ %53, %if.then.i.i ]
  resume { i8*, i32 } %.pn145

unreachable:                                      ; preds = %invoke.cont49
  unreachable
}

declare dso_local i8* @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept17invalid_operationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %this, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %message) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 27, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i15 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %lpad

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i15, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(27) %call5.i.i.i9.i15, i8* nonnull align 1 dereferenceable(27) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.84, i64 0, i64 0), i64 27, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %6 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %7 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %message_.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1
  %8 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %message_.i.i to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i.i, align 8, !tbaa !2
  %.cast.i.i.i = bitcast %union.anon* %8 to i8*
  store i8 0, i8* %.cast.i.i.i, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept15array_exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %10 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !17
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %11 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %11, %.cast.i.i.i
  br i1 %cmp.i.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %11) #32
  br label %_ZN5adept9exceptionD2Ev.exit.i

_ZN5adept9exceptionD2Ev.exit.i:                   ; preds = %if.then.i.i.i.i, %lpad.i
  %12 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %12) #32
  %13 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i18 = icmp eq i8* %13, %3
  br i1 %cmp.i.i.i18, label %ehcleanup, label %if.then.i.i19

invoke.cont4:                                     ; preds = %call5.i.i.i9.i.noexc
  %14 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %14, %3
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont4
  call void @_ZdlPv(i8* %14) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %invoke.cont4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept17invalid_operationE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %message)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

lpad:                                             ; preds = %entry
  %15 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

if.then.i.i19:                                    ; preds = %_ZN5adept9exceptionD2Ev.exit.i
  call void @_ZdlPv(i8* %13) #32
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i19, %lpad, %_ZN5adept9exceptionD2Ev.exit.i
  %.pn = phi { i8*, i32 } [ %15, %lpad ], [ %10, %_ZN5adept9exceptionD2Ev.exit.i ], [ %10, %if.then.i.i19 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

lpad7:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %16 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !17
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %17 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i.i = icmp eq i8* %17, %.cast.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lpad7
  call void @_ZdlPv(i8* %17) #32
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %lpad7
  %18 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %18) #32
  br label %eh.resume

eh.resume:                                        ; preds = %_ZN5adept9exceptionD2Ev.exit, %ehcleanup
  %.pn12 = phi { i8*, i32 } [ %16, %_ZN5adept9exceptionD2Ev.exit ], [ %.pn, %ehcleanup ]
  resume { i8*, i32 } %.pn12
}

declare dso_local void @__cxa_throw(i8*, i8*, i8*) local_unnamed_addr

declare dso_local void @__cxa_free_exception(i8*) local_unnamed_addr

; Function Attrs: nounwind uwtable
define dso_local void @_ZN5adept5StackD2Ev(%"class.adept::Stack"* nonnull readonly dereferenceable(149) %this) unnamed_addr #4 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %is_thread_unsafe_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 11
  %0 = load i8, i8* %is_thread_unsafe_, align 1, !tbaa !19, !range !25
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept28_stack_current_thread_unsafeE, align 8, !tbaa !26
  %cmp = icmp eq %"class.adept::Stack"* %1, %this
  br i1 %cmp, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.then
  store %"class.adept::Stack"* null, %"class.adept::Stack"** @_ZN5adept28_stack_current_thread_unsafeE, align 8, !tbaa !26
  br label %if.end6

if.else:                                          ; preds = %entry
  %2 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %cmp3 = icmp eq %"class.adept::Stack"* %2, %this
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.else
  store %"class.adept::Stack"* null, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.else, %if.then2, %if.then
  %gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
  %3 = load double*, double** %gradient_, align 8, !tbaa !27
  %tobool7.not = icmp eq double* %3, null
  br i1 %tobool7.not, label %if.end10, label %delete.notnull

delete.notnull:                                   ; preds = %if.end6
  %4 = bitcast double* %3 to i8*
  tail call void @_ZdaPv(i8* %4) #34
  br label %if.end10

if.end10:                                         ; preds = %delete.notnull, %if.end6
  %5 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0
  %6 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i64 0, i32 0, i32 0, i32 0
  %_M_next.i.i = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i64 0, i32 0, i32 0, i32 0, i32 0
  %7 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i, align 8, !tbaa !28
  %cmp.not12.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %7, %6
  br i1 %cmp.not12.i.i, label %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit, label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end10, %while.body.i.i
  %__cur.013.i.i = phi %"struct.std::__detail::_List_node_base"* [ %8, %while.body.i.i ], [ %7, %if.end10 ]
  %_M_next4.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %__cur.013.i.i, i64 0, i32 0
  %8 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next4.i.i, align 8, !tbaa !28
  %9 = bitcast %"struct.std::__detail::_List_node_base"* %__cur.013.i.i to i8*
  tail call void @_ZdlPv(i8* %9) #32
  %cmp.not.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %8, %6
  br i1 %cmp.not.i.i, label %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit, label %while.body.i.i, !llvm.loop !30

_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit: ; preds = %while.body.i.i, %if.end10
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %10 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
  %tobool.not.i.i.i = icmp eq i32* %10, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit
  %11 = bitcast i32* %10 to i8*
  tail call void @_ZdlPv(i8* nonnull %11) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %if.then.i.i.i, %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit
  %_M_start.i.i11 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %12 = load i32*, i32** %_M_start.i.i11, align 8, !tbaa !33
  %tobool.not.i.i.i12 = icmp eq i32* %12, null
  br i1 %tobool.not.i.i.i12, label %_ZNSt6vectorIiSaIiEED2Ev.exit14, label %if.then.i.i.i13

if.then.i.i.i13:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %13 = bitcast i32* %12 to i8*
  tail call void @_ZdlPv(i8* nonnull %13) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit14

_ZNSt6vectorIiSaIiEED2Ev.exit14:                  ; preds = %if.then.i.i.i13, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %statement_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %14 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i, align 8, !tbaa !35
  %tobool.not.i = icmp eq %"struct.adept::internal::Statement"* %14, null
  br i1 %tobool.not.i, label %if.end.i, label %delete.notnull.i

delete.notnull.i:                                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit14
  %15 = bitcast %"struct.adept::internal::Statement"* %14 to i8*
  tail call void @_ZdaPv(i8* %15) #34
  br label %if.end.i

if.end.i:                                         ; preds = %delete.notnull.i, %_ZNSt6vectorIiSaIiEED2Ev.exit14
  %multiplier_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %16 = load double*, double** %multiplier_.i, align 8, !tbaa !37
  %tobool3.not.i = icmp eq double* %16, null
  br i1 %tobool3.not.i, label %if.end9.i, label %delete.notnull7.i

delete.notnull7.i:                                ; preds = %if.end.i
  %17 = bitcast double* %16 to i8*
  tail call void @_ZdaPv(i8* %17) #34
  br label %if.end9.i

if.end9.i:                                        ; preds = %delete.notnull7.i, %if.end.i
  %index_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %18 = load i32*, i32** %index_.i, align 8, !tbaa !38
  %tobool10.not.i = icmp eq i32* %18, null
  br i1 %tobool10.not.i, label %_ZN5adept8internal16StackStorageOrigD2Ev.exit, label %delete.notnull14.i

delete.notnull14.i:                               ; preds = %if.end9.i
  %19 = bitcast i32* %18 to i8*
  tail call void @_ZdaPv(i8* %19) #34
  br label %_ZN5adept8internal16StackStorageOrigD2Ev.exit

_ZN5adept8internal16StackStorageOrigD2Ev.exit:    ; preds = %delete.notnull14.i, %if.end9.i
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) local_unnamed_addr #6

; Function Attrs: nounwind uwtable
define dso_local void @_ZN5adept8internal16StackStorageOrigD2Ev(%"class.adept::internal::StackStorageOrig"* nocapture nonnull readonly dereferenceable(40) %this) unnamed_addr #4 align 2 {
entry:
  %statement_ = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %this, i64 0, i32 0
  %0 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !35
  %tobool.not = icmp eq %"struct.adept::internal::Statement"* %0, null
  br i1 %tobool.not, label %if.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %1 = bitcast %"struct.adept::internal::Statement"* %0 to i8*
  tail call void @_ZdaPv(i8* %1) #34
  br label %if.end

if.end:                                           ; preds = %delete.notnull, %entry
  %multiplier_ = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %this, i64 0, i32 1
  %2 = load double*, double** %multiplier_, align 8, !tbaa !37
  %tobool3.not = icmp eq double* %2, null
  br i1 %tobool3.not, label %if.end9, label %delete.notnull7

delete.notnull7:                                  ; preds = %if.end
  %3 = bitcast double* %2 to i8*
  tail call void @_ZdaPv(i8* %3) #34
  br label %if.end9

if.end9:                                          ; preds = %delete.notnull7, %if.end
  %index_ = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %this, i64 0, i32 2
  %4 = load i32*, i32** %index_, align 8, !tbaa !38
  %tobool10.not = icmp eq i32* %4, null
  br i1 %tobool10.not, label %if.end16, label %delete.notnull14

delete.notnull14:                                 ; preds = %if.end9
  %5 = bitcast i32* %4 to i8*
  tail call void @_ZdaPv(i8* %5) #34
  br label %if.end16

if.end16:                                         ; preds = %delete.notnull14, %if.end9
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack8activateEv(%"class.adept::Stack"* nonnull dereferenceable(149) %this) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %is_thread_unsafe_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 11
  %0 = load i8, i8* %is_thread_unsafe_, align 1, !tbaa !19, !range !25
  %tobool = icmp ne i8 %0, 0
  %1 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept28_stack_current_thread_unsafeE, align 8
  %tobool2 = icmp ne %"class.adept::Stack"* %1, null
  %or.cond = and i1 %tobool, %tobool2
  %cmp = icmp ne %"class.adept::Stack"* %1, %this
  %or.cond22 = and i1 %cmp, %or.cond
  br i1 %or.cond22, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %tobool5.not = xor i1 %tobool, true
  %2 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8
  %tobool7 = icmp ne %"class.adept::Stack"* %2, null
  %or.cond23 = and i1 %tobool7, %tobool5.not
  %cmp9 = icmp ne %"class.adept::Stack"* %2, %this
  %or.cond24 = and i1 %cmp9, %or.cond23
  br i1 %or.cond24, label %if.then, label %if.else

if.then:                                          ; preds = %lor.lhs.false, %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #32
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %5 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %4, %union.anon** %5, align 8, !tbaa !9
  %6 = bitcast %union.anon* %4 to i8*
  %7 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #32
  store i64 77, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i26 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %if.then
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i26, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %8 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %8, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(77) %call5.i.i.i9.i26, i8* nonnull align 1 dereferenceable(77) getelementptr inbounds ([78 x i8], [78 x i8]* @.str.26, i64 0, i64 0), i64 77, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %8, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i26, i64 %8
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #32
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %9 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %10 = getelementptr inbounds i8, i8* %exception, i64 24
  %11 = bitcast i8* %message_.i.i.i to i8**
  store i8* %10, i8** %11, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i.i27 = getelementptr inbounds i8, i8* %exception, i64 16
  %12 = bitcast i8* %_M_string_length.i.i.i.i.i.i27 to i64*
  store i64 0, i64* %12, align 8, !tbaa !2
  store i8 0, i8* %10, align 1, !tbaa !12
  %13 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept20stack_already_activeE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %13, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %9, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont12 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %14 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %13, align 8, !tbaa !17
  %15 = load i8*, i8** %11, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %15, %10
  br i1 %cmp.i.i.i.i.i, label %lpad11.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %15) #32
  br label %lpad11.body

invoke.cont12:                                    ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept20stack_already_activeE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad11.body.thread

ehcleanup.thread:                                 ; preds = %if.then
  %16 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #32
  br label %cleanup.action

lpad11.body:                                      ; preds = %if.then.i.i.i.i, %lpad.i
  %17 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %17) #32
  %18 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %18, %6
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad11.body
  call void @_ZdlPv(i8* %18) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #32
  br label %cleanup.action

lpad11.body.thread:                               ; preds = %invoke.cont12
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i34 = icmp eq i8* %20, %6
  br i1 %cmp.i.i.i34, label %ehcleanup.thread39, label %if.then.i.i

ehcleanup.thread39:                               ; preds = %lpad11.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad11.body.thread
  call void @_ZdlPv(i8* %20) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad11.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn31 = phi { i8*, i32 } [ %16, %ehcleanup.thread ], [ %14, %ehcleanup ], [ %14, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

if.else:                                          ; preds = %lor.lhs.false
  %_ZN5adept21_stack_current_threadE.sink = select i1 %tobool, %"class.adept::Stack"** @_ZN5adept28_stack_current_thread_unsafeE, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE
  store %"class.adept::Stack"* %this, %"class.adept::Stack"** %_ZN5adept21_stack_current_threadE.sink, align 8, !tbaa !26
  ret void

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread39
  %.pn30 = phi { i8*, i32 } [ %.pn31, %cleanup.action ], [ %19, %if.then.i.i ], [ %19, %ehcleanup.thread39 ]
  resume { i8*, i32 } %.pn30

unreachable:                                      ; preds = %invoke.cont12
  unreachable
}

; Function Attrs: norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local i32 @_ZN5adept5Stack24set_max_jacobian_threadsEi(%"class.adept::Stack"* nocapture nonnull readnone dereferenceable(149) %this, i32 %n) local_unnamed_addr #7 align 2 {
entry:
  ret i32 1
}

; Function Attrs: norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local i32 @_ZNK5adept5Stack20max_jacobian_threadsEv(%"class.adept::Stack"* nocapture nonnull readnone dereferenceable(149) %this) local_unnamed_addr #7 align 2 {
entry:
  ret i32 1
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack15compute_adjointEv(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %gradients_initialized_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 10
  %0 = load i8, i8* %gradients_initialized_.i, align 8, !tbaa !39, !range !25
  %tobool.i.not = icmp eq i8 %0, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %n_statements_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %1 = load i32, i32* %n_statements_, align 8, !tbaa !40
  %cmp59 = icmp sgt i32 %1, 1
  br i1 %cmp59, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %if.then
  %statement_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %2 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !35
  %gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
  %3 = load double*, double** %gradient_, align 8, !tbaa !27
  %multiplier_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %index_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %4 = zext i32 %1 to i64
  %5 = zext i32 %1 to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end, %if.then
  ret void

for.body:                                         ; preds = %if.end, %for.body.lr.ph
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %if.end ], [ %5, %for.body.lr.ph ]
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %if.end ], [ %4, %for.body.lr.ph ]
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, -1
  %index = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %2, i64 %indvars.iv.next8, i32 0
  %6 = load i32, i32* %index, align 4, !tbaa !41
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds double, double* %3, i64 %idxprom2
  %7 = load double, double* %arrayidx3, align 8, !tbaa !43
  store double 0.000000e+00, double* %arrayidx3, align 8, !tbaa !43
  %cmp8 = fcmp fast une double %7, 0.000000e+00
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %for.body
  %8 = add i64 %indvars.iv7, 4294967294
  %9 = and i64 %8, 4294967295
  %end_plus_one = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %2, i64 %9, i32 1
  %10 = load i32, i32* %end_plus_one, align 4, !tbaa !45
  %end_plus_one15 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %2, i64 %indvars.iv.next8, i32 1
  %11 = load i32, i32* %end_plus_one15, align 4, !tbaa !45
  %cmp1656 = icmp slt i32 %10, %11
  br i1 %cmp1656, label %for.body18.lr.ph, label %if.end

for.body18.lr.ph:                                 ; preds = %if.then9
  %12 = load double*, double** %multiplier_, align 8, !tbaa !37
  %13 = load i32*, i32** %index_, align 8, !tbaa !38
  %14 = sext i32 %10 to i64
  %15 = sext i32 %11 to i64
  br label %for.body18

for.body18:                                       ; preds = %for.body18, %for.body18.lr.ph
  %indvars.iv = phi i64 [ %14, %for.body18.lr.ph ], [ %indvars.iv.next, %for.body18 ]
  %arrayidx20 = getelementptr inbounds double, double* %12, i64 %indvars.iv
  %16 = load double, double* %arrayidx20, align 8, !tbaa !43
  %mul = fmul fast double %16, %7
  %arrayidx23 = getelementptr inbounds i32, i32* %13, i64 %indvars.iv
  %17 = load i32, i32* %arrayidx23, align 4, !tbaa !46
  %idxprom24 = sext i32 %17 to i64
  %arrayidx25 = getelementptr inbounds double, double* %3, i64 %idxprom24
  %18 = load double, double* %arrayidx25, align 8, !tbaa !43
  %add = fadd fast double %18, %mul
  store double %add, double* %arrayidx25, align 8, !tbaa !43
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %15
  br i1 %exitcond.not, label %if.end, label %for.body18, !llvm.loop !47

if.end:                                           ; preds = %for.body18, %if.then9, %for.body
  %cmp = icmp sgt i64 %indvars.iv62, 2
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, -1
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !48

if.else:                                          ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %19 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %19) #32
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %21 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %20, %union.anon** %21, align 8, !tbaa !9
  %22 = bitcast %union.anon* %20 to i8*
  %23 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #32
  store i64 106, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i51 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %if.else
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i51, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %24 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %24, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(106) %call5.i.i.i9.i51, i8* nonnull align 1 dereferenceable(106) getelementptr inbounds ([107 x i8], [107 x i8]* @.str.27, i64 0, i64 0), i64 106, i1 false) #32
  %_M_string_length.i.i.i.i.i.i50 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %24, i64* %_M_string_length.i.i.i.i.i.i50, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i51, i64 %24
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #32
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %25 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %26 = getelementptr inbounds i8, i8* %exception, i64 24
  %27 = bitcast i8* %message_.i.i.i to i8**
  store i8* %26, i8** %27, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %28 = bitcast i8* %_M_string_length.i.i.i.i.i.i to i64*
  store i64 0, i64* %28, align 8, !tbaa !2
  store i8 0, i8* %26, align 1, !tbaa !12
  %29 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept25gradients_not_initializedE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %29, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %25, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont30 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %30 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %29, align 8, !tbaa !17
  %31 = load i8*, i8** %27, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %31, %26
  br i1 %cmp.i.i.i.i.i, label %lpad29.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %31) #32
  br label %lpad29.body

invoke.cont30:                                    ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept25gradients_not_initializedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad29.body.thread

ehcleanup.thread:                                 ; preds = %if.else
  %32 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #32
  br label %cleanup.action

lpad29.body:                                      ; preds = %if.then.i.i.i.i, %lpad.i
  %33 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %33) #32
  %34 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %34, %22
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad29.body
  call void @_ZdlPv(i8* %34) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #32
  br label %cleanup.action

lpad29.body.thread:                               ; preds = %invoke.cont30
  %35 = landingpad { i8*, i32 }
          cleanup
  %36 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i66 = icmp eq i8* %36, %22
  br i1 %cmp.i.i.i66, label %ehcleanup.thread71, label %if.then.i.i

ehcleanup.thread71:                               ; preds = %lpad29.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad29.body.thread
  call void @_ZdlPv(i8* %36) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad29.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn55 = phi { i8*, i32 } [ %32, %ehcleanup.thread ], [ %30, %ehcleanup ], [ %30, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread71
  %.pn54 = phi { i8*, i32 } [ %.pn55, %cleanup.action ], [ %35, %if.then.i.i ], [ %35, %ehcleanup.thread71 ]
  resume { i8*, i32 } %.pn54

unreachable:                                      ; preds = %invoke.cont30
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack22compute_tangent_linearEv(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %gradients_initialized_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 10
  %0 = load i8, i8* %gradients_initialized_.i, align 8, !tbaa !39, !range !25
  %tobool.i.not = icmp eq i8 %0, 0
  br i1 %tobool.i.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %n_statements_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %1 = load i32, i32* %n_statements_, align 8, !tbaa !40
  %cmp51 = icmp sgt i32 %1, 1
  br i1 %cmp51, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %statement_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %2 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !35
  %multiplier_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
  %index_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %3 = load double*, double** %gradient_, align 8, !tbaa !27
  %wide.trip.count = zext i32 %1 to i64
  %end_plus_one.phi.trans.insert = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %2, i64 0, i32 1
  %.pre = load i32, i32* %end_plus_one.phi.trans.insert, align 4, !tbaa !45
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.cond.cleanup8, %for.cond.preheader
  ret void

for.body:                                         ; preds = %for.cond.cleanup8, %for.body.lr.ph
  %4 = phi i32 [ %.pre, %for.body.lr.ph ], [ %5, %for.cond.cleanup8 ]
  %indvars.iv53 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next54, %for.cond.cleanup8 ]
  %end_plus_one6 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %2, i64 %indvars.iv53, i32 1
  %5 = load i32, i32* %end_plus_one6, align 4, !tbaa !45
  %cmp748 = icmp slt i32 %4, %5
  br i1 %cmp748, label %for.body9.lr.ph, label %for.cond.cleanup8

for.body9.lr.ph:                                  ; preds = %for.body
  %6 = load double*, double** %multiplier_, align 8, !tbaa !37
  %7 = load i32*, i32** %index_, align 8, !tbaa !38
  %8 = sext i32 %4 to i64
  %9 = sext i32 %5 to i64
  br label %for.body9

for.cond.cleanup8:                                ; preds = %for.body9, %for.body
  %a.0.lcssa = phi double [ 0.000000e+00, %for.body ], [ %add, %for.body9 ]
  %index = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %2, i64 %indvars.iv53, i32 0
  %10 = load i32, i32* %index, align 4, !tbaa !41
  %idxprom17 = sext i32 %10 to i64
  %arrayidx18 = getelementptr inbounds double, double* %3, i64 %idxprom17
  store double %a.0.lcssa, double* %arrayidx18, align 8, !tbaa !43
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !49

for.body9:                                        ; preds = %for.body9, %for.body9.lr.ph
  %indvars.iv = phi i64 [ %8, %for.body9.lr.ph ], [ %indvars.iv.next, %for.body9 ]
  %a.049 = phi double [ 0.000000e+00, %for.body9.lr.ph ], [ %add, %for.body9 ]
  %arrayidx11 = getelementptr inbounds double, double* %6, i64 %indvars.iv
  %11 = load double, double* %arrayidx11, align 8, !tbaa !43
  %arrayidx13 = getelementptr inbounds i32, i32* %7, i64 %indvars.iv
  %12 = load i32, i32* %arrayidx13, align 4, !tbaa !46
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds double, double* %3, i64 %idxprom14
  %13 = load double, double* %arrayidx15, align 8, !tbaa !43
  %mul = fmul fast double %13, %11
  %add = fadd fast double %mul, %a.049
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not6 = icmp eq i64 %indvars.iv.next, %9
  br i1 %exitcond.not6, label %for.cond.cleanup8, label %for.body9, !llvm.loop !50

if.else:                                          ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %14 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #32
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %16 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %15, %union.anon** %16, align 8, !tbaa !9
  %17 = bitcast %union.anon* %15 to i8*
  %18 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #32
  store i64 106, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i43 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %if.else
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i43, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %19 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %19, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(106) %call5.i.i.i9.i43, i8* nonnull align 1 dereferenceable(106) getelementptr inbounds ([107 x i8], [107 x i8]* @.str.27, i64 0, i64 0), i64 106, i1 false) #32
  %_M_string_length.i.i.i.i.i.i42 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %19, i64* %_M_string_length.i.i.i.i.i.i42, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i43, i64 %19
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #32
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %20 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %21 = getelementptr inbounds i8, i8* %exception, i64 24
  %22 = bitcast i8* %message_.i.i.i to i8**
  store i8* %21, i8** %22, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %23 = bitcast i8* %_M_string_length.i.i.i.i.i.i to i64*
  store i64 0, i64* %23, align 8, !tbaa !2
  store i8 0, i8* %21, align 1, !tbaa !12
  %24 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept25gradients_not_initializedE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %24, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %20, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont24 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %25 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %24, align 8, !tbaa !17
  %26 = load i8*, i8** %22, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %26, %21
  br i1 %cmp.i.i.i.i.i, label %lpad23.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %26) #32
  br label %lpad23.body

invoke.cont24:                                    ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept25gradients_not_initializedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad23.body.thread

ehcleanup.thread:                                 ; preds = %if.else
  %27 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #32
  br label %cleanup.action

lpad23.body:                                      ; preds = %if.then.i.i.i.i, %lpad.i
  %28 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %28) #32
  %29 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %29, %17
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad23.body
  call void @_ZdlPv(i8* %29) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #32
  br label %cleanup.action

lpad23.body.thread:                               ; preds = %invoke.cont24
  %30 = landingpad { i8*, i32 }
          cleanup
  %31 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i58 = icmp eq i8* %31, %17
  br i1 %cmp.i.i.i58, label %ehcleanup.thread63, label %if.then.i.i

ehcleanup.thread63:                               ; preds = %lpad23.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad23.body.thread
  call void @_ZdlPv(i8* %31) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad23.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn47 = phi { i8*, i32 } [ %27, %ehcleanup.thread ], [ %25, %ehcleanup ], [ %25, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread63
  %.pn46 = phi { i8*, i32 } [ %.pn47, %cleanup.action ], [ %30, %if.then.i.i ], [ %30, %ehcleanup.thread63 ]
  resume { i8*, i32 } %.pn46

unreachable:                                      ; preds = %invoke.cont24
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local i32 @_ZN5adept5Stack21do_register_gradientsERKi(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i32* nocapture nonnull readonly align 4 dereferenceable(4) %n) local_unnamed_addr #4 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i32, i32* %n, align 4, !tbaa !46
  %n_gradients_registered_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 9
  %1 = load i32, i32* %n_gradients_registered_, align 4, !tbaa !51
  %add = add nsw i32 %1, %0
  store i32 %add, i32* %n_gradients_registered_, align 4, !tbaa !51
  %gap_list_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4
  %2 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %3 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i, align 8, !tbaa !28
  %cmp.i = icmp eq %"struct.std::__detail::_List_node_base"* %3, %2
  %.pre = load i32, i32* %n, align 4, !tbaa !46
  br i1 %cmp.i, label %if.end49, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %it.sroa.0.0110 = phi %"struct.std::__detail::_List_node_base"* [ %10, %for.inc ], [ %3, %entry ]
  %_M_storage.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.0110, i64 1
  %4 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i to %"struct.adept::Gap"*
  %end = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %4, i64 0, i32 1
  %5 = load i32, i32* %end, align 4, !tbaa !52
  %add9 = add nsw i32 %5, 1
  %start = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i to i32*
  %6 = load i32, i32* %start, align 4, !tbaa !54
  %sub = sub i32 %add9, %6
  %cmp = icmp sgt i32 %sub, %.pre
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.body
  %start.le = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i to i32*
  %add16 = add nsw i32 %6, %.pre
  store i32 %add16, i32* %start.le, align 4, !tbaa !54
  br label %return

if.else:                                          ; preds = %for.body
  %cmp17 = icmp eq i32 %sub, %.pre
  br i1 %cmp17, label %if.then18, label %for.inc

if.then18:                                        ; preds = %if.else
  %_M_node.i83 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5, i32 0
  %7 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i83, align 8, !tbaa !55
  %cmp.i85 = icmp eq %"struct.std::__detail::_List_node_base"* %7, %it.sroa.0.0110
  %_M_size.i.i.i77 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %8 = load i64, i64* %_M_size.i.i.i77, align 8, !tbaa !56
  %sub.i.i.i78 = add i64 %8, -1
  store i64 %sub.i.i.i78, i64* %_M_size.i.i.i77, align 8, !tbaa !56
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %it.sroa.0.0110) #32
  %9 = bitcast %"struct.std::__detail::_List_node_base"* %it.sroa.0.0110 to i8*
  tail call void @_ZdlPv(i8* nonnull %9) #32
  br i1 %cmp.i85, label %if.then22, label %return

if.then22:                                        ; preds = %if.then18
  store %"struct.std::__detail::_List_node_base"* %2, %"struct.std::__detail::_List_node_base"** %_M_node.i83, align 8, !tbaa.struct !60
  br label %return

for.inc:                                          ; preds = %if.else
  %_M_next.i73 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.0110, i64 0, i32 0
  %10 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i73, align 8, !tbaa !28
  %cmp.i80.not = icmp eq %"struct.std::__detail::_List_node_base"* %10, %2
  br i1 %cmp.i80.not, label %if.end49, label %for.body, !llvm.loop !61

if.end49:                                         ; preds = %for.inc, %entry
  %i_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 6
  %11 = load i32, i32* %i_gradient_, align 8, !tbaa !62
  %add50 = add nsw i32 %11, %.pre
  store i32 %add50, i32* %i_gradient_, align 8, !tbaa !62
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %12 = load i32, i32* %max_gradient_, align 8, !tbaa !63
  %cmp52 = icmp sgt i32 %add50, %12
  br i1 %cmp52, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end49
  store i32 %add50, i32* %max_gradient_, align 8, !tbaa !63
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end49
  %13 = load i32, i32* %n, align 4, !tbaa !46
  %sub58 = sub nsw i32 %add50, %13
  br label %return

return:                                           ; preds = %if.end56, %if.then22, %if.then18, %if.then11
  %retval.3 = phi i32 [ %sub58, %if.end56 ], [ %6, %if.then22 ], [ %6, %if.then11 ], [ %6, %if.then18 ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack27unregister_gradient_not_topERKi(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i32* nocapture nonnull readonly align 4 dereferenceable(4) %gradient_index) local_unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %gap_list_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4
  %0 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %1 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i, align 8, !tbaa !28
  %cmp.i = icmp eq %"struct.std::__detail::_List_node_base"* %1, %0
  br i1 %cmp.i, label %if.then15.if.then62_crit_edge, label %land.rhs

land.rhs:                                         ; preds = %entry
  %_M_node.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i, align 8, !tbaa !55
  %cmp.i165.not = icmp eq %"struct.std::__detail::_List_node_base"* %2, %0
  %3 = bitcast %"struct.std::__detail::_List_node_base"* %2 to %"struct.std::_List_node"*
  br i1 %cmp.i165.not, label %land.rhs.for.body.lr.ph_crit_edge, label %if.then

land.rhs.for.body.lr.ph_crit_edge:                ; preds = %land.rhs
  %.pre17 = load i32, i32* %gradient_index, align 4, !tbaa !46
  br label %for.body.lr.ph

if.then:                                          ; preds = %land.rhs
  %_M_storage.i.i177 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %2, i64 1
  %4 = load i32, i32* %gradient_index, align 4, !tbaa !46
  %start = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i177 to i32*
  %5 = load i32, i32* %start, align 4, !tbaa !54
  %sub = add nsw i32 %5, -1
  %cmp = icmp eq i32 %4, %sub
  br i1 %cmp, label %if.end75.thread248, label %if.else

if.end75.thread248:                               ; preds = %if.then
  store i32 %4, i32* %start, align 4, !tbaa !54
  br label %land.rhs77

if.else:                                          ; preds = %if.then
  %end = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %3, i64 0, i32 1, i32 0, i64 4
  %6 = bitcast i8* %end to i32*
  %7 = load i32, i32* %6, align 4, !tbaa !52
  %add = add nsw i32 %7, 1
  %cmp9 = icmp eq i32 %4, %add
  br i1 %cmp9, label %if.then10, label %for.body.lr.ph

if.then10:                                        ; preds = %if.else
  store i32 %4, i32* %6, align 4, !tbaa !52
  br label %if.then113

if.then15.if.then62_crit_edge:                    ; preds = %entry
  %.pre = load i32, i32* %gradient_index, align 4, !tbaa !46
  br label %if.then62

for.body.lr.ph:                                   ; preds = %land.rhs.for.body.lr.ph_crit_edge, %if.else
  %8 = phi i32 [ %.pre17, %land.rhs.for.body.lr.ph_crit_edge ], [ %4, %if.else ]
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %it.sroa.0.0263 = phi %"struct.std::__detail::_List_node_base"* [ %1, %for.body.lr.ph ], [ %20, %for.inc ]
  %_M_storage.i.i205 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.0263, i64 1
  %9 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i205 to %"struct.adept::Gap"*
  %end25 = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %9, i64 0, i32 1
  %10 = load i32, i32* %end25, align 4, !tbaa !52
  %add26 = add nsw i32 %10, 1
  %cmp27.not = icmp sgt i32 %8, %add26
  br i1 %cmp27.not, label %for.inc, label %if.then28

if.then28:                                        ; preds = %for.body
  %11 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i205 to %"struct.adept::Gap"*
  %end25.le = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %11, i64 0, i32 1
  %start30 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i205 to i32*
  %12 = load i32, i32* %start30, align 4, !tbaa !54
  %sub31 = add nsw i32 %12, -1
  %cmp32 = icmp eq i32 %8, %sub31
  br i1 %cmp32, label %if.end75, label %if.else38

if.else38:                                        ; preds = %if.then28
  %cmp42 = icmp eq i32 %8, %add26
  br i1 %cmp42, label %if.then43, label %if.else48

if.then43:                                        ; preds = %if.else38
  store i32 %8, i32* %end25.le, align 4, !tbaa !52
  %most_recent_gap_47 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5
  %13 = bitcast %"struct.std::_List_iterator"* %most_recent_gap_47 to i64*
  %14 = ptrtoint %"struct.std::__detail::_List_node_base"* %it.sroa.0.0263 to i64
  store i64 %14, i64* %13, align 8, !tbaa !26
  %15 = bitcast %"struct.std::__detail::_List_node_base"* %it.sroa.0.0263 to %"struct.std::_List_node"*
  br label %if.then113

if.else48:                                        ; preds = %if.else38
  %call2.i.i.i.i.i.i201 = tail call noalias nonnull i8* @_Znwm(i64 24) #35
  %_M_storage.i.i.i.i202 = getelementptr inbounds i8, i8* %call2.i.i.i.i.i.i201, i64 16
  %16 = bitcast i8* %_M_storage.i.i.i.i202 to i64*
  %ref.tmp51.sroa.4.0.insert.ext = zext i32 %8 to i64
  %ref.tmp51.sroa.4.0.insert.shift = shl nuw i64 %ref.tmp51.sroa.4.0.insert.ext, 32
  %ref.tmp51.sroa.0.0.insert.insert = or i64 %ref.tmp51.sroa.4.0.insert.shift, %ref.tmp51.sroa.4.0.insert.ext
  store i64 %ref.tmp51.sroa.0.0.insert.insert, i64* %16, align 4
  %17 = bitcast i8* %call2.i.i.i.i.i.i201 to %"struct.std::__detail::_List_node_base"*
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %17, %"struct.std::__detail::_List_node_base"* nonnull %it.sroa.0.0263) #32
  %_M_size.i.i.i203 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %18 = load i64, i64* %_M_size.i.i.i203, align 8, !tbaa !56
  %add.i.i.i204 = add i64 %18, 1
  store i64 %add.i.i.i204, i64* %_M_size.i.i.i203, align 8, !tbaa !56
  %19 = bitcast %"struct.std::__detail::_List_node_base"** %_M_node.i to i8**
  store i8* %call2.i.i.i.i.i.i201, i8** %19, align 8, !tbaa.struct !60
  br label %if.end147

for.inc:                                          ; preds = %for.body
  %_M_next.i200 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.0263, i64 0, i32 0
  %20 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i200, align 8, !tbaa !28
  %cmp.i197.not = icmp eq %"struct.std::__detail::_List_node_base"* %20, %0
  br i1 %cmp.i197.not, label %if.then62, label %for.body, !llvm.loop !64

if.then62:                                        ; preds = %for.inc, %if.then15.if.then62_crit_edge
  %21 = phi i32 [ %.pre, %if.then15.if.then62_crit_edge ], [ %8, %for.inc ]
  %call2.i.i.i.i.i.i = tail call noalias nonnull i8* @_Znwm(i64 24) #35
  %_M_storage.i.i.i.i = getelementptr inbounds i8, i8* %call2.i.i.i.i.i.i, i64 16
  %22 = bitcast i8* %_M_storage.i.i.i.i to i64*
  %ref.tmp64.sroa.4.0.insert.ext = zext i32 %21 to i64
  %ref.tmp64.sroa.4.0.insert.shift = shl nuw i64 %ref.tmp64.sroa.4.0.insert.ext, 32
  %ref.tmp64.sroa.0.0.insert.insert = or i64 %ref.tmp64.sroa.4.0.insert.shift, %ref.tmp64.sroa.4.0.insert.ext
  store i64 %ref.tmp64.sroa.0.0.insert.insert, i64* %22, align 4
  %23 = bitcast i8* %call2.i.i.i.i.i.i to %"struct.std::__detail::_List_node_base"*
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %23, %"struct.std::__detail::_List_node_base"* nonnull %0) #32
  %_M_size.i.i.i194 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %24 = load i64, i64* %_M_size.i.i.i194, align 8, !tbaa !56
  %add.i.i.i = add i64 %24, 1
  store i64 %add.i.i.i, i64* %_M_size.i.i.i194, align 8, !tbaa !56
  %ref.tmp65.sroa.0.0..sroa_idx = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5, i32 0
  %_M_prev.i193 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1
  %25 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_prev.i193, align 8, !tbaa !65
  store %"struct.std::__detail::_List_node_base"* %25, %"struct.std::__detail::_List_node_base"** %ref.tmp65.sroa.0.0..sroa_idx, align 8, !tbaa !55
  br label %if.end147

if.end75:                                         ; preds = %if.then28
  store i32 %8, i32* %start30, align 4, !tbaa !54
  %most_recent_gap_37 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5
  %26 = bitcast %"struct.std::_List_iterator"* %most_recent_gap_37 to i64*
  %27 = ptrtoint %"struct.std::__detail::_List_node_base"* %it.sroa.0.0263 to i64
  store i64 %27, i64* %26, align 8, !tbaa !26
  %28 = bitcast %"struct.std::__detail::_List_node_base"* %it.sroa.0.0263 to %"struct.std::_List_node"*
  br label %land.rhs77

land.rhs77:                                       ; preds = %if.end75, %if.end75.thread248
  %29 = phi %"struct.std::_List_node"* [ %28, %if.end75 ], [ %3, %if.end75.thread248 ]
  %30 = phi %"struct.std::__detail::_List_node_base"* [ %it.sroa.0.0263, %if.end75 ], [ %2, %if.end75.thread248 ]
  %cmp.i189.not = icmp eq %"struct.std::__detail::_List_node_base"* %30, %1
  br i1 %cmp.i189.not, label %if.end147, label %if.then85

if.then85:                                        ; preds = %land.rhs77
  %_M_prev.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %30, i64 0, i32 1
  %31 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_prev.i, align 8, !tbaa !65
  %_M_storage.i.i184 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %31, i64 1
  %32 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i184 to %"struct.adept::Gap"*
  %end92 = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %32, i64 0, i32 1
  %33 = load i32, i32* %end92, align 4, !tbaa !52
  %_M_storage.i.i183 = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %29, i64 0, i32 1
  %start95 = bitcast %"struct.__gnu_cxx::__aligned_membuf"* %_M_storage.i.i183 to i32*
  %34 = load i32, i32* %start95, align 4, !tbaa !54
  %sub96 = add nsw i32 %34, -1
  %cmp97 = icmp eq i32 %33, %sub96
  br i1 %cmp97, label %if.then98, label %if.end147

if.then98:                                        ; preds = %if.then85
  %start100 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i184 to i32*
  %35 = load i32, i32* %start100, align 4, !tbaa !54
  store i32 %35, i32* %start95, align 4, !tbaa !54
  %_M_size.i.i.i175 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %36 = load i64, i64* %_M_size.i.i.i175, align 8, !tbaa !56
  %sub.i.i.i176 = add i64 %36, -1
  store i64 %sub.i.i.i176, i64* %_M_size.i.i.i175, align 8, !tbaa !56
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %31) #32
  %37 = bitcast %"struct.std::__detail::_List_node_base"* %31 to i8*
  tail call void @_ZdlPv(i8* nonnull %37) #32
  br label %if.end147

if.then113:                                       ; preds = %if.then43, %if.then10
  %38 = phi %"struct.std::_List_node"* [ %3, %if.then10 ], [ %15, %if.then43 ]
  %.ptr = phi %"struct.std::__detail::_List_node_base"* [ %2, %if.then10 ], [ %it.sroa.0.0263, %if.then43 ]
  %_M_next.i173 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %.ptr, i64 0, i32 0
  %39 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i173, align 8, !tbaa !28
  %cmp.i172.not = icmp eq %"struct.std::__detail::_List_node_base"* %39, %0
  br i1 %cmp.i172.not, label %if.end147, label %land.rhs124

land.rhs124:                                      ; preds = %if.then113
  %_M_storage.i.i169 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %39, i64 1
  %start126 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i169 to i32*
  %40 = load i32, i32* %start126, align 4, !tbaa !54
  %end129 = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %38, i64 0, i32 1, i32 0, i64 4
  %41 = bitcast i8* %end129 to i32*
  %42 = load i32, i32* %41, align 4, !tbaa !52
  %add130 = add nsw i32 %42, 1
  %cmp131 = icmp eq i32 %40, %add130
  br i1 %cmp131, label %if.then133, label %if.end147

if.then133:                                       ; preds = %land.rhs124
  %43 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i169 to %"struct.adept::Gap"*
  %end135 = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %43, i64 0, i32 1
  %44 = load i32, i32* %end135, align 4, !tbaa !52
  store i32 %44, i32* %41, align 4, !tbaa !52
  %_M_size.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %45 = load i64, i64* %_M_size.i.i.i, align 8, !tbaa !56
  %sub.i.i.i = add i64 %45, -1
  store i64 %sub.i.i.i, i64* %_M_size.i.i.i, align 8, !tbaa !56
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %39) #32
  %46 = bitcast %"struct.std::__detail::_List_node_base"* %39 to i8*
  tail call void @_ZdlPv(i8* nonnull %46) #32
  br label %if.end147

if.end147:                                        ; preds = %if.then133, %land.rhs124, %if.then113, %if.then98, %if.then85, %land.rhs77, %if.then62, %if.else48
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack20unregister_gradientsERKiS2_(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i32* nocapture nonnull readonly align 4 dereferenceable(4) %gradient_index, i32* nocapture nonnull readonly align 4 dereferenceable(4) %n) local_unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i32, i32* %n, align 4, !tbaa !46
  %n_gradients_registered_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 9
  %1 = load i32, i32* %n_gradients_registered_, align 4, !tbaa !51
  %sub = sub nsw i32 %1, %0
  store i32 %sub, i32* %n_gradients_registered_, align 4, !tbaa !51
  %2 = load i32, i32* %gradient_index, align 4, !tbaa !46
  %3 = load i32, i32* %n, align 4, !tbaa !46
  %add = add i32 %3, %2
  %i_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 6
  %4 = load i32, i32* %i_gradient_, align 8, !tbaa !62
  %cmp = icmp eq i32 %add, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 %2, i32* %i_gradient_, align 8, !tbaa !62
  %gap_list_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4
  %5 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %6 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i, align 8, !tbaa !28
  %cmp.i = icmp eq %"struct.std::__detail::_List_node_base"* %6, %5
  br i1 %cmp.i, label %if.end192, label %if.then4

if.then4:                                         ; preds = %if.then
  %_M_prev.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1
  %7 = bitcast %"struct.std::__detail::_List_node_base"** %_M_prev.i.i to %"struct.std::_List_node"**
  %8 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %7, align 8, !tbaa !65
  %end = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %8, i64 0, i32 1, i32 0, i64 4
  %9 = bitcast i8* %end to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !52
  %add8 = add nsw i32 %10, 1
  %cmp9 = icmp eq i32 %2, %add8
  %11 = getelementptr %"struct.std::_List_node", %"struct.std::_List_node"* %8, i64 0, i32 0
  br i1 %cmp9, label %if.then10, label %if.end192

if.then10:                                        ; preds = %if.then4
  %_M_storage.i.i.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %8, i64 0, i32 1
  %start = bitcast %"struct.__gnu_cxx::__aligned_membuf"* %_M_storage.i.i.i to i32*
  %12 = load i32, i32* %start, align 4, !tbaa !54
  store i32 %12, i32* %i_gradient_, align 8, !tbaa !62
  %_M_node.i238 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5, i32 0
  %13 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i238, align 8, !tbaa !55
  %cmp.i240 = icmp eq %"struct.std::__detail::_List_node_base"* %13, %11
  br i1 %cmp.i240, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.then10
  store %"struct.std::__detail::_List_node_base"* %5, %"struct.std::__detail::_List_node_base"** %_M_node.i238, align 8, !tbaa.struct !60
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.then10
  %_M_size.i.i.i259 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %14 = load i64, i64* %_M_size.i.i.i259, align 8, !tbaa !56
  %sub.i.i.i260 = add i64 %14, -1
  store i64 %sub.i.i.i260, i64* %_M_size.i.i.i259, align 8, !tbaa !56
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %11) #32
  %15 = bitcast %"struct.std::_List_node"* %8 to i8*
  tail call void @_ZdlPv(i8* nonnull %15) #32
  br label %if.end192

if.else:                                          ; preds = %entry
  %gap_list_25 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4
  %16 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_25, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i261 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_25, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %17 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i261, align 8, !tbaa !28
  %cmp.i262 = icmp eq %"struct.std::__detail::_List_node_base"* %17, %16
  br i1 %cmp.i262, label %if.then104, label %land.rhs

land.rhs:                                         ; preds = %if.else
  %_M_node.i270 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5, i32 0
  %18 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i270, align 8, !tbaa !55
  %cmp.i272.not = icmp eq %"struct.std::__detail::_List_node_base"* %18, %16
  %19 = bitcast %"struct.std::__detail::_List_node_base"* %18 to %"struct.std::_List_node"*
  br i1 %cmp.i272.not, label %for.body.preheader, label %if.then33

for.body.preheader:                               ; preds = %if.else42, %land.rhs
  br label %for.body

if.then33:                                        ; preds = %land.rhs
  %_M_storage.i.i273 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %18, i64 1
  %start36 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i273 to i32*
  %20 = load i32, i32* %start36, align 4, !tbaa !54
  %sub37 = sub nsw i32 %20, %3
  %cmp38 = icmp eq i32 %2, %sub37
  br i1 %cmp38, label %if.end119.thread322, label %if.else42

if.end119.thread322:                              ; preds = %if.then33
  store i32 %2, i32* %start36, align 4, !tbaa !54
  br label %land.rhs121

if.else42:                                        ; preds = %if.then33
  %end43 = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %19, i64 0, i32 1, i32 0, i64 4
  %21 = bitcast i8* %end43 to i32*
  %22 = load i32, i32* %21, align 4, !tbaa !52
  %add44 = add nsw i32 %22, 1
  %cmp45 = icmp eq i32 %2, %add44
  br i1 %cmp45, label %if.then46, label %for.body.preheader

if.then46:                                        ; preds = %if.else42
  %add48 = add nsw i32 %22, %3
  store i32 %add48, i32* %21, align 4, !tbaa !52
  br label %if.then157

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %it54.sroa.0.0338 = phi %"struct.std::__detail::_List_node_base"* [ %34, %for.inc ], [ %17, %for.body.preheader ]
  %_M_storage.i.i282 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it54.sroa.0.0338, i64 1
  %23 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i282 to %"struct.adept::Gap"*
  %end64 = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %23, i64 0, i32 1
  %24 = load i32, i32* %end64, align 4, !tbaa !52
  %add65 = add nsw i32 %24, 1
  %cmp66.not = icmp sgt i32 %2, %add65
  br i1 %cmp66.not, label %for.inc, label %if.then67

if.then67:                                        ; preds = %for.body
  %25 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i282 to %"struct.adept::Gap"*
  %end64.le = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %25, i64 0, i32 1
  %start69 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i282 to i32*
  %26 = load i32, i32* %start69, align 4, !tbaa !54
  %sub70 = sub nsw i32 %26, %3
  %cmp71 = icmp eq i32 %2, %sub70
  br i1 %cmp71, label %if.end119, label %if.else77

if.else77:                                        ; preds = %if.then67
  %cmp81 = icmp eq i32 %2, %add65
  br i1 %cmp81, label %if.then82, label %if.else87

if.then82:                                        ; preds = %if.else77
  %add85 = add nsw i32 %24, %3
  store i32 %add85, i32* %end64.le, align 4, !tbaa !52
  %most_recent_gap_86 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5
  %27 = bitcast %"struct.std::_List_iterator"* %most_recent_gap_86 to i64*
  %28 = ptrtoint %"struct.std::__detail::_List_node_base"* %it54.sroa.0.0338 to i64
  store i64 %28, i64* %27, align 8, !tbaa !26
  %29 = bitcast %"struct.std::__detail::_List_node_base"* %it54.sroa.0.0338 to %"struct.std::_List_node"*
  br label %if.then157

if.else87:                                        ; preds = %if.else77
  %sub92 = add i32 %add, -1
  %call2.i.i.i.i.i.i266 = tail call noalias nonnull i8* @_Znwm(i64 24) #35
  %_M_storage.i.i.i.i267 = getelementptr inbounds i8, i8* %call2.i.i.i.i.i.i266, i64 16
  %30 = bitcast i8* %_M_storage.i.i.i.i267 to i64*
  %ref.tmp90.sroa.4.0.insert.ext = zext i32 %sub92 to i64
  %ref.tmp90.sroa.4.0.insert.shift = shl nuw i64 %ref.tmp90.sroa.4.0.insert.ext, 32
  %ref.tmp90.sroa.0.0.insert.ext = zext i32 %2 to i64
  %ref.tmp90.sroa.0.0.insert.insert = or i64 %ref.tmp90.sroa.4.0.insert.shift, %ref.tmp90.sroa.0.0.insert.ext
  store i64 %ref.tmp90.sroa.0.0.insert.insert, i64* %30, align 4
  %31 = bitcast i8* %call2.i.i.i.i.i.i266 to %"struct.std::__detail::_List_node_base"*
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %31, %"struct.std::__detail::_List_node_base"* nonnull %it54.sroa.0.0338) #32
  %_M_size.i.i.i268 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %32 = load i64, i64* %_M_size.i.i.i268, align 8, !tbaa !56
  %add.i.i.i269 = add i64 %32, 1
  store i64 %add.i.i.i269, i64* %_M_size.i.i.i268, align 8, !tbaa !56
  %33 = bitcast %"struct.std::__detail::_List_node_base"** %_M_node.i270 to i8**
  store i8* %call2.i.i.i.i.i.i266, i8** %33, align 8, !tbaa.struct !60
  br label %if.end192

for.inc:                                          ; preds = %for.body
  %_M_next.i265 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it54.sroa.0.0338, i64 0, i32 0
  %34 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i265, align 8, !tbaa !28
  %cmp.i285.not = icmp eq %"struct.std::__detail::_List_node_base"* %34, %16
  br i1 %cmp.i285.not, label %if.then104, label %for.body, !llvm.loop !66

if.then104:                                       ; preds = %for.inc, %if.else
  %sub108 = add i32 %add, -1
  %call2.i.i.i.i.i.i = tail call noalias nonnull i8* @_Znwm(i64 24) #35
  %_M_storage.i.i.i.i = getelementptr inbounds i8, i8* %call2.i.i.i.i.i.i, i64 16
  %35 = bitcast i8* %_M_storage.i.i.i.i to i64*
  %ref.tmp106.sroa.4.0.insert.ext = zext i32 %sub108 to i64
  %ref.tmp106.sroa.4.0.insert.shift = shl nuw i64 %ref.tmp106.sroa.4.0.insert.ext, 32
  %ref.tmp106.sroa.0.0.insert.ext = zext i32 %2 to i64
  %ref.tmp106.sroa.0.0.insert.insert = or i64 %ref.tmp106.sroa.4.0.insert.shift, %ref.tmp106.sroa.0.0.insert.ext
  store i64 %ref.tmp106.sroa.0.0.insert.insert, i64* %35, align 4
  %36 = bitcast i8* %call2.i.i.i.i.i.i to %"struct.std::__detail::_List_node_base"*
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %36, %"struct.std::__detail::_List_node_base"* nonnull %16) #32
  %_M_size.i.i.i257 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %37 = load i64, i64* %_M_size.i.i.i257, align 8, !tbaa !56
  %add.i.i.i = add i64 %37, 1
  store i64 %add.i.i.i, i64* %_M_size.i.i.i257, align 8, !tbaa !56
  %ref.tmp109.sroa.0.0..sroa_idx = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5, i32 0
  %_M_prev.i256 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1
  %38 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_prev.i256, align 8, !tbaa !65
  store %"struct.std::__detail::_List_node_base"* %38, %"struct.std::__detail::_List_node_base"** %ref.tmp109.sroa.0.0..sroa_idx, align 8, !tbaa !55
  br label %if.end192

if.end119:                                        ; preds = %if.then67
  store i32 %2, i32* %start69, align 4, !tbaa !54
  %most_recent_gap_76 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5
  %39 = bitcast %"struct.std::_List_iterator"* %most_recent_gap_76 to i64*
  %40 = ptrtoint %"struct.std::__detail::_List_node_base"* %it54.sroa.0.0338 to i64
  store i64 %40, i64* %39, align 8, !tbaa !26
  %41 = bitcast %"struct.std::__detail::_List_node_base"* %it54.sroa.0.0338 to %"struct.std::_List_node"*
  br label %land.rhs121

land.rhs121:                                      ; preds = %if.end119, %if.end119.thread322
  %42 = phi %"struct.std::_List_node"* [ %41, %if.end119 ], [ %19, %if.end119.thread322 ]
  %43 = phi %"struct.std::__detail::_List_node_base"* [ %it54.sroa.0.0338, %if.end119 ], [ %18, %if.end119.thread322 ]
  %cmp.i252.not = icmp eq %"struct.std::__detail::_List_node_base"* %43, %17
  br i1 %cmp.i252.not, label %if.end192, label %if.then129

if.then129:                                       ; preds = %land.rhs121
  %_M_prev.i249 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %43, i64 0, i32 1
  %44 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_prev.i249, align 8, !tbaa !65
  %_M_storage.i.i246 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %44, i64 1
  %45 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i246 to %"struct.adept::Gap"*
  %end136 = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %45, i64 0, i32 1
  %46 = load i32, i32* %end136, align 4, !tbaa !52
  %_M_storage.i.i245 = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %42, i64 0, i32 1
  %start139 = bitcast %"struct.__gnu_cxx::__aligned_membuf"* %_M_storage.i.i245 to i32*
  %47 = load i32, i32* %start139, align 4, !tbaa !54
  %sub140 = add nsw i32 %47, -1
  %cmp141 = icmp eq i32 %46, %sub140
  br i1 %cmp141, label %if.then142, label %if.end192

if.then142:                                       ; preds = %if.then129
  %start144 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i246 to i32*
  %48 = load i32, i32* %start144, align 4, !tbaa !54
  store i32 %48, i32* %start139, align 4, !tbaa !54
  %_M_size.i.i.i234 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %49 = load i64, i64* %_M_size.i.i.i234, align 8, !tbaa !56
  %sub.i.i.i235 = add i64 %49, -1
  store i64 %sub.i.i.i235, i64* %_M_size.i.i.i234, align 8, !tbaa !56
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %44) #32
  %50 = bitcast %"struct.std::__detail::_List_node_base"* %44 to i8*
  tail call void @_ZdlPv(i8* nonnull %50) #32
  br label %if.end192

if.then157:                                       ; preds = %if.then82, %if.then46
  %51 = phi %"struct.std::_List_node"* [ %19, %if.then46 ], [ %29, %if.then82 ]
  %.ptr = phi %"struct.std::__detail::_List_node_base"* [ %18, %if.then46 ], [ %it54.sroa.0.0338, %if.then82 ]
  %_M_next.i232 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %.ptr, i64 0, i32 0
  %52 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i232, align 8, !tbaa !28
  %cmp.i231.not = icmp eq %"struct.std::__detail::_List_node_base"* %52, %16
  br i1 %cmp.i231.not, label %if.end192, label %land.rhs168

land.rhs168:                                      ; preds = %if.then157
  %_M_storage.i.i229 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %52, i64 1
  %start170 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i229 to i32*
  %53 = load i32, i32* %start170, align 4, !tbaa !54
  %end173 = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %51, i64 0, i32 1, i32 0, i64 4
  %54 = bitcast i8* %end173 to i32*
  %55 = load i32, i32* %54, align 4, !tbaa !52
  %add174 = add nsw i32 %55, 1
  %cmp175 = icmp eq i32 %53, %add174
  br i1 %cmp175, label %if.then177, label %if.end192

if.then177:                                       ; preds = %land.rhs168
  %56 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i229 to %"struct.adept::Gap"*
  %end179 = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %56, i64 0, i32 1
  %57 = load i32, i32* %end179, align 4, !tbaa !52
  store i32 %57, i32* %54, align 4, !tbaa !52
  %_M_size.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %58 = load i64, i64* %_M_size.i.i.i, align 8, !tbaa !56
  %sub.i.i.i = add i64 %58, -1
  store i64 %sub.i.i.i, i64* %_M_size.i.i.i, align 8, !tbaa !56
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %52) #32
  %59 = bitcast %"struct.std::__detail::_List_node_base"* %52 to i8*
  tail call void @_ZdlPv(i8* nonnull %59) #32
  br label %if.end192

if.end192:                                        ; preds = %if.then177, %land.rhs168, %if.then157, %if.then142, %if.then129, %land.rhs121, %if.then104, %if.else87, %if.end, %if.then4, %if.then
  ret void
}

; Function Attrs: uwtable mustprogress
define dso_local void @_ZNK5adept5Stack16print_statementsERSo(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, %"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os) local_unnamed_addr #8 align 2 {
entry:
  %n_statements_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %0 = load i32, i32* %n_statements_, align 8, !tbaa !40
  %cmp67 = icmp sgt i32 %0, 1
  br i1 %cmp67, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %statement_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %multiplier_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %index_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end, %entry
  ret void

for.body:                                         ; preds = %if.end, %for.body.lr.ph
  %indvars.iv69 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next70, %if.end ]
  %1 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !35
  %2 = trunc i64 %indvars.iv69 to i32
  %call = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %2)
  %call1.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i64 4)
  %index = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %1, i64 %indvars.iv69, i32 0
  %3 = load i32, i32* %index, align 4, !tbaa !41
  %call3 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %call, i32 %3)
  %call1.i54 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call3, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 4)
  %4 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !35
  %5 = add nsw i64 %indvars.iv69, -1
  %end_plus_one = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %4, i64 %5, i32 1
  %6 = load i32, i32* %end_plus_one, align 4, !tbaa !45
  %end_plus_one11 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %4, i64 %indvars.iv69, i32 1
  %7 = load i32, i32* %end_plus_one11, align 4, !tbaa !45
  %cmp12 = icmp eq i32 %6, %7
  br i1 %cmp12, label %if.then, label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.body
  %end_plus_one20 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %1, i64 %indvars.iv69, i32 1
  %8 = load i32, i32* %end_plus_one20, align 4, !tbaa !45
  %cmp2165 = icmp slt i32 %6, %8
  br i1 %cmp2165, label %for.body23.preheader, label %for.cond.cleanup22

for.body23.preheader:                             ; preds = %for.cond19.preheader
  %9 = sext i32 %6 to i64
  br label %for.body23

if.then:                                          ; preds = %for.body
  %call1.i56 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.30, i64 0, i64 0), i64 2)
  br label %if.end

for.cond.cleanup22:                               ; preds = %for.body23, %for.cond19.preheader
  %call1.i58 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
  br label %if.end

for.body23:                                       ; preds = %for.body23, %for.body23.preheader
  %indvars.iv = phi i64 [ %9, %for.body23.preheader ], [ %indvars.iv.next, %for.body23 ]
  %call1.i60 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.31, i64 0, i64 0), i64 3)
  %10 = load double*, double** %multiplier_, align 8, !tbaa !37
  %arrayidx26 = getelementptr inbounds double, double* %10, i64 %indvars.iv
  %11 = load double, double* %arrayidx26, align 8, !tbaa !43
  %call.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, double %11)
  %call1.i62 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call.i, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3)
  %12 = load i32*, i32** %index_, align 8, !tbaa !38
  %arrayidx30 = getelementptr inbounds i32, i32* %12, i64 %indvars.iv
  %13 = load i32, i32* %arrayidx30, align 4, !tbaa !46
  %call31 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %call.i, i32 %13)
  %call1.i64 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call31, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i64 1)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %14 = load i32, i32* %end_plus_one20, align 4, !tbaa !45
  %15 = sext i32 %14 to i64
  %cmp21 = icmp slt i64 %indvars.iv.next, %15
  br i1 %cmp21, label %for.body23, label %for.cond.cleanup22, !llvm.loop !67

if.end:                                           ; preds = %for.cond.cleanup22, %if.then
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %16 = load i32, i32* %n_statements_, align 8, !tbaa !40
  %17 = sext i32 %16 to i64
  %cmp = icmp slt i64 %indvars.iv.next70, %17
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !68
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8), i32) local_unnamed_addr #0

; Function Attrs: uwtable mustprogress
define dso_local zeroext i1 @_ZNK5adept5Stack15print_gradientsERSo(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, %"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os) local_unnamed_addr #8 align 2 {
entry:
  %gradients_initialized_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 10
  %0 = load i8, i8* %gradients_initialized_.i, align 8, !tbaa !39, !range !25
  %tobool.i = icmp ne i8 %0, 0
  br i1 %tobool.i, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %entry
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %1 = load i32, i32* %max_gradient_, align 8, !tbaa !63
  %cmp32 = icmp sgt i32 %1, 0
  br i1 %cmp32, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end9, %for.cond.preheader
  %call1.i25 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
  br label %return

for.body:                                         ; preds = %if.end9, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %if.end9 ]
  %2 = trunc i64 %indvars.iv to i32
  %rem = urem i32 %2, 10
  %cmp2 = icmp eq i32 %rem, 0
  br i1 %cmp2, label %if.then3, label %if.end9

if.then3:                                         ; preds = %for.body
  %cmp4.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp4.not, label %if.end, label %if.then5

if.then5:                                         ; preds = %if.then3
  %call1.i27 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
  br label %if.end

if.end:                                           ; preds = %if.then5, %if.then3
  %call7 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %2)
  %call1.i29 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call7, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i64 1)
  br label %if.end9

if.end9:                                          ; preds = %if.end, %for.body
  %call1.i31 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %3 = load double*, double** %gradient_, align 8, !tbaa !27
  %arrayidx = getelementptr inbounds double, double* %3, i64 %indvars.iv
  %4 = load double, double* %arrayidx, align 8, !tbaa !43
  %call.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, double %4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, i32* %max_gradient_, align 8, !tbaa !63
  %6 = sext i32 %5 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !69

if.else:                                          ; preds = %entry
  %call1.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i64 0, i64 0), i64 25)
  br label %return

return:                                           ; preds = %if.else, %for.cond.cleanup
  ret i1 %tobool.i
}

; Function Attrs: uwtable
define dso_local void @_ZNK5adept5Stack10print_gapsERSo(%"class.adept::Stack"* nonnull readonly dereferenceable(149) %this, %"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os) local_unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %gap_list_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4
  %_M_next.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %it.sroa.0.022 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i, align 8, !tbaa !28
  %0 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0
  %cmp.i.not23 = icmp eq %"struct.std::__detail::_List_node_base"* %it.sroa.0.022, %0
  br i1 %cmp.i.not23, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %entry, %for.body
  %it.sroa.0.024 = phi %"struct.std::__detail::_List_node_base"* [ %it.sroa.0.0, %for.body ], [ %it.sroa.0.022, %entry ]
  %_M_storage.i.i17 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.024, i64 1
  %1 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i17 to %"struct.adept::Gap"*
  %start = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i17 to i32*
  %2 = load i32, i32* %start, align 4, !tbaa !54
  %call7 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %2)
  %call1.i16 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call7, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i64 1)
  %end = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %1, i64 0, i32 1
  %3 = load i32, i32* %end, align 4, !tbaa !52
  %call10 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %call7, i32 %3)
  %call1.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %_M_next.i14 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.024, i64 0, i32 0
  %it.sroa.0.0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i14, align 8, !tbaa !28
  %cmp.i.not = icmp eq %"struct.std::__detail::_List_node_base"* %it.sroa.0.0, %0
  br i1 %cmp.i.not, label %for.cond.cleanup, label %for.body, !llvm.loop !70
}

; Function Attrs: uwtable mustprogress
define dso_local void @_ZN5adept5Stack20initialize_gradientsEv(%"class.adept::Stack"* nocapture nonnull dereferenceable(149) %this) local_unnamed_addr #8 align 2 {
entry:
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %0 = load i32, i32* %max_gradient_, align 8, !tbaa !63
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %n_allocated_gradients_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 7
  %1 = load i32, i32* %n_allocated_gradients_, align 4, !tbaa !71
  %cmp3 = icmp slt i32 %1, %0
  %gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
  br i1 %cmp3, label %if.then4, label %if.then.for.body.lr.ph_crit_edge

if.then.for.body.lr.ph_crit_edge:                 ; preds = %if.then
  %.phi.trans.insert = bitcast double** %gradient_ to i8**
  %.pre3 = load i8*, i8** %.phi.trans.insert, align 8, !tbaa !27
  br label %for.body.lr.ph

if.then4:                                         ; preds = %if.then
  %2 = load double*, double** %gradient_, align 8, !tbaa !27
  %tobool.not = icmp eq double* %2, null
  br i1 %tobool.not, label %if.end11, label %delete.notnull

delete.notnull:                                   ; preds = %if.then4
  %3 = bitcast double* %2 to i8*
  tail call void @_ZdaPv(i8* %3) #34
  %.pre = load i32, i32* %max_gradient_, align 8, !tbaa !63
  br label %if.end11

if.end11:                                         ; preds = %delete.notnull, %if.then4
  %4 = phi i32 [ %.pre, %delete.notnull ], [ %0, %if.then4 ]
  %conv = sext i32 %4 to i64
  %5 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 8)
  %6 = extractvalue { i64, i1 } %5, 1
  %7 = extractvalue { i64, i1 } %5, 0
  %8 = select i1 %6, i64 -1, i64 %7
  %call = tail call noalias nonnull i8* @_Znam(i64 %8) #36
  %9 = bitcast double** %gradient_ to i8**
  store i8* %call, i8** %9, align 8, !tbaa !27
  store i32 %4, i32* %n_allocated_gradients_, align 4, !tbaa !71
  %cmp1320 = icmp sgt i32 %4, 0
  br i1 %cmp1320, label %for.body.lr.ph, label %if.end15

for.body.lr.ph:                                   ; preds = %if.then.for.body.lr.ph_crit_edge, %if.end11
  %10 = phi i8* [ %call, %if.end11 ], [ %.pre3, %if.then.for.body.lr.ph_crit_edge ]
  %11 = phi i32 [ %4, %if.end11 ], [ %0, %if.then.for.body.lr.ph_crit_edge ]
  %12 = zext i32 %11 to i64
  %13 = shl nuw nsw i64 %12, 3
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 %13, i1 false)
  br label %if.end15

if.end15:                                         ; preds = %for.body.lr.ph, %if.end11, %entry
  %gradients_initialized_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 10
  store i8 1, i8* %gradients_initialized_, align 8, !tbaa !39
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #9

; Function Attrs: nobuiltin nofree allocsize(0)
declare dso_local nonnull i8* @_Znam(i64) local_unnamed_addr #10

; Function Attrs: uwtable
define dso_local void @_ZNK5adept5Stack12print_statusERSo(%"class.adept::Stack"* nonnull dereferenceable(149) %this, %"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os) local_unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %call1.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.36, i64 0, i64 0), i64 41)
  %0 = bitcast %"class.adept::Stack"* %this to i8*
  %call.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIPKvEERSoT_(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i8* nonnull %0)
  %call1.i142 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call.i, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i64 3)
  %is_thread_unsafe_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 11
  %1 = load i8, i8* %is_thread_unsafe_, align 1, !tbaa !19, !range !25
  %tobool = icmp ne i8 %1, 0
  %2 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8
  %cmp = icmp ne %"class.adept::Stack"* %2, %this
  %3 = or i1 %tobool, %cmp
  br i1 %3, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %call1.i144 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([37 x i8], [37 x i8]* @.str.38, i64 0, i64 0), i64 36)
  br label %if.end13

if.else:                                          ; preds = %entry
  %4 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept28_stack_current_thread_unsafeE, align 8
  %cmp8 = icmp eq %"class.adept::Stack"* %4, %this
  %or.cond110 = and i1 %tobool, %cmp8
  br i1 %or.cond110, label %if.then9, label %if.else11

if.then9:                                         ; preds = %if.else
  %call1.i146 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i64 0, i64 0), i64 38)
  br label %if.end13

if.else11:                                        ; preds = %if.else
  %call1.i148 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.40, i64 0, i64 0), i64 22)
  br label %if.end13

if.end13:                                         ; preds = %if.else11, %if.then9, %if.then
  %call1.i150 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.41, i64 0, i64 0), i64 21)
  %is_recording_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 12
  %5 = load i8, i8* %is_recording_, align 2, !tbaa !72, !range !25
  %tobool15.not = icmp eq i8 %5, 0
  br i1 %tobool15.not, label %if.else18, label %if.then16

if.then16:                                        ; preds = %if.end13
  %call1.i152 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([23 x i8], [23 x i8]* @.str.42, i64 0, i64 0), i64 22)
  br label %if.end20

if.else18:                                        ; preds = %if.end13
  %call1.i154 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.43, i64 0, i64 0), i64 26)
  br label %if.end20

if.end20:                                         ; preds = %if.else18, %if.then16
  %call1.i156 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i64 6)
  %n_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %6 = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  %sub = add nsw i32 %6, -1
  %call23 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %sub)
  %call1.i158 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call23, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i64 0, i64 0), i64 13)
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 4
  %7 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %call26 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %call23, i32 %7)
  %call1.i160 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call26, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i64 11)
  %call1.i162 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0), i64 5)
  %n_operations_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 5
  %8 = load i32, i32* %n_operations_.i, align 8, !tbaa !74
  %call30 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %8)
  %call1.i164 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call30, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i64 0, i64 0), i64 13)
  %n_allocated_operations_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 6
  %9 = load i32, i32* %n_allocated_operations_.i, align 4, !tbaa !75
  %call33 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %call30, i32 %9)
  %call1.i166 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call33, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i64 0, i64 0), i64 12)
  %call1.i168 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i64 6)
  %n_gradients_registered_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 9
  %10 = load i32, i32* %n_gradients_registered_.i, align 4, !tbaa !51
  %call37 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %10)
  %call1.i170 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call37, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i64 0, i64 0), i64 32)
  %call1.i172 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i64 15)
  %max_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %11 = load i32, i32* %max_gradient_.i, align 8, !tbaa !63
  %call41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %11)
  %call1.i174 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call41, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i64 0, i64 0), i64 23)
  %i_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 6
  %12 = load i32, i32* %i_gradient_.i, align 8, !tbaa !62
  %call44 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %call41, i32 %12)
  %call1.i176 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call44, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0), i64 2)
  %gap_list_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4
  %13 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %14 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i, align 8, !tbaa !28
  %cmp.i = icmp eq %"struct.std::__detail::_List_node_base"* %14, %13
  br i1 %cmp.i, label %if.then47, label %if.else49

if.then47:                                        ; preds = %if.end20
  %call1.i178 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.54, i64 0, i64 0), i64 32)
  br label %if.end56

if.else49:                                        ; preds = %if.end20
  %call1.i180 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.55, i64 0, i64 0), i64 24)
  %_M_size.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %15 = load i64, i64* %_M_size.i.i.i, align 8, !tbaa !56
  %call.i181 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i64 %15)
  %call1.i183 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call.i181, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0), i64 7)
  %it.sroa.0.022.i = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i, align 8, !tbaa !28
  %cmp.i.not23.i = icmp eq %"struct.std::__detail::_List_node_base"* %it.sroa.0.022.i, %13
  br i1 %cmp.i.not23.i, label %_ZNK5adept5Stack10print_gapsERSo.exit, label %for.body.i

for.body.i:                                       ; preds = %if.else49, %for.body.i
  %it.sroa.0.024.i = phi %"struct.std::__detail::_List_node_base"* [ %it.sroa.0.0.i, %for.body.i ], [ %it.sroa.0.022.i, %if.else49 ]
  %_M_storage.i.i17.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.024.i, i64 1
  %16 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i17.i to %"struct.adept::Gap"*
  %start.i = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i17.i to i32*
  %17 = load i32, i32* %start.i, align 4, !tbaa !54
  %call7.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %17)
  %call1.i16.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call7.i, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i64 1)
  %end.i = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %16, i64 0, i32 1
  %18 = load i32, i32* %end.i, align 4, !tbaa !52
  %call10.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %call7.i, i32 %18)
  %call1.i.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call10.i, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %_M_next.i14.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.024.i, i64 0, i32 0
  %it.sroa.0.0.i = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i14.i, align 8, !tbaa !28
  %cmp.i.not.i = icmp eq %"struct.std::__detail::_List_node_base"* %it.sroa.0.0.i, %13
  br i1 %cmp.i.not.i, label %_ZNK5adept5Stack10print_gapsERSo.exit, label %for.body.i, !llvm.loop !70

_ZNK5adept5Stack10print_gapsERSo.exit:            ; preds = %for.body.i, %if.else49
  %call1.i185 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0), i64 2)
  br label %if.end56

if.end56:                                         ; preds = %_ZNK5adept5Stack10print_gapsERSo.exit, %if.then47
  %call1.i187 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i64 0, i64 0), i64 23)
  %gradients_initialized_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 10
  %19 = load i8, i8* %gradients_initialized_.i, align 8, !tbaa !39, !range !25
  %tobool.i.not = icmp eq i8 %19, 0
  br i1 %tobool.i.not, label %if.else67, label %if.then59

if.then59:                                        ; preds = %if.end56
  %call1.i189 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i64 6)
  %20 = load i32, i32* %max_gradient_.i, align 8, !tbaa !63
  %call62 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %20)
  %call1.i192 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call62, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.58, i64 0, i64 0), i64 21)
  br label %if.end72

if.else67:                                        ; preds = %if.end56
  %call1.i196 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.59, i64 0, i64 0), i64 28)
  br label %if.end72

if.end72:                                         ; preds = %if.else67, %if.then59
  %os.sink = phi %"class.std::basic_ostream"* [ %os, %if.else67 ], [ %call62, %if.then59 ]
  %n_allocated_gradients_.i197 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 7
  %21 = load i32, i32* %n_allocated_gradients_.i197, align 4, !tbaa !71
  %call70 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os.sink, i32 %21)
  %call1.i199 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call70, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i64 0, i64 0), i64 12)
  %call1.i201 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i64 0, i64 0), i64 21)
  %_M_finish.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %22 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !76
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %23 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
  %sub.ptr.lhs.cast.i.i = ptrtoint i32* %22 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint i32* %23 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %24 = lshr exact i64 %sub.ptr.sub.i.i, 2
  %conv.i = trunc i64 %24 to i32
  %call75 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %conv.i)
  %call1.i203 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call75, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i64 1)
  %_M_finish.i.i204 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %25 = load i32*, i32** %_M_finish.i.i204, align 8, !tbaa !76
  %_M_start.i.i205 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %26 = load i32*, i32** %_M_start.i.i205, align 8, !tbaa !33
  %sub.ptr.lhs.cast.i.i206 = ptrtoint i32* %25 to i64
  %sub.ptr.rhs.cast.i.i207 = ptrtoint i32* %26 to i64
  %sub.ptr.sub.i.i208 = sub i64 %sub.ptr.lhs.cast.i.i206, %sub.ptr.rhs.cast.i.i207
  %27 = lshr exact i64 %sub.ptr.sub.i.i208, 2
  %conv.i209 = trunc i64 %27 to i32
  %call78 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %call75, i32 %conv.i209)
  %call1.i211 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call78, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
  %28 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !76
  %29 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
  %sub.ptr.lhs.cast.i.i214 = ptrtoint i32* %28 to i64
  %sub.ptr.rhs.cast.i.i215 = ptrtoint i32* %29 to i64
  %sub.ptr.sub.i.i216 = sub i64 %sub.ptr.lhs.cast.i.i214, %sub.ptr.rhs.cast.i.i215
  %30 = lshr exact i64 %sub.ptr.sub.i.i216, 2
  %conv.i217 = trunc i64 %30 to i32
  %cmp81 = icmp slt i32 %conv.i217, 11
  br i1 %cmp81, label %land.lhs.true82, label %if.end108

land.lhs.true82:                                  ; preds = %if.end72
  %31 = load i32*, i32** %_M_finish.i.i204, align 8, !tbaa !76
  %32 = load i32*, i32** %_M_start.i.i205, align 8, !tbaa !33
  %sub.ptr.lhs.cast.i.i220 = ptrtoint i32* %31 to i64
  %sub.ptr.rhs.cast.i.i221 = ptrtoint i32* %32 to i64
  %sub.ptr.sub.i.i222 = sub i64 %sub.ptr.lhs.cast.i.i220, %sub.ptr.rhs.cast.i.i221
  %33 = lshr exact i64 %sub.ptr.sub.i.i222, 2
  %conv.i223 = trunc i64 %33 to i32
  %cmp84 = icmp slt i32 %conv.i223, 11
  br i1 %cmp84, label %if.then85, label %if.end108

if.then85:                                        ; preds = %land.lhs.true82
  %call1.i225 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0), i64 26)
  %34 = load i32*, i32** %_M_finish.i.i204, align 8, !tbaa !76
  %35 = load i32*, i32** %_M_start.i.i205, align 8, !tbaa !33
  %cmp88255.not = icmp eq i32* %34, %35
  br i1 %cmp88255.not, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %if.then85
  %call1.i227 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.63, i64 0, i64 0), i64 27)
  %36 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !76
  %37 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
  %cmp97249.not = icmp eq i32* %36, %37
  br i1 %cmp97249.not, label %for.cond.cleanup98, label %for.body99

for.body:                                         ; preds = %if.then85, %for.body
  %i.0256 = phi i64 [ %inc, %for.body ], [ 0, %if.then85 ]
  %call1.i229 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %38 = load i32*, i32** %_M_start.i.i205, align 8, !tbaa !33
  %add.ptr.i = getelementptr inbounds i32, i32* %38, i64 %i.0256
  %39 = load i32, i32* %add.ptr.i, align 4, !tbaa !46
  %call92 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %39)
  %inc = add nuw i64 %i.0256, 1
  %40 = load i32*, i32** %_M_finish.i.i204, align 8, !tbaa !76
  %41 = load i32*, i32** %_M_start.i.i205, align 8, !tbaa !33
  %sub.ptr.lhs.cast.i = ptrtoint i32* %40 to i64
  %sub.ptr.rhs.cast.i = ptrtoint i32* %41 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 2
  %cmp88 = icmp ult i64 %inc, %sub.ptr.div.i
  br i1 %cmp88, label %for.body, label %for.cond.cleanup, !llvm.loop !77

for.cond.cleanup98:                               ; preds = %for.body99, %for.cond.cleanup
  %call1.i238 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
  br label %if.end108

for.body99:                                       ; preds = %for.cond.cleanup, %for.body99
  %i94.0250 = phi i64 [ %inc105, %for.body99 ], [ 0, %for.cond.cleanup ]
  %call1.i240 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %42 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
  %add.ptr.i242 = getelementptr inbounds i32, i32* %42, i64 %i94.0250
  %43 = load i32, i32* %add.ptr.i242, align 4, !tbaa !46
  %call103 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %43)
  %inc105 = add nuw i64 %i94.0250, 1
  %44 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !76
  %45 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
  %sub.ptr.lhs.cast.i233 = ptrtoint i32* %44 to i64
  %sub.ptr.rhs.cast.i234 = ptrtoint i32* %45 to i64
  %sub.ptr.sub.i235 = sub i64 %sub.ptr.lhs.cast.i233, %sub.ptr.rhs.cast.i234
  %sub.ptr.div.i236 = ashr exact i64 %sub.ptr.sub.i235, 2
  %cmp97 = icmp ult i64 %inc105, %sub.ptr.div.i236
  br i1 %cmp97, label %for.body99, label %for.cond.cleanup98, !llvm.loop !78

if.end108:                                        ; preds = %for.cond.cleanup98, %land.lhs.true82, %if.end72
  %call1.i244 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @.str.64, i64 0, i64 0), i64 50)
  ret void
}

; Function Attrs: uwtable mustprogress
define dso_local void @_ZN5adept8internal16StackStorageOrig20grow_operation_stackEi(%"class.adept::internal::StackStorageOrig"* nocapture nonnull dereferenceable(40) %this, i32 %min) local_unnamed_addr #8 align 2 {
entry:
  %n_allocated_operations_ = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %this, i64 0, i32 6
  %0 = load i32, i32* %n_allocated_operations_, align 4, !tbaa !75
  %mul = shl nsw i32 %0, 1
  %cmp = icmp sgt i32 %min, 0
  %add = add nsw i32 %0, %min
  %cmp3 = icmp slt i32 %mul, %add
  %or.cond = and i1 %cmp, %cmp3
  %add4 = select i1 %or.cond, i32 %min, i32 0
  %new_size.0 = add nsw i32 %add4, %mul
  %conv = sext i32 %new_size.0 to i64
  %1 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 8)
  %2 = extractvalue { i64, i1 } %1, 1
  %3 = extractvalue { i64, i1 } %1, 0
  %4 = select i1 %2, i64 -1, i64 %3
  %call = tail call noalias nonnull i8* @_Znam(i64 %4) #36
  %5 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 4)
  %6 = extractvalue { i64, i1 } %5, 1
  %7 = extractvalue { i64, i1 } %5, 0
  %8 = select i1 %6, i64 -1, i64 %7
  %call6 = tail call noalias nonnull i8* @_Znam(i64 %8) #36
  %multiplier_ = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %this, i64 0, i32 1
  %9 = bitcast double** %multiplier_ to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !37
  %n_operations_ = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %this, i64 0, i32 5
  %11 = load i32, i32* %n_operations_, align 8, !tbaa !74
  %conv7 = sext i32 %11 to i64
  %mul8 = shl nsw i64 %conv7, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %call, i8* align 8 %10, i64 %mul8, i1 false)
  %index_ = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %this, i64 0, i32 2
  %12 = bitcast i32** %index_ to i8**
  %13 = load i8*, i8** %12, align 8, !tbaa !38
  %mul11 = shl nsw i64 %conv7, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call6, i8* align 4 %13, i64 %mul11, i1 false)
  %isnull = icmp eq i8* %10, null
  %14 = bitcast i8* %13 to i32*
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  tail call void @_ZdaPv(i8* nonnull %10) #34
  %.pr = load i32*, i32** %index_, align 8, !tbaa !38
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  %15 = phi i32* [ %.pr, %delete.notnull ], [ %14, %entry ]
  %isnull14 = icmp eq i32* %15, null
  br i1 %isnull14, label %delete.end16, label %delete.notnull15

delete.notnull15:                                 ; preds = %delete.end
  %16 = bitcast i32* %15 to i8*
  tail call void @_ZdaPv(i8* %16) #34
  br label %delete.end16

delete.end16:                                     ; preds = %delete.notnull15, %delete.end
  store i8* %call, i8** %9, align 8, !tbaa !37
  store i8* %call6, i8** %12, align 8, !tbaa !38
  store i32 %new_size.0, i32* %n_allocated_operations_, align 4, !tbaa !75
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi(%"class.adept::internal::StackStorageOrig"* nocapture nonnull dereferenceable(40) %this, i32 %min) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %n_allocated_statements_ = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %this, i64 0, i32 4
  %0 = load i32, i32* %n_allocated_statements_, align 4, !tbaa !73
  %mul = shl nsw i32 %0, 1
  %cmp = icmp sgt i32 %min, 0
  %add = add nsw i32 %0, %min
  %cmp3 = icmp slt i32 %mul, %add
  %or.cond = and i1 %cmp, %cmp3
  %add4 = select i1 %or.cond, i32 %min, i32 0
  %new_size.0 = add nsw i32 %add4, %mul
  %conv = sext i32 %new_size.0 to i64
  %1 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 8)
  %2 = extractvalue { i64, i1 } %1, 1
  %3 = extractvalue { i64, i1 } %1, 0
  %4 = select i1 %2, i64 -1, i64 %3
  %call = tail call noalias nonnull i8* @_Znam(i64 %4) #36
  %5 = bitcast %"class.adept::internal::StackStorageOrig"* %this to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !35
  %n_statements_ = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %this, i64 0, i32 3
  %7 = load i32, i32* %n_statements_, align 8, !tbaa !40
  %conv5 = sext i32 %7 to i64
  %mul6 = shl nsw i64 %conv5, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call, i8* align 4 %6, i64 %mul6, i1 false)
  %isnull = icmp eq i8* %6, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  tail call void @_ZdaPv(i8* nonnull %6) #34
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  store i8* %call, i8** %5, align 8, !tbaa !35
  store i32 %new_size.0, i32* %n_allocated_statements_, align 4, !tbaa !73
  ret void
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_gemmEbcciiidPKdiS2_idPdi(i1 zeroext %Order, i8 signext %TransA, i8 signext %TransB, i32 %M, i32 %N, i32 %K, double %alpha, double* nocapture readnone %A, i32 %lda, double* nocapture readnone %B, i32 %ldb, double %beta, double* nocapture readnone %C, i32 %ldc) local_unnamed_addr #11 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 73, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(73) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(73) getelementptr inbounds ([74 x i8], [74 x i8]* @.str.65, i64 0, i64 0), i64 73, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_gemmEbcciiifPKfiS2_ifPfi(i1 zeroext %Order, i8 signext %TransA, i8 signext %TransB, i32 %M, i32 %N, i32 %K, float %alpha, float* nocapture readnone %A, i32 %lda, float* nocapture readnone %B, i32 %ldb, float %beta, float* nocapture readnone %C, i32 %ldc) local_unnamed_addr #11 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 73, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(73) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(73) getelementptr inbounds ([74 x i8], [74 x i8]* @.str.65, i64 0, i64 0), i64 73, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_gemvEbciidPKdiS2_idPdi(i1 zeroext %Order, i8 signext %TransA, i32 %M, i32 %N, double %alpha, double* nocapture readnone %A, i32 %lda, double* nocapture readnone %X, i32 %incX, double %beta, double* nocapture readnone %Y, i32 %incY) local_unnamed_addr #11 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 73, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(73) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(73) getelementptr inbounds ([74 x i8], [74 x i8]* @.str.66, i64 0, i64 0), i64 73, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_gemvEbciifPKfiS2_ifPfi(i1 zeroext %Order, i8 signext %TransA, i32 %M, i32 %N, float %alpha, float* nocapture readnone %A, i32 %lda, float* nocapture readnone %X, i32 %incX, float %beta, float* nocapture readnone %Y, i32 %incY) local_unnamed_addr #11 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 73, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(73) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(73) getelementptr inbounds ([74 x i8], [74 x i8]* @.str.66, i64 0, i64 0), i64 73, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_symmEbcciidPKdiS2_idPdi(i1 zeroext %Order, i8 signext %Side, i8 signext %Uplo, i32 %M, i32 %N, double %alpha, double* nocapture readnone %A, i32 %lda, double* nocapture readnone %B, i32 %ldb, double %beta, double* nocapture readnone %C, i32 %ldc) local_unnamed_addr #11 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 83, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(83) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(83) getelementptr inbounds ([84 x i8], [84 x i8]* @.str.67, i64 0, i64 0), i64 83, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_symmEbcciifPKfiS2_ifPfi(i1 zeroext %Order, i8 signext %Side, i8 signext %Uplo, i32 %M, i32 %N, float %alpha, float* nocapture readnone %A, i32 %lda, float* nocapture readnone %B, i32 %ldb, float %beta, float* nocapture readnone %C, i32 %ldc) local_unnamed_addr #11 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 83, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(83) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(83) getelementptr inbounds ([84 x i8], [84 x i8]* @.str.67, i64 0, i64 0), i64 83, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_symvEbcidPKdiS2_idPdi(i1 zeroext %Order, i8 signext %Uplo, i32 %N, double %alpha, double* nocapture readnone %A, i32 %lda, double* nocapture readnone %X, i32 %incX, double %beta, double* nocapture readnone %Y, i32 %incY) local_unnamed_addr #11 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 83, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(83) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(83) getelementptr inbounds ([84 x i8], [84 x i8]* @.str.68, i64 0, i64 0), i64 83, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_symvEbcifPKfiS2_ifPfi(i1 zeroext %Order, i8 signext %Uplo, i32 %N, float %alpha, float* nocapture readnone %A, i32 %lda, float* nocapture readnone %X, i32 %incX, float %beta, float* nocapture readnone %Y, i32 %incY) local_unnamed_addr #11 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 83, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(83) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(83) getelementptr inbounds ([84 x i8], [84 x i8]* @.str.68, i64 0, i64 0), i64 83, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_gbmvEbciiiidPKdiS2_idPdi(i1 zeroext %Order, i8 signext %TransA, i32 %M, i32 %N, i32 %KL, i32 %KU, double %alpha, double* nocapture readnone %A, i32 %lda, double* nocapture readnone %X, i32 %incX, double %beta, double* nocapture readnone %Y, i32 %incY) local_unnamed_addr #11 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 78, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(78) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(78) getelementptr inbounds ([79 x i8], [79 x i8]* @.str.69, i64 0, i64 0), i64 78, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_gbmvEbciiiifPKfiS2_ifPfi(i1 zeroext %Order, i8 signext %TransA, i32 %M, i32 %N, i32 %KL, i32 %KU, float %alpha, float* nocapture readnone %A, i32 %lda, float* nocapture readnone %X, i32 %incX, float %beta, float* nocapture readnone %Y, i32 %incY) local_unnamed_addr #11 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 78, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(78) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(78) getelementptr inbounds ([79 x i8], [79 x i8]* @.str.69, i64 0, i64 0), i64 78, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept3invIfEENS_5ArrayILi2ET_Lb0EEERKS3_(%"class.adept::Array"* noalias sret(%"class.adept::Array") align 8 %agg.result, %"class.adept::Array"* nonnull align 8 dereferenceable(32) %A) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept3invIfLNS_8internal21SymmMatrixOrientationE0EEENS_13SpecialMatrixIT_NS1_10SymmEngineIXT0_EEELb0EEERKS7_(%"class.adept::SpecialMatrix"* noalias sret(%"class.adept::SpecialMatrix") align 8 %agg.result, %"class.adept::SpecialMatrix"* nonnull align 8 dereferenceable(24) %A) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept3invIfLNS_8internal21SymmMatrixOrientationE1EEENS_13SpecialMatrixIT_NS1_10SymmEngineIXT0_EEELb0EEERKS7_(%"class.adept::SpecialMatrix.9"* noalias sret(%"class.adept::SpecialMatrix.9") align 8 %agg.result, %"class.adept::SpecialMatrix.9"* nonnull align 8 dereferenceable(24) %A) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept3invIdEENS_5ArrayILi2ET_Lb0EEERKS3_(%"class.adept::Array.12"* noalias sret(%"class.adept::Array.12") align 8 %agg.result, %"class.adept::Array.12"* nonnull align 8 dereferenceable(32) %A) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept3invIdLNS_8internal21SymmMatrixOrientationE0EEENS_13SpecialMatrixIT_NS1_10SymmEngineIXT0_EEELb0EEERKS7_(%"class.adept::SpecialMatrix.15"* noalias sret(%"class.adept::SpecialMatrix.15") align 8 %agg.result, %"class.adept::SpecialMatrix.15"* nonnull align 8 dereferenceable(24) %A) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept3invIdLNS_8internal21SymmMatrixOrientationE1EEENS_13SpecialMatrixIT_NS1_10SymmEngineIXT0_EEELb0EEERKS7_(%"class.adept::SpecialMatrix.17"* noalias sret(%"class.adept::SpecialMatrix.17") align 8 %agg.result, %"class.adept::SpecialMatrix.17"* nonnull align 8 dereferenceable(24) %A) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @_ZNK5adept5Stack23jacobian_forward_kernelEPd(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, double* noalias nocapture %gradient_multipass_b) local_unnamed_addr #12 align 2 {
entry:
  %n_statements_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %0 = load i32, i32* %n_statements_, align 8, !tbaa !40
  %cmp45 = icmp sgt i32 %0, 1
  br i1 %cmp45, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %statement_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %1 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !35
  %index_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %multiplier_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %wide.trip.count = zext i32 %0 to i64
  %end_plus_one.phi.trans.insert = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %1, i64 0, i32 1
  %.pre = load i32, i32* %end_plus_one.phi.trans.insert, align 4, !tbaa !45
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.cond.cleanup8, %entry
  ret void

for.body:                                         ; preds = %for.cond.cleanup8, %for.body.lr.ph
  %2 = phi i32 [ %.pre, %for.body.lr.ph ], [ %3, %for.cond.cleanup8 ]
  %indvars.iv47 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next48, %for.cond.cleanup8 ]
  %end_plus_one6 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %1, i64 %indvars.iv47, i32 1
  %3 = load i32, i32* %end_plus_one6, align 4, !tbaa !45
  %cmp742 = icmp slt i32 %2, %3
  br i1 %cmp742, label %for.body9.lr.ph, label %for.cond.cleanup8

for.body9.lr.ph:                                  ; preds = %for.body
  %4 = load i32*, i32** %index_, align 8, !tbaa !38
  %5 = load double*, double** %multiplier_, align 8, !tbaa !37
  %6 = sext i32 %2 to i64
  %7 = sext i32 %3 to i64
  br label %for.body9

for.cond.cleanup8:                                ; preds = %for.body9, %for.body
  %a.sroa.0.0.lcssa = phi <2 x double> [ zeroinitializer, %for.body ], [ %add.i.i, %for.body9 ]
  %index = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %1, i64 %indvars.iv47, i32 0
  %8 = load i32, i32* %index, align 4, !tbaa !41
  %mul15 = shl nsw i32 %8, 1
  %idx.ext16 = sext i32 %mul15 to i64
  %add.ptr17 = getelementptr inbounds double, double* %gradient_multipass_b, i64 %idx.ext16
  %9 = bitcast double* %add.ptr17 to <2 x double>*
  store <2 x double> %a.sroa.0.0.lcssa, <2 x double>* %9, align 16, !tbaa !12, !alias.scope !79
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !82

for.body9:                                        ; preds = %for.body9, %for.body9.lr.ph
  %indvars.iv = phi i64 [ %6, %for.body9.lr.ph ], [ %indvars.iv.next, %for.body9 ]
  %a.sroa.0.043 = phi <2 x double> [ zeroinitializer, %for.body9.lr.ph ], [ %add.i.i, %for.body9 ]
  %arrayidx11 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv
  %10 = load i32, i32* %arrayidx11, align 4, !tbaa !46
  %mul = shl nsw i32 %10, 1
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds double, double* %gradient_multipass_b, i64 %idx.ext
  %11 = bitcast double* %add.ptr to <2 x double>*
  %12 = load <2 x double>, <2 x double>* %11, align 16, !tbaa !12
  %arrayidx13 = getelementptr inbounds double, double* %5, i64 %indvars.iv
  %13 = load double, double* %arrayidx13, align 8, !tbaa !43
  %vecinit.i.i = insertelement <2 x double> undef, double %13, i32 0
  %vecinit1.i.i = shufflevector <2 x double> %vecinit.i.i, <2 x double> undef, <2 x i32> zeroinitializer
  %mul.i.i = fmul fast <2 x double> %vecinit1.i.i, %12
  %add.i.i = fadd fast <2 x double> %mul.i.i, %a.sroa.0.043
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not3 = icmp eq i64 %indvars.iv.next, %7
  br i1 %exitcond.not3, label %for.cond.cleanup8, label %for.body9, !llvm.loop !83
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, double* noalias nocapture %gradient_multipass_b, i32 %n_extra) local_unnamed_addr #13 align 2 {
entry:
  %a = alloca %"struct.adept::Block", align 8
  %a76 = bitcast %"struct.adept::Block"* %a to i8*
  %n_statements_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %0 = load i32, i32* %n_statements_, align 8, !tbaa !40
  %cmp70 = icmp sgt i32 %0, 1
  br i1 %cmp70, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %statement_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %1 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !35
  %cmp1163 = icmp sgt i32 %n_extra, 0
  %multiplier_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %index_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %2 = zext i32 %n_extra to i64
  %3 = shl nuw nsw i64 %2, 3
  %wide.trip.count83 = zext i32 %0 to i64
  %end_plus_one.phi.trans.insert = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %1, i64 0, i32 1
  %.pre = load i32, i32* %end_plus_one.phi.trans.insert, align 4, !tbaa !45
  %min.iters.check = icmp ult i32 %n_extra, 4
  %n.vec = and i64 %2, 4294967292
  %cmp.n = icmp eq i64 %n.vec, %2
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.cond.cleanup28, %entry
  ret void

for.body:                                         ; preds = %for.cond.cleanup28, %for.body.lr.ph
  %4 = phi i32 [ %.pre, %for.body.lr.ph ], [ %5, %for.cond.cleanup28 ]
  %indvars.iv80 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next81, %for.cond.cleanup28 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %a76) #32
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %a76, i8 0, i64 16, i1 false) #32
  %end_plus_one6 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %1, i64 %indvars.iv80, i32 1
  %5 = load i32, i32* %end_plus_one6, align 4, !tbaa !45
  %cmp765 = icmp slt i32 %4, %5
  br i1 %cmp765, label %for.cond10.preheader.lr.ph, label %for.cond26.preheader

for.cond10.preheader.lr.ph:                       ; preds = %for.body
  %6 = sext i32 %4 to i64
  %7 = sext i32 %5 to i64
  br label %for.cond10.preheader

for.cond26.preheader:                             ; preds = %for.cond.cleanup12, %for.body
  br i1 %cmp1163, label %for.body29.lr.ph, label %for.cond.cleanup28

for.body29.lr.ph:                                 ; preds = %for.cond26.preheader
  %index = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %1, i64 %indvars.iv80, i32 0
  %8 = load i32, i32* %index, align 4, !tbaa !41
  %9 = shl i32 %8, 1
  %10 = sext i32 %9 to i64
  %scevgep = getelementptr double, double* %gradient_multipass_b, i64 %10
  %scevgep75 = bitcast double* %scevgep to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %scevgep75, i8* nonnull align 8 %a76, i64 %3, i1 false)
  br label %for.cond.cleanup28

for.cond10.preheader:                             ; preds = %for.cond.cleanup12, %for.cond10.preheader.lr.ph
  %indvars.iv73 = phi i64 [ %6, %for.cond10.preheader.lr.ph ], [ %indvars.iv.next74, %for.cond.cleanup12 ]
  br i1 %cmp1163, label %for.body13.lr.ph, label %for.cond.cleanup12

for.body13.lr.ph:                                 ; preds = %for.cond10.preheader
  %11 = load double*, double** %multiplier_, align 8, !tbaa !37
  %arrayidx15 = getelementptr inbounds double, double* %11, i64 %indvars.iv73
  %12 = load double, double* %arrayidx15, align 8, !tbaa !43
  %13 = load i32*, i32** %index_, align 8, !tbaa !38
  %arrayidx17 = getelementptr inbounds i32, i32* %13, i64 %indvars.iv73
  %14 = load i32, i32* %arrayidx17, align 4, !tbaa !46
  %mul = shl nsw i32 %14, 1
  %15 = sext i32 %mul to i64
  br i1 %min.iters.check, label %for.body13.preheader, label %vector.ph

vector.ph:                                        ; preds = %for.body13.lr.ph
  %broadcast.splatinsert = insertelement <2 x double> poison, double %12, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert6 = insertelement <2 x double> poison, double %12, i32 0
  %broadcast.splat7 = shufflevector <2 x double> %broadcast.splatinsert6, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index4 = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %16 = add nsw i64 %index4, %15
  %17 = getelementptr inbounds double, double* %gradient_multipass_b, i64 %16
  %18 = bitcast double* %17 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %18, align 8, !tbaa !43
  %19 = getelementptr inbounds double, double* %17, i64 2
  %20 = bitcast double* %19 to <2 x double>*
  %wide.load5 = load <2 x double>, <2 x double>* %20, align 8, !tbaa !43
  %21 = fmul fast <2 x double> %wide.load, %broadcast.splat
  %22 = fmul fast <2 x double> %wide.load5, %broadcast.splat7
  %23 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %a, i64 0, i32 0, i64 %index4
  %24 = bitcast double* %23 to <2 x double>*
  %wide.load8 = load <2 x double>, <2 x double>* %24, align 8, !tbaa !43
  %25 = getelementptr inbounds double, double* %23, i64 2
  %26 = bitcast double* %25 to <2 x double>*
  %wide.load9 = load <2 x double>, <2 x double>* %26, align 8, !tbaa !43
  %27 = fadd fast <2 x double> %wide.load8, %21
  %28 = fadd fast <2 x double> %wide.load9, %22
  %29 = bitcast double* %23 to <2 x double>*
  store <2 x double> %27, <2 x double>* %29, align 8, !tbaa !43
  %30 = bitcast double* %25 to <2 x double>*
  store <2 x double> %28, <2 x double>* %30, align 8, !tbaa !43
  %index.next = add i64 %index4, 4
  %31 = icmp eq i64 %index.next, %n.vec
  br i1 %31, label %middle.block, label %vector.body, !llvm.loop !84

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond.cleanup12, label %for.body13.preheader

for.body13.preheader:                             ; preds = %for.body13.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body13.lr.ph ], [ %n.vec, %middle.block ]
  br label %for.body13

for.cond.cleanup12:                               ; preds = %for.body13, %middle.block, %for.cond10.preheader
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, 1
  %exitcond.not3 = icmp eq i64 %indvars.iv.next74, %7
  br i1 %exitcond.not3, label %for.cond26.preheader, label %for.cond10.preheader, !llvm.loop !86

for.body13:                                       ; preds = %for.body13.preheader, %for.body13
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body13 ], [ %indvars.iv.ph, %for.body13.preheader ]
  %32 = add nsw i64 %indvars.iv, %15
  %arrayidx19 = getelementptr inbounds double, double* %gradient_multipass_b, i64 %32
  %33 = load double, double* %arrayidx19, align 8, !tbaa !43
  %mul20 = fmul fast double %33, %12
  %arrayidx.i62 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %a, i64 0, i32 0, i64 %indvars.iv
  %34 = load double, double* %arrayidx.i62, align 8, !tbaa !43
  %add21 = fadd fast double %34, %mul20
  store double %add21, double* %arrayidx.i62, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %for.cond.cleanup12, label %for.body13, !llvm.loop !87

for.cond.cleanup28:                               ; preds = %for.body29.lr.ph, %for.cond26.preheader
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %a76) #32
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %for.cond.cleanup, label %for.body, !llvm.loop !88
}

; Function Attrs: uwtable
define dso_local void @_ZNK5adept5Stack23jacobian_forward_openmpEPd(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, double* nocapture %jacobian_out) local_unnamed_addr #14 align 2 {
entry:
  %result.i = alloca double*, align 8
  %_M_finish.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %0 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !76
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %1 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
  %sub.ptr.lhs.cast.i.i = ptrtoint i32* %0 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint i32* %1 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %2 = lshr exact i64 %sub.ptr.sub.i.i, 2
  %conv.i = trunc i64 %2 to i32
  %sub = add nsw i32 %conv.i, 1
  %div = sdiv i32 %sub, 2
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %3 = load i32, i32* %max_gradient_, align 8, !tbaa !63
  %mul = shl i32 %3, 1
  %4 = bitcast double** %result.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  %5 = bitcast double** %result.i to i8**
  %conv1.i = sext i32 %mul to i64
  %mul.i111 = shl nsw i64 %conv1.i, 3
  %call2.i = call i32 @posix_memalign(i8** nonnull %5, i64 16, i64 %mul.i111) #32
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit, label %if.then4.i

if.then4.i:                                       ; preds = %entry
  %exception.i = call i8* @__cxa_allocate_exception(i64 8) #32
  %6 = bitcast i8* %exception.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt9bad_alloc, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  call void @__cxa_throw(i8* %exception.i, i8* bitcast (i8** @_ZTISt9bad_alloc to i8*), i8* bitcast (void (%"class.std::bad_alloc"*)* @_ZNSt9bad_allocD1Ev to i8*)) #33
  unreachable

_ZN5adept8internal13alloc_alignedIdEEPT_i.exit:   ; preds = %entry
  %7 = load double*, double** %result.i, align 8, !tbaa !26
  %8 = bitcast double* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %cmp123 = icmp sgt i32 %conv.i, 0
  br i1 %cmp123, label %for.body.lr.ph, label %for.end55

for.body.lr.ph:                                   ; preds = %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit
  %sub5 = add nsw i32 %div, -1
  %9 = and i32 %conv.i, -2147483647
  %cmp7 = icmp eq i32 %9, 1
  %cmp9112 = icmp sgt i32 %3, 0
  %n_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %10 = load i32, i32* %n_statements_.i, align 8, !tbaa !40, !noalias !89
  %cmp45.i = icmp sgt i32 %10, 1
  %statement_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %index_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %multiplier_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %wide.trip.count.i = zext i32 %10 to i64
  %_M_finish.i.i102 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %_M_start.i.i103 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %11 = icmp sgt i32 %mul, 1
  %smax = select i1 %11, i32 %mul, i32 1
  %12 = zext i32 %smax to i64
  %13 = shl nuw nsw i64 %12, 3
  %14 = zext i32 %sub5 to i64
  %15 = icmp sgt i32 %div, 1
  %smax143 = select i1 %15, i32 %div, i32 1
  %wide.trip.count144 = zext i32 %smax143 to i64
  br label %for.body

for.body:                                         ; preds = %for.cond.cleanup28, %for.body.lr.ph
  %indvars.iv140 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next141, %for.cond.cleanup28 ]
  %16 = shl nuw nsw i64 %indvars.iv140, 1
  %cmp6 = icmp eq i64 %indvars.iv140, %14
  %or.cond = and i1 %cmp7, %cmp6
  %spec.select = select i1 %or.cond, i32 1, i32 2
  br i1 %cmp9112, label %for.body10.preheader, label %for.cond12.preheader

for.body10.preheader:                             ; preds = %for.body
  call void @llvm.memset.p0i8.i64(i8* align 8 %8, i8 0, i64 %13, i1 false)
  br label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.body10.preheader, %for.body
  %17 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
  %18 = icmp ugt i32 %spec.select, 1
  %umax = select i1 %18, i32 %spec.select, i32 1
  %wide.trip.count = zext i32 %umax to i64
  br label %for.body15

for.cond.cleanup14:                               ; preds = %for.body15
  call void @llvm.experimental.noalias.scope.decl(metadata !89)
  br i1 %cmp45.i, label %for.body.lr.ph.i, label %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.cleanup14
  %19 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i, align 8, !tbaa !35, !noalias !89
  %end_plus_one.phi.trans.insert.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %19, i64 0, i32 1
  %.pre.i = load i32, i32* %end_plus_one.phi.trans.insert.i, align 4, !tbaa !45, !noalias !89
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.cleanup8.i, %for.body.lr.ph.i
  %20 = phi i32 [ %.pre.i, %for.body.lr.ph.i ], [ %21, %for.cond.cleanup8.i ]
  %indvars.iv47.i = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next48.i, %for.cond.cleanup8.i ]
  %end_plus_one6.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %19, i64 %indvars.iv47.i, i32 1
  %21 = load i32, i32* %end_plus_one6.i, align 4, !tbaa !45, !noalias !89
  %cmp742.i = icmp slt i32 %20, %21
  br i1 %cmp742.i, label %for.body9.lr.ph.i, label %for.cond.cleanup8.i

for.body9.lr.ph.i:                                ; preds = %for.body.i
  %22 = load i32*, i32** %index_.i, align 8, !tbaa !38, !noalias !89
  %23 = load double*, double** %multiplier_.i, align 8, !tbaa !37, !noalias !89
  %24 = sext i32 %20 to i64
  %25 = sext i32 %21 to i64
  br label %for.body9.i

for.cond.cleanup8.i:                              ; preds = %for.body9.i, %for.body.i
  %a.sroa.0.0.lcssa.i = phi <2 x double> [ zeroinitializer, %for.body.i ], [ %add.i.i.i, %for.body9.i ]
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %19, i64 %indvars.iv47.i, i32 0
  %26 = load i32, i32* %index.i, align 4, !tbaa !41, !noalias !89
  %mul15.i = shl nsw i32 %26, 1
  %idx.ext16.i = sext i32 %mul15.i to i64
  %add.ptr17.i = getelementptr inbounds double, double* %7, i64 %idx.ext16.i
  %27 = bitcast double* %add.ptr17.i to <2 x double>*
  store <2 x double> %a.sroa.0.0.lcssa.i, <2 x double>* %27, align 16, !tbaa !12, !alias.scope !92
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next48.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit, label %for.body.i, !llvm.loop !82

for.body9.i:                                      ; preds = %for.body9.i, %for.body9.lr.ph.i
  %indvars.iv.i = phi i64 [ %24, %for.body9.lr.ph.i ], [ %indvars.iv.next.i, %for.body9.i ]
  %a.sroa.0.043.i = phi <2 x double> [ zeroinitializer, %for.body9.lr.ph.i ], [ %add.i.i.i, %for.body9.i ]
  %arrayidx11.i = getelementptr inbounds i32, i32* %22, i64 %indvars.iv.i
  %28 = load i32, i32* %arrayidx11.i, align 4, !tbaa !46, !noalias !89
  %mul.i = shl nsw i32 %28, 1
  %idx.ext.i = sext i32 %mul.i to i64
  %add.ptr.i110 = getelementptr inbounds double, double* %7, i64 %idx.ext.i
  %29 = bitcast double* %add.ptr.i110 to <2 x double>*
  %30 = load <2 x double>, <2 x double>* %29, align 16, !tbaa !12, !alias.scope !89
  %arrayidx13.i = getelementptr inbounds double, double* %23, i64 %indvars.iv.i
  %31 = load double, double* %arrayidx13.i, align 8, !tbaa !43, !noalias !89
  %vecinit.i.i.i = insertelement <2 x double> undef, double %31, i32 0
  %vecinit1.i.i.i = shufflevector <2 x double> %vecinit.i.i.i, <2 x double> undef, <2 x i32> zeroinitializer
  %mul.i.i.i = fmul fast <2 x double> %vecinit1.i.i.i, %30
  %add.i.i.i = fadd fast <2 x double> %mul.i.i.i, %a.sroa.0.043.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %exitcond126.not = icmp eq i64 %indvars.iv.next.i, %25
  br i1 %exitcond126.not, label %for.cond.cleanup8.i, label %for.body9.i, !llvm.loop !83

_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit: ; preds = %for.cond.cleanup8.i, %for.cond.cleanup14
  %32 = load i32*, i32** %_M_finish.i.i102, align 8, !tbaa !76
  %33 = load i32*, i32** %_M_start.i.i103, align 8, !tbaa !33
  %sub.ptr.lhs.cast.i.i104116 = ptrtoint i32* %32 to i64
  %sub.ptr.rhs.cast.i.i105117 = ptrtoint i32* %33 to i64
  %sub.ptr.sub.i.i106118 = sub i64 %sub.ptr.lhs.cast.i.i104116, %sub.ptr.rhs.cast.i.i105117
  %34 = lshr exact i64 %sub.ptr.sub.i.i106118, 2
  %conv.i107119 = trunc i64 %34 to i32
  %cmp27120 = icmp sgt i32 %conv.i107119, 0
  br i1 %cmp27120, label %for.cond31.preheader.lr.ph, label %for.cond.cleanup28

for.cond31.preheader.lr.ph:                       ; preds = %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit
  %wide.trip.count138 = and i64 %34, 4294967295
  %sext = shl i64 %sub.ptr.sub.i.i106118, 30
  %35 = ashr i64 %sext, 32
  br label %for.cond31.preheader

for.body15:                                       ; preds = %for.body15, %for.cond12.preheader
  %indvars.iv = phi i64 [ 0, %for.cond12.preheader ], [ %indvars.iv.next, %for.body15 ]
  %36 = add nuw nsw i64 %indvars.iv, %16
  %add.ptr.i109 = getelementptr inbounds i32, i32* %17, i64 %36
  %37 = load i32, i32* %add.ptr.i109, align 4, !tbaa !46
  %mul18 = shl nsw i32 %37, 1
  %38 = trunc i64 %indvars.iv to i32
  %add19 = add nsw i32 %mul18, %38
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds double, double* %7, i64 %idxprom20
  store double 1.000000e+00, double* %arrayidx21, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup14, label %for.body15, !llvm.loop !95

for.cond31.preheader:                             ; preds = %for.cond.cleanup33, %for.cond31.preheader.lr.ph
  %indvars.iv135 = phi i64 [ 0, %for.cond31.preheader.lr.ph ], [ %indvars.iv.next136, %for.cond.cleanup33 ]
  %add.ptr.i = getelementptr inbounds i32, i32* %33, i64 %indvars.iv135
  %39 = load i32, i32* %add.ptr.i, align 4, !tbaa !46
  %mul37 = shl nsw i32 %39, 1
  %40 = sext i32 %mul37 to i64
  br label %for.body34

for.cond.cleanup28:                               ; preds = %for.cond.cleanup33, %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  %exitcond145.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count144
  br i1 %exitcond145.not, label %for.end55, label %for.body, !llvm.loop !96

for.cond.cleanup33:                               ; preds = %for.body34
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %for.cond.cleanup28, label %for.cond31.preheader, !llvm.loop !97

for.body34:                                       ; preds = %for.body34, %for.cond31.preheader
  %indvars.iv127 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next128, %for.body34 ]
  %41 = add nsw i64 %indvars.iv127, %40
  %arrayidx40 = getelementptr inbounds double, double* %7, i64 %41
  %42 = load double, double* %arrayidx40, align 8, !tbaa !43
  %43 = add nuw nsw i64 %indvars.iv127, %16
  %44 = mul nsw i64 %43, %35
  %45 = add nsw i64 %44, %indvars.iv135
  %arrayidx46 = getelementptr inbounds double, double* %jacobian_out, i64 %45
  store double %42, double* %arrayidx46, align 8, !tbaa !43
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  %exitcond134.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count
  br i1 %exitcond134.not, label %for.cond.cleanup33, label %for.body34, !llvm.loop !98

for.end55:                                        ; preds = %for.cond.cleanup28, %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit
  call void @free(i8* %8) #32
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack16jacobian_forwardEPd(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, double* nocapture %jacobian_out) local_unnamed_addr #14 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %result.i = alloca double*, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %0 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !26
  %_M_finish.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %1 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !26
  %cmp.i.i = icmp eq i32* %0, %1
  br i1 %cmp.i.i, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %_M_start.i.i184 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %2 = load i32*, i32** %_M_start.i.i184, align 8, !tbaa !26
  %_M_finish.i.i185 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %3 = load i32*, i32** %_M_finish.i.i185, align 8, !tbaa !26
  %cmp.i.i186 = icmp eq i32* %2, %3
  br i1 %cmp.i.i186, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %4 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #32
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %6 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !9
  %7 = bitcast %union.anon* %5 to i8*
  %8 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #32
  store i64 79, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i230 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %if.then
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i230, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %9 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %9, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(79) %call5.i.i.i9.i230, i8* nonnull align 1 dereferenceable(79) getelementptr inbounds ([80 x i8], [80 x i8]* @.str.71, i64 0, i64 0), i64 79, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %9, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i230, i64 %9
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #32
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %10 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %11 = getelementptr inbounds i8, i8* %exception, i64 24
  %12 = bitcast i8* %message_.i.i.i to i8**
  store i8* %11, i8** %12, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i.i231 = getelementptr inbounds i8, i8* %exception, i64 16
  %13 = bitcast i8* %_M_string_length.i.i.i.i.i.i231 to i64*
  store i64 0, i64* %13, align 8, !tbaa !2
  store i8 0, i8* %11, align 1, !tbaa !12
  %14 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept41dependents_or_independents_not_identifiedE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %14, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %10, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont5 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %15 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %14, align 8, !tbaa !17
  %16 = load i8*, i8** %12, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %16, %11
  br i1 %cmp.i.i.i.i.i, label %lpad4.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %16) #32
  br label %lpad4.body

invoke.cont5:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept41dependents_or_independents_not_identifiedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad4.body.thread

ehcleanup.thread:                                 ; preds = %if.then
  %17 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #32
  br label %cleanup.action

lpad4.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %18 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %18) #32
  %19 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %19, %7
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad4.body
  call void @_ZdlPv(i8* %19) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #32
  br label %cleanup.action

lpad4.body.thread:                                ; preds = %invoke.cont5
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i299 = icmp eq i8* %21, %7
  br i1 %cmp.i.i.i299, label %ehcleanup.thread304, label %if.then.i.i

ehcleanup.thread304:                              ; preds = %lpad4.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad4.body.thread
  call void @_ZdlPv(i8* %21) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad4.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn247 = phi { i8*, i32 } [ %17, %ehcleanup.thread ], [ %15, %ehcleanup ], [ %15, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

if.end:                                           ; preds = %lor.lhs.false
  %sub.ptr.lhs.cast.i.i234 = ptrtoint i32* %1 to i64
  %sub.ptr.rhs.cast.i.i235 = ptrtoint i32* %0 to i64
  %sub.ptr.sub.i.i236 = sub i64 %sub.ptr.lhs.cast.i.i234, %sub.ptr.rhs.cast.i.i235
  %22 = lshr exact i64 %sub.ptr.sub.i.i236, 2
  %conv.i237 = trunc i64 %22 to i32
  %div = sdiv i32 %conv.i237, 2
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %23 = load i32, i32* %max_gradient_, align 8, !tbaa !63
  %mul = shl i32 %23, 1
  %24 = bitcast double** %result.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #32
  %25 = bitcast double** %result.i to i8**
  %conv1.i = sext i32 %mul to i64
  %mul.i229 = shl nsw i64 %conv1.i, 3
  %call2.i = call i32 @posix_memalign(i8** nonnull %25, i64 16, i64 %mul.i229) #32
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.end
  %exception.i = call i8* @__cxa_allocate_exception(i64 8) #32
  %26 = bitcast i8* %exception.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt9bad_alloc, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %26, align 8, !tbaa !17
  call void @__cxa_throw(i8* %exception.i, i8* bitcast (i8** @_ZTISt9bad_alloc to i8*), i8* bitcast (void (%"class.std::bad_alloc"*)* @_ZNSt9bad_allocD1Ev to i8*)) #33
  unreachable

_ZN5adept8internal13alloc_alignedIdEEPT_i.exit:   ; preds = %if.end
  %27 = load double*, double** %result.i, align 8, !tbaa !26
  %28 = bitcast double* %27 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #32
  %cmp268 = icmp sgt i32 %conv.i237, 1
  br i1 %cmp268, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit
  %cmp14257 = icmp sgt i32 %23, 0
  %n_statements_.i213 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %29 = load i32, i32* %n_statements_.i213, align 8, !tbaa !40, !noalias !99
  %cmp45.i = icmp sgt i32 %29, 1
  %statement_.i214 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %index_.i215 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %multiplier_.i216 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %wide.trip.count.i = zext i32 %29 to i64
  %30 = icmp sgt i32 %mul, 1
  %smax274 = select i1 %30, i32 %mul, i32 1
  %31 = zext i32 %smax274 to i64
  %32 = shl nuw nsw i64 %31, 3
  %wide.trip.count295 = zext i32 %div to i64
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.cond.cleanup34, %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit
  %33 = and i32 %conv.i237, -2147483647
  %cmp64 = icmp eq i32 %33, 1
  br i1 %cmp64, label %if.then65, label %if.end124

for.body:                                         ; preds = %for.cond.cleanup34, %for.body.lr.ph
  %indvars.iv292 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next293, %for.cond.cleanup34 ]
  %34 = shl nuw nsw i64 %indvars.iv292, 1
  br i1 %cmp14257, label %for.body16.preheader, label %for.cond18.preheader

for.body16.preheader:                             ; preds = %for.body
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 %32, i1 false)
  br label %for.cond18.preheader

for.cond18.preheader:                             ; preds = %for.body16.preheader, %for.body
  %35 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
  %add.ptr.i212 = getelementptr inbounds i32, i32* %35, i64 %34
  %36 = load i32, i32* %add.ptr.i212, align 4, !tbaa !46
  %mul24 = shl nsw i32 %36, 1
  %idxprom26 = sext i32 %mul24 to i64
  %arrayidx27 = getelementptr inbounds double, double* %27, i64 %idxprom26
  store double 1.000000e+00, double* %arrayidx27, align 8, !tbaa !43
  %37 = or i64 %34, 1
  %add.ptr.i212.c = getelementptr inbounds i32, i32* %35, i64 %37
  %38 = load i32, i32* %add.ptr.i212.c, align 4, !tbaa !46
  %mul24.c = shl nsw i32 %38, 1
  %add25.c = or i32 %mul24.c, 1
  %idxprom26.c = sext i32 %add25.c to i64
  %arrayidx27.c = getelementptr inbounds double, double* %27, i64 %idxprom26.c
  store double 1.000000e+00, double* %arrayidx27.c, align 8, !tbaa !43
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  br i1 %cmp45.i, label %for.body.lr.ph.i219, label %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit

for.body.lr.ph.i219:                              ; preds = %for.cond18.preheader
  %39 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i214, align 8, !tbaa !35, !noalias !99
  %end_plus_one.phi.trans.insert.i217 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %39, i64 0, i32 1
  %.pre.i218 = load i32, i32* %end_plus_one.phi.trans.insert.i217, align 4, !tbaa !45, !noalias !99
  br label %for.body.i221

for.body.i221:                                    ; preds = %for.cond.cleanup8.i, %for.body.lr.ph.i219
  %40 = phi i32 [ %.pre.i218, %for.body.lr.ph.i219 ], [ %41, %for.cond.cleanup8.i ]
  %indvars.iv47.i = phi i64 [ 1, %for.body.lr.ph.i219 ], [ %indvars.iv.next48.i, %for.cond.cleanup8.i ]
  %end_plus_one6.i220 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %39, i64 %indvars.iv47.i, i32 1
  %41 = load i32, i32* %end_plus_one6.i220, align 4, !tbaa !45, !noalias !99
  %cmp742.i = icmp slt i32 %40, %41
  br i1 %cmp742.i, label %for.body9.lr.ph.i, label %for.cond.cleanup8.i

for.body9.lr.ph.i:                                ; preds = %for.body.i221
  %42 = load i32*, i32** %index_.i215, align 8, !tbaa !38, !noalias !99
  %43 = load double*, double** %multiplier_.i216, align 8, !tbaa !37, !noalias !99
  %44 = sext i32 %40 to i64
  %45 = sext i32 %41 to i64
  br label %for.body9.i

for.cond.cleanup8.i:                              ; preds = %for.body9.i, %for.body.i221
  %a.sroa.0.0.lcssa.i = phi <2 x double> [ zeroinitializer, %for.body.i221 ], [ %add.i.i.i, %for.body9.i ]
  %index.i222 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %39, i64 %indvars.iv47.i, i32 0
  %46 = load i32, i32* %index.i222, align 4, !tbaa !41, !noalias !99
  %mul15.i = shl nsw i32 %46, 1
  %idx.ext16.i = sext i32 %mul15.i to i64
  %add.ptr17.i = getelementptr inbounds double, double* %27, i64 %idx.ext16.i
  %47 = bitcast double* %add.ptr17.i to <2 x double>*
  store <2 x double> %a.sroa.0.0.lcssa.i, <2 x double>* %47, align 16, !tbaa !12, !alias.scope !102
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1
  %exitcond.not.i223 = icmp eq i64 %indvars.iv.next48.i, %wide.trip.count.i
  br i1 %exitcond.not.i223, label %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit, label %for.body.i221, !llvm.loop !82

for.body9.i:                                      ; preds = %for.body9.i, %for.body9.lr.ph.i
  %indvars.iv.i224 = phi i64 [ %44, %for.body9.lr.ph.i ], [ %indvars.iv.next.i227, %for.body9.i ]
  %a.sroa.0.043.i = phi <2 x double> [ zeroinitializer, %for.body9.lr.ph.i ], [ %add.i.i.i, %for.body9.i ]
  %arrayidx11.i = getelementptr inbounds i32, i32* %42, i64 %indvars.iv.i224
  %48 = load i32, i32* %arrayidx11.i, align 4, !tbaa !46, !noalias !99
  %mul.i225 = shl nsw i32 %48, 1
  %idx.ext.i = sext i32 %mul.i225 to i64
  %add.ptr.i226 = getelementptr inbounds double, double* %27, i64 %idx.ext.i
  %49 = bitcast double* %add.ptr.i226 to <2 x double>*
  %50 = load <2 x double>, <2 x double>* %49, align 16, !tbaa !12, !alias.scope !99
  %arrayidx13.i = getelementptr inbounds double, double* %43, i64 %indvars.iv.i224
  %51 = load double, double* %arrayidx13.i, align 8, !tbaa !43, !noalias !99
  %vecinit.i.i.i = insertelement <2 x double> undef, double %51, i32 0
  %vecinit1.i.i.i = shufflevector <2 x double> %vecinit.i.i.i, <2 x double> undef, <2 x i32> zeroinitializer
  %mul.i.i.i = fmul fast <2 x double> %vecinit1.i.i.i, %50
  %add.i.i.i = fadd fast <2 x double> %mul.i.i.i, %a.sroa.0.043.i
  %indvars.iv.next.i227 = add nsw i64 %indvars.iv.i224, 1
  %exitcond280.not = icmp eq i64 %indvars.iv.next.i227, %45
  br i1 %exitcond280.not, label %for.cond.cleanup8.i, label %for.body9.i, !llvm.loop !83

_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit: ; preds = %for.cond.cleanup8.i, %for.cond18.preheader
  %52 = load i32*, i32** %_M_finish.i.i185, align 8, !tbaa !76
  %53 = load i32*, i32** %_M_start.i.i184, align 8, !tbaa !33
  %sub.ptr.lhs.cast.i.i207261 = ptrtoint i32* %52 to i64
  %sub.ptr.rhs.cast.i.i208262 = ptrtoint i32* %53 to i64
  %sub.ptr.sub.i.i209263 = sub i64 %sub.ptr.lhs.cast.i.i207261, %sub.ptr.rhs.cast.i.i208262
  %54 = lshr exact i64 %sub.ptr.sub.i.i209263, 2
  %conv.i210264 = trunc i64 %54 to i32
  %cmp33265 = icmp sgt i32 %conv.i210264, 0
  br i1 %cmp33265, label %for.cond37.preheader.lr.ph, label %for.cond.cleanup34

for.cond37.preheader.lr.ph:                       ; preds = %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit
  %wide.trip.count290 = and i64 %54, 4294967295
  %sext = shl i64 %sub.ptr.sub.i.i209263, 30
  %55 = ashr i64 %sext, 32
  %56 = mul nsw i64 %55, %34
  %57 = mul nsw i64 %55, %37
  br label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %for.cond37.preheader, %for.cond37.preheader.lr.ph
  %indvars.iv287 = phi i64 [ 0, %for.cond37.preheader.lr.ph ], [ %indvars.iv.next288, %for.cond37.preheader ]
  %add.ptr.i204 = getelementptr inbounds i32, i32* %53, i64 %indvars.iv287
  %58 = load i32, i32* %add.ptr.i204, align 4, !tbaa !46
  %mul44 = shl nsw i32 %58, 1
  %59 = sext i32 %mul44 to i64
  %arrayidx47 = getelementptr inbounds double, double* %27, i64 %59
  %60 = load double, double* %arrayidx47, align 8, !tbaa !43
  %61 = add nsw i64 %indvars.iv287, %56
  %arrayidx53 = getelementptr inbounds double, double* %jacobian_out, i64 %61
  store double %60, double* %arrayidx53, align 8, !tbaa !43
  %62 = or i64 %59, 1
  %arrayidx47.c = getelementptr inbounds double, double* %27, i64 %62
  %63 = load double, double* %arrayidx47.c, align 8, !tbaa !43
  %64 = add nsw i64 %indvars.iv287, %57
  %arrayidx53.c = getelementptr inbounds double, double* %jacobian_out, i64 %64
  store double %63, double* %arrayidx53.c, align 8, !tbaa !43
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1
  %exitcond291.not = icmp eq i64 %indvars.iv.next288, %wide.trip.count290
  br i1 %exitcond291.not, label %for.cond.cleanup34, label %for.cond37.preheader, !llvm.loop !105

for.cond.cleanup34:                               ; preds = %for.cond37.preheader, %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1
  %exitcond296.not = icmp eq i64 %indvars.iv.next293, %wide.trip.count295
  br i1 %exitcond296.not, label %for.cond.cleanup, label %for.body, !llvm.loop !106

if.then65:                                        ; preds = %for.cond.cleanup
  %mul67 = shl nsw i32 %div, 1
  %cmp70255 = icmp sgt i32 %23, 0
  br i1 %cmp70255, label %for.body72.preheader, label %for.body82

for.body72.preheader:                             ; preds = %if.then65
  %65 = icmp sgt i32 %mul, 1
  %smax271 = select i1 %65, i32 %mul, i32 1
  %66 = zext i32 %smax271 to i64
  %67 = shl nuw nsw i64 %66, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 %67, i1 false)
  br label %for.body82

for.body82:                                       ; preds = %for.body72.preheader, %if.then65
  %conv85 = sext i32 %mul67 to i64
  %68 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
  %add.ptr.i196 = getelementptr inbounds i32, i32* %68, i64 %conv85
  %69 = load i32, i32* %add.ptr.i196, align 4, !tbaa !46
  %mul87 = shl nsw i32 %69, 1
  %idxprom89 = sext i32 %mul87 to i64
  %arrayidx90 = getelementptr inbounds double, double* %27, i64 %idxprom89
  store double 1.000000e+00, double* %arrayidx90, align 8, !tbaa !43
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %n_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %70 = load i32, i32* %n_statements_.i, align 8, !tbaa !40, !noalias !107
  %cmp70.i = icmp sgt i32 %70, 1
  br i1 %cmp70.i, label %for.body.lr.ph.i, label %_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi.exit

for.body.lr.ph.i:                                 ; preds = %for.body82
  %statement_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %71 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i, align 8, !tbaa !35, !noalias !107
  %multiplier_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %index_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %wide.trip.count83.i = zext i32 %70 to i64
  %end_plus_one.phi.trans.insert.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %71, i64 0, i32 1
  %.pre.i = load i32, i32* %end_plus_one.phi.trans.insert.i, align 4, !tbaa !45, !noalias !107
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond26.preheader.i, %for.body.lr.ph.i
  %72 = phi i32 [ %.pre.i, %for.body.lr.ph.i ], [ %73, %for.cond26.preheader.i ]
  %indvars.iv80.i = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next81.i, %for.cond26.preheader.i ]
  %end_plus_one6.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %71, i64 %indvars.iv80.i, i32 1
  %73 = load i32, i32* %end_plus_one6.i, align 4, !tbaa !45, !noalias !107
  %cmp765.i = icmp slt i32 %72, %73
  br i1 %cmp765.i, label %for.cond10.preheader.lr.ph.i, label %for.cond26.preheader.i

for.cond10.preheader.lr.ph.i:                     ; preds = %for.body.i
  %74 = sext i32 %72 to i64
  %75 = sext i32 %73 to i64
  %76 = load double*, double** %multiplier_.i, align 8, !tbaa !37, !noalias !107
  %77 = load i32*, i32** %index_.i, align 8, !tbaa !38, !noalias !107
  br label %for.cond.cleanup12.i

for.cond26.preheader.i.loopexit:                  ; preds = %for.cond.cleanup12.i
  %78 = bitcast double %add21.i to i64
  br label %for.cond26.preheader.i

for.cond26.preheader.i:                           ; preds = %for.cond26.preheader.i.loopexit, %for.body.i
  %79 = phi i64 [ 0, %for.body.i ], [ %78, %for.cond26.preheader.i.loopexit ]
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %71, i64 %indvars.iv80.i, i32 0
  %80 = load i32, i32* %index.i, align 4, !tbaa !41, !noalias !107
  %81 = shl i32 %80, 1
  %82 = sext i32 %81 to i64
  %scevgep.i = getelementptr double, double* %27, i64 %82
  %83 = bitcast double* %scevgep.i to i64*
  store i64 %79, i64* %83, align 8
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1
  %exitcond84.not.i = icmp eq i64 %indvars.iv.next81.i, %wide.trip.count83.i
  br i1 %exitcond84.not.i, label %_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi.exit, label %for.body.i, !llvm.loop !88

for.cond.cleanup12.i:                             ; preds = %for.cond.cleanup12.i, %for.cond10.preheader.lr.ph.i
  %84 = phi double [ 0.000000e+00, %for.cond10.preheader.lr.ph.i ], [ %add21.i, %for.cond.cleanup12.i ]
  %indvars.iv73.i = phi i64 [ %74, %for.cond10.preheader.lr.ph.i ], [ %indvars.iv.next74.i, %for.cond.cleanup12.i ]
  %arrayidx15.i = getelementptr inbounds double, double* %76, i64 %indvars.iv73.i
  %85 = load double, double* %arrayidx15.i, align 8, !tbaa !43, !noalias !107
  %arrayidx17.i = getelementptr inbounds i32, i32* %77, i64 %indvars.iv73.i
  %86 = load i32, i32* %arrayidx17.i, align 4, !tbaa !46, !noalias !107
  %mul.i = shl nsw i32 %86, 1
  %87 = sext i32 %mul.i to i64
  %arrayidx19.i = getelementptr inbounds double, double* %27, i64 %87
  %88 = load double, double* %arrayidx19.i, align 8, !tbaa !43, !alias.scope !107
  %mul20.i = fmul fast double %88, %85
  %add21.i = fadd fast double %mul20.i, %84
  %indvars.iv.next74.i = add nsw i64 %indvars.iv73.i, 1
  %exitcond270.not = icmp eq i64 %indvars.iv.next74.i, %75
  br i1 %exitcond270.not, label %for.cond26.preheader.i.loopexit, label %for.cond.cleanup12.i, !llvm.loop !86

_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi.exit: ; preds = %for.cond26.preheader.i, %for.body82
  %89 = load i32*, i32** %_M_finish.i.i185, align 8, !tbaa !76
  %90 = load i32*, i32** %_M_start.i.i184, align 8, !tbaa !33
  %sub.ptr.lhs.cast.i.i191248 = ptrtoint i32* %89 to i64
  %sub.ptr.rhs.cast.i.i192249 = ptrtoint i32* %90 to i64
  %sub.ptr.sub.i.i193250 = sub i64 %sub.ptr.lhs.cast.i.i191248, %sub.ptr.rhs.cast.i.i192249
  %91 = lshr exact i64 %sub.ptr.sub.i.i193250, 2
  %conv.i194251 = trunc i64 %91 to i32
  %cmp97252 = icmp sgt i32 %conv.i194251, 0
  br i1 %cmp97252, label %for.body104.lr.ph, label %if.end124

for.body104.lr.ph:                                ; preds = %_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi.exit
  %wide.trip.count = and i64 %91, 4294967295
  %mul114 = mul nsw i32 %mul67, %conv.i194251
  br label %for.body104

for.body104:                                      ; preds = %for.body104, %for.body104.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body104.lr.ph ], [ %indvars.iv.next, %for.body104 ]
  %add.ptr.i = getelementptr inbounds i32, i32* %90, i64 %indvars.iv
  %92 = load i32, i32* %add.ptr.i, align 4, !tbaa !46
  %mul108 = shl nsw i32 %92, 1
  %idxprom110 = sext i32 %mul108 to i64
  %arrayidx111 = getelementptr inbounds double, double* %27, i64 %idxprom110
  %93 = load double, double* %arrayidx111, align 8, !tbaa !43
  %94 = trunc i64 %indvars.iv to i32
  %add115 = add nsw i32 %mul114, %94
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds double, double* %jacobian_out, i64 %idxprom116
  store double %93, double* %arrayidx117, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end124, label %for.body104, !llvm.loop !110

if.end124:                                        ; preds = %for.body104, %_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi.exit, %for.cond.cleanup
  call void @free(i8* %28) #32
  ret void

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread304
  %.pn246 = phi { i8*, i32 } [ %.pn247, %cleanup.action ], [ %20, %if.then.i.i ], [ %20, %ehcleanup.thread304 ]
  resume { i8*, i32 } %.pn246

unreachable:                                      ; preds = %invoke.cont5
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZNK5adept5Stack23jacobian_reverse_openmpEPd(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, double* nocapture %jacobian_out) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %a = alloca [2 x double], align 16
  %_M_finish.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %0 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !76
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %1 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
  %sub.ptr.lhs.cast.i.i = ptrtoint i32* %0 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint i32* %1 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %2 = lshr exact i64 %sub.ptr.sub.i.i, 2
  %conv.i = trunc i64 %2 to i32
  %sub = add nsw i32 %conv.i, 1
  %div = sdiv i32 %sub, 2
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %3 = load i32, i32* %max_gradient_, align 8, !tbaa !63
  %conv = sext i32 %3 to i64
  %cmp.i.i = icmp slt i32 %3, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.101, i64 0, i64 0)) #33
  unreachable

_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %entry
  %cmp.not.i.i.i.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i.i.i.i, label %invoke.cont.thread, label %invoke.cont

invoke.cont:                                      ; preds = %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %mul.i.i.i.i.i.i = shl nuw nsw i64 %conv, 4
  %call2.i.i.i.i3.i.i243 = tail call noalias nonnull i8* @_Znwm(i64 %mul.i.i.i.i.i.i) #35
  %4 = bitcast i8* %call2.i.i.i.i3.i.i243 to %"struct.adept::Block"*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %call2.i.i.i.i3.i.i243, i8 0, i64 %mul.i.i.i.i.i.i, i1 false)
  %cmp287 = icmp sgt i32 %conv.i, 0
  br i1 %cmp287, label %invoke.cont.for.body.lr.ph_crit_edge, label %if.then.i.i.i

invoke.cont.for.body.lr.ph_crit_edge:             ; preds = %invoke.cont
  %add.ptr.i.i.i = getelementptr %"struct.adept::Block", %"struct.adept::Block"* %4, i64 %conv
  %phi.cast = ptrtoint %"struct.adept::Block"* %add.ptr.i.i.i to i64
  %.pre = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
  %.pre10 = ptrtoint i32* %.pre to i64
  br label %for.body.lr.ph

invoke.cont.thread:                               ; preds = %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %cmp287329 = icmp sgt i32 %conv.i, 0
  br i1 %cmp287329, label %for.body.lr.ph, label %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EED2Ev.exit

for.body.lr.ph:                                   ; preds = %invoke.cont.for.body.lr.ph_crit_edge, %invoke.cont.thread
  %sub.ptr.rhs.cast.i.i212.pre-phi = phi i64 [ %.pre10, %invoke.cont.for.body.lr.ph_crit_edge ], [ %sub.ptr.rhs.cast.i.i, %invoke.cont.thread ]
  %5 = phi i32* [ %.pre, %invoke.cont.for.body.lr.ph_crit_edge ], [ %1, %invoke.cont.thread ]
  %cond.i.i.i.i267289333 = phi i8* [ %call2.i.i.i.i3.i.i243, %invoke.cont.for.body.lr.ph_crit_edge ], [ null, %invoke.cont.thread ]
  %__cur.0.lcssa.i.i.i.i.i332 = phi i64 [ %phi.cast, %invoke.cont.for.body.lr.ph_crit_edge ], [ 0, %invoke.cont.thread ]
  %cond.i.i.i.i267330 = phi %"struct.adept::Block"* [ %4, %invoke.cont.for.body.lr.ph_crit_edge ], [ null, %invoke.cont.thread ]
  %sub3 = add nsw i32 %div, -1
  %6 = and i32 %conv.i, -2147483647
  %cmp5 = icmp eq i32 %6, 1
  %sub.ptr.rhs.cast.i = ptrtoint %"struct.adept::Block"* %cond.i.i.i.i267330 to i64
  %sub.ptr.sub.i = sub i64 %__cur.0.lcssa.i.i.i.i.i332, %sub.ptr.rhs.cast.i
  %cmp8268.not = icmp eq i64 %sub.ptr.sub.i, 0
  %n_statements_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %7 = load i32, i32* %n_statements_, align 8, !tbaa !40
  %cmp31277 = icmp sgt i32 %7, 1
  %statement_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %8 = bitcast [2 x double]* %a to i8*
  %multiplier_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %index_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %_M_finish.i.i217 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %9 = load i32*, i32** %_M_finish.i.i217, align 8, !tbaa !76
  %_M_start.i.i218 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %10 = load i32*, i32** %_M_start.i.i218, align 8, !tbaa !33
  %sub.ptr.lhs.cast.i.i219281 = ptrtoint i32* %9 to i64
  %sub.ptr.rhs.cast.i.i220282 = ptrtoint i32* %10 to i64
  %sub.ptr.sub.i.i221283 = sub i64 %sub.ptr.lhs.cast.i.i219281, %sub.ptr.rhs.cast.i.i220282
  %11 = lshr exact i64 %sub.ptr.sub.i.i221283, 2
  %conv.i222284 = trunc i64 %11 to i32
  %cmp105285 = icmp sgt i32 %conv.i222284, 0
  %12 = icmp sgt i64 %sub.ptr.sub.i, -1
  %smax = select i1 %12, i64 %sub.ptr.sub.i, i64 -1
  %13 = icmp slt i64 %smax, 1
  %smin = select i1 %13, i64 %smax, i64 1
  %14 = sub i64 %sub.ptr.rhs.cast.i, %__cur.0.lcssa.i.i.i.i.i332
  %15 = icmp sgt i64 %14, %sub.ptr.sub.i
  %smax290 = select i1 %15, i64 %14, i64 %sub.ptr.sub.i
  %16 = lshr i64 %smax290, 4
  %17 = mul nsw i64 %smin, %16
  %18 = icmp ugt i64 %17, 1
  %umax = select i1 %18, i64 %17, i64 1
  %19 = shl nuw i64 %umax, 4
  %20 = zext i32 %7 to i64
  %21 = zext i32 %sub3 to i64
  %22 = icmp sgt i32 %div, 1
  %smax322 = select i1 %22, i32 %div, i32 1
  %wide.trip.count323 = zext i32 %smax322 to i64
  %wide.trip.count317 = and i64 %11, 4294967295
  %23 = sext i32 %7 to i64
  br label %for.body

for.body:                                         ; preds = %for.cond.cleanup106, %for.body.lr.ph
  %indvars.iv319 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next320, %for.cond.cleanup106 ]
  %24 = shl nuw nsw i64 %indvars.iv319, 1
  %cmp4 = icmp eq i64 %indvars.iv319, %21
  %or.cond = and i1 %cmp5, %cmp4
  %spec.select = select i1 %or.cond, i32 1, i32 2
  br i1 %cmp8268.not, label %for.cond14.preheader, label %for.body9.preheader

for.body9.preheader:                              ; preds = %for.body
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %cond.i.i.i.i267289333, i8 0, i64 %19, i1 false)
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.body9.preheader, %for.body
  %25 = icmp ugt i32 %spec.select, 1
  %umax292 = select i1 %25, i32 %spec.select, i32 1
  %wide.trip.count = zext i32 %umax292 to i64
  br label %for.body17

for.cond.cleanup16:                               ; preds = %for.body17
  br i1 %cmp31277, label %for.body33.lr.ph, label %for.cond101.preheader

for.body33.lr.ph:                                 ; preds = %for.cond.cleanup16
  %26 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !35
  br label %for.body33

for.body17:                                       ; preds = %for.body17, %for.cond14.preheader
  %indvars.iv = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next, %for.body17 ]
  %27 = add nuw nsw i64 %indvars.iv, %24
  %add.ptr.i239 = getelementptr inbounds i32, i32* %5, i64 %27
  %28 = load i32, i32* %add.ptr.i239, align 4, !tbaa !46
  %conv21 = sext i32 %28 to i64
  %arrayidx.i235 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i267330, i64 %conv21, i32 0, i64 %indvars.iv
  store double 1.000000e+00, double* %arrayidx.i235, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup16, label %for.body17, !llvm.loop !111

for.cond101.preheader:                            ; preds = %if.end95, %for.cond.cleanup16
  br i1 %cmp105285, label %for.cond109.preheader.lr.ph, label %for.cond.cleanup106

for.cond109.preheader.lr.ph:                      ; preds = %for.cond101.preheader
  %29 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !76
  %sub.ptr.lhs.cast.i.i211 = ptrtoint i32* %29 to i64
  %sub.ptr.sub.i.i213 = sub i64 %sub.ptr.lhs.cast.i.i211, %sub.ptr.rhs.cast.i.i212.pre-phi
  %30 = lshr exact i64 %sub.ptr.sub.i.i213, 2
  %31 = and i64 %30, 4294967295
  br label %for.cond109.preheader

for.body33:                                       ; preds = %if.end95, %for.body33.lr.ph
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %if.end95 ], [ %23, %for.body33.lr.ph ]
  %indvars.iv306 = phi i64 [ %indvars.iv.next307, %if.end95 ], [ %20, %for.body33.lr.ph ]
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, -1
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #32
  %index = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %26, i64 %indvars.iv.next8, i32 0
  %32 = load i32, i32* %index, align 4, !tbaa !41
  %conv39 = sext i32 %32 to i64
  br label %for.body38

for.cond.cleanup37:                               ; preds = %for.body38
  %tobool.not = icmp eq i32 %n_non_zero.1, 0
  br i1 %tobool.not, label %if.end95, label %if.then59

for.body38:                                       ; preds = %for.body38, %for.body33
  %indvars.iv296 = phi i64 [ 0, %for.body33 ], [ %indvars.iv.next297, %for.body38 ]
  %n_non_zero.0271 = phi i32 [ 0, %for.body33 ], [ %n_non_zero.1, %for.body38 ]
  %arrayidx.i231 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i267330, i64 %conv39, i32 0, i64 %indvars.iv296
  %33 = load double, double* %arrayidx.i231, align 8, !tbaa !43
  %arrayidx45 = getelementptr inbounds [2 x double], [2 x double]* %a, i64 0, i64 %indvars.iv296
  store double %33, double* %arrayidx45, align 8, !tbaa !43
  store double 0.000000e+00, double* %arrayidx.i231, align 8, !tbaa !43
  %cmp53 = fcmp fast une double %33, 0.000000e+00
  %n_non_zero.1 = select i1 %cmp53, i32 1, i32 %n_non_zero.0271
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1
  %exitcond299.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count
  br i1 %exitcond299.not, label %for.cond.cleanup37, label %for.body38, !llvm.loop !112

if.then59:                                        ; preds = %for.cond.cleanup37
  %34 = add i64 %indvars.iv7, 4294967294
  %35 = and i64 %34, 4294967295
  %end_plus_one = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %26, i64 %35, i32 1
  %36 = load i32, i32* %end_plus_one, align 4, !tbaa !45
  %end_plus_one65 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %26, i64 %indvars.iv.next8, i32 1
  %37 = load i32, i32* %end_plus_one65, align 4, !tbaa !45
  %cmp66274 = icmp slt i32 %36, %37
  br i1 %cmp66274, label %for.body68.lr.ph, label %if.end95

for.body68.lr.ph:                                 ; preds = %if.then59
  %38 = load double*, double** %multiplier_, align 8, !tbaa !37
  %39 = load i32*, i32** %index_, align 8, !tbaa !38
  %40 = sext i32 %36 to i64
  %41 = sext i32 %37 to i64
  br label %for.body68

for.body68:                                       ; preds = %for.cond.cleanup81, %for.body68.lr.ph
  %indvars.iv304 = phi i64 [ %40, %for.body68.lr.ph ], [ %indvars.iv.next305, %for.cond.cleanup81 ]
  %arrayidx70 = getelementptr inbounds double, double* %38, i64 %indvars.iv304
  %42 = load double, double* %arrayidx70, align 8, !tbaa !43
  %arrayidx72 = getelementptr inbounds i32, i32* %39, i64 %indvars.iv304
  %43 = load i32, i32* %arrayidx72, align 4, !tbaa !46
  %conv73 = sext i32 %43 to i64
  br label %for.body82

for.cond.cleanup81:                               ; preds = %for.body82
  %indvars.iv.next305 = add nsw i64 %indvars.iv304, 1
  %exitcond.not11 = icmp eq i64 %indvars.iv.next305, %41
  br i1 %exitcond.not11, label %if.end95, label %for.body68, !llvm.loop !113

for.body82:                                       ; preds = %for.body82, %for.body68
  %indvars.iv300 = phi i64 [ 0, %for.body68 ], [ %indvars.iv.next301, %for.body82 ]
  %arrayidx84 = getelementptr inbounds [2 x double], [2 x double]* %a, i64 0, i64 %indvars.iv300
  %44 = load double, double* %arrayidx84, align 8, !tbaa !43
  %mul85 = fmul fast double %44, %42
  %arrayidx87 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i267330, i64 %conv73, i32 0, i64 %indvars.iv300
  %45 = load double, double* %arrayidx87, align 8, !tbaa !43
  %add88 = fadd fast double %45, %mul85
  store double %add88, double* %arrayidx87, align 8, !tbaa !43
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 1
  %exitcond303.not = icmp eq i64 %indvars.iv.next301, %wide.trip.count
  br i1 %exitcond303.not, label %for.cond.cleanup81, label %for.body82, !llvm.loop !114

if.end95:                                         ; preds = %for.cond.cleanup81, %if.then59, %for.cond.cleanup37
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #32
  %cmp31 = icmp sgt i64 %indvars.iv306, 2
  %indvars.iv.next307 = add nsw i64 %indvars.iv306, -1
  br i1 %cmp31, label %for.body33, label %for.cond101.preheader, !llvm.loop !115

for.cond109.preheader:                            ; preds = %for.cond.cleanup111, %for.cond109.preheader.lr.ph
  %indvars.iv313 = phi i64 [ 0, %for.cond109.preheader.lr.ph ], [ %indvars.iv.next314, %for.cond.cleanup111 ]
  %add.ptr.i216 = getelementptr inbounds i32, i32* %10, i64 %indvars.iv313
  %46 = load i32, i32* %add.ptr.i216, align 4, !tbaa !46
  %conv115 = sext i32 %46 to i64
  %47 = mul nuw i64 %indvars.iv313, %31
  %48 = add nuw i64 %47, %24
  br label %for.body112

for.cond.cleanup106:                              ; preds = %for.cond.cleanup111, %for.cond101.preheader
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1
  %exitcond324.not = icmp eq i64 %indvars.iv.next320, %wide.trip.count323
  br i1 %exitcond324.not, label %if.then.i.i.i, label %for.body, !llvm.loop !116

for.cond.cleanup111:                              ; preds = %for.body112
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1
  %exitcond318.not = icmp eq i64 %indvars.iv.next314, %wide.trip.count317
  br i1 %exitcond318.not, label %for.cond.cleanup106, label %for.cond109.preheader, !llvm.loop !117

for.body112:                                      ; preds = %for.body112, %for.cond109.preheader
  %indvars.iv308 = phi i64 [ 0, %for.cond109.preheader ], [ %indvars.iv.next309, %for.body112 ]
  %arrayidx.i = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i267330, i64 %conv115, i32 0, i64 %indvars.iv308
  %49 = load double, double* %arrayidx.i, align 8, !tbaa !43
  %add124 = add nuw i64 %48, %indvars.iv308
  %sext = shl i64 %add124, 32
  %idxprom125 = ashr exact i64 %sext, 32
  %arrayidx126 = getelementptr inbounds double, double* %jacobian_out, i64 %idxprom125
  store double %49, double* %arrayidx126, align 8, !tbaa !43
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1
  %exitcond312.not = icmp eq i64 %indvars.iv.next309, %wide.trip.count
  br i1 %exitcond312.not, label %for.cond.cleanup111, label %for.body112, !llvm.loop !118

if.then.i.i.i:                                    ; preds = %for.cond.cleanup106, %invoke.cont
  %cond.i.i.i.i267289334 = phi i8* [ %call2.i.i.i.i3.i.i243, %invoke.cont ], [ %cond.i.i.i.i267289333, %for.cond.cleanup106 ]
  tail call void @_ZdlPv(i8* nonnull %cond.i.i.i.i267289334) #32
  br label %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EED2Ev.exit: ; preds = %if.then.i.i.i, %invoke.cont.thread
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack16jacobian_reverseEPd(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, double* nocapture %jacobian_out) local_unnamed_addr #5 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %a = alloca <2 x double>, align 16
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %0 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !26
  %_M_finish.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %1 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !26
  %cmp.i.i = icmp eq i32* %0, %1
  br i1 %cmp.i.i, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %_M_start.i.i426 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %2 = load i32*, i32** %_M_start.i.i426, align 8, !tbaa !26
  %_M_finish.i.i427 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %3 = load i32*, i32** %_M_finish.i.i427, align 8, !tbaa !26
  %cmp.i.i428 = icmp eq i32* %2, %3
  br i1 %cmp.i.i428, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %4 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #32
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %6 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !9
  %7 = bitcast %union.anon* %5 to i8*
  %8 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #32
  store i64 79, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i513 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %if.then
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i513, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %9 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %9, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(79) %call5.i.i.i9.i513, i8* nonnull align 1 dereferenceable(79) getelementptr inbounds ([80 x i8], [80 x i8]* @.str.71, i64 0, i64 0), i64 79, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %9, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i513, i64 %9
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #32
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %10 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %11 = getelementptr inbounds i8, i8* %exception, i64 24
  %12 = bitcast i8* %message_.i.i.i to i8**
  store i8* %11, i8** %12, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i.i514 = getelementptr inbounds i8, i8* %exception, i64 16
  %13 = bitcast i8* %_M_string_length.i.i.i.i.i.i514 to i64*
  store i64 0, i64* %13, align 8, !tbaa !2
  store i8 0, i8* %11, align 1, !tbaa !12
  %14 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept41dependents_or_independents_not_identifiedE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %14, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %10, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont5 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %15 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %14, align 8, !tbaa !17
  %16 = load i8*, i8** %12, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %16, %11
  br i1 %cmp.i.i.i.i.i, label %lpad4.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %16) #32
  br label %lpad4.body

invoke.cont5:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept41dependents_or_independents_not_identifiedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad4.body.thread

ehcleanup.thread:                                 ; preds = %if.then
  %17 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #32
  br label %cleanup.action

lpad4.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %18 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %18) #32
  %19 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %19, %7
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i515.thread

if.then.i.i515.thread:                            ; preds = %lpad4.body
  call void @_ZdlPv(i8* %19) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #32
  br label %cleanup.action

lpad4.body.thread:                                ; preds = %invoke.cont5
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i640 = icmp eq i8* %21, %7
  br i1 %cmp.i.i.i640, label %ehcleanup.thread645, label %if.then.i.i515

ehcleanup.thread645:                              ; preds = %lpad4.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #32
  br label %eh.resume

if.then.i.i515:                                   ; preds = %lpad4.body.thread
  call void @_ZdlPv(i8* %21) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad4.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i515.thread, %ehcleanup.thread
  %.pn549 = phi { i8*, i32 } [ %17, %ehcleanup.thread ], [ %15, %ehcleanup ], [ %15, %if.then.i.i515.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

if.end:                                           ; preds = %lor.lhs.false
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %22 = load i32, i32* %max_gradient_, align 8, !tbaa !63
  %conv = sext i32 %22 to i64
  %cmp.i.i511 = icmp slt i32 %22, 0
  br i1 %cmp.i.i511, label %if.then.i.i, label %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

if.then.i.i:                                      ; preds = %if.end
  tail call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.101, i64 0, i64 0)) #33
  unreachable

_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %if.end
  %cmp.not.i.i.i.i = icmp eq i32 %22, 0
  br i1 %cmp.not.i.i.i.i, label %invoke.cont11, label %_ZNSt16allocator_traitsISaIN5adept5BlockILi2EdEEEE8allocateERS3_m.exit.i.i.i.i

_ZNSt16allocator_traitsISaIN5adept5BlockILi2EdEEEE8allocateERS3_m.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %mul.i.i.i.i.i.i = shl nuw nsw i64 %conv, 4
  %call2.i.i.i.i3.i.i512 = tail call noalias nonnull i8* @_Znwm(i64 %mul.i.i.i.i.i.i) #35
  %23 = bitcast i8* %call2.i.i.i.i3.i.i512 to %"struct.adept::Block"*
  %add.ptr.i.i.i = getelementptr %"struct.adept::Block", %"struct.adept::Block"* %23, i64 %conv
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %call2.i.i.i.i3.i.i512, i8 0, i64 %mul.i.i.i.i.i.i, i1 false)
  %phi.cast = ptrtoint %"struct.adept::Block"* %add.ptr.i.i.i to i64
  %.pre = load i32*, i32** %_M_finish.i.i427, align 8, !tbaa !76
  %.pre636 = load i32*, i32** %_M_start.i.i426, align 8, !tbaa !33
  br label %invoke.cont11

invoke.cont11:                                    ; preds = %_ZNSt16allocator_traitsISaIN5adept5BlockILi2EdEEEE8allocateERS3_m.exit.i.i.i.i, %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %24 = phi i32* [ %.pre636, %_ZNSt16allocator_traitsISaIN5adept5BlockILi2EdEEEE8allocateERS3_m.exit.i.i.i.i ], [ %2, %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %25 = phi i32* [ %.pre, %_ZNSt16allocator_traitsISaIN5adept5BlockILi2EdEEEE8allocateERS3_m.exit.i.i.i.i ], [ %3, %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %cond.i.i.i.i552 = phi %"struct.adept::Block"* [ %23, %_ZNSt16allocator_traitsISaIN5adept5BlockILi2EdEEEE8allocateERS3_m.exit.i.i.i.i ], [ null, %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %__cur.0.lcssa.i.i.i.i.i = phi i64 [ %phi.cast, %_ZNSt16allocator_traitsISaIN5adept5BlockILi2EdEEEE8allocateERS3_m.exit.i.i.i.i ], [ 0, %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ]
  %cond.i.i.i.i552600 = bitcast %"struct.adept::Block"* %cond.i.i.i.i552 to i8*
  %sub.ptr.lhs.cast.i.i507 = ptrtoint i32* %25 to i64
  %sub.ptr.rhs.cast.i.i508 = ptrtoint i32* %24 to i64
  %sub.ptr.sub.i.i509 = sub i64 %sub.ptr.lhs.cast.i.i507, %sub.ptr.rhs.cast.i.i508
  %26 = lshr exact i64 %sub.ptr.sub.i.i509, 2
  %conv.i510 = trunc i64 %26 to i32
  %cmp591 = icmp sgt i32 %conv.i510, 1
  br i1 %cmp591, label %for.cond20.preheader.lr.ph, label %for.cond.cleanup

for.cond20.preheader.lr.ph:                       ; preds = %invoke.cont11
  %div651652 = lshr i64 %sub.ptr.sub.i.i509, 3
  %div651 = and i64 %div651652, 2147483647
  %sub.ptr.rhs.cast.i496 = ptrtoint %"struct.adept::Block"* %cond.i.i.i.i552 to i64
  %sub.ptr.sub.i497 = sub i64 %__cur.0.lcssa.i.i.i.i.i, %sub.ptr.rhs.cast.i496
  %cmp22572.not = icmp eq i64 %sub.ptr.sub.i497, 0
  %n_statements_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %27 = load i32, i32* %n_statements_, align 8, !tbaa !40
  %cmp47581 = icmp sgt i32 %27, 1
  %statement_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %28 = bitcast <2 x double>* %a to i8*
  %multiplier_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %index_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %29 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !76
  %30 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
  %sub.ptr.lhs.cast.i.i469585 = ptrtoint i32* %29 to i64
  %sub.ptr.rhs.cast.i.i470586 = ptrtoint i32* %30 to i64
  %sub.ptr.sub.i.i471587 = sub i64 %sub.ptr.lhs.cast.i.i469585, %sub.ptr.rhs.cast.i.i470586
  %31 = lshr exact i64 %sub.ptr.sub.i.i471587, 2
  %conv.i472588 = trunc i64 %31 to i32
  %cmp125589 = icmp sgt i32 %conv.i472588, 0
  %32 = icmp sgt i64 %sub.ptr.sub.i497, -1
  %smax603 = select i1 %32, i64 %sub.ptr.sub.i497, i64 -1
  %33 = icmp slt i64 %smax603, 1
  %smin604 = select i1 %33, i64 %smax603, i64 1
  %34 = sub i64 %sub.ptr.rhs.cast.i496, %__cur.0.lcssa.i.i.i.i.i
  %35 = icmp sgt i64 %34, %sub.ptr.sub.i497
  %smax605 = select i1 %35, i64 %34, i64 %sub.ptr.sub.i497
  %36 = lshr i64 %smax605, 4
  %37 = mul nsw i64 %smin604, %36
  %38 = icmp ugt i64 %37, 1
  %umax606 = select i1 %38, i64 %37, i64 1
  %39 = shl nuw i64 %umax606, 4
  %40 = zext i32 %27 to i64
  %sext637 = shl i64 %sub.ptr.sub.i.i509, 30
  %41 = ashr i64 %sext637, 32
  %42 = sext i32 %27 to i64
  br label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.cond.cleanup126, %for.cond20.preheader.lr.ph
  %indvars.iv632 = phi i64 [ 0, %for.cond20.preheader.lr.ph ], [ %indvars.iv.next633, %for.cond.cleanup126 ]
  %indvar = phi i64 [ 0, %for.cond20.preheader.lr.ph ], [ %indvar.next, %for.cond.cleanup126 ]
  %43 = shl nuw nsw i64 %indvar, 1
  br i1 %cmp22572.not, label %for.body33, label %for.body24.preheader

for.body24.preheader:                             ; preds = %for.cond20.preheader
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %cond.i.i.i.i552600, i8 0, i64 %39, i1 false)
  br label %for.body33

for.cond.cleanup.loopexit:                        ; preds = %for.cond.cleanup126
  %44 = trunc i64 %indvars.iv.next633 to i32
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %invoke.cont11
  %i_dependent.0.lcssa = phi i32 [ 0, %invoke.cont11 ], [ %44, %for.cond.cleanup.loopexit ]
  %45 = and i32 %conv.i510, -2147483647
  %cmp161 = icmp eq i32 %45, 1
  br i1 %cmp161, label %for.cond164.preheader, label %if.end324

for.cond164.preheader:                            ; preds = %for.cond.cleanup
  %sub.ptr.rhs.cast.i = ptrtoint %"struct.adept::Block"* %cond.i.i.i.i552 to i64
  %sub.ptr.sub.i = sub i64 %__cur.0.lcssa.i.i.i.i.i, %sub.ptr.rhs.cast.i
  %cmp166570.not = icmp eq i64 %sub.ptr.sub.i, 0
  br i1 %cmp166570.not, label %for.body180, label %for.body168.preheader

for.body168.preheader:                            ; preds = %for.cond164.preheader
  %46 = icmp sgt i64 %sub.ptr.sub.i, -1
  %smax601 = select i1 %46, i64 %sub.ptr.sub.i, i64 -1
  %47 = icmp slt i64 %smax601, 1
  %smin = select i1 %47, i64 %smax601, i64 1
  %48 = sub i64 %sub.ptr.rhs.cast.i, %__cur.0.lcssa.i.i.i.i.i
  %49 = icmp sgt i64 %48, %sub.ptr.sub.i
  %smax602 = select i1 %49, i64 %48, i64 %sub.ptr.sub.i
  %50 = lshr i64 %smax602, 4
  %51 = mul nsw i64 %smin, %50
  %52 = icmp ugt i64 %51, 1
  %umax = select i1 %52, i64 %51, i64 1
  %53 = shl nuw i64 %umax, 4
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %cond.i.i.i.i552600, i8 0, i64 %53, i1 false)
  br label %for.body180

for.body49.lr.ph:                                 ; preds = %for.body33
  %54 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !35
  br label %for.body49

for.body33:                                       ; preds = %for.body24.preheader, %for.cond20.preheader
  %add.ptr.i489 = getelementptr inbounds i32, i32* %24, i64 %indvars.iv632
  %55 = load i32, i32* %add.ptr.i489, align 4, !tbaa !46
  %conv37 = sext i32 %55 to i64
  %arrayidx.i485 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv37, i32 0, i64 0
  store double 1.000000e+00, double* %arrayidx.i485, align 8, !tbaa !43
  %56 = or i64 %indvars.iv632, 1
  %add.ptr.i489.c = getelementptr inbounds i32, i32* %24, i64 %56
  %57 = load i32, i32* %add.ptr.i489.c, align 4, !tbaa !46
  %conv37.c = sext i32 %57 to i64
  %arrayidx.i485.c = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv37.c, i32 0, i64 1
  store double 1.000000e+00, double* %arrayidx.i485.c, align 8, !tbaa !43
  br i1 %cmp47581, label %for.body49.lr.ph, label %for.cond121.preheader

for.cond121.preheader:                            ; preds = %if.end114, %for.body33
  br i1 %cmp125589, label %for.cond129.preheader.lr.ph, label %for.cond.cleanup126

for.cond129.preheader.lr.ph:                      ; preds = %for.cond121.preheader
  %58 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
  %59 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !76
  %sub.ptr.lhs.cast.i.i469 = ptrtoint i32* %59 to i64
  %sub.ptr.rhs.cast.i.i470 = ptrtoint i32* %58 to i64
  %sub.ptr.sub.i.i471 = sub i64 %sub.ptr.lhs.cast.i.i469, %sub.ptr.rhs.cast.i.i470
  %60 = lshr exact i64 %sub.ptr.sub.i.i471, 2
  %conv.i472 = trunc i64 %60 to i32
  %61 = icmp sgt i32 %conv.i472, 1
  %.op = and i64 %60, 4294967295
  %wide.trip.count630 = select i1 %61, i64 %.op, i64 1
  br label %for.cond129.preheader

for.body49:                                       ; preds = %if.end114, %for.body49.lr.ph
  %indvars.iv16 = phi i64 [ %indvars.iv.next17, %if.end114 ], [ %42, %for.body49.lr.ph ]
  %indvars.iv619 = phi i64 [ %indvars.iv.next620, %if.end114 ], [ %40, %for.body49.lr.ph ]
  %indvars.iv.next17 = add nsw i64 %indvars.iv16, -1
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #32
  %index = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %54, i64 %indvars.iv.next17, i32 0
  %62 = load i32, i32* %index, align 4, !tbaa !41
  %conv55 = sext i32 %62 to i64
  br label %for.body54

for.cond.cleanup53:                               ; preds = %for.body54
  %tobool.not = icmp eq i32 %n_non_zero.1, 0
  br i1 %tobool.not, label %if.end114, label %if.then76

for.body54:                                       ; preds = %for.body54, %for.body49
  %cmp52 = phi i1 [ true, %for.body49 ], [ false, %for.body54 ]
  %indvars.iv613 = phi i64 [ 0, %for.body49 ], [ 1, %for.body54 ]
  %n_non_zero.0575 = phi i32 [ 0, %for.body49 ], [ %n_non_zero.1, %for.body54 ]
  %arrayidx.i481 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv55, i32 0, i64 %indvars.iv613
  %63 = load double, double* %arrayidx.i481, align 8, !tbaa !43
  %arrayidx61 = getelementptr inbounds <2 x double>, <2 x double>* %a, i64 0, i64 %indvars.iv613
  store double %63, double* %arrayidx61, align 8, !tbaa !43
  store double 0.000000e+00, double* %arrayidx.i481, align 8, !tbaa !43
  %cmp69 = fcmp fast une double %63, 0.000000e+00
  %n_non_zero.1 = select i1 %cmp69, i32 1, i32 %n_non_zero.0575
  br i1 %cmp52, label %for.body54, label %for.cond.cleanup53, !llvm.loop !119

if.then76:                                        ; preds = %for.cond.cleanup53
  %64 = add i64 %indvars.iv16, 4294967294
  %65 = and i64 %64, 4294967295
  %end_plus_one = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %54, i64 %65, i32 1
  %66 = load i32, i32* %end_plus_one, align 4, !tbaa !45
  %end_plus_one82 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %54, i64 %indvars.iv.next17, i32 1
  %67 = load i32, i32* %end_plus_one82, align 4, !tbaa !45
  %cmp83578 = icmp slt i32 %66, %67
  br i1 %cmp83578, label %for.body85.lr.ph, label %if.end114

for.body85.lr.ph:                                 ; preds = %if.then76
  %68 = load double*, double** %multiplier_, align 8, !tbaa !37
  %69 = load i32*, i32** %index_, align 8, !tbaa !38
  %70 = sext i32 %66 to i64
  %71 = sext i32 %67 to i64
  %72 = load <2 x double>, <2 x double>* %a, align 16, !tbaa !43
  br label %for.body85

for.body85:                                       ; preds = %for.body85, %for.body85.lr.ph
  %indvars.iv617 = phi i64 [ %70, %for.body85.lr.ph ], [ %indvars.iv.next618, %for.body85 ]
  %arrayidx87 = getelementptr inbounds double, double* %68, i64 %indvars.iv617
  %73 = load double, double* %arrayidx87, align 8, !tbaa !43
  %arrayidx89 = getelementptr inbounds i32, i32* %69, i64 %indvars.iv617
  %74 = load i32, i32* %arrayidx89, align 4, !tbaa !46
  %conv90 = sext i32 %74 to i64
  %arrayidx103 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv90, i32 0, i64 0
  %75 = insertelement <2 x double> poison, double %73, i32 0
  %76 = shufflevector <2 x double> %75, <2 x double> undef, <2 x i32> zeroinitializer
  %77 = fmul fast <2 x double> %72, %76
  %78 = bitcast double* %arrayidx103 to <2 x double>*
  %79 = load <2 x double>, <2 x double>* %78, align 8, !tbaa !43
  %80 = fadd fast <2 x double> %79, %77
  store <2 x double> %80, <2 x double>* %78, align 8, !tbaa !43
  %indvars.iv.next618 = add nsw i64 %indvars.iv617, 1
  %exitcond15.not = icmp eq i64 %indvars.iv.next618, %71
  br i1 %exitcond15.not, label %if.end114, label %for.body85, !llvm.loop !120

if.end114:                                        ; preds = %for.body85, %if.then76, %for.cond.cleanup53
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #32
  %cmp47 = icmp sgt i64 %indvars.iv619, 2
  %indvars.iv.next620 = add nsw i64 %indvars.iv619, -1
  br i1 %cmp47, label %for.body49, label %for.cond121.preheader, !llvm.loop !121

for.cond129.preheader:                            ; preds = %for.cond129.preheader, %for.cond129.preheader.lr.ph
  %indvar621 = phi i64 [ 0, %for.cond129.preheader.lr.ph ], [ %indvar.next622, %for.cond129.preheader ]
  %81 = mul nsw i64 %indvar621, %41
  %82 = add nsw i64 %81, %43
  %scevgep = getelementptr double, double* %jacobian_out, i64 %82
  %scevgep623 = bitcast double* %scevgep to i8*
  %add.ptr.i466 = getelementptr inbounds i32, i32* %58, i64 %indvar621
  %83 = load i32, i32* %add.ptr.i466, align 4, !tbaa !46
  %conv136 = sext i32 %83 to i64
  %scevgep624 = getelementptr %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv136
  %scevgep624625 = bitcast %"struct.adept::Block"* %scevgep624 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %scevgep623, i8* nonnull align 8 dereferenceable(16) %scevgep624625, i64 16, i1 false)
  %indvar.next622 = add nuw nsw i64 %indvar621, 1
  %exitcond631.not = icmp eq i64 %indvar.next622, %wide.trip.count630
  br i1 %exitcond631.not, label %for.cond.cleanup126, label %for.cond129.preheader, !llvm.loop !122

for.cond.cleanup126:                              ; preds = %for.cond129.preheader, %for.cond121.preheader
  %indvars.iv.next633 = add nuw nsw i64 %indvars.iv632, 2
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond635.not = icmp eq i64 %indvar.next, %div651
  br i1 %exitcond635.not, label %for.cond.cleanup.loopexit, label %for.cond20.preheader, !llvm.loop !123

for.body180:                                      ; preds = %for.body168.preheader, %for.cond164.preheader
  %conv183 = zext i32 %i_dependent.0.lcssa to i64
  %84 = load i32*, i32** %_M_start.i.i426, align 8, !tbaa !33
  %add.ptr.i452 = getelementptr inbounds i32, i32* %84, i64 %conv183
  %85 = load i32, i32* %add.ptr.i452, align 4, !tbaa !46
  %conv185 = sext i32 %85 to i64
  %arrayidx.i448 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv185, i32 0, i64 0
  store double 1.000000e+00, double* %arrayidx.i448, align 8, !tbaa !43
  %n_statements_195 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %86 = load i32, i32* %n_statements_195, align 8, !tbaa !40
  %cmp198567 = icmp sgt i32 %86, 1
  br i1 %cmp198567, label %for.body200.lr.ph, label %for.cond289.preheader

for.body200.lr.ph:                                ; preds = %for.body180
  %statement_202 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %87 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_202, align 8, !tbaa !35
  %multiplier_248 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %index_252 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %88 = zext i32 %86 to i64
  %89 = zext i32 %86 to i64
  br label %for.body200

for.cond289.preheader:                            ; preds = %if.end280, %for.body180
  %90 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !76
  %91 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
  %sub.ptr.lhs.cast.i.i435557 = ptrtoint i32* %90 to i64
  %sub.ptr.rhs.cast.i.i436558 = ptrtoint i32* %91 to i64
  %sub.ptr.sub.i.i437559 = sub i64 %sub.ptr.lhs.cast.i.i435557, %sub.ptr.rhs.cast.i.i436558
  %92 = lshr exact i64 %sub.ptr.sub.i.i437559, 2
  %conv.i438560 = trunc i64 %92 to i32
  %cmp293561 = icmp sgt i32 %conv.i438560, 0
  br i1 %cmp293561, label %for.body300.lr.ph, label %if.then.i.i.i

for.body300.lr.ph:                                ; preds = %for.cond289.preheader
  %sext = shl i64 %sub.ptr.sub.i.i509, 30
  %93 = ashr i64 %sext, 32
  %94 = sext i32 %i_dependent.0.lcssa to i64
  %wide.trip.count = and i64 %92, 4294967295
  br label %for.body300

for.body200:                                      ; preds = %if.end280, %for.body200.lr.ph
  %indvars.iv12 = phi i64 [ %indvars.iv.next13, %if.end280 ], [ %89, %for.body200.lr.ph ]
  %indvars.iv598 = phi i64 [ %indvars.iv.next599, %if.end280 ], [ %88, %for.body200.lr.ph ]
  %indvars.iv.next13 = add nsw i64 %indvars.iv12, -1
  %index212 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %87, i64 %indvars.iv.next13, i32 0
  %95 = load i32, i32* %index212, align 4, !tbaa !41
  %conv213 = sext i32 %95 to i64
  %arrayidx.i445 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv213, i32 0, i64 0
  %arrayidx.i445.promoted = load double, double* %arrayidx.i445, align 8, !tbaa !43
  %cmp227 = fcmp fast oeq double %arrayidx.i445.promoted, 0.000000e+00
  store double 0.000000e+00, double* %arrayidx.i445, align 8, !tbaa !43
  br i1 %cmp227, label %if.end280, label %if.then235

if.then235:                                       ; preds = %for.body200
  %96 = add i64 %indvars.iv12, 4294967294
  %97 = and i64 %96, 4294967295
  %end_plus_one241 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %87, i64 %97, i32 1
  %98 = load i32, i32* %end_plus_one241, align 4, !tbaa !45
  %end_plus_one243 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %87, i64 %indvars.iv.next13, i32 1
  %99 = load i32, i32* %end_plus_one243, align 4, !tbaa !45
  %cmp244564 = icmp slt i32 %98, %99
  br i1 %cmp244564, label %for.body246.lr.ph, label %if.end280

for.body246.lr.ph:                                ; preds = %if.then235
  %100 = load double*, double** %multiplier_248, align 8, !tbaa !37
  %101 = load i32*, i32** %index_252, align 8, !tbaa !38
  %102 = sext i32 %98 to i64
  %103 = sext i32 %99 to i64
  br label %for.body246

for.body246:                                      ; preds = %for.body246, %for.body246.lr.ph
  %indvars.iv596 = phi i64 [ %102, %for.body246.lr.ph ], [ %indvars.iv.next597, %for.body246 ]
  %arrayidx250 = getelementptr inbounds double, double* %100, i64 %indvars.iv596
  %104 = load double, double* %arrayidx250, align 8, !tbaa !43
  %arrayidx254 = getelementptr inbounds i32, i32* %101, i64 %indvars.iv596
  %105 = load i32, i32* %arrayidx254, align 4, !tbaa !46
  %conv255 = sext i32 %105 to i64
  %arrayidx.i439 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv255, i32 0, i64 0
  %mul267 = fmul fast double %104, %arrayidx.i445.promoted
  %106 = load double, double* %arrayidx.i439, align 8, !tbaa !43
  %add270 = fadd fast double %106, %mul267
  store double %add270, double* %arrayidx.i439, align 8, !tbaa !43
  %indvars.iv.next597 = add nsw i64 %indvars.iv596, 1
  %exitcond.not19 = icmp eq i64 %indvars.iv.next597, %103
  br i1 %exitcond.not19, label %if.end280, label %for.body246, !llvm.loop !124

if.end280:                                        ; preds = %for.body246, %if.then235, %for.body200
  %cmp198 = icmp sgt i64 %indvars.iv598, 2
  %indvars.iv.next599 = add nsw i64 %indvars.iv598, -1
  br i1 %cmp198, label %for.body200, label %for.cond289.preheader, !llvm.loop !125

for.body300:                                      ; preds = %for.body300, %for.body300.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body300.lr.ph ], [ %indvars.iv.next, %for.body300 ]
  %add.ptr.i432 = getelementptr inbounds i32, i32* %91, i64 %indvars.iv
  %107 = load i32, i32* %add.ptr.i432, align 4, !tbaa !46
  %conv304 = sext i32 %107 to i64
  %arrayidx.i = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv304, i32 0, i64 0
  %108 = load double, double* %arrayidx.i, align 8, !tbaa !43
  %109 = mul nsw i64 %indvars.iv, %93
  %110 = add nsw i64 %109, %94
  %arrayidx315 = getelementptr inbounds double, double* %jacobian_out, i64 %110
  store double %108, double* %arrayidx315, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.then.i.i.i, label %for.body300, !llvm.loop !126

if.end324:                                        ; preds = %for.cond.cleanup
  %tobool.not.i.i.i = icmp eq %"struct.adept::Block"* %cond.i.i.i.i552, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body300, %if.end324, %for.cond289.preheader
  tail call void @_ZdlPv(i8* nonnull %cond.i.i.i.i552600) #32
  br label %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EED2Ev.exit: ; preds = %if.then.i.i.i, %if.end324
  ret void

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i515, %ehcleanup.thread645
  %.pn.pn = phi { i8*, i32 } [ %.pn549, %cleanup.action ], [ %20, %if.then.i.i515 ], [ %20, %ehcleanup.thread645 ]
  resume { i8*, i32 } %.pn.pn

unreachable:                                      ; preds = %invoke.cont5
  unreachable
}

; Function Attrs: uwtable mustprogress
define dso_local void @_ZN5adept5Stack8jacobianEPd(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, double* nocapture %jacobian_out) local_unnamed_addr #8 align 2 {
entry:
  %_M_finish.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %0 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !76
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %1 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
  %sub.ptr.lhs.cast.i.i = ptrtoint i32* %0 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint i32* %1 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %2 = lshr exact i64 %sub.ptr.sub.i.i, 2
  %conv.i = trunc i64 %2 to i32
  %_M_finish.i.i4 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %3 = load i32*, i32** %_M_finish.i.i4, align 8, !tbaa !76
  %_M_start.i.i5 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %4 = load i32*, i32** %_M_start.i.i5, align 8, !tbaa !33
  %sub.ptr.lhs.cast.i.i6 = ptrtoint i32* %3 to i64
  %sub.ptr.rhs.cast.i.i7 = ptrtoint i32* %4 to i64
  %sub.ptr.sub.i.i8 = sub i64 %sub.ptr.lhs.cast.i.i6, %sub.ptr.rhs.cast.i.i7
  %5 = lshr exact i64 %sub.ptr.sub.i.i8, 2
  %conv.i9 = trunc i64 %5 to i32
  %cmp.not = icmp sgt i32 %conv.i, %conv.i9
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_ZN5adept5Stack16jacobian_forwardEPd(%"class.adept::Stack"* nonnull dereferenceable(149) %this, double* %jacobian_out)
  br label %if.end

if.else:                                          ; preds = %entry
  tail call void @_ZN5adept5Stack16jacobian_reverseEPd(%"class.adept::Stack"* nonnull dereferenceable(149) %this, double* %jacobian_out)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void
}

; Function Attrs: nofree nounwind uwtable willreturn
define dso_local void @_ZN5adept7versionB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result) local_unnamed_addr #15 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2
  %1 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to %union.anon**
  store %union.anon* %0, %union.anon** %1, align 8, !tbaa !9
  %2 = bitcast %union.anon* %0 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(5) %2, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), i64 5, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1
  store i64 5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %2, i64 5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept16compiler_versionB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias nonnull sret(%"class.std::__cxx11::basic_string") align 8 %agg.result) local_unnamed_addr #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i:
  %0 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2
  %1 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to %union.anon**
  store %union.anon* %0, %union.anon** %1, align 8, !tbaa !9
  %2 = bitcast %union.anon* %0 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(7) %2, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i64 7, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1
  store i64 7, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %2, i64 7
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  %call2.i.i7 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %agg.result, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i64 8)
          to label %nrvo.skipdtor unwind label %lpad1

lpad1:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %3 = landingpad { i8*, i32 }
          cleanup
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 0, i32 0
  %4 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %4, %2
  br i1 %cmp.i.i.i, label %eh.resume, label %if.then.i.i

if.then.i.i:                                      ; preds = %lpad1
  tail call void @_ZdlPv(i8* %4) #32
  br label %eh.resume

nrvo.skipdtor:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  ret void

eh.resume:                                        ; preds = %if.then.i.i, %lpad1
  resume { i8*, i32 } %3
}

; Function Attrs: nofree nounwind uwtable willreturn
define dso_local void @_ZN5adept14compiler_flagsB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result) local_unnamed_addr #15 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2
  %1 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to %union.anon**
  store %union.anon* %0, %union.anon** %1, align 8, !tbaa !9
  %2 = bitcast %union.anon* %0 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(7) %2, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i64 7, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1
  store i64 7, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %2, i64 7
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept13configurationB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result) local_unnamed_addr #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %s = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp11 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp24 = alloca %"class.std::__cxx11::basic_string", align 8
  %0 = bitcast %"class.std::__cxx11::basic_stringstream"* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 392, i8* nonnull %0) #32
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull dereferenceable(128) %s)
  %add.ptr = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1
  %1 = bitcast %"class.std::basic_ostream.base"* %add.ptr to %"class.std::basic_ostream"*
  %call1.i52 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i64 0, i64 0), i64 14)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %entry
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #32
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %4 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %3, %union.anon** %4, align 8, !tbaa !9, !alias.scope !127
  %5 = bitcast %union.anon* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(5) %5, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), i64 5, i1 false) #32
  %_M_string_length.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 5, i64* %_M_string_length.i.i.i.i.i.i.i, align 8, !tbaa !2, !alias.scope !127
  %arrayidx.i.i.i.i.i.i = getelementptr inbounds i8, i8* %5, i64 5
  store i8 0, i8* %arrayidx.i.i.i.i.i.i, align 1, !tbaa !12, !alias.scope !127
  %_M_p.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  %call2.i53 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull %5, i64 5)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont2
  %call1.i55 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call2.i53, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i64 0, i64 0), i64 2)
          to label %invoke.cont6 unwind label %lpad3

invoke.cont6:                                     ; preds = %invoke.cont4
  %6 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %6, %5
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont6
  call void @_ZdlPv(i8* %6) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %invoke.cont6
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #32
  %call1.i58 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i64 0, i64 0), i64 16)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %7 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #32
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp11, i64 0, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp11 to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !9, !alias.scope !130
  %10 = bitcast %union.anon* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(7) %10, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i64 7, i1 false) #32
  %_M_string_length.i.i.i.i.i.i.i60 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp11, i64 0, i32 1
  store i64 7, i64* %_M_string_length.i.i.i.i.i.i.i60, align 8, !tbaa !2, !alias.scope !130
  %arrayidx.i.i.i.i.i.i61 = getelementptr inbounds i8, i8* %10, i64 7
  store i8 0, i8* %arrayidx.i.i.i.i.i.i61, align 1, !tbaa !12, !alias.scope !130
  %call2.i.i7.i = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i64 8)
          to label %invoke.cont13 unwind label %lpad1.i

lpad1.i:                                          ; preds = %invoke.cont9
  %11 = landingpad { i8*, i32 }
          cleanup
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp11, i64 0, i32 0, i32 0
  %12 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !11, !alias.scope !130
  %cmp.i.i.i.i = icmp eq i8* %12, %10
  br i1 %cmp.i.i.i.i, label %ehcleanup20, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lpad1.i
  call void @_ZdlPv(i8* %12) #32
  br label %ehcleanup20

invoke.cont13:                                    ; preds = %invoke.cont9
  %_M_p.i.i.i62 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp11, i64 0, i32 0, i32 0
  %13 = load i8*, i8** %_M_p.i.i.i62, align 8, !tbaa !11
  %14 = load i64, i64* %_M_string_length.i.i.i.i.i.i.i60, align 8, !tbaa !2
  %call2.i64 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* %13, i64 %14)
          to label %invoke.cont15 unwind label %lpad14

invoke.cont15:                                    ; preds = %invoke.cont13
  %call1.i67 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call2.i64, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
          to label %invoke.cont17 unwind label %lpad14

invoke.cont17:                                    ; preds = %invoke.cont15
  %15 = load i8*, i8** %_M_p.i.i.i62, align 8, !tbaa !11
  %cmp.i.i.i71 = icmp eq i8* %15, %10
  br i1 %cmp.i.i.i71, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %if.then.i.i72

if.then.i.i72:                                    ; preds = %invoke.cont17
  call void @_ZdlPv(i8* %15) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %if.then.i.i72, %invoke.cont17
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32
  %call1.i75 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.78, i64 0, i64 0), i64 18)
          to label %invoke.cont26 unwind label %lpad

invoke.cont26:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %16 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #32
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp24, i64 0, i32 2
  %18 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp24 to %union.anon**
  store %union.anon* %17, %union.anon** %18, align 8, !tbaa !9, !alias.scope !133
  %19 = bitcast %union.anon* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(7) %19, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i64 7, i1 false) #32
  %_M_string_length.i.i.i.i.i.i.i77 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp24, i64 0, i32 1
  store i64 7, i64* %_M_string_length.i.i.i.i.i.i.i77, align 8, !tbaa !2, !alias.scope !133
  %arrayidx.i.i.i.i.i.i78 = getelementptr inbounds i8, i8* %19, i64 7
  store i8 0, i8* %arrayidx.i.i.i.i.i.i78, align 1, !tbaa !12, !alias.scope !133
  %_M_p.i.i.i79 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp24, i64 0, i32 0, i32 0
  %call2.i81 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull %19, i64 7)
          to label %invoke.cont28 unwind label %lpad27

invoke.cont28:                                    ; preds = %invoke.cont26
  %call1.i84 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call2.i81, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i64 0, i64 0), i64 2)
          to label %invoke.cont30 unwind label %lpad27

invoke.cont30:                                    ; preds = %invoke.cont28
  %20 = load i8*, i8** %_M_p.i.i.i79, align 8, !tbaa !11
  %cmp.i.i.i88 = icmp eq i8* %20, %19
  br i1 %cmp.i.i.i88, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %if.then.i.i89

if.then.i.i89:                                    ; preds = %invoke.cont30
  call void @_ZdlPv(i8* %20) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %if.then.i.i89, %invoke.cont30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #32
  %call1.i92 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([41 x i8], [41 x i8]* @.str.80, i64 0, i64 0), i64 40)
          to label %invoke.cont35 unwind label %lpad

invoke.cont35:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %call38 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %1, i32 4)
          to label %invoke.cont37 unwind label %lpad

invoke.cont37:                                    ; preds = %invoke.cont35
  %call1.i95 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call38, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
          to label %invoke.cont39 unwind label %lpad

invoke.cont39:                                    ; preds = %invoke.cont37
  %_M_stringbuf.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %agg.result, %"class.std::__cxx11::basic_stringbuf"* nonnull dereferenceable(104) %_M_stringbuf.i)
          to label %invoke.cont41 unwind label %lpad

invoke.cont41:                                    ; preds = %invoke.cont39
  %21 = load i32 (...)**, i32 (...)*** bitcast ([10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE to i32 (...)***), align 8
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** %21, i32 (...)*** %22, align 8, !tbaa !17
  %23 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i32 (...)***), align 8
  %vbase.offset.ptr4.i.i = getelementptr i32 (...)*, i32 (...)** %21, i64 -3
  %24 = bitcast i32 (...)** %vbase.offset.ptr4.i.i to i64*
  %vbase.offset.i.i = load i64, i64* %24, align 8
  %add.ptr.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i
  %25 = bitcast i8* %add.ptr.i.i to i32 (...)***
  store i32 (...)** %23, i32 (...)*** %25, align 8, !tbaa !17
  %26 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i32 (...)***), align 8
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** %26, i32 (...)*** %27, align 8, !tbaa !17
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %28, align 8, !tbaa !17
  %_M_p.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 0, i32 0
  %29 = load i8*, i8** %_M_p.i.i.i.i.i.i.i, align 8, !tbaa !11
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 2
  %arraydecay.i.i.i.i.i.i.i = bitcast %union.anon* %30 to i8*
  %cmp.i.i.i.i.i.i = icmp eq i8* %29, %arraydecay.i.i.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %invoke.cont41
  call void @_ZdlPv(i8* %29) #32
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %if.then.i.i.i.i.i, %invoke.cont41
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %28, align 8, !tbaa !17
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i) #32
  %31 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)***), align 8
  store i32 (...)** %31, i32 (...)*** %22, align 8, !tbaa !17
  %32 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr3.i.i.i.i = getelementptr i32 (...)*, i32 (...)** %31, i64 -3
  %33 = bitcast i32 (...)** %vbase.offset.ptr3.i.i.i.i to i64*
  %vbase.offset.i.i.i.i = load i64, i64* %33, align 8
  %add.ptr.i.i.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i.i.i
  %34 = bitcast i8* %add.ptr.i.i.i.i to i32 (...)***
  store i32 (...)** %32, i32 (...)*** %34, align 8, !tbaa !17
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %35, align 8, !tbaa !136
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216) %36) #32
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %0) #32
  ret void

lpad:                                             ; preds = %invoke.cont39, %invoke.cont37, %invoke.cont35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %entry
  %37 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup42

lpad3:                                            ; preds = %invoke.cont4, %invoke.cont2
  %38 = landingpad { i8*, i32 }
          cleanup
  %39 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i99 = icmp eq i8* %39, %5
  br i1 %cmp.i.i.i99, label %ehcleanup, label %if.then.i.i100

if.then.i.i100:                                   ; preds = %lpad3
  call void @_ZdlPv(i8* %39) #32
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i100, %lpad3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #32
  br label %ehcleanup42

lpad14:                                           ; preds = %invoke.cont15, %invoke.cont13
  %40 = landingpad { i8*, i32 }
          cleanup
  %41 = load i8*, i8** %_M_p.i.i.i62, align 8, !tbaa !11
  %cmp.i.i.i104 = icmp eq i8* %41, %10
  br i1 %cmp.i.i.i104, label %ehcleanup20, label %if.then.i.i105

if.then.i.i105:                                   ; preds = %lpad14
  call void @_ZdlPv(i8* %41) #32
  br label %ehcleanup20

ehcleanup20:                                      ; preds = %if.then.i.i105, %lpad14, %if.then.i.i.i, %lpad1.i
  %.pn46 = phi { i8*, i32 } [ %11, %if.then.i.i.i ], [ %11, %lpad1.i ], [ %40, %lpad14 ], [ %40, %if.then.i.i105 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #32
  br label %ehcleanup42

lpad27:                                           ; preds = %invoke.cont28, %invoke.cont26
  %42 = landingpad { i8*, i32 }
          cleanup
  %43 = load i8*, i8** %_M_p.i.i.i79, align 8, !tbaa !11
  %cmp.i.i.i109 = icmp eq i8* %43, %19
  br i1 %cmp.i.i.i109, label %ehcleanup33, label %if.then.i.i110

if.then.i.i110:                                   ; preds = %lpad27
  call void @_ZdlPv(i8* %43) #32
  br label %ehcleanup33

ehcleanup33:                                      ; preds = %if.then.i.i110, %lpad27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #32
  br label %ehcleanup42

ehcleanup42:                                      ; preds = %ehcleanup33, %ehcleanup20, %ehcleanup, %lpad
  %.pn49 = phi { i8*, i32 } [ %37, %lpad ], [ %42, %ehcleanup33 ], [ %.pn46, %ehcleanup20 ], [ %38, %ehcleanup ]
  %44 = load i32 (...)**, i32 (...)*** bitcast ([10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE to i32 (...)***), align 8
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** %44, i32 (...)*** %45, align 8, !tbaa !17
  %46 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i32 (...)***), align 8
  %vbase.offset.ptr4.i.i112 = getelementptr i32 (...)*, i32 (...)** %44, i64 -3
  %47 = bitcast i32 (...)** %vbase.offset.ptr4.i.i112 to i64*
  %vbase.offset.i.i113 = load i64, i64* %47, align 8
  %add.ptr.i.i114 = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i113
  %48 = bitcast i8* %add.ptr.i.i114 to i32 (...)***
  store i32 (...)** %46, i32 (...)*** %48, align 8, !tbaa !17
  %49 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i32 (...)***), align 8
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** %49, i32 (...)*** %50, align 8, !tbaa !17
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %51, align 8, !tbaa !17
  %_M_p.i.i.i.i.i.i.i115 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 0, i32 0
  %52 = load i8*, i8** %_M_p.i.i.i.i.i.i.i115, align 8, !tbaa !11
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 2
  %arraydecay.i.i.i.i.i.i.i116 = bitcast %union.anon* %53 to i8*
  %cmp.i.i.i.i.i.i117 = icmp eq i8* %52, %arraydecay.i.i.i.i.i.i.i116
  br i1 %cmp.i.i.i.i.i.i117, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit123, label %if.then.i.i.i.i.i118

if.then.i.i.i.i.i118:                             ; preds = %ehcleanup42
  call void @_ZdlPv(i8* %52) #32
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit123

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit123: ; preds = %if.then.i.i.i.i.i118, %ehcleanup42
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %51, align 8, !tbaa !17
  %_M_buf_locale.i.i.i.i119 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i119) #32
  %54 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)***), align 8
  store i32 (...)** %54, i32 (...)*** %45, align 8, !tbaa !17
  %55 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr3.i.i.i.i120 = getelementptr i32 (...)*, i32 (...)** %54, i64 -3
  %56 = bitcast i32 (...)** %vbase.offset.ptr3.i.i.i.i120 to i64*
  %vbase.offset.i.i.i.i121 = load i64, i64* %56, align 8
  %add.ptr.i.i.i.i122 = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i.i.i121
  %57 = bitcast i8* %add.ptr.i.i.i.i122 to i32 (...)***
  store i32 (...)** %55, i32 (...)*** %57, align 8, !tbaa !17
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %58, align 8, !tbaa !136
  %59 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216) %59) #32
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %0) #32
  resume { i8*, i32 } %.pn49
}

; Function Attrs: uwtable
declare dso_local void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull dereferenceable(128)) unnamed_addr #5 align 2

; Function Attrs: norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local i32 @_ZN5adept16max_blas_threadsEv() local_unnamed_addr #7 {
entry:
  ret i32 1
}

; Function Attrs: norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local i32 @_ZN5adept20set_max_blas_threadsEi(i32 %n) local_unnamed_addr #7 {
entry:
  ret i32 1
}

; Function Attrs: norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local zeroext i1 @_ZN5adept26have_matrix_multiplicationEv() local_unnamed_addr #7 {
entry:
  ret i1 false
}

; Function Attrs: norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local zeroext i1 @_ZN5adept19have_linear_algebraEv() local_unnamed_addr #7 {
entry:
  ret i1 false
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIfEENS_5ArrayILi1ET_Lb0EEERKNS1_ILi2ES2_Lb0EEERKS3_(%"class.adept::Array.25"* noalias sret(%"class.adept::Array.25") align 8 %agg.result, %"class.adept::Array"* nonnull align 8 dereferenceable(32) %A, %"class.adept::Array.25"* nonnull align 8 dereferenceable(24) %b) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIfLNS_8internal21SymmMatrixOrientationE0EEENS_5ArrayILi1ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array.25"* noalias sret(%"class.adept::Array.25") align 8 %agg.result, %"class.adept::SpecialMatrix"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array.25"* nonnull align 8 dereferenceable(24) %b) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIfLNS_8internal21SymmMatrixOrientationE1EEENS_5ArrayILi1ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array.25"* noalias sret(%"class.adept::Array.25") align 8 %agg.result, %"class.adept::SpecialMatrix.9"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array.25"* nonnull align 8 dereferenceable(24) %b) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIfEENS_5ArrayILi2ET_Lb0EEERKS3_S5_(%"class.adept::Array"* noalias sret(%"class.adept::Array") align 8 %agg.result, %"class.adept::Array"* nonnull align 8 dereferenceable(32) %A, %"class.adept::Array"* nonnull align 8 dereferenceable(32) %B) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIfLNS_8internal21SymmMatrixOrientationE0EEENS_5ArrayILi2ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array"* noalias sret(%"class.adept::Array") align 8 %agg.result, %"class.adept::SpecialMatrix"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array"* nonnull align 8 dereferenceable(32) %B) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIfLNS_8internal21SymmMatrixOrientationE1EEENS_5ArrayILi2ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array"* noalias sret(%"class.adept::Array") align 8 %agg.result, %"class.adept::SpecialMatrix.9"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array"* nonnull align 8 dereferenceable(32) %B) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIdEENS_5ArrayILi1ET_Lb0EEERKNS1_ILi2ES2_Lb0EEERKS3_(%"class.adept::Array.28"* noalias sret(%"class.adept::Array.28") align 8 %agg.result, %"class.adept::Array.12"* nonnull align 8 dereferenceable(32) %A, %"class.adept::Array.28"* nonnull align 8 dereferenceable(24) %b) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIdLNS_8internal21SymmMatrixOrientationE0EEENS_5ArrayILi1ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array.28"* noalias sret(%"class.adept::Array.28") align 8 %agg.result, %"class.adept::SpecialMatrix.15"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array.28"* nonnull align 8 dereferenceable(24) %b) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIdLNS_8internal21SymmMatrixOrientationE1EEENS_5ArrayILi1ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array.28"* noalias sret(%"class.adept::Array.28") align 8 %agg.result, %"class.adept::SpecialMatrix.17"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array.28"* nonnull align 8 dereferenceable(24) %b) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIdEENS_5ArrayILi2ET_Lb0EEERKS3_S5_(%"class.adept::Array.12"* noalias sret(%"class.adept::Array.12") align 8 %agg.result, %"class.adept::Array.12"* nonnull align 8 dereferenceable(32) %A, %"class.adept::Array.12"* nonnull align 8 dereferenceable(32) %B) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIdLNS_8internal21SymmMatrixOrientationE0EEENS_5ArrayILi2ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array.12"* noalias sret(%"class.adept::Array.12") align 8 %agg.result, %"class.adept::SpecialMatrix.15"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array.12"* nonnull align 8 dereferenceable(32) %B) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIdLNS_8internal21SymmMatrixOrientationE1EEENS_5ArrayILi2ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array.12"* noalias sret(%"class.adept::Array.12") align 8 %agg.result, %"class.adept::SpecialMatrix.17"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array.12"* nonnull align 8 dereferenceable(32) %B) local_unnamed_addr #5 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i9.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #32
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #32
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept8linspaceEddi(%"class.adept::Array.28"* noalias nonnull sret(%"class.adept::Array.28") align 8 %agg.result, double %x1, double %x2, i32 %n) local_unnamed_addr #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %dim.i.i = alloca [7 x i32], align 16
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %storage_.i = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %agg.result, i64 0, i32 1
  store %"class.adept::Storage.14"* null, %"class.adept::Storage.14"** %storage_.i, align 8, !tbaa !138
  %0 = bitcast [7 x i32]* %dim.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #32
  %arrayinit.begin.i.i = getelementptr inbounds [7 x i32], [7 x i32]* %dim.i.i, i64 0, i64 0
  store i32 %n, i32* %arrayinit.begin.i.i, align 16, !tbaa !46
  %arrayinit.element.i.i = getelementptr inbounds [7 x i32], [7 x i32]* %dim.i.i, i64 0, i64 1
  %1 = bitcast i32* %arrayinit.element.i.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(24) %1, i8 -1, i64 24, i1 false)
  call void @_ZN5adept5ArrayILi1EdLb0EE6resizeEPKib(%"class.adept::Array.28"* nonnull dereferenceable(24) %agg.result, i32* nonnull %arrayinit.begin.i.i, i1 zeroext false)
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #32
  %cmp = icmp sgt i32 %n, 1
  br i1 %cmp, label %for.body.lr.ph, label %if.else

for.body.lr.ph:                                   ; preds = %entry
  %sub = fsub fast double %x2, %x1
  %sub2 = add nsw i32 %n, -1
  %conv3 = sitofp i32 %sub2 to double
  %data_.i = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %agg.result, i64 0, i32 0
  %2 = load double*, double** %data_.i, align 8, !tbaa !141
  %arrayidx.i4.i = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %agg.result, i64 0, i32 3, i32 0, i64 0
  %3 = load i32, i32* %arrayidx.i4.i, align 4, !tbaa !46
  %4 = sext i32 %3 to i64
  %wide.trip.count = zext i32 %n to i64
  %5 = fdiv fast double 1.000000e+00, %conv3
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %6 = trunc i64 %indvars.iv to i32
  %conv = sitofp i32 %6 to double
  %mul = fmul fast double %sub, %conv
  %7 = fmul fast double %mul, %5
  %add = fadd fast double %7, %x1
  %8 = mul nsw i64 %indvars.iv, %4
  %arrayidx.i = getelementptr inbounds double, double* %2, i64 %8
  store double %add, double* %arrayidx.i, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %nrvo.skipdtor, label %for.body, !llvm.loop !142

if.else:                                          ; preds = %entry
  %cmp4 = icmp eq i32 %n, 1
  %cmp5 = fcmp fast oeq double %x1, %x2
  %or.cond = and i1 %cmp5, %cmp4
  br i1 %or.cond, label %if.then6, label %if.else10

if.then6:                                         ; preds = %if.else
  %data_.i40 = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %agg.result, i64 0, i32 0
  %9 = load double*, double** %data_.i40, align 8, !tbaa !141
  store double %x1, double* %9, align 8, !tbaa !43
  br label %nrvo.skipdtor

if.else10:                                        ; preds = %if.else
  br i1 %cmp4, label %if.then12, label %nrvo.skipdtor

if.then12:                                        ; preds = %if.else10
  %exception = call i8* @__cxa_allocate_exception(i64 40) #32
  %10 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %10) #32
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %12 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %11, %union.anon** %12, align 8, !tbaa !9
  %13 = bitcast %union.anon* %11 to i8*
  %14 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #32
  store i64 46, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i42 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %if.then12
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i42, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %15 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %15, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(46) %call5.i.i.i9.i42, i8* nonnull align 1 dereferenceable(46) getelementptr inbounds ([47 x i8], [47 x i8]* @.str.82, i64 0, i64 0), i64 46, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %15, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i42, i64 %15
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #32
  %16 = bitcast i8* %exception to %"class.adept::invalid_operation"*
  invoke void @_ZN5adept17invalid_operationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %16, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont17 unwind label %lpad16

invoke.cont17:                                    ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_operationE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad16

ehcleanup.thread:                                 ; preds = %if.then12
  %17 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10) #32
  br label %cleanup.action

lpad16:                                           ; preds = %invoke.cont17, %call5.i.i.i9.i.noexc
  %cleanup.isactive.0 = phi i1 [ false, %invoke.cont17 ], [ true, %call5.i.i.i9.i.noexc ]
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %19, %13
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i

if.then.i.i:                                      ; preds = %lpad16
  call void @_ZdlPv(i8* %19) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10) #32
  br i1 %cleanup.isactive.0, label %cleanup.action, label %ehcleanup23

ehcleanup:                                        ; preds = %lpad16
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10) #32
  br i1 %cleanup.isactive.0, label %cleanup.action, label %ehcleanup23

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i, %ehcleanup.thread
  %.pn46 = phi { i8*, i32 } [ %17, %ehcleanup.thread ], [ %18, %ehcleanup ], [ %18, %if.then.i.i ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %ehcleanup23

nrvo.skipdtor:                                    ; preds = %for.body, %if.else10, %if.then6
  ret void

ehcleanup23:                                      ; preds = %cleanup.action, %ehcleanup, %if.then.i.i
  %.pn45 = phi { i8*, i32 } [ %18, %ehcleanup ], [ %.pn46, %cleanup.action ], [ %18, %if.then.i.i ]
  %20 = load %"class.adept::Storage.14"*, %"class.adept::Storage.14"** %storage_.i, align 8, !tbaa !138
  %tobool.not.i = icmp eq %"class.adept::Storage.14"* %20, null
  br i1 %tobool.not.i, label %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit, label %if.then.i

if.then.i:                                        ; preds = %ehcleanup23
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage.14"* nonnull dereferenceable(20) %20)
          to label %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %if.then.i
  %21 = landingpad { i8*, i32 }
          catch i8* null
  %22 = extractvalue { i8*, i32 } %21, 0
  call void @__clang_call_terminate(i8* %22) #37
  unreachable

_ZN5adept5ArrayILi1EdLb0EED2Ev.exit:              ; preds = %if.then.i, %ehcleanup23
  resume { i8*, i32 } %.pn45

unreachable:                                      ; preds = %invoke.cont17
  unreachable
}

; Function Attrs: norecurse nounwind readonly uwtable willreturn mustprogress
define dso_local float @_Z5tdiffP7timevalS0_(%struct.timeval* nocapture readonly %start, %struct.timeval* nocapture readonly %end) local_unnamed_addr #16 {
entry:
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %end, i64 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8, !tbaa !143
  %tv_sec1 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 0
  %1 = load i64, i64* %tv_sec1, align 8, !tbaa !143
  %sub = sub nsw i64 %0, %1
  %conv = sitofp i64 %sub to double
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %end, i64 0, i32 1
  %2 = load i64, i64* %tv_usec, align 8, !tbaa !145
  %tv_usec2 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 1
  %3 = load i64, i64* %tv_usec2, align 8, !tbaa !145
  %sub3 = sub nsw i64 %2, %3
  %conv4 = sitofp i64 %sub3 to double
  %mul = fmul fast double %conv4, 0x3EB0C6F7A0B5ED8D
  %add = fadd fast double %mul, %conv
  %conv5 = fptrunc double %add to float
  ret float %conv5
}

; Function Attrs: uwtable
define dso_local void @_Z11alogsumexp2RKN5adept5ArrayILi1EdLb1EEEm(%"class.adept::Active"* noalias sret(%"class.adept::Active") align 8 %agg.result, %"class.adept::Array.30"* nonnull align 8 dereferenceable(32) %x, i64 %n) local_unnamed_addr #5 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %A = alloca %"class.adept::Active", align 8
  %ref.tmp = alloca %"class.adept::ActiveConstReference", align 8
  %ref.tmp1 = alloca %"class.adept::Active", align 8
  %agg.tmp = alloca %"class.adept::Active", align 8
  %agg.tmp4 = alloca %"class.adept::Active", align 8
  %ref.tmp5 = alloca %"class.adept::ActiveConstReference", align 8
  %ref.tmp19 = alloca %"struct.adept::internal::BinaryOperation", align 8
  %ref.tmp21 = alloca %"class.adept::Active", align 8
  %ref.tmp22 = alloca %"struct.adept::internal::UnaryOperation.38", align 8
  %0 = bitcast %"class.adept::Active"* %A to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #32
  %1 = bitcast %"class.adept::ActiveConstReference"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !146)
  %arrayidx.i7.i = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %x, i64 0, i32 4, i32 0, i64 0
  %data_.i = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %x, i64 0, i32 1
  %2 = load double*, double** %data_.i, align 8, !tbaa !149, !noalias !146
  %value_.i.i.i = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %x, i64 0, i32 0, i32 0
  %3 = load i32, i32* %value_.i.i.i, align 8, !tbaa !151, !noalias !146
  %val_.i.i = getelementptr inbounds %"class.adept::ActiveConstReference", %"class.adept::ActiveConstReference"* %ref.tmp, i64 0, i32 0
  store double* %2, double** %val_.i.i, align 8, !tbaa !26, !alias.scope !146
  %gradient_index_.i.i = getelementptr inbounds %"class.adept::ActiveConstReference", %"class.adept::ActiveConstReference"* %ref.tmp, i64 0, i32 1
  store i32 %3, i32* %gradient_index_.i.i, align 8, !tbaa !153, !alias.scope !146
  %4 = bitcast %"class.adept::ActiveConstReference"* %ref.tmp to %"struct.adept::Expression.34"*
  call void @_ZN5adept6ActiveIdEC2IdNS_20ActiveConstReferenceIdEEEERKNS_10ExpressionIT_T0_EEPNS_8internal9enable_ifIXaaeqsrS7_4rankLi0EsrS7_9is_activeEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %A, %"struct.adept::Expression.34"* nonnull align 1 dereferenceable(1) %4, i8* null)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #32
  %cmp111.not = icmp eq i64 %n, 0
  br i1 %cmp111.not, label %invoke.cont26, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %entry
  %5 = bitcast %"class.adept::Active"* %ref.tmp1 to i8*
  %val_.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %agg.tmp, i64 0, i32 0
  %gradient_index_.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %agg.tmp, i64 0, i32 1
  %6 = bitcast %"class.adept::ActiveConstReference"* %ref.tmp5 to i8*
  %val_.i.i61 = getelementptr inbounds %"class.adept::ActiveConstReference", %"class.adept::ActiveConstReference"* %ref.tmp5, i64 0, i32 0
  %gradient_index_.i.i62 = getelementptr inbounds %"class.adept::ActiveConstReference", %"class.adept::ActiveConstReference"* %ref.tmp5, i64 0, i32 1
  %7 = bitcast %"class.adept::ActiveConstReference"* %ref.tmp5 to %"struct.adept::Expression.34"*
  %val_.i.i2.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %agg.tmp4, i64 0, i32 0
  %val_.i.i63 = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %ref.tmp1, i64 0, i32 0
  %gradient_index_.i.i64 = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %ref.tmp1, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %invoke.cont13, %for.body.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %invoke.cont13 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #32
  store double 0.000000e+00, double* %val_.i, align 8, !tbaa !155
  %8 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %n_gradients_registered_.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %8, i64 0, i32 9
  %9 = load i32, i32* %n_gradients_registered_.i.i, align 4, !tbaa !51
  %inc.i.i = add nsw i32 %9, 1
  store i32 %inc.i.i, i32* %n_gradients_registered_.i.i, align 4, !tbaa !51
  %gap_list_.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %8, i64 0, i32 4
  %10 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i.i, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %11 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i.i, align 8, !tbaa !28
  %cmp.i.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %11, %10
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body
  %i_gradient_.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %8, i64 0, i32 6
  %12 = load i32, i32* %i_gradient_.i.i, align 8, !tbaa !62
  %inc2.i.i = add nsw i32 %12, 1
  store i32 %inc2.i.i, i32* %i_gradient_.i.i, align 8, !tbaa !62
  %max_gradient_.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %8, i64 0, i32 8
  %13 = load i32, i32* %max_gradient_.i.i, align 8, !tbaa !63
  %cmp.not.i.i = icmp slt i32 %12, %13
  br i1 %cmp.not.i.i, label %_ZN5adept5Stack17register_gradientEv.exit.i, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %if.then.i.i
  store i32 %inc2.i.i, i32* %max_gradient_.i.i, align 8, !tbaa !63
  br label %_ZN5adept5Stack17register_gradientEv.exit.i

if.else.i.i:                                      ; preds = %for.body
  %14 = bitcast %"struct.std::__detail::_List_node_base"* %11 to %"struct.std::_List_node"*
  %_M_storage.i.i.i.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %11, i64 1
  %start.i.i = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i.i.i.i to i32*
  %15 = load i32, i32* %start.i.i, align 4, !tbaa !54
  %inc11.i.i = add nsw i32 %15, 1
  store i32 %inc11.i.i, i32* %start.i.i, align 4, !tbaa !54
  %end.i.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %14, i64 0, i32 1, i32 0, i64 4
  %16 = bitcast i8* %end.i.i to i32*
  %17 = load i32, i32* %16, align 4, !tbaa !52
  %cmp13.not.i.i = icmp slt i32 %15, %17
  br i1 %cmp13.not.i.i, label %_ZN5adept5Stack17register_gradientEv.exit.i, label %if.then14.i.i

if.then14.i.i:                                    ; preds = %if.else.i.i
  %_M_node.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %8, i64 0, i32 5, i32 0
  %18 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i.i.i, align 8, !tbaa !55
  %cmp.i35.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %18, %11
  br i1 %cmp.i35.i.i, label %if.then18.i.i, label %if.end24.i.i

if.then18.i.i:                                    ; preds = %if.then14.i.i
  store %"struct.std::__detail::_List_node_base"* %10, %"struct.std::__detail::_List_node_base"** %_M_node.i.i.i, align 8, !tbaa.struct !60
  br label %if.end24.i.i

if.end24.i.i:                                     ; preds = %if.then18.i.i, %if.then14.i.i
  %_M_size.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %8, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %19 = load i64, i64* %_M_size.i.i.i.i.i, align 8, !tbaa !56
  %sub.i.i.i.i.i = add i64 %19, -1
  store i64 %sub.i.i.i.i.i, i64* %_M_size.i.i.i.i.i, align 8, !tbaa !56
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %11) #32
  %20 = bitcast %"struct.std::__detail::_List_node_base"* %11 to i8*
  call void @_ZdlPv(i8* nonnull %20) #32
  br label %_ZN5adept5Stack17register_gradientEv.exit.i

_ZN5adept5Stack17register_gradientEv.exit.i:      ; preds = %if.end24.i.i, %if.else.i.i, %if.then4.i.i, %if.then.i.i
  %return_val.0.i.i = phi i32 [ %15, %if.end24.i.i ], [ %15, %if.else.i.i ], [ %12, %if.then4.i.i ], [ %12, %if.then.i.i ]
  store i32 %return_val.0.i.i, i32* %gradient_index_.i, align 8, !tbaa !157
  %call2.i57 = invoke nonnull align 8 dereferenceable(12) %"class.adept::Active"* @_ZN5adept6ActiveIdEaSERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %A)
          to label %invoke.cont7 unwind label %lpad2

invoke.cont7:                                     ; preds = %_ZN5adept5Stack17register_gradientEv.exit.i
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #32
  call void @llvm.experimental.noalias.scope.decl(metadata !158)
  %21 = load i32, i32* %arrayidx.i7.i, align 4, !tbaa !46, !noalias !158
  %22 = trunc i64 %indvars.iv to i32
  %mul.i = mul nsw i32 %21, %22
  %23 = load double*, double** %data_.i, align 8, !tbaa !149, !noalias !158
  %idxprom.i = sext i32 %mul.i to i64
  %arrayidx.i = getelementptr inbounds double, double* %23, i64 %idxprom.i
  %24 = load i32, i32* %value_.i.i.i, align 8, !tbaa !151, !noalias !158
  %add.i = add nsw i32 %24, %mul.i
  store double* %arrayidx.i, double** %val_.i.i61, align 8, !tbaa !26, !alias.scope !158
  store i32 %add.i, i32* %gradient_index_.i.i62, align 8, !tbaa !153, !alias.scope !158
  invoke void @_ZN5adept6ActiveIdEC2IdNS_20ActiveConstReferenceIdEEEERKNS_10ExpressionIT_T0_EEPNS_8internal9enable_ifIXaaeqsrS7_4rankLi0EsrS7_9is_activeEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp4, %"struct.adept::Expression.34"* nonnull align 1 dereferenceable(1) %7, i8* null)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %invoke.cont7
  call void @llvm.experimental.noalias.scope.decl(metadata !161)
  %25 = load double, double* %val_.i, align 8, !tbaa !155, !noalias !161
  %26 = load double, double* %val_.i.i2.i.i, align 8, !tbaa !155, !noalias !161
  store double 0.000000e+00, double* %val_.i.i63, align 8, !tbaa !155, !alias.scope !161
  %27 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26, !noalias !161
  %n_gradients_registered_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %27, i64 0, i32 9
  %28 = load i32, i32* %n_gradients_registered_.i.i.i, align 4, !tbaa !51, !noalias !161
  %inc.i.i.i = add nsw i32 %28, 1
  store i32 %inc.i.i.i, i32* %n_gradients_registered_.i.i.i, align 4, !tbaa !51, !noalias !161
  %gap_list_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %27, i64 0, i32 4
  %29 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i.i.i, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i.i.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %30 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i.i.i, align 8, !tbaa !28, !noalias !161
  %cmp.i.i.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %30, %29
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %invoke.cont9
  %i_gradient_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %27, i64 0, i32 6
  %31 = load i32, i32* %i_gradient_.i.i.i, align 8, !tbaa !62
  %inc2.i.i.i = add nsw i32 %31, 1
  store i32 %inc2.i.i.i, i32* %i_gradient_.i.i.i, align 8, !tbaa !62
  %max_gradient_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %27, i64 0, i32 8
  %32 = load i32, i32* %max_gradient_.i.i.i, align 8, !tbaa !63
  %cmp.not.i.i.i = icmp slt i32 %31, %32
  br i1 %cmp.not.i.i.i, label %_ZN5adept6ActiveIdEC2ERKS1_.exit.i, label %if.then4.i.i.i

if.then4.i.i.i:                                   ; preds = %if.then.i.i.i
  store i32 %inc2.i.i.i, i32* %max_gradient_.i.i.i, align 8, !tbaa !63
  br label %_ZN5adept6ActiveIdEC2ERKS1_.exit.i

if.else.i.i.i:                                    ; preds = %invoke.cont9
  %33 = bitcast %"struct.std::__detail::_List_node_base"* %30 to %"struct.std::_List_node"*
  %_M_storage.i.i.i.i.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %30, i64 1
  %start.i.i.i = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i.i.i.i.i to i32*
  %34 = load i32, i32* %start.i.i.i, align 4, !tbaa !54
  %inc11.i.i.i = add nsw i32 %34, 1
  store i32 %inc11.i.i.i, i32* %start.i.i.i, align 4, !tbaa !54
  %end.i.i.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %33, i64 0, i32 1, i32 0, i64 4
  %35 = bitcast i8* %end.i.i.i to i32*
  %36 = load i32, i32* %35, align 4, !tbaa !52
  %cmp13.not.i.i.i = icmp slt i32 %34, %36
  br i1 %cmp13.not.i.i.i, label %_ZN5adept6ActiveIdEC2ERKS1_.exit.i, label %if.then14.i.i.i

if.then14.i.i.i:                                  ; preds = %if.else.i.i.i
  %_M_node.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %27, i64 0, i32 5, i32 0
  %37 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i.i.i.i, align 8, !tbaa !55
  %cmp.i35.i.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %37, %30
  br i1 %cmp.i35.i.i.i, label %if.then18.i.i.i, label %if.end24.i.i.i

if.then18.i.i.i:                                  ; preds = %if.then14.i.i.i
  store %"struct.std::__detail::_List_node_base"* %29, %"struct.std::__detail::_List_node_base"** %_M_node.i.i.i.i, align 8, !tbaa.struct !60
  br label %if.end24.i.i.i

if.end24.i.i.i:                                   ; preds = %if.then18.i.i.i, %if.then14.i.i.i
  %_M_size.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %27, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %38 = load i64, i64* %_M_size.i.i.i.i.i.i, align 8, !tbaa !56
  %sub.i.i.i.i.i.i = add i64 %38, -1
  store i64 %sub.i.i.i.i.i.i, i64* %_M_size.i.i.i.i.i.i, align 8, !tbaa !56
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %30) #32
  %39 = bitcast %"struct.std::__detail::_List_node_base"* %30 to i8*
  call void @_ZdlPv(i8* nonnull %39) #32
  br label %_ZN5adept6ActiveIdEC2ERKS1_.exit.i

_ZN5adept6ActiveIdEC2ERKS1_.exit.i:               ; preds = %if.end24.i.i.i, %if.else.i.i.i, %if.then4.i.i.i, %if.then.i.i.i
  %return_val.0.i.i.i = phi i32 [ %34, %if.end24.i.i.i ], [ %34, %if.else.i.i.i ], [ %31, %if.then4.i.i.i ], [ %31, %if.then.i.i.i ]
  %cmp.i.i = fcmp fast ogt double %25, %26
  %cond-lvalue.i = select i1 %cmp.i.i, %"class.adept::Active"* %agg.tmp, %"class.adept::Active"* %agg.tmp4
  store i32 %return_val.0.i.i.i, i32* %gradient_index_.i.i64, align 8, !tbaa !157, !alias.scope !161
  %call2.i.i65 = invoke nonnull align 8 dereferenceable(12) %"class.adept::Active"* @_ZN5adept6ActiveIdEaSERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %ref.tmp1, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %cond-lvalue.i)
          to label %invoke.cont11 unwind label %lpad10

invoke.cont11:                                    ; preds = %_ZN5adept6ActiveIdEC2ERKS1_.exit.i
  %call = invoke nonnull align 8 dereferenceable(12) %"class.adept::Active"* @_ZN5adept6ActiveIdEaSERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %A, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %ref.tmp1)
          to label %invoke.cont13 unwind label %lpad12

invoke.cont13:                                    ; preds = %invoke.cont11
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %ref.tmp1) #32
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp4) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #32
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #32
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %n
  br i1 %exitcond.not, label %invoke.cont26, label %for.body, !llvm.loop !164

lpad2:                                            ; preds = %_ZN5adept5Stack17register_gradientEv.exit.i
  %40 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup17

lpad8:                                            ; preds = %invoke.cont7
  %41 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup15

lpad10:                                           ; preds = %_ZN5adept6ActiveIdEC2ERKS1_.exit.i
  %42 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad12:                                           ; preds = %invoke.cont11
  %43 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %ref.tmp1) #32
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad12, %lpad10
  %.pn50 = phi { i8*, i32 } [ %43, %lpad12 ], [ %42, %lpad10 ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp4) #32
  br label %ehcleanup15

ehcleanup15:                                      ; preds = %ehcleanup, %lpad8
  %.pn50.pn.pn = phi { i8*, i32 } [ %.pn50, %ehcleanup ], [ %41, %lpad8 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #32
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp) #32
  br label %ehcleanup17

ehcleanup17:                                      ; preds = %ehcleanup15, %lpad2
  %.pn50.pn.pn.pn = phi { i8*, i32 } [ %.pn50.pn.pn, %ehcleanup15 ], [ %40, %lpad2 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #32
  br label %ehcleanup40

invoke.cont26:                                    ; preds = %invoke.cont13, %entry
  %44 = bitcast %"struct.adept::internal::BinaryOperation"* %ref.tmp19 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %44) #32
  %45 = bitcast %"class.adept::Active"* %ref.tmp21 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %45) #32
  %46 = bitcast %"struct.adept::internal::UnaryOperation.38"* %ref.tmp22 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %46) #32
  %47 = load double*, double** %data_.i, align 8, !tbaa !149, !noalias !165
  %ref.tmp23.sroa.0.0..sroa_idx = getelementptr inbounds %"struct.adept::internal::UnaryOperation.38", %"struct.adept::internal::UnaryOperation.38"* %ref.tmp22, i64 0, i32 0, i32 0, i32 0
  store double* %47, double** %ref.tmp23.sroa.0.0..sroa_idx, align 8
  %ref.tmp23.sroa.5.0..sroa_idx97 = getelementptr inbounds %"struct.adept::internal::UnaryOperation.38", %"struct.adept::internal::UnaryOperation.38"* %ref.tmp22, i64 0, i32 0, i32 0, i32 1
  store %"class.adept::Array.30"* %x, %"class.adept::Array.30"** %ref.tmp23.sroa.5.0..sroa_idx97, align 8
  %ref.tmp23.sroa.6.0..sroa_idx101 = getelementptr inbounds %"struct.adept::internal::UnaryOperation.38", %"struct.adept::internal::UnaryOperation.38"* %ref.tmp22, i64 0, i32 0, i32 1
  store %"class.adept::Active"* %A, %"class.adept::Active"** %ref.tmp23.sroa.6.0..sroa_idx101, align 8
  %48 = bitcast %"struct.adept::internal::UnaryOperation.38"* %ref.tmp22 to %"struct.adept::Expression.37"*
  call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %val_.i.i66 = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %ref.tmp21, i64 0, i32 0
  store double 0.000000e+00, double* %val_.i.i66, align 8, !tbaa !155, !alias.scope !168
  %49 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26, !noalias !168
  %n_gradients_registered_.i.i.i67 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %49, i64 0, i32 9
  %50 = load i32, i32* %n_gradients_registered_.i.i.i67, align 4, !tbaa !51, !noalias !168
  %inc.i.i.i68 = add nsw i32 %50, 1
  store i32 %inc.i.i.i68, i32* %n_gradients_registered_.i.i.i67, align 4, !tbaa !51, !noalias !168
  %gap_list_.i.i.i69 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %49, i64 0, i32 4
  %51 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i.i.i69, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i.i.i.i70 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i.i.i69, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %52 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i.i.i70, align 8, !tbaa !28, !noalias !168
  %cmp.i.i.i.i71 = icmp eq %"struct.std::__detail::_List_node_base"* %52, %51
  br i1 %cmp.i.i.i.i71, label %if.then.i.i.i76, label %if.else.i.i.i83

if.then.i.i.i76:                                  ; preds = %invoke.cont26
  %i_gradient_.i.i.i72 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %49, i64 0, i32 6
  %53 = load i32, i32* %i_gradient_.i.i.i72, align 8, !tbaa !62
  %inc2.i.i.i73 = add nsw i32 %53, 1
  store i32 %inc2.i.i.i73, i32* %i_gradient_.i.i.i72, align 8, !tbaa !62
  %max_gradient_.i.i.i74 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %49, i64 0, i32 8
  %54 = load i32, i32* %max_gradient_.i.i.i74, align 8, !tbaa !63
  %cmp.not.i.i.i75 = icmp slt i32 %53, %54
  br i1 %cmp.not.i.i.i75, label %_ZN5adept6ActiveIdEC2Ev.exit.i, label %if.then4.i.i.i77

if.then4.i.i.i77:                                 ; preds = %if.then.i.i.i76
  store i32 %inc2.i.i.i73, i32* %max_gradient_.i.i.i74, align 8, !tbaa !63
  br label %_ZN5adept6ActiveIdEC2Ev.exit.i

if.else.i.i.i83:                                  ; preds = %invoke.cont26
  %55 = bitcast %"struct.std::__detail::_List_node_base"* %52 to %"struct.std::_List_node"*
  %_M_storage.i.i.i.i.i.i78 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %52, i64 1
  %start.i.i.i79 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i.i.i.i.i78 to i32*
  %56 = load i32, i32* %start.i.i.i79, align 4, !tbaa !54
  %inc11.i.i.i80 = add nsw i32 %56, 1
  store i32 %inc11.i.i.i80, i32* %start.i.i.i79, align 4, !tbaa !54
  %end.i.i.i81 = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %55, i64 0, i32 1, i32 0, i64 4
  %57 = bitcast i8* %end.i.i.i81 to i32*
  %58 = load i32, i32* %57, align 4, !tbaa !52
  %cmp13.not.i.i.i82 = icmp slt i32 %56, %58
  br i1 %cmp13.not.i.i.i82, label %_ZN5adept6ActiveIdEC2Ev.exit.i, label %if.then14.i.i.i86

if.then14.i.i.i86:                                ; preds = %if.else.i.i.i83
  %_M_node.i.i.i.i84 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %49, i64 0, i32 5, i32 0
  %59 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i.i.i.i84, align 8, !tbaa !55
  %cmp.i35.i.i.i85 = icmp eq %"struct.std::__detail::_List_node_base"* %59, %52
  br i1 %cmp.i35.i.i.i85, label %if.then18.i.i.i87, label %if.end24.i.i.i90

if.then18.i.i.i87:                                ; preds = %if.then14.i.i.i86
  store %"struct.std::__detail::_List_node_base"* %51, %"struct.std::__detail::_List_node_base"** %_M_node.i.i.i.i84, align 8, !tbaa.struct !60
  br label %if.end24.i.i.i90

if.end24.i.i.i90:                                 ; preds = %if.then18.i.i.i87, %if.then14.i.i.i86
  %_M_size.i.i.i.i.i.i88 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %49, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %60 = load i64, i64* %_M_size.i.i.i.i.i.i88, align 8, !tbaa !56
  %sub.i.i.i.i.i.i89 = add i64 %60, -1
  store i64 %sub.i.i.i.i.i.i89, i64* %_M_size.i.i.i.i.i.i88, align 8, !tbaa !56
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %52) #32
  %61 = bitcast %"struct.std::__detail::_List_node_base"* %52 to i8*
  call void @_ZdlPv(i8* nonnull %61) #32
  br label %_ZN5adept6ActiveIdEC2Ev.exit.i

_ZN5adept6ActiveIdEC2Ev.exit.i:                   ; preds = %if.end24.i.i.i90, %if.else.i.i.i83, %if.then4.i.i.i77, %if.then.i.i.i76
  %return_val.0.i.i.i91 = phi i32 [ %56, %if.end24.i.i.i90 ], [ %56, %if.else.i.i.i83 ], [ %53, %if.then4.i.i.i77 ], [ %53, %if.then.i.i.i76 ]
  %gradient_index_.i.i92 = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %ref.tmp21, i64 0, i32 1
  store i32 %return_val.0.i.i.i91, i32* %gradient_index_.i.i92, align 8, !tbaa !157, !alias.scope !168
  invoke void @_ZN5adept8internal13reduce_activeINS0_3SumIdEEdNS0_14UnaryOperationIdNS0_3ExpENS0_15BinaryOperationIdNS_5ArrayILi1EdLb1EEENS0_8SubtractENS_6ActiveIdEEEEEEEEvRKNS_10ExpressionIT0_T1_EERNSA_ISF_EE(%"struct.adept::Expression.37"* nonnull align 1 dereferenceable(1) %48, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %ref.tmp21)
          to label %invoke.cont31 unwind label %lpad.i

lpad.i:                                           ; preds = %_ZN5adept6ActiveIdEC2Ev.exit.i
  %62 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup35

invoke.cont31:                                    ; preds = %_ZN5adept6ActiveIdEC2Ev.exit.i
  %63 = getelementptr inbounds %"struct.adept::internal::BinaryOperation", %"struct.adept::internal::BinaryOperation"* %ref.tmp19, i64 0, i32 0, i32 0
  store %"class.adept::Active"* %ref.tmp21, %"class.adept::Active"** %63, align 8
  %64 = getelementptr inbounds %"struct.adept::internal::BinaryOperation", %"struct.adept::internal::BinaryOperation"* %ref.tmp19, i64 0, i32 1
  store %"class.adept::Active"* %A, %"class.adept::Active"** %64, align 8
  %65 = bitcast %"struct.adept::internal::BinaryOperation"* %ref.tmp19 to %"struct.adept::Expression.35"*
  invoke void @_ZN5adept6ActiveIdEC2IdNS_8internal15BinaryOperationIdNS3_14UnaryOperationIdNS3_3LogES1_EENS3_3AddES1_EEEERKNS_10ExpressionIT_T0_EEPNS3_9enable_ifIXaaeqsrSC_4rankLi0EsrSC_9is_activeEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %agg.result, %"struct.adept::Expression.35"* nonnull align 1 dereferenceable(1) %65, i8* null)
          to label %invoke.cont33 unwind label %lpad28

invoke.cont33:                                    ; preds = %invoke.cont31
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %ref.tmp21) #32
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %46) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %45) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %44) #32
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %A) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #32
  ret void

lpad28:                                           ; preds = %invoke.cont31
  %66 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup35

ehcleanup35:                                      ; preds = %lpad28, %lpad.i
  %.pn = phi { i8*, i32 } [ %66, %lpad28 ], [ %62, %lpad.i ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %ref.tmp21) #32
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %46) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %45) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %44) #32
  br label %ehcleanup40

ehcleanup40:                                      ; preds = %ehcleanup35, %ehcleanup17
  %.pn50.pn.pn.pn.pn = phi { i8*, i32 } [ %.pn50.pn.pn.pn, %ehcleanup17 ], [ %.pn, %ehcleanup35 ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %A) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #32
  resume { i8*, i32 } %.pn50.pn.pn.pn.pn
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept6ActiveIdEC2IdNS_20ActiveConstReferenceIdEEEERKNS_10ExpressionIT_T0_EEPNS_8internal9enable_ifIXaaeqsrS7_4rankLi0EsrS7_9is_activeEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %this, %"struct.adept::Expression.34"* nonnull align 1 dereferenceable(1) %rhs, i8* %dummy) unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %gradient_index_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 1
  %0 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %n_gradients_registered_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 9
  %1 = load i32, i32* %n_gradients_registered_.i, align 4, !tbaa !51
  %inc.i = add nsw i32 %1, 1
  store i32 %inc.i, i32* %n_gradients_registered_.i, align 4, !tbaa !51
  %gap_list_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 4
  %2 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %3 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i, align 8, !tbaa !28
  %cmp.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %3, %2
  %4 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 0
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %i_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 6
  %5 = load i32, i32* %i_gradient_.i, align 8, !tbaa !62
  %inc2.i = add nsw i32 %5, 1
  store i32 %inc2.i, i32* %i_gradient_.i, align 8, !tbaa !62
  %max_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 8
  %6 = load i32, i32* %max_gradient_.i, align 8, !tbaa !63
  %cmp.not.i = icmp slt i32 %5, %6
  br i1 %cmp.not.i, label %_ZN5adept5Stack17register_gradientEv.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  store i32 %inc2.i, i32* %max_gradient_.i, align 8, !tbaa !63
  br label %_ZN5adept5Stack17register_gradientEv.exit

if.else.i:                                        ; preds = %entry
  %7 = bitcast %"struct.std::__detail::_List_node_base"* %3 to %"struct.std::_List_node"*
  %_M_storage.i.i.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %3, i64 1
  %start.i = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i.i.i to i32*
  %8 = load i32, i32* %start.i, align 4, !tbaa !54
  %inc11.i = add nsw i32 %8, 1
  store i32 %inc11.i, i32* %start.i, align 4, !tbaa !54
  %end.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %7, i64 0, i32 1, i32 0, i64 4
  %9 = bitcast i8* %end.i to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !52
  %cmp13.not.i = icmp slt i32 %8, %10
  br i1 %cmp13.not.i, label %_ZN5adept5Stack17register_gradientEv.exit, label %if.then14.i

if.then14.i:                                      ; preds = %if.else.i
  %_M_node.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 5, i32 0
  %11 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa !55
  %cmp.i35.i = icmp eq %"struct.std::__detail::_List_node_base"* %11, %3
  br i1 %cmp.i35.i, label %if.then18.i, label %if.end24.i

if.then18.i:                                      ; preds = %if.then14.i
  store %"struct.std::__detail::_List_node_base"* %2, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa.struct !60
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then18.i, %if.then14.i
  %_M_size.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %12 = load i64, i64* %_M_size.i.i.i.i, align 8, !tbaa !56
  %sub.i.i.i.i = add i64 %12, -1
  store i64 %sub.i.i.i.i, i64* %_M_size.i.i.i.i, align 8, !tbaa !56
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %3) #32
  %13 = bitcast %"struct.std::__detail::_List_node_base"* %3 to i8*
  tail call void @_ZdlPv(i8* nonnull %13) #32
  %.pre = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !26
  %14 = bitcast %"class.adept::internal::StackStorageOrig"* %.pre to %"class.adept::Stack"*
  br label %_ZN5adept5Stack17register_gradientEv.exit

_ZN5adept5Stack17register_gradientEv.exit:        ; preds = %if.end24.i, %if.else.i, %if.then4.i, %if.then.i
  %15 = phi %"class.adept::Stack"* [ %14, %if.end24.i ], [ %0, %if.else.i ], [ %0, %if.then4.i ], [ %0, %if.then.i ]
  %16 = phi %"class.adept::internal::StackStorageOrig"* [ %.pre, %if.end24.i ], [ %4, %if.else.i ], [ %4, %if.then4.i ], [ %4, %if.then.i ]
  %return_val.0.i = phi i32 [ %8, %if.end24.i ], [ %8, %if.else.i ], [ %5, %if.then4.i ], [ %5, %if.then.i ]
  store i32 %return_val.0.i, i32* %gradient_index_, align 8, !tbaa !157
  %n_allocated_operations_.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %16, i64 0, i32 6
  %17 = load i32, i32* %n_allocated_operations_.i.i, align 4, !tbaa !75
  %n_operations_.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %16, i64 0, i32 5
  %18 = load i32, i32* %n_operations_.i.i, align 8, !tbaa !74
  %add.i.i = add nsw i32 %18, 1
  %cmp.not.i.i = icmp sgt i32 %17, %add.i.i
  br i1 %cmp.not.i.i, label %_ZN5adept8internal16StackStorageOrig18check_space_staticILi1EEEvv.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %_ZN5adept5Stack17register_gradientEv.exit
  tail call void @_ZN5adept8internal16StackStorageOrig20grow_operation_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %16, i32 1)
  %.pre7 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %19 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %.pre7, i64 0, i32 0
  br label %_ZN5adept8internal16StackStorageOrig18check_space_staticILi1EEEvv.exit

_ZN5adept8internal16StackStorageOrig18check_space_staticILi1EEEvv.exit: ; preds = %if.then.i.i, %_ZN5adept5Stack17register_gradientEv.exit
  %20 = phi %"class.adept::internal::StackStorageOrig"* [ %16, %_ZN5adept5Stack17register_gradientEv.exit ], [ %19, %if.then.i.i ]
  %21 = phi %"class.adept::Stack"* [ %15, %_ZN5adept5Stack17register_gradientEv.exit ], [ %.pre7, %if.then.i.i ]
  %val_.i.i = bitcast %"struct.adept::Expression.34"* %rhs to double**
  %22 = load double*, double** %val_.i.i, align 8, !tbaa !171
  %23 = load double, double* %22, align 8, !tbaa !43
  %gradient_index_.i.i = getelementptr inbounds %"struct.adept::Expression.34", %"struct.adept::Expression.34"* %rhs, i64 8
  %24 = bitcast %"struct.adept::Expression.34"* %gradient_index_.i.i to i32*
  %multiplier_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0, i32 1
  %25 = load double*, double** %multiplier_.i.i.i, align 8, !tbaa !37
  %n_operations_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0, i32 5
  %26 = load i32, i32* %n_operations_.i.i.i, align 8, !tbaa !74
  %idxprom.i.i.i = sext i32 %26 to i64
  %arrayidx.i.i.i = getelementptr inbounds double, double* %25, i64 %idxprom.i.i.i
  store double 1.000000e+00, double* %arrayidx.i.i.i, align 8, !tbaa !43
  %27 = load i32, i32* %24, align 4, !tbaa !46
  %index_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0, i32 2
  %28 = load i32*, i32** %index_.i.i.i, align 8, !tbaa !38
  %inc.i.i.i = add nsw i32 %26, 1
  store i32 %inc.i.i.i, i32* %n_operations_.i.i.i, align 8, !tbaa !74
  %arrayidx4.i.i.i = getelementptr inbounds i32, i32* %28, i64 %idxprom.i.i.i
  store i32 %27, i32* %arrayidx4.i.i.i, align 4, !tbaa !46
  %val_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 0
  store double %23, double* %val_, align 8, !tbaa !155
  %n_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %20, i64 0, i32 3
  %29 = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %20, i64 0, i32 4
  %30 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %cmp.not.i4 = icmp slt i32 %29, %30
  br i1 %cmp.not.i4, label %entry.if.end_crit_edge.i, label %if.then.i5

entry.if.end_crit_edge.i:                         ; preds = %_ZN5adept8internal16StackStorageOrig18check_space_staticILi1EEEvv.exit
  %statement_.phi.trans.insert.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %20, i64 0, i32 0
  %.pre.i = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i, align 8, !tbaa !35
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

if.then.i5:                                       ; preds = %_ZN5adept8internal16StackStorageOrig18check_space_staticILi1EEEvv.exit
  %mul.i.i = shl nsw i32 %30, 1
  %conv.i.i = sext i32 %mul.i.i to i64
  %31 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i, i64 8)
  %32 = extractvalue { i64, i1 } %31, 1
  %33 = extractvalue { i64, i1 } %31, 0
  %34 = select i1 %32, i64 -1, i64 %33
  %call.i.i = tail call noalias nonnull i8* @_Znam(i64 %34) #36
  %35 = bitcast %"class.adept::internal::StackStorageOrig"* %20 to i8**
  %36 = load i8*, i8** %35, align 8, !tbaa !35
  %conv5.i.i = sext i32 %29 to i64
  %mul6.i.i = shl nsw i64 %conv5.i.i, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call.i.i, i8* align 4 %36, i64 %mul6.i.i, i1 false)
  %isnull.i.i = icmp eq i8* %36, null
  br i1 %isnull.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %if.then.i5
  tail call void @_ZdaPv(i8* nonnull %36) #34
  %.pre7.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i: ; preds = %delete.notnull.i.i, %if.then.i5
  %.pre7.i = phi i32 [ %29, %if.then.i5 ], [ %.pre7.pre.i, %delete.notnull.i.i ]
  store i8* %call.i.i, i8** %35, align 8, !tbaa !35
  store i32 %mul.i.i, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %37 = bitcast i8* %call.i.i to %"struct.adept::internal::Statement"*
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, %entry.if.end_crit_edge.i
  %38 = phi i32 [ %29, %entry.if.end_crit_edge.i ], [ %.pre7.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %39 = phi %"struct.adept::internal::Statement"* [ %.pre.i, %entry.if.end_crit_edge.i ], [ %37, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %40 = load i32, i32* %gradient_index_, align 4, !tbaa !46
  %idxprom.i = sext i32 %38 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %39, i64 %idxprom.i, i32 0
  store i32 %40, i32* %index.i, align 4, !tbaa !41
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %20, i64 0, i32 5
  %41 = load i32, i32* %n_operations_.i, align 8, !tbaa !74
  %inc.i6 = add nsw i32 %38, 1
  store i32 %inc.i6, i32* %n_statements_.i, align 8, !tbaa !40
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %39, i64 %idxprom.i, i32 1
  store i32 %41, i32* %end_plus_one.i, align 4, !tbaa !45
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(12) %"class.adept::Active"* @_ZN5adept6ActiveIdEaSERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %this, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %rhs) local_unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !26
  %n_allocated_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %0, i64 0, i32 6
  %1 = load i32, i32* %n_allocated_operations_.i, align 4, !tbaa !75
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %0, i64 0, i32 5
  %2 = load i32, i32* %n_operations_.i, align 8, !tbaa !74
  %add.i = add nsw i32 %2, 1
  %cmp.not.i = icmp sgt i32 %1, %add.i
  %3 = bitcast %"class.adept::internal::StackStorageOrig"* %0 to %"class.adept::Stack"*
  br i1 %cmp.not.i, label %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit, label %if.then.i

if.then.i:                                        ; preds = %entry
  tail call void @_ZN5adept8internal16StackStorageOrig20grow_operation_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %0, i32 1)
  %.pre = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %4 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %.pre, i64 0, i32 0
  br label %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit

_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit: ; preds = %if.then.i, %entry
  %5 = phi %"class.adept::internal::StackStorageOrig"* [ %0, %entry ], [ %4, %if.then.i ]
  %6 = phi %"class.adept::Stack"* [ %3, %entry ], [ %.pre, %if.then.i ]
  %val_.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %rhs, i64 0, i32 0
  %7 = load double, double* %val_.i.i, align 8, !tbaa !155
  %gradient_index_.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %rhs, i64 0, i32 1
  %multiplier_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %6, i64 0, i32 0, i32 1
  %8 = load double*, double** %multiplier_.i.i.i, align 8, !tbaa !37
  %n_operations_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %6, i64 0, i32 0, i32 5
  %9 = load i32, i32* %n_operations_.i.i.i, align 8, !tbaa !74
  %idxprom.i.i.i = sext i32 %9 to i64
  %arrayidx.i.i.i = getelementptr inbounds double, double* %8, i64 %idxprom.i.i.i
  store double 1.000000e+00, double* %arrayidx.i.i.i, align 8, !tbaa !43
  %10 = load i32, i32* %gradient_index_.i.i, align 8, !tbaa !46
  %index_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %6, i64 0, i32 0, i32 2
  %11 = load i32*, i32** %index_.i.i.i, align 8, !tbaa !38
  %inc.i.i.i = add nsw i32 %9, 1
  store i32 %inc.i.i.i, i32* %n_operations_.i.i.i, align 8, !tbaa !74
  %arrayidx4.i.i.i = getelementptr inbounds i32, i32* %11, i64 %idxprom.i.i.i
  store i32 %10, i32* %arrayidx4.i.i.i, align 4, !tbaa !46
  %val_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 0
  store double %7, double* %val_, align 8, !tbaa !155
  %n_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %5, i64 0, i32 3
  %12 = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %5, i64 0, i32 4
  %13 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %cmp.not.i2 = icmp slt i32 %12, %13
  br i1 %cmp.not.i2, label %entry.if.end_crit_edge.i, label %if.then.i3

entry.if.end_crit_edge.i:                         ; preds = %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit
  %statement_.phi.trans.insert.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %5, i64 0, i32 0
  %.pre.i = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i, align 8, !tbaa !35
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

if.then.i3:                                       ; preds = %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit
  %mul.i.i = shl nsw i32 %13, 1
  %conv.i.i = sext i32 %mul.i.i to i64
  %14 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i, i64 8)
  %15 = extractvalue { i64, i1 } %14, 1
  %16 = extractvalue { i64, i1 } %14, 0
  %17 = select i1 %15, i64 -1, i64 %16
  %call.i.i = tail call noalias nonnull i8* @_Znam(i64 %17) #36
  %18 = bitcast %"class.adept::internal::StackStorageOrig"* %5 to i8**
  %19 = load i8*, i8** %18, align 8, !tbaa !35
  %conv5.i.i = sext i32 %12 to i64
  %mul6.i.i = shl nsw i64 %conv5.i.i, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call.i.i, i8* align 4 %19, i64 %mul6.i.i, i1 false)
  %isnull.i.i = icmp eq i8* %19, null
  br i1 %isnull.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %if.then.i3
  tail call void @_ZdaPv(i8* nonnull %19) #34
  %.pre7.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i: ; preds = %delete.notnull.i.i, %if.then.i3
  %.pre7.i = phi i32 [ %12, %if.then.i3 ], [ %.pre7.pre.i, %delete.notnull.i.i ]
  store i8* %call.i.i, i8** %18, align 8, !tbaa !35
  store i32 %mul.i.i, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %20 = bitcast i8* %call.i.i to %"struct.adept::internal::Statement"*
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, %entry.if.end_crit_edge.i
  %21 = phi i32 [ %12, %entry.if.end_crit_edge.i ], [ %.pre7.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %22 = phi %"struct.adept::internal::Statement"* [ %.pre.i, %entry.if.end_crit_edge.i ], [ %20, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %gradient_index_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 1
  %23 = load i32, i32* %gradient_index_, align 4, !tbaa !46
  %idxprom.i = sext i32 %21 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %22, i64 %idxprom.i, i32 0
  store i32 %23, i32* %index.i, align 4, !tbaa !41
  %n_operations_.i4 = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %5, i64 0, i32 5
  %24 = load i32, i32* %n_operations_.i4, align 8, !tbaa !74
  %inc.i = add nsw i32 %21, 1
  store i32 %inc.i, i32* %n_statements_.i, align 8, !tbaa !40
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %22, i64 %idxprom.i, i32 1
  store i32 %24, i32* %end_plus_one.i, align 4, !tbaa !45
  ret %"class.adept::Active"* %this
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %this) unnamed_addr #4 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %gradient_index_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 1
  %n_gradients_registered_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 9
  %1 = load i32, i32* %n_gradients_registered_.i, align 4, !tbaa !51
  %dec.i = add nsw i32 %1, -1
  store i32 %dec.i, i32* %n_gradients_registered_.i, align 4, !tbaa !51
  %2 = load i32, i32* %gradient_index_, align 4, !tbaa !46
  %add.i = add nsw i32 %2, 1
  %i_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 6
  %3 = load i32, i32* %i_gradient_.i, align 8, !tbaa !62
  %cmp.i = icmp eq i32 %add.i, %3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  store i32 %2, i32* %i_gradient_.i, align 8, !tbaa !62
  %gap_list_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 4
  %4 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %5 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i, align 8, !tbaa !28
  %cmp.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %5, %4
  br i1 %cmp.i.i, label %invoke.cont, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  %_M_prev.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1
  %6 = bitcast %"struct.std::__detail::_List_node_base"** %_M_prev.i.i.i to %"struct.std::_List_node"**
  %7 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %6, align 8, !tbaa !65
  %end.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %7, i64 0, i32 1, i32 0, i64 4
  %8 = bitcast i8* %end.i to i32*
  %9 = load i32, i32* %8, align 4, !tbaa !52
  %add8.i = add nsw i32 %9, 1
  %cmp9.i = icmp eq i32 %2, %add8.i
  %10 = getelementptr %"struct.std::_List_node", %"struct.std::_List_node"* %7, i64 0, i32 0
  br i1 %cmp9.i, label %if.then10.i, label %invoke.cont

if.then10.i:                                      ; preds = %if.then4.i
  %_M_storage.i.i.i.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %7, i64 0, i32 1
  %start.i = bitcast %"struct.__gnu_cxx::__aligned_membuf"* %_M_storage.i.i.i.i to i32*
  %11 = load i32, i32* %start.i, align 4, !tbaa !54
  store i32 %11, i32* %i_gradient_.i, align 8, !tbaa !62
  %_M_node.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 5, i32 0
  %12 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa !55
  %cmp.i31.i = icmp eq %"struct.std::__detail::_List_node_base"* %12, %10
  br i1 %cmp.i31.i, label %if.then17.i, label %if.end.i

if.then17.i:                                      ; preds = %if.then10.i
  store %"struct.std::__detail::_List_node_base"* %4, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa.struct !60
  br label %if.end.i

if.end.i:                                         ; preds = %if.then17.i, %if.then10.i
  %_M_size.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %13 = load i64, i64* %_M_size.i.i.i.i, align 8, !tbaa !56
  %sub.i.i.i.i = add i64 %13, -1
  store i64 %sub.i.i.i.i, i64* %_M_size.i.i.i.i, align 8, !tbaa !56
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %10) #32
  %14 = bitcast %"struct.std::_List_node"* %7 to i8*
  tail call void @_ZdlPv(i8* nonnull %14) #32
  br label %invoke.cont

if.else.i:                                        ; preds = %entry
  invoke void @_ZN5adept5Stack27unregister_gradient_not_topERKi(%"class.adept::Stack"* nonnull dereferenceable(149) %0, i32* nonnull align 4 dereferenceable(4) %gradient_index_)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.else.i, %if.end.i, %if.then4.i, %if.then.i
  ret void

terminate.lpad:                                   ; preds = %if.else.i
  %15 = landingpad { i8*, i32 }
          catch i8* null
  %16 = extractvalue { i8*, i32 } %15, 0
  tail call void @__clang_call_terminate(i8* %16) #37
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept6ActiveIdEC2IdNS_8internal15BinaryOperationIdNS3_14UnaryOperationIdNS3_3LogES1_EENS3_3AddES1_EEEERKNS_10ExpressionIT_T0_EEPNS3_9enable_ifIXaaeqsrSC_4rankLi0EsrSC_9is_activeEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %this, %"struct.adept::Expression.35"* nonnull align 1 dereferenceable(1) %rhs, i8* %dummy) unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %gradient_index_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 1
  %0 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %n_gradients_registered_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 9
  %1 = load i32, i32* %n_gradients_registered_.i, align 4, !tbaa !51
  %inc.i = add nsw i32 %1, 1
  store i32 %inc.i, i32* %n_gradients_registered_.i, align 4, !tbaa !51
  %gap_list_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 4
  %2 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %3 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i, align 8, !tbaa !28
  %cmp.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %3, %2
  %4 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 0
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %i_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 6
  %5 = load i32, i32* %i_gradient_.i, align 8, !tbaa !62
  %inc2.i = add nsw i32 %5, 1
  store i32 %inc2.i, i32* %i_gradient_.i, align 8, !tbaa !62
  %max_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 8
  %6 = load i32, i32* %max_gradient_.i, align 8, !tbaa !63
  %cmp.not.i = icmp slt i32 %5, %6
  br i1 %cmp.not.i, label %_ZN5adept5Stack17register_gradientEv.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  store i32 %inc2.i, i32* %max_gradient_.i, align 8, !tbaa !63
  br label %_ZN5adept5Stack17register_gradientEv.exit

if.else.i:                                        ; preds = %entry
  %7 = bitcast %"struct.std::__detail::_List_node_base"* %3 to %"struct.std::_List_node"*
  %_M_storage.i.i.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %3, i64 1
  %start.i = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i.i.i to i32*
  %8 = load i32, i32* %start.i, align 4, !tbaa !54
  %inc11.i = add nsw i32 %8, 1
  store i32 %inc11.i, i32* %start.i, align 4, !tbaa !54
  %end.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %7, i64 0, i32 1, i32 0, i64 4
  %9 = bitcast i8* %end.i to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !52
  %cmp13.not.i = icmp slt i32 %8, %10
  br i1 %cmp13.not.i, label %_ZN5adept5Stack17register_gradientEv.exit, label %if.then14.i

if.then14.i:                                      ; preds = %if.else.i
  %_M_node.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 5, i32 0
  %11 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa !55
  %cmp.i35.i = icmp eq %"struct.std::__detail::_List_node_base"* %11, %3
  br i1 %cmp.i35.i, label %if.then18.i, label %if.end24.i

if.then18.i:                                      ; preds = %if.then14.i
  store %"struct.std::__detail::_List_node_base"* %2, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa.struct !60
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then18.i, %if.then14.i
  %_M_size.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %12 = load i64, i64* %_M_size.i.i.i.i, align 8, !tbaa !56
  %sub.i.i.i.i = add i64 %12, -1
  store i64 %sub.i.i.i.i, i64* %_M_size.i.i.i.i, align 8, !tbaa !56
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %3) #32
  %13 = bitcast %"struct.std::__detail::_List_node_base"* %3 to i8*
  tail call void @_ZdlPv(i8* nonnull %13) #32
  %.pre = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !26
  %14 = bitcast %"class.adept::internal::StackStorageOrig"* %.pre to %"class.adept::Stack"*
  br label %_ZN5adept5Stack17register_gradientEv.exit

_ZN5adept5Stack17register_gradientEv.exit:        ; preds = %if.end24.i, %if.else.i, %if.then4.i, %if.then.i
  %15 = phi %"class.adept::Stack"* [ %14, %if.end24.i ], [ %0, %if.else.i ], [ %0, %if.then4.i ], [ %0, %if.then.i ]
  %16 = phi %"class.adept::internal::StackStorageOrig"* [ %.pre, %if.end24.i ], [ %4, %if.else.i ], [ %4, %if.then4.i ], [ %4, %if.then.i ]
  %return_val.0.i = phi i32 [ %8, %if.end24.i ], [ %8, %if.else.i ], [ %5, %if.then4.i ], [ %5, %if.then.i ]
  store i32 %return_val.0.i, i32* %gradient_index_, align 8, !tbaa !157
  %n_allocated_operations_.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %16, i64 0, i32 6
  %17 = load i32, i32* %n_allocated_operations_.i.i, align 4, !tbaa !75
  %n_operations_.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %16, i64 0, i32 5
  %18 = load i32, i32* %n_operations_.i.i, align 8, !tbaa !74
  %add.i.i = add nsw i32 %18, 2
  %cmp.not.i.i = icmp sgt i32 %17, %add.i.i
  br i1 %cmp.not.i.i, label %_ZN5adept8internal16StackStorageOrig18check_space_staticILi2EEEvv.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %_ZN5adept5Stack17register_gradientEv.exit
  tail call void @_ZN5adept8internal16StackStorageOrig20grow_operation_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %16, i32 2)
  %.pre7 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %19 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %.pre7, i64 0, i32 0
  br label %_ZN5adept8internal16StackStorageOrig18check_space_staticILi2EEEvv.exit

_ZN5adept8internal16StackStorageOrig18check_space_staticILi2EEEvv.exit: ; preds = %if.then.i.i, %_ZN5adept5Stack17register_gradientEv.exit
  %20 = phi %"class.adept::internal::StackStorageOrig"* [ %16, %_ZN5adept5Stack17register_gradientEv.exit ], [ %19, %if.then.i.i ]
  %21 = phi %"class.adept::Stack"* [ %15, %_ZN5adept5Stack17register_gradientEv.exit ], [ %.pre7, %if.then.i.i ]
  %arg.i.i.i.i = bitcast %"struct.adept::Expression.35"* %rhs to %"class.adept::Active"**
  %22 = load %"class.adept::Active"*, %"class.adept::Active"** %arg.i.i.i.i, align 8, !tbaa !172
  %val_.i.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %22, i64 0, i32 0
  %23 = load double, double* %val_.i.i.i.i.i, align 8, !tbaa !155
  %24 = tail call fast double @llvm.log.f64(double %23) #32
  %right.i.i.i = getelementptr inbounds %"struct.adept::Expression.35", %"struct.adept::Expression.35"* %rhs, i64 8
  %25 = bitcast %"struct.adept::Expression.35"* %right.i.i.i to %"class.adept::Active"**
  %26 = load %"class.adept::Active"*, %"class.adept::Active"** %25, align 8, !tbaa !174
  %val_.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %26, i64 0, i32 0
  %27 = load double, double* %val_.i.i.i.i, align 8, !tbaa !155
  %add.i.i.i.i = fadd fast double %27, %24
  %div.i.i.i.i.i.i = fdiv fast double 1.000000e+00, %23
  %gradient_index_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %22, i64 0, i32 1
  %multiplier_.i.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0, i32 1
  %28 = load double*, double** %multiplier_.i.i.i.i.i.i.i, align 8, !tbaa !37
  %n_operations_.i.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0, i32 5
  %29 = load i32, i32* %n_operations_.i.i.i.i.i.i.i, align 8, !tbaa !74
  %idxprom.i.i.i.i.i.i.i = sext i32 %29 to i64
  %arrayidx.i.i.i.i.i.i.i = getelementptr inbounds double, double* %28, i64 %idxprom.i.i.i.i.i.i.i
  store double %div.i.i.i.i.i.i, double* %arrayidx.i.i.i.i.i.i.i, align 8, !tbaa !43
  %30 = load i32, i32* %gradient_index_.i.i.i.i.i.i, align 4, !tbaa !46
  %index_.i.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0, i32 2
  %31 = load i32*, i32** %index_.i.i.i.i.i.i.i, align 8, !tbaa !38
  %inc.i.i.i.i.i.i.i = add nsw i32 %29, 1
  store i32 %inc.i.i.i.i.i.i.i, i32* %n_operations_.i.i.i.i.i.i.i, align 8, !tbaa !74
  %arrayidx4.i.i.i.i.i.i.i = getelementptr inbounds i32, i32* %31, i64 %idxprom.i.i.i.i.i.i.i
  store i32 %30, i32* %arrayidx4.i.i.i.i.i.i.i, align 4, !tbaa !46
  %gradient_index_.i.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %26, i64 0, i32 1
  %32 = load i32, i32* %n_operations_.i.i.i.i.i.i.i, align 8, !tbaa !74
  %idxprom.i.i.i.i.i.i = sext i32 %32 to i64
  %arrayidx.i.i.i.i.i.i = getelementptr inbounds double, double* %28, i64 %idxprom.i.i.i.i.i.i
  store double 1.000000e+00, double* %arrayidx.i.i.i.i.i.i, align 8, !tbaa !43
  %33 = load i32, i32* %gradient_index_.i.i.i.i.i, align 8, !tbaa !46
  %inc.i.i.i.i.i.i = add nsw i32 %32, 1
  store i32 %inc.i.i.i.i.i.i, i32* %n_operations_.i.i.i.i.i.i.i, align 8, !tbaa !74
  %arrayidx4.i.i.i.i.i.i = getelementptr inbounds i32, i32* %31, i64 %idxprom.i.i.i.i.i.i
  store i32 %33, i32* %arrayidx4.i.i.i.i.i.i, align 4, !tbaa !46
  %val_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 0
  store double %add.i.i.i.i, double* %val_, align 8, !tbaa !155
  %n_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %20, i64 0, i32 3
  %34 = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %20, i64 0, i32 4
  %35 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %cmp.not.i4 = icmp slt i32 %34, %35
  br i1 %cmp.not.i4, label %entry.if.end_crit_edge.i, label %if.then.i5

entry.if.end_crit_edge.i:                         ; preds = %_ZN5adept8internal16StackStorageOrig18check_space_staticILi2EEEvv.exit
  %statement_.phi.trans.insert.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %20, i64 0, i32 0
  %.pre.i = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i, align 8, !tbaa !35
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

if.then.i5:                                       ; preds = %_ZN5adept8internal16StackStorageOrig18check_space_staticILi2EEEvv.exit
  %mul.i.i = shl nsw i32 %35, 1
  %conv.i.i = sext i32 %mul.i.i to i64
  %36 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i, i64 8)
  %37 = extractvalue { i64, i1 } %36, 1
  %38 = extractvalue { i64, i1 } %36, 0
  %39 = select i1 %37, i64 -1, i64 %38
  %call.i.i = tail call noalias nonnull i8* @_Znam(i64 %39) #36
  %40 = bitcast %"class.adept::internal::StackStorageOrig"* %20 to i8**
  %41 = load i8*, i8** %40, align 8, !tbaa !35
  %conv5.i.i = sext i32 %34 to i64
  %mul6.i.i = shl nsw i64 %conv5.i.i, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call.i.i, i8* align 4 %41, i64 %mul6.i.i, i1 false)
  %isnull.i.i = icmp eq i8* %41, null
  br i1 %isnull.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %if.then.i5
  tail call void @_ZdaPv(i8* nonnull %41) #34
  %.pre7.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i: ; preds = %delete.notnull.i.i, %if.then.i5
  %.pre7.i = phi i32 [ %34, %if.then.i5 ], [ %.pre7.pre.i, %delete.notnull.i.i ]
  store i8* %call.i.i, i8** %40, align 8, !tbaa !35
  store i32 %mul.i.i, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %42 = bitcast i8* %call.i.i to %"struct.adept::internal::Statement"*
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, %entry.if.end_crit_edge.i
  %43 = phi i32 [ %34, %entry.if.end_crit_edge.i ], [ %.pre7.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %44 = phi %"struct.adept::internal::Statement"* [ %.pre.i, %entry.if.end_crit_edge.i ], [ %42, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %45 = load i32, i32* %gradient_index_, align 4, !tbaa !46
  %idxprom.i = sext i32 %43 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %44, i64 %idxprom.i, i32 0
  store i32 %45, i32* %index.i, align 4, !tbaa !41
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %20, i64 0, i32 5
  %46 = load i32, i32* %n_operations_.i, align 8, !tbaa !74
  %inc.i6 = add nsw i32 %43, 1
  store i32 %inc.i6, i32* %n_statements_.i, align 8, !tbaa !40
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %44, i64 %idxprom.i, i32 1
  store i32 %46, i32* %end_plus_one.i, align 4, !tbaa !45
  ret void
}

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #17 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %start.i67 = alloca %struct.timeval, align 8
  %end.i68 = alloca %struct.timeval, align 8
  %start10.i69 = alloca %struct.timeval, align 8
  %end11.i70 = alloca %struct.timeval, align 8
  %branch.i.i = alloca i32, align 4
  %start.i36 = alloca %struct.timeval, align 8
  %end.i37 = alloca %struct.timeval, align 8
  %start10.i = alloca %struct.timeval, align 8
  %end11.i = alloca %struct.timeval, align 8
  %gradient.i.i = alloca double, align 8
  %dim.i.i.i = alloca [7 x i32], align 16
  %start.i = alloca %struct.timeval, align 8
  %end.i = alloca %struct.timeval, align 8
  %stack.i = alloca %"class.adept::Stack", align 8
  %inp.i = alloca %"class.adept::Array.30", align 8
  %resa.i = alloca %"class.adept::Active", align 8
  %start45.i = alloca %struct.timeval, align 8
  %end46.i = alloca %struct.timeval, align 8
  %stack47.i = alloca %"class.adept::Stack", align 8
  %inp48.i = alloca %"class.adept::Array.30", align 8
  %resa82.i = alloca %"class.adept::Active", align 8
  %ref.tmp85.i = alloca double, align 8
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %argv, align 8, !tbaa !26
  %call = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([19 x i8], [19 x i8]* @.str.83, i64 0, i64 0), i8* %0)
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr inbounds i8*, i8** %argv, i64 1
  %1 = load i8*, i8** %arrayidx1, align 8, !tbaa !26
  %call.i = tail call i64 @strtol(i8* nocapture nonnull %1, i8** null, i32 10) #32
  %conv.i = trunc i64 %call.i to i32
  %sext = shl i64 %call.i, 32
  %conv = ashr exact i64 %sext, 32
  %arrayidx3 = getelementptr inbounds i8*, i8** %argv, i64 2
  %2 = load i8*, i8** %arrayidx3, align 8, !tbaa !26
  %call.i34 = tail call i64 @strtol(i8* nocapture nonnull %2, i8** null, i32 10) #32
  %sext129 = shl i64 %call.i34, 32
  %conv5 = ashr exact i64 %sext129, 32
  %3 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 8)
  %4 = extractvalue { i64, i1 } %3, 1
  %5 = extractvalue { i64, i1 } %3, 0
  %6 = select i1 %4, i64 -1, i64 %5
  %call6 = tail call noalias nonnull i8* @_Znam(i64 %6) #36
  %7 = bitcast i8* %call6 to double*
  %call7 = tail call noalias nonnull i8* @_Znam(i64 %6) #36
  %8 = bitcast i8* %call7 to double*
  %cmp9131.not = icmp eq i64 %sext, 0
  br i1 %cmp9131.not, label %for.cond.cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %9 = icmp ugt i64 %conv, 1
  %umax = select i1 %9, i64 %conv, i64 1
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %if.end
  %10 = bitcast %struct.timeval* %start.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #32
  %11 = bitcast %struct.timeval* %end.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #32
  %12 = bitcast %"class.adept::Stack"* %stack.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %12) #32
  call void @_ZN5adept5StackC2Eb(%"class.adept::Stack"* nonnull dereferenceable(149) %stack.i, i1 zeroext true)
  %13 = bitcast %"class.adept::Array.30"* %inp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %13) #32
  %value_.i.i.i = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %inp.i, i64 0, i32 0, i32 0
  store i32 -9999, i32* %value_.i.i.i, align 8, !tbaa !151
  %storage_.i.i = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %inp.i, i64 0, i32 2
  store %"class.adept::Storage.14"* null, %"class.adept::Storage.14"** %storage_.i.i, align 8, !tbaa !176
  %14 = bitcast [7 x i32]* %dim.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %14) #32
  %arrayinit.begin.i.i.i = getelementptr inbounds [7 x i32], [7 x i32]* %dim.i.i.i, i64 0, i64 0
  store i32 %conv.i, i32* %arrayinit.begin.i.i.i, align 16, !tbaa !46
  %arrayinit.element.i.i.i = getelementptr inbounds [7 x i32], [7 x i32]* %dim.i.i.i, i64 0, i64 1
  %15 = bitcast i32* %arrayinit.element.i.i.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(24) %15, i8 -1, i64 24, i1 false)
  invoke void @_ZN5adept5ArrayILi1EdLb1EE6resizeEPKib(%"class.adept::Array.30"* nonnull dereferenceable(32) %inp.i, i32* nonnull %arrayinit.begin.i.i.i, i1 zeroext false)
          to label %_ZN5adept5ArrayILi1EdLb1EEC2Ei.exit.i unwind label %lpad.i

_ZN5adept5ArrayILi1EdLb1EEC2Ei.exit.i:            ; preds = %for.cond.cleanup
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %14) #32
  br i1 %cmp9131.not, label %for.cond.cleanup.i, label %invoke.cont3.lr.ph.i

invoke.cont3.lr.ph.i:                             ; preds = %_ZN5adept5ArrayILi1EdLb1EEC2Ei.exit.i
  %arrayidx.i7.i.i = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %inp.i, i64 0, i32 4, i32 0, i64 0
  %data_.i.i = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %inp.i, i64 0, i32 1
  br label %invoke.cont3.i

for.cond.cleanup.i:                               ; preds = %invoke.cont5.i, %_ZN5adept5ArrayILi1EdLb1EEC2Ei.exit.i
  %mul.i = ashr exact i64 %sext, 29
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %call7, i8 0, i64 %mul.i, i1 false)
  %call7.i = call i32 @gettimeofday(%struct.timeval* nonnull %start.i, i8* null) #32
  %cmp10374.not.i = icmp eq i64 %sext129, 0
  br i1 %cmp10374.not.i, label %for.cond.cleanup11.i, label %for.body12.lr.ph.i

for.body12.lr.ph.i:                               ; preds = %for.cond.cleanup.i
  %n_operations_.i.i207.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 0, i32 5
  %n_statements_.i.i208.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 0, i32 3
  %_M_start.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %_M_finish.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %_M_start.i.i4.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %_M_finish.i.i.i5.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %gradients_initialized_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 10
  %i_gradient_.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 6
  %max_gradient_.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 8
  %n_allocated_statements_.i.i210.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 0, i32 4
  %16 = bitcast %"class.adept::Stack"* %stack.i to i8**
  %statement_.phi.trans.insert.i.i212.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 0, i32 0
  %17 = bitcast %"class.adept::Active"* %resa.i to i8*
  %val_.i229.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %resa.i, i64 0, i32 0
  br label %for.body12.i

lpad.i:                                           ; preds = %for.cond.cleanup
  %18 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup40.i

invoke.cont3.i:                                   ; preds = %invoke.cont5.i, %invoke.cont3.lr.ph.i
  %indvars.iv389.i = phi i64 [ 0, %invoke.cont3.lr.ph.i ], [ %indvars.iv.next390.i, %invoke.cont5.i ]
  %19 = load i32, i32* %arrayidx.i7.i.i, align 4, !tbaa !46, !noalias !177
  %20 = trunc i64 %indvars.iv389.i to i32
  %mul.i.i = mul nsw i32 %19, %20
  %21 = load double*, double** %data_.i.i, align 8, !tbaa !149, !noalias !177
  %idxprom.i.i = sext i32 %mul.i.i to i64
  %arrayidx.i.i = getelementptr inbounds double, double* %21, i64 %idxprom.i.i
  %22 = load i32, i32* %value_.i.i.i, align 8, !tbaa !151, !noalias !177
  %add.i.i = add nsw i32 %22, %mul.i.i
  %arrayidx.i = getelementptr inbounds double, double* %7, i64 %indvars.iv389.i
  %23 = load double, double* %arrayidx.i, align 8, !tbaa !43
  store double %23, double* %arrayidx.i.i, align 8, !tbaa !43
  %24 = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !26
  %n_statements_.i.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %24, i64 0, i32 3
  %25 = load i32, i32* %n_statements_.i.i.i, align 8, !tbaa !40
  %n_allocated_statements_.i.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %24, i64 0, i32 4
  %26 = load i32, i32* %n_allocated_statements_.i.i.i, align 4, !tbaa !73
  %cmp.not.i.i.i = icmp slt i32 %25, %26
  br i1 %cmp.not.i.i.i, label %entry.if.end_crit_edge.i.i.i, label %if.then.i.i.i

entry.if.end_crit_edge.i.i.i:                     ; preds = %invoke.cont3.i
  %statement_.phi.trans.insert.i.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %24, i64 0, i32 0
  %.pre.i.i.i = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i.i.i, align 8, !tbaa !35
  br label %invoke.cont5.i

if.then.i.i.i:                                    ; preds = %invoke.cont3.i
  %mul.i.i.i.i = shl nsw i32 %26, 1
  %conv.i.i.i.i = sext i32 %mul.i.i.i.i to i64
  %27 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i.i.i, i64 8)
  %28 = extractvalue { i64, i1 } %27, 1
  %29 = extractvalue { i64, i1 } %27, 0
  %30 = select i1 %28, i64 -1, i64 %29
  %call.i.i.i192.i = invoke noalias nonnull i8* @_Znam(i64 %30) #36
          to label %call.i.i.i.noexc.i unwind label %lpad4.i

call.i.i.i.noexc.i:                               ; preds = %if.then.i.i.i
  %31 = bitcast %"class.adept::internal::StackStorageOrig"* %24 to i8**
  %32 = load i8*, i8** %31, align 8, !tbaa !35
  %conv5.i.i.i.i = sext i32 %25 to i64
  %mul6.i.i.i.i = shl nsw i64 %conv5.i.i.i.i, 3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call.i.i.i192.i, i8* align 4 %32, i64 %mul6.i.i.i.i, i1 false)
  %isnull.i.i.i.i = icmp eq i8* %32, null
  br i1 %isnull.i.i.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i.i, label %delete.notnull.i.i.i.i

delete.notnull.i.i.i.i:                           ; preds = %call.i.i.i.noexc.i
  call void @_ZdaPv(i8* nonnull %32) #34
  %.pre7.pre.i.i.i = load i32, i32* %n_statements_.i.i.i, align 8, !tbaa !40
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i.i: ; preds = %delete.notnull.i.i.i.i, %call.i.i.i.noexc.i
  %.pre7.i.i.i = phi i32 [ %25, %call.i.i.i.noexc.i ], [ %.pre7.pre.i.i.i, %delete.notnull.i.i.i.i ]
  store i8* %call.i.i.i192.i, i8** %31, align 8, !tbaa !35
  store i32 %mul.i.i.i.i, i32* %n_allocated_statements_.i.i.i, align 4, !tbaa !73
  %33 = bitcast i8* %call.i.i.i192.i to %"struct.adept::internal::Statement"*
  br label %invoke.cont5.i

invoke.cont5.i:                                   ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i.i, %entry.if.end_crit_edge.i.i.i
  %34 = phi i32 [ %25, %entry.if.end_crit_edge.i.i.i ], [ %.pre7.i.i.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i.i ]
  %35 = phi %"struct.adept::internal::Statement"* [ %.pre.i.i.i, %entry.if.end_crit_edge.i.i.i ], [ %33, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i.i ]
  %idxprom.i.i.i = sext i32 %34 to i64
  %index.i.i.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %35, i64 %idxprom.i.i.i, i32 0
  store i32 %add.i.i, i32* %index.i.i.i, align 4, !tbaa !41
  %n_operations_.i.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %24, i64 0, i32 5
  %36 = load i32, i32* %n_operations_.i.i.i, align 8, !tbaa !74
  %inc.i.i.i = add nsw i32 %34, 1
  store i32 %inc.i.i.i, i32* %n_statements_.i.i.i, align 8, !tbaa !40
  %end_plus_one.i.i.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %35, i64 %idxprom.i.i.i, i32 1
  store i32 %36, i32* %end_plus_one.i.i.i, align 4, !tbaa !45
  %indvars.iv.next390.i = add nuw i64 %indvars.iv389.i, 1
  %exitcond391.not.i = icmp eq i64 %indvars.iv.next390.i, %conv
  br i1 %exitcond391.not.i, label %for.cond.cleanup.i, label %invoke.cont3.i, !llvm.loop !180

lpad4.i:                                          ; preds = %if.then.i.i.i
  %37 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup39.i

for.cond.cleanup11.i:                             ; preds = %invoke.cont16.i, %for.cond.cleanup.i
  %total.0.lcssa.i = phi double [ 0.000000e+00, %for.cond.cleanup.i ], [ %add.i, %invoke.cont16.i ]
  %call30.i = call i32 @gettimeofday(%struct.timeval* nonnull %end.i, i8* null) #32
  %tv_sec.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i, i64 0, i32 0
  %38 = load i64, i64* %tv_sec.i.i, align 8, !tbaa !143
  %tv_sec1.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i, i64 0, i32 0
  %39 = load i64, i64* %tv_sec1.i.i, align 8, !tbaa !143
  %sub.i.i = sub nsw i64 %38, %39
  %conv.i.i = sitofp i64 %sub.i.i to double
  %tv_usec.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i, i64 0, i32 1
  %40 = load i64, i64* %tv_usec.i.i, align 8, !tbaa !145
  %tv_usec2.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i, i64 0, i32 1
  %41 = load i64, i64* %tv_usec2.i.i, align 8, !tbaa !145
  %sub3.i.i = sub nsw i64 %40, %41
  %conv4.i.i = sitofp i64 %sub3.i.i to double
  %mul.i194.i = fmul fast double %conv4.i.i, 0x3EB0C6F7A0B5ED8D
  %add.i195.i = fadd fast double %mul.i194.i, %conv.i.i
  %conv5.i.i = fptrunc double %add.i195.i to float
  %conv35.i = fpext float %conv5.i.i to double
  %call37.i = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.85, i64 0, i64 0), double %conv35.i, double %total.0.lcssa.i)
  %42 = load %"class.adept::Storage.14"*, %"class.adept::Storage.14"** %storage_.i.i, align 8, !tbaa !176
  %tobool.not.i197.i = icmp eq %"class.adept::Storage.14"* %42, null
  br i1 %tobool.not.i197.i, label %_ZN5adept5ArrayILi1EdLb1EED2Ev.exit200.i, label %if.then.i198.i

if.then.i198.i:                                   ; preds = %for.cond.cleanup11.i
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage.14"* nonnull dereferenceable(20) %42)
          to label %_ZN5adept5ArrayILi1EdLb1EED2Ev.exit200.i unwind label %terminate.lpad.i199.i

terminate.lpad.i199.i:                            ; preds = %if.then.i198.i
  %43 = landingpad { i8*, i32 }
          catch i8* null
  %44 = extractvalue { i8*, i32 } %43, 0
  call void @__clang_call_terminate(i8* %44) #37
  unreachable

_ZN5adept5ArrayILi1EdLb1EED2Ev.exit200.i:         ; preds = %if.then.i198.i, %for.cond.cleanup11.i
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %13) #32
  call void @_ZN5adept5StackD2Ev(%"class.adept::Stack"* nonnull dereferenceable(149) %stack.i) #32
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %12) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #32
  %45 = bitcast %struct.timeval* %start45.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %45) #32
  %46 = bitcast %struct.timeval* %end46.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %46) #32
  %47 = bitcast %"class.adept::Stack"* %stack47.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %47) #32
  call void @_ZN5adept5StackC2Eb(%"class.adept::Stack"* nonnull dereferenceable(149) %stack47.i, i1 zeroext true)
  %48 = bitcast %"class.adept::Array.30"* %inp48.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %48) #32
  %value_.i.i202.i = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %inp48.i, i64 0, i32 0, i32 0
  store i32 -9999, i32* %value_.i.i202.i, align 8, !tbaa !151
  %storage_.i203.i = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %inp48.i, i64 0, i32 2
  store %"class.adept::Storage.14"* null, %"class.adept::Storage.14"** %storage_.i203.i, align 8, !tbaa !176
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %14) #32
  store i32 %conv.i, i32* %arrayinit.begin.i.i.i, align 16, !tbaa !46
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(24) %15, i8 -1, i64 24, i1 false)
  invoke void @_ZN5adept5ArrayILi1EdLb1EE6resizeEPKib(%"class.adept::Array.30"* nonnull dereferenceable(32) %inp48.i, i32* nonnull %arrayinit.begin.i.i.i, i1 zeroext false)
          to label %_ZN5adept5ArrayILi1EdLb1EEC2Ei.exit206.i unwind label %lpad50.i

_ZN5adept5ArrayILi1EdLb1EEC2Ei.exit206.i:         ; preds = %_ZN5adept5ArrayILi1EdLb1EED2Ev.exit200.i
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %14) #32
  br i1 %cmp9131.not, label %for.cond.cleanup56.i, label %invoke.cont62.lr.ph.i

invoke.cont62.lr.ph.i:                            ; preds = %_ZN5adept5ArrayILi1EdLb1EEC2Ei.exit206.i
  %arrayidx.i7.i237.i = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %inp48.i, i64 0, i32 4, i32 0, i64 0
  %data_.i239.i = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %inp48.i, i64 0, i32 1
  br label %invoke.cont62.i

for.body12.i:                                     ; preds = %invoke.cont16.i, %for.body12.lr.ph.i
  %indvars.iv386.i = phi i64 [ 0, %for.body12.lr.ph.i ], [ %indvars.iv.next387.i, %invoke.cont16.i ]
  %total.0375.i = phi double [ 0.000000e+00, %for.body12.lr.ph.i ], [ %add.i, %invoke.cont16.i ]
  store i32 0, i32* %n_operations_.i.i207.i, align 8, !tbaa !74
  store i32 0, i32* %n_statements_.i.i208.i, align 8, !tbaa !40
  %49 = load i32*, i32** %_M_start.i.i.i.i, align 8, !tbaa !33
  %50 = load i32*, i32** %_M_finish.i.i.i.i.i, align 8, !tbaa !76
  %tobool.not.i.i.i.i.i = icmp eq i32* %50, %49
  br i1 %tobool.not.i.i.i.i.i, label %_ZN5adept5Stack18clear_independentsEv.exit.i.i, label %invoke.cont.i.i.i.i.i

invoke.cont.i.i.i.i.i:                            ; preds = %for.body12.i
  store i32* %49, i32** %_M_finish.i.i.i.i.i, align 8, !tbaa !76
  br label %_ZN5adept5Stack18clear_independentsEv.exit.i.i

_ZN5adept5Stack18clear_independentsEv.exit.i.i:   ; preds = %invoke.cont.i.i.i.i.i, %for.body12.i
  %51 = load i32*, i32** %_M_start.i.i4.i.i, align 8, !tbaa !33
  %52 = load i32*, i32** %_M_finish.i.i.i5.i.i, align 8, !tbaa !76
  %tobool.not.i.i.i6.i.i = icmp eq i32* %52, %51
  br i1 %tobool.not.i.i.i6.i.i, label %_ZN5adept5Stack16clear_dependentsEv.exit.i.i, label %invoke.cont.i.i.i7.i.i

invoke.cont.i.i.i7.i.i:                           ; preds = %_ZN5adept5Stack18clear_independentsEv.exit.i.i
  store i32* %51, i32** %_M_finish.i.i.i5.i.i, align 8, !tbaa !76
  br label %_ZN5adept5Stack16clear_dependentsEv.exit.i.i

_ZN5adept5Stack16clear_dependentsEv.exit.i.i:     ; preds = %invoke.cont.i.i.i7.i.i, %_ZN5adept5Stack18clear_independentsEv.exit.i.i
  store i8 0, i8* %gradients_initialized_.i.i.i, align 8, !tbaa !39
  %53 = load i32, i32* %i_gradient_.i.i, align 8, !tbaa !62
  %add.i209.i = add nsw i32 %53, 1
  store i32 %add.i209.i, i32* %max_gradient_.i.i, align 8, !tbaa !63
  %54 = load i32, i32* %n_allocated_statements_.i.i210.i, align 4, !tbaa !73
  %cmp.not.i.i211.i = icmp sgt i32 %54, 0
  br i1 %cmp.not.i.i211.i, label %entry.if.end_crit_edge.i.i214.i, label %if.then.i.i218.i

entry.if.end_crit_edge.i.i214.i:                  ; preds = %_ZN5adept5Stack16clear_dependentsEv.exit.i.i
  %.pre.i.i213.i = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i.i212.i, align 8, !tbaa !35
  br label %invoke.cont14.i

if.then.i.i218.i:                                 ; preds = %_ZN5adept5Stack16clear_dependentsEv.exit.i.i
  %mul.i.i.i215.i = shl nsw i32 %54, 1
  %conv.i.i.i216.i = sext i32 %mul.i.i.i215.i to i64
  %55 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i.i216.i, i64 8)
  %56 = extractvalue { i64, i1 } %55, 1
  %57 = extractvalue { i64, i1 } %55, 0
  %58 = select i1 %56, i64 -1, i64 %57
  %call.i.i.i228.i = invoke noalias nonnull i8* @_Znam(i64 %58) #36
          to label %call.i.i.i.noexc227.i unwind label %lpad13.i

call.i.i.i.noexc227.i:                            ; preds = %if.then.i.i218.i
  %59 = load i8*, i8** %16, align 8, !tbaa !35
  %isnull.i.i.i217.i = icmp eq i8* %59, null
  br i1 %isnull.i.i.i217.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i222.i, label %delete.notnull.i.i.i220.i

delete.notnull.i.i.i220.i:                        ; preds = %call.i.i.i.noexc227.i
  call void @_ZdaPv(i8* nonnull %59) #34
  %.pre7.pre.i.i219.i = load i32, i32* %n_statements_.i.i208.i, align 8, !tbaa !40
  %.pre.pre.i.i = load i32, i32* %n_operations_.i.i207.i, align 8, !tbaa !74
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i222.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i222.i: ; preds = %delete.notnull.i.i.i220.i, %call.i.i.i.noexc227.i
  %.pre.i.i = phi i32 [ 0, %call.i.i.i.noexc227.i ], [ %.pre.pre.i.i, %delete.notnull.i.i.i220.i ]
  %.pre7.i.i221.i = phi i32 [ 0, %call.i.i.i.noexc227.i ], [ %.pre7.pre.i.i219.i, %delete.notnull.i.i.i220.i ]
  store i8* %call.i.i.i228.i, i8** %16, align 8, !tbaa !35
  store i32 %mul.i.i.i215.i, i32* %n_allocated_statements_.i.i210.i, align 4, !tbaa !73
  %60 = bitcast i8* %call.i.i.i228.i to %"struct.adept::internal::Statement"*
  br label %invoke.cont14.i

invoke.cont14.i:                                  ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i222.i, %entry.if.end_crit_edge.i.i214.i
  %61 = phi i32 [ 0, %entry.if.end_crit_edge.i.i214.i ], [ %.pre.i.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i222.i ]
  %62 = phi i32 [ 0, %entry.if.end_crit_edge.i.i214.i ], [ %.pre7.i.i221.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i222.i ]
  %63 = phi %"struct.adept::internal::Statement"* [ %.pre.i.i213.i, %entry.if.end_crit_edge.i.i214.i ], [ %60, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i222.i ]
  %idxprom.i.i223.i = sext i32 %62 to i64
  %index.i.i224.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %63, i64 %idxprom.i.i223.i, i32 0
  store i32 -1, i32* %index.i.i224.i, align 4, !tbaa !41
  %inc.i.i225.i = add nsw i32 %62, 1
  store i32 %inc.i.i225.i, i32* %n_statements_.i.i208.i, align 8, !tbaa !40
  %end_plus_one.i.i226.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %63, i64 %idxprom.i.i223.i, i32 1
  store i32 %61, i32* %end_plus_one.i.i226.i, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %17) #32
  invoke void @_Z11alogsumexp2RKN5adept5ArrayILi1EdLb1EEEm(%"class.adept::Active"* nonnull sret(%"class.adept::Active") align 8 %resa.i, %"class.adept::Array.30"* nonnull align 8 dereferenceable(32) %inp.i, i64 %conv)
          to label %invoke.cont16.i unwind label %lpad15.i

invoke.cont16.i:                                  ; preds = %invoke.cont14.i
  %64 = load double, double* %val_.i229.i, align 8, !tbaa !155
  %add.i = fadd fast double %64, %total.0375.i
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %resa.i) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #32
  %indvars.iv.next387.i = add nuw i64 %indvars.iv386.i, 1
  %exitcond388.not.i = icmp eq i64 %indvars.iv.next387.i, %conv5
  br i1 %exitcond388.not.i, label %for.cond.cleanup11.i, label %for.body12.i, !llvm.loop !181

lpad13.i:                                         ; preds = %if.then.i.i218.i
  %65 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup39.i

lpad15.i:                                         ; preds = %invoke.cont14.i
  %66 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %17) #32
  br label %ehcleanup39.i

for.cond.cleanup56.i:                             ; preds = %invoke.cont64.i, %_ZN5adept5ArrayILi1EdLb1EEC2Ei.exit206.i
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %call7, i8 0, i64 %mul.i, i1 false)
  %call73.i = call i32 @gettimeofday(%struct.timeval* nonnull %start45.i, i8* null) #32
  br i1 %cmp10374.not.i, label %for.cond.cleanup78.i, label %for.body79.lr.ph.i

for.body79.lr.ph.i:                               ; preds = %for.cond.cleanup56.i
  %n_operations_.i.i301.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack47.i, i64 0, i32 0, i32 5
  %n_statements_.i.i302.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack47.i, i64 0, i32 0, i32 3
  %_M_start.i.i.i303.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack47.i, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %_M_finish.i.i.i.i304.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack47.i, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %_M_start.i.i4.i307.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack47.i, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %_M_finish.i.i.i5.i308.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack47.i, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %gradients_initialized_.i.i312.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack47.i, i64 0, i32 10
  %i_gradient_.i313.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack47.i, i64 0, i32 6
  %max_gradient_.i315.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack47.i, i64 0, i32 8
  %n_allocated_statements_.i.i316.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack47.i, i64 0, i32 0, i32 4
  %67 = bitcast %"class.adept::Stack"* %stack47.i to i8**
  %statement_.phi.trans.insert.i.i319.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack47.i, i64 0, i32 0, i32 0
  %68 = bitcast %"class.adept::Active"* %resa82.i to i8*
  %69 = bitcast double* %ref.tmp85.i to i8*
  %gradient_index_.i292.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %resa82.i, i64 0, i32 1
  %arrayidx.i7.i272.i = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %inp48.i, i64 0, i32 4, i32 0, i64 0
  %70 = bitcast double* %gradient.i.i to i8*
  br label %for.body79.i

ehcleanup39.i:                                    ; preds = %lpad15.i, %lpad13.i, %lpad4.i
  %.pn187.pn.i = phi { i8*, i32 } [ %66, %lpad15.i ], [ %65, %lpad13.i ], [ %37, %lpad4.i ]
  %71 = load %"class.adept::Storage.14"*, %"class.adept::Storage.14"** %storage_.i.i, align 8, !tbaa !176
  %tobool.not.i233.i = icmp eq %"class.adept::Storage.14"* %71, null
  br i1 %tobool.not.i233.i, label %ehcleanup40.i, label %if.then.i234.i

if.then.i234.i:                                   ; preds = %ehcleanup39.i
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage.14"* nonnull dereferenceable(20) %71)
          to label %ehcleanup40.i unwind label %terminate.lpad.i235.i

terminate.lpad.i235.i:                            ; preds = %if.then.i234.i
  %72 = landingpad { i8*, i32 }
          catch i8* null
  %73 = extractvalue { i8*, i32 } %72, 0
  call void @__clang_call_terminate(i8* %73) #37
  unreachable

ehcleanup40.i:                                    ; preds = %if.then.i234.i, %ehcleanup39.i, %lpad.i
  %.pn187.pn.pn.i = phi { i8*, i32 } [ %18, %lpad.i ], [ %.pn187.pn.i, %ehcleanup39.i ], [ %.pn187.pn.i, %if.then.i234.i ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %13) #32
  call void @_ZN5adept5StackD2Ev(%"class.adept::Stack"* nonnull dereferenceable(149) %stack.i) #32
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %12) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #32
  br label %eh.resume.i

lpad50.i:                                         ; preds = %_ZN5adept5ArrayILi1EdLb1EED2Ev.exit200.i
  %74 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup133.i

invoke.cont62.i:                                  ; preds = %invoke.cont64.i, %invoke.cont62.lr.ph.i
  %indvars.iv383.i = phi i64 [ 0, %invoke.cont62.lr.ph.i ], [ %indvars.iv.next384.i, %invoke.cont64.i ]
  %75 = load i32, i32* %arrayidx.i7.i237.i, align 4, !tbaa !46, !noalias !182
  %76 = trunc i64 %indvars.iv383.i to i32
  %mul.i238.i = mul nsw i32 %75, %76
  %77 = load double*, double** %data_.i239.i, align 8, !tbaa !149, !noalias !182
  %idxprom.i240.i = sext i32 %mul.i238.i to i64
  %arrayidx.i241.i = getelementptr inbounds double, double* %77, i64 %idxprom.i240.i
  %78 = load i32, i32* %value_.i.i202.i, align 8, !tbaa !151, !noalias !182
  %add.i243.i = add nsw i32 %78, %mul.i238.i
  %arrayidx59.i = getelementptr inbounds double, double* %7, i64 %indvars.iv383.i
  %79 = load double, double* %arrayidx59.i, align 8, !tbaa !43
  store double %79, double* %arrayidx.i241.i, align 8, !tbaa !43
  %80 = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !26
  %n_statements_.i.i247.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %80, i64 0, i32 3
  %81 = load i32, i32* %n_statements_.i.i247.i, align 8, !tbaa !40
  %n_allocated_statements_.i.i248.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %80, i64 0, i32 4
  %82 = load i32, i32* %n_allocated_statements_.i.i248.i, align 4, !tbaa !73
  %cmp.not.i.i249.i = icmp slt i32 %81, %82
  br i1 %cmp.not.i.i249.i, label %entry.if.end_crit_edge.i.i252.i, label %if.then.i.i258.i

entry.if.end_crit_edge.i.i252.i:                  ; preds = %invoke.cont62.i
  %statement_.phi.trans.insert.i.i250.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %80, i64 0, i32 0
  %.pre.i.i251.i = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i.i250.i, align 8, !tbaa !35
  br label %invoke.cont64.i

if.then.i.i258.i:                                 ; preds = %invoke.cont62.i
  %mul.i.i.i253.i = shl nsw i32 %82, 1
  %conv.i.i.i254.i = sext i32 %mul.i.i.i253.i to i64
  %83 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i.i254.i, i64 8)
  %84 = extractvalue { i64, i1 } %83, 1
  %85 = extractvalue { i64, i1 } %83, 0
  %86 = select i1 %84, i64 -1, i64 %85
  %call.i.i.i270.i = invoke noalias nonnull i8* @_Znam(i64 %86) #36
          to label %call.i.i.i.noexc269.i unwind label %lpad63.i

call.i.i.i.noexc269.i:                            ; preds = %if.then.i.i258.i
  %87 = bitcast %"class.adept::internal::StackStorageOrig"* %80 to i8**
  %88 = load i8*, i8** %87, align 8, !tbaa !35
  %conv5.i.i.i255.i = sext i32 %81 to i64
  %mul6.i.i.i256.i = shl nsw i64 %conv5.i.i.i255.i, 3
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call.i.i.i270.i, i8* align 4 %88, i64 %mul6.i.i.i256.i, i1 false)
  %isnull.i.i.i257.i = icmp eq i8* %88, null
  br i1 %isnull.i.i.i257.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i262.i, label %delete.notnull.i.i.i260.i

delete.notnull.i.i.i260.i:                        ; preds = %call.i.i.i.noexc269.i
  call void @_ZdaPv(i8* nonnull %88) #34
  %.pre7.pre.i.i259.i = load i32, i32* %n_statements_.i.i247.i, align 8, !tbaa !40
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i262.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i262.i: ; preds = %delete.notnull.i.i.i260.i, %call.i.i.i.noexc269.i
  %.pre7.i.i261.i = phi i32 [ %81, %call.i.i.i.noexc269.i ], [ %.pre7.pre.i.i259.i, %delete.notnull.i.i.i260.i ]
  store i8* %call.i.i.i270.i, i8** %87, align 8, !tbaa !35
  store i32 %mul.i.i.i253.i, i32* %n_allocated_statements_.i.i248.i, align 4, !tbaa !73
  %89 = bitcast i8* %call.i.i.i270.i to %"struct.adept::internal::Statement"*
  br label %invoke.cont64.i

invoke.cont64.i:                                  ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i262.i, %entry.if.end_crit_edge.i.i252.i
  %90 = phi i32 [ %81, %entry.if.end_crit_edge.i.i252.i ], [ %.pre7.i.i261.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i262.i ]
  %91 = phi %"struct.adept::internal::Statement"* [ %.pre.i.i251.i, %entry.if.end_crit_edge.i.i252.i ], [ %89, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i262.i ]
  %idxprom.i.i264.i = sext i32 %90 to i64
  %index.i.i265.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %91, i64 %idxprom.i.i264.i, i32 0
  store i32 %add.i243.i, i32* %index.i.i265.i, align 4, !tbaa !41
  %n_operations_.i.i266.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %80, i64 0, i32 5
  %92 = load i32, i32* %n_operations_.i.i266.i, align 8, !tbaa !74
  %inc.i.i267.i = add nsw i32 %90, 1
  store i32 %inc.i.i267.i, i32* %n_statements_.i.i247.i, align 8, !tbaa !40
  %end_plus_one.i.i268.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %91, i64 %idxprom.i.i264.i, i32 1
  store i32 %92, i32* %end_plus_one.i.i268.i, align 4, !tbaa !45
  %indvars.iv.next384.i = add nuw i64 %indvars.iv383.i, 1
  %exitcond385.not.i = icmp eq i64 %indvars.iv.next384.i, %conv
  br i1 %exitcond385.not.i, label %for.cond.cleanup56.i, label %invoke.cont62.i, !llvm.loop !185

lpad63.i:                                         ; preds = %if.then.i.i258.i
  %93 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup132.i

for.cond.cleanup78.i:                             ; preds = %for.cond.cleanup97.i, %for.cond.cleanup56.i
  %call122.i = call i32 @gettimeofday(%struct.timeval* nonnull %end46.i, i8* null) #32
  %tv_sec.i281.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end46.i, i64 0, i32 0
  %94 = load i64, i64* %tv_sec.i281.i, align 8, !tbaa !143
  %tv_sec1.i282.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start45.i, i64 0, i32 0
  %95 = load i64, i64* %tv_sec1.i282.i, align 8, !tbaa !143
  %sub.i283.i = sub nsw i64 %94, %95
  %conv.i284.i = sitofp i64 %sub.i283.i to double
  %tv_usec.i285.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end46.i, i64 0, i32 1
  %96 = load i64, i64* %tv_usec.i285.i, align 8, !tbaa !145
  %tv_usec2.i286.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start45.i, i64 0, i32 1
  %97 = load i64, i64* %tv_usec2.i286.i, align 8, !tbaa !145
  %sub3.i287.i = sub nsw i64 %96, %97
  %conv4.i288.i = sitofp i64 %sub3.i287.i to double
  %mul.i289.i = fmul fast double %conv4.i288.i, 0x3EB0C6F7A0B5ED8D
  %add.i290.i = fadd fast double %mul.i289.i, %conv.i284.i
  %conv5.i291.i = fptrunc double %add.i290.i to float
  %conv127.i = fpext float %conv5.i291.i to double
  br i1 %cmp9131.not, label %_ZL3sumPKdm.exit.i, label %for.body.i.i.preheader

for.body.i.i.preheader:                           ; preds = %for.cond.cleanup78.i
  %sext236 = shl i64 %call.i, 32
  %98 = ashr exact i64 %sext236, 32
  %min.iters.check = icmp ult i64 %98, 4
  br i1 %min.iters.check, label %for.body.i.i.preheader248, label %vector.ph

vector.ph:                                        ; preds = %for.body.i.i.preheader
  %n.mod.vf = and i64 %call.i, 3
  %n.vec = sub nsw i64 %98, %n.mod.vf
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %103, %vector.body ]
  %vec.phi45 = phi <2 x double> [ zeroinitializer, %vector.ph ], [ %104, %vector.body ]
  %99 = getelementptr inbounds double, double* %8, i64 %index
  %100 = bitcast double* %99 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %100, align 8, !tbaa !43
  %101 = getelementptr inbounds double, double* %99, i64 2
  %102 = bitcast double* %101 to <2 x double>*
  %wide.load46 = load <2 x double>, <2 x double>* %102, align 8, !tbaa !43
  %103 = fadd fast <2 x double> %wide.load, %vec.phi
  %104 = fadd fast <2 x double> %wide.load46, %vec.phi45
  %index.next = add i64 %index, 4
  %105 = icmp eq i64 %index.next, %n.vec
  br i1 %105, label %middle.block, label %vector.body, !llvm.loop !186

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <2 x double> %104, %103
  %106 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx)
  %cmp.n = icmp eq i64 %n.mod.vf, 0
  br i1 %cmp.n, label %_ZL3sumPKdm.exit.i, label %for.body.i.i.preheader248

for.body.i.i.preheader248:                        ; preds = %for.body.i.i.preheader, %middle.block
  %indvars.iv.i.i.ph = phi i64 [ 0, %for.body.i.i.preheader ], [ %n.vec, %middle.block ]
  %res.07.i.i.ph = phi double [ 0.000000e+00, %for.body.i.i.preheader ], [ %106, %middle.block ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.preheader248, %for.body.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body.i.i ], [ %indvars.iv.i.i.ph, %for.body.i.i.preheader248 ]
  %res.07.i.i = phi double [ %add.i295.i, %for.body.i.i ], [ %res.07.i.i.ph, %for.body.i.i.preheader248 ]
  %arrayidx.i294.i = getelementptr inbounds double, double* %8, i64 %indvars.iv.i.i
  %107 = load double, double* %arrayidx.i294.i, align 8, !tbaa !43
  %add.i295.i = fadd fast double %107, %res.07.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %conv
  br i1 %exitcond.not.i.i, label %_ZL3sumPKdm.exit.i, label %for.body.i.i, !llvm.loop !187

_ZL3sumPKdm.exit.i:                               ; preds = %for.body.i.i, %middle.block, %for.cond.cleanup78.i
  %res.0.lcssa.i.i = phi double [ 0.000000e+00, %for.cond.cleanup78.i ], [ %106, %middle.block ], [ %add.i295.i, %for.body.i.i ]
  %call131.i = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([38 x i8], [38 x i8]* @.str.86, i64 0, i64 0), double %conv127.i, double %res.0.lcssa.i.i)
  %108 = load %"class.adept::Storage.14"*, %"class.adept::Storage.14"** %storage_.i203.i, align 8, !tbaa !176
  %tobool.not.i297.i = icmp eq %"class.adept::Storage.14"* %108, null
  br i1 %tobool.not.i297.i, label %_ZL13adept2_sincosPdS_mm.exit, label %if.then.i298.i

if.then.i298.i:                                   ; preds = %_ZL3sumPKdm.exit.i
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage.14"* nonnull dereferenceable(20) %108)
          to label %_ZL13adept2_sincosPdS_mm.exit unwind label %terminate.lpad.i299.i

terminate.lpad.i299.i:                            ; preds = %if.then.i298.i
  %109 = landingpad { i8*, i32 }
          catch i8* null
  %110 = extractvalue { i8*, i32 } %109, 0
  call void @__clang_call_terminate(i8* %110) #37
  unreachable

for.body79.i:                                     ; preds = %for.cond.cleanup97.i, %for.body79.lr.ph.i
  %indvars.iv380.i = phi i64 [ 0, %for.body79.lr.ph.i ], [ %indvars.iv.next381.i, %for.cond.cleanup97.i ]
  store i32 0, i32* %n_operations_.i.i301.i, align 8, !tbaa !74
  store i32 0, i32* %n_statements_.i.i302.i, align 8, !tbaa !40
  %111 = load i32*, i32** %_M_start.i.i.i303.i, align 8, !tbaa !33
  %112 = load i32*, i32** %_M_finish.i.i.i.i304.i, align 8, !tbaa !76
  %tobool.not.i.i.i.i305.i = icmp eq i32* %112, %111
  br i1 %tobool.not.i.i.i.i305.i, label %_ZN5adept5Stack18clear_independentsEv.exit.i310.i, label %invoke.cont.i.i.i.i306.i

invoke.cont.i.i.i.i306.i:                         ; preds = %for.body79.i
  store i32* %111, i32** %_M_finish.i.i.i.i304.i, align 8, !tbaa !76
  br label %_ZN5adept5Stack18clear_independentsEv.exit.i310.i

_ZN5adept5Stack18clear_independentsEv.exit.i310.i: ; preds = %invoke.cont.i.i.i.i306.i, %for.body79.i
  %113 = load i32*, i32** %_M_start.i.i4.i307.i, align 8, !tbaa !33
  %114 = load i32*, i32** %_M_finish.i.i.i5.i308.i, align 8, !tbaa !76
  %tobool.not.i.i.i6.i309.i = icmp eq i32* %114, %113
  br i1 %tobool.not.i.i.i6.i309.i, label %_ZN5adept5Stack16clear_dependentsEv.exit.i318.i, label %invoke.cont.i.i.i7.i311.i

invoke.cont.i.i.i7.i311.i:                        ; preds = %_ZN5adept5Stack18clear_independentsEv.exit.i310.i
  store i32* %113, i32** %_M_finish.i.i.i5.i308.i, align 8, !tbaa !76
  br label %_ZN5adept5Stack16clear_dependentsEv.exit.i318.i

_ZN5adept5Stack16clear_dependentsEv.exit.i318.i:  ; preds = %invoke.cont.i.i.i7.i311.i, %_ZN5adept5Stack18clear_independentsEv.exit.i310.i
  store i8 0, i8* %gradients_initialized_.i.i312.i, align 8, !tbaa !39
  %115 = load i32, i32* %i_gradient_.i313.i, align 8, !tbaa !62
  %add.i314.i = add nsw i32 %115, 1
  store i32 %add.i314.i, i32* %max_gradient_.i315.i, align 8, !tbaa !63
  %116 = load i32, i32* %n_allocated_statements_.i.i316.i, align 4, !tbaa !73
  %cmp.not.i.i317.i = icmp sgt i32 %116, 0
  br i1 %cmp.not.i.i317.i, label %entry.if.end_crit_edge.i.i321.i, label %if.then.i.i325.i

entry.if.end_crit_edge.i.i321.i:                  ; preds = %_ZN5adept5Stack16clear_dependentsEv.exit.i318.i
  %.pre.i.i320.i = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i.i319.i, align 8, !tbaa !35
  br label %invoke.cont81.i

if.then.i.i325.i:                                 ; preds = %_ZN5adept5Stack16clear_dependentsEv.exit.i318.i
  %mul.i.i.i322.i = shl nsw i32 %116, 1
  %conv.i.i.i323.i = sext i32 %mul.i.i.i322.i to i64
  %117 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i.i323.i, i64 8)
  %118 = extractvalue { i64, i1 } %117, 1
  %119 = extractvalue { i64, i1 } %117, 0
  %120 = select i1 %118, i64 -1, i64 %119
  %call.i.i.i337.i = invoke noalias nonnull i8* @_Znam(i64 %120) #36
          to label %call.i.i.i.noexc336.i unwind label %lpad80.i

call.i.i.i.noexc336.i:                            ; preds = %if.then.i.i325.i
  %121 = load i8*, i8** %67, align 8, !tbaa !35
  %isnull.i.i.i324.i = icmp eq i8* %121, null
  br i1 %isnull.i.i.i324.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i331.i, label %delete.notnull.i.i.i328.i

delete.notnull.i.i.i328.i:                        ; preds = %call.i.i.i.noexc336.i
  call void @_ZdaPv(i8* nonnull %121) #34
  %.pre7.pre.i.i326.i = load i32, i32* %n_statements_.i.i302.i, align 8, !tbaa !40
  %.pre.pre.i327.i = load i32, i32* %n_operations_.i.i301.i, align 8, !tbaa !74
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i331.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i331.i: ; preds = %delete.notnull.i.i.i328.i, %call.i.i.i.noexc336.i
  %.pre.i329.i = phi i32 [ 0, %call.i.i.i.noexc336.i ], [ %.pre.pre.i327.i, %delete.notnull.i.i.i328.i ]
  %.pre7.i.i330.i = phi i32 [ 0, %call.i.i.i.noexc336.i ], [ %.pre7.pre.i.i326.i, %delete.notnull.i.i.i328.i ]
  store i8* %call.i.i.i337.i, i8** %67, align 8, !tbaa !35
  store i32 %mul.i.i.i322.i, i32* %n_allocated_statements_.i.i316.i, align 4, !tbaa !73
  %122 = bitcast i8* %call.i.i.i337.i to %"struct.adept::internal::Statement"*
  br label %invoke.cont81.i

invoke.cont81.i:                                  ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i331.i, %entry.if.end_crit_edge.i.i321.i
  %123 = phi i32 [ 0, %entry.if.end_crit_edge.i.i321.i ], [ %.pre.i329.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i331.i ]
  %124 = phi i32 [ 0, %entry.if.end_crit_edge.i.i321.i ], [ %.pre7.i.i330.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i331.i ]
  %125 = phi %"struct.adept::internal::Statement"* [ %.pre.i.i320.i, %entry.if.end_crit_edge.i.i321.i ], [ %122, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i331.i ]
  %idxprom.i.i332.i = sext i32 %124 to i64
  %index.i.i333.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %125, i64 %idxprom.i.i332.i, i32 0
  store i32 -1, i32* %index.i.i333.i, align 4, !tbaa !41
  %inc.i.i334.i = add nsw i32 %124, 1
  store i32 %inc.i.i334.i, i32* %n_statements_.i.i302.i, align 8, !tbaa !40
  %end_plus_one.i.i335.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %125, i64 %idxprom.i.i332.i, i32 1
  store i32 %123, i32* %end_plus_one.i.i335.i, align 4, !tbaa !45
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %68) #32
  invoke void @_Z11alogsumexp2RKN5adept5ArrayILi1EdLb1EEEm(%"class.adept::Active"* nonnull sret(%"class.adept::Active") align 8 %resa82.i, %"class.adept::Array.30"* nonnull align 8 dereferenceable(32) %inp48.i, i64 %conv)
          to label %invoke.cont84.i unwind label %lpad83.i

invoke.cont84.i:                                  ; preds = %invoke.cont81.i
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %69) #32
  store double 1.000000e+00, double* %ref.tmp85.i, align 8, !tbaa !43
  %126 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %127 = load i32, i32* %gradient_index_.i292.i, align 8, !tbaa !157
  %add.i293.i = add nsw i32 %127, 1
  invoke void @_ZN5adept5Stack13set_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPKS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %126, i32 %127, i32 %add.i293.i, double* nonnull %ref.tmp85.i)
          to label %invoke.cont87.i unwind label %lpad86.i

invoke.cont87.i:                                  ; preds = %invoke.cont84.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %69) #32
  invoke void @_ZN5adept5Stack15compute_adjointEv(%"class.adept::Stack"* nonnull dereferenceable(149) %stack47.i)
          to label %for.cond94.preheader.i unwind label %lpad89.i

for.cond94.preheader.i:                           ; preds = %invoke.cont87.i
  br i1 %cmp9131.not, label %for.cond.cleanup97.i, label %invoke.cont101.i

for.cond.cleanup97.i:                             ; preds = %invoke.cont103.i, %for.cond94.preheader.i
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %resa82.i) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %68) #32
  %indvars.iv.next381.i = add nuw i64 %indvars.iv380.i, 1
  %exitcond382.not.i = icmp eq i64 %indvars.iv.next381.i, %conv5
  br i1 %exitcond382.not.i, label %for.cond.cleanup78.i, label %for.body79.i, !llvm.loop !188

lpad80.i:                                         ; preds = %if.then.i.i325.i
  %128 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup132.i

lpad83.i:                                         ; preds = %invoke.cont81.i
  %129 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup117.i

lpad86.i:                                         ; preds = %invoke.cont84.i
  %130 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %69) #32
  br label %ehcleanup116.i

lpad89.i:                                         ; preds = %invoke.cont87.i
  %131 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup116.i

invoke.cont101.i:                                 ; preds = %for.cond94.preheader.i, %invoke.cont103.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %invoke.cont103.i ], [ 0, %for.cond94.preheader.i ]
  %132 = load i32, i32* %arrayidx.i7.i272.i, align 4, !tbaa !46, !noalias !189
  %133 = trunc i64 %indvars.iv.i to i32
  %mul.i273.i = mul nsw i32 %132, %133
  %134 = load i32, i32* %value_.i.i202.i, align 8, !tbaa !151, !noalias !189
  %add.i278.i = add nsw i32 %134, %mul.i273.i
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %70) #32
  store double 0.000000e+00, double* %gradient.i.i, align 8, !tbaa !43
  %135 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %add.i231.i = add nsw i32 %add.i278.i, 1
  invoke void @_ZNK5adept5Stack13get_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %135, i32 %add.i278.i, i32 %add.i231.i, double* nonnull %gradient.i.i)
          to label %invoke.cont103.i unwind label %lpad102.i

invoke.cont103.i:                                 ; preds = %invoke.cont101.i
  %136 = load double, double* %gradient.i.i, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %70) #32
  %arrayidx106.i = getelementptr inbounds double, double* %8, i64 %indvars.iv.i
  %137 = load double, double* %arrayidx106.i, align 8, !tbaa !43
  %add107.i = fadd fast double %137, %136
  store double %add107.i, double* %arrayidx106.i, align 8, !tbaa !43
  %indvars.iv.next.i = add nuw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %conv
  br i1 %exitcond.not.i, label %for.cond.cleanup97.i, label %invoke.cont101.i, !llvm.loop !192

lpad102.i:                                        ; preds = %invoke.cont101.i
  %138 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup116.i

ehcleanup116.i:                                   ; preds = %lpad102.i, %lpad89.i, %lpad86.i
  %.pn.pn.i = phi { i8*, i32 } [ %131, %lpad89.i ], [ %130, %lpad86.i ], [ %138, %lpad102.i ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %resa82.i) #32
  br label %ehcleanup117.i

ehcleanup117.i:                                   ; preds = %ehcleanup116.i, %lpad83.i
  %.pn.pn.pn.i = phi { i8*, i32 } [ %.pn.pn.i, %ehcleanup116.i ], [ %129, %lpad83.i ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %68) #32
  br label %ehcleanup132.i

ehcleanup132.i:                                   ; preds = %ehcleanup117.i, %lpad80.i, %lpad63.i
  %.pn181.pn.i = phi { i8*, i32 } [ %.pn.pn.pn.i, %ehcleanup117.i ], [ %128, %lpad80.i ], [ %93, %lpad63.i ]
  %139 = load %"class.adept::Storage.14"*, %"class.adept::Storage.14"** %storage_.i203.i, align 8, !tbaa !176
  %tobool.not.i.i = icmp eq %"class.adept::Storage.14"* %139, null
  br i1 %tobool.not.i.i, label %ehcleanup133.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %ehcleanup132.i
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage.14"* nonnull dereferenceable(20) %139)
          to label %ehcleanup133.i unwind label %terminate.lpad.i.i

terminate.lpad.i.i:                               ; preds = %if.then.i.i
  %140 = landingpad { i8*, i32 }
          catch i8* null
  %141 = extractvalue { i8*, i32 } %140, 0
  call void @__clang_call_terminate(i8* %141) #37
  unreachable

ehcleanup133.i:                                   ; preds = %if.then.i.i, %ehcleanup132.i, %lpad50.i
  %.pn181.pn.pn.i = phi { i8*, i32 } [ %74, %lpad50.i ], [ %.pn181.pn.i, %ehcleanup132.i ], [ %.pn181.pn.i, %if.then.i.i ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %48) #32
  call void @_ZN5adept5StackD2Ev(%"class.adept::Stack"* nonnull dereferenceable(149) %stack47.i) #32
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %47) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %46) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %45) #32
  br label %eh.resume.i

eh.resume.i:                                      ; preds = %ehcleanup133.i, %ehcleanup40.i
  %.pn187.pn.pn.pn.i = phi { i8*, i32 } [ %.pn187.pn.pn.i, %ehcleanup40.i ], [ %.pn181.pn.pn.i, %ehcleanup133.i ]
  resume { i8*, i32 } %.pn187.pn.pn.pn.i

_ZL13adept2_sincosPdS_mm.exit:                    ; preds = %if.then.i298.i, %_ZL3sumPKdm.exit.i
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %48) #32
  call void @_ZN5adept5StackD2Ev(%"class.adept::Stack"* nonnull dereferenceable(149) %stack47.i) #32
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %47) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %46) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %45) #32
  %142 = load double, double* %7, align 8, !tbaa !43
  %143 = bitcast %struct.timeval* %start.i36 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %143) #32
  %144 = bitcast %struct.timeval* %end.i37 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %144) #32
  %call.i38 = call i32 @gettimeofday(%struct.timeval* nonnull %start.i36, i8* null) #32
  br i1 %cmp10374.not.i, label %for.cond.cleanup.i52, label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %_ZL13adept2_sincosPdS_mm.exit
  %exitcond39.not.i79.i = icmp eq i64 %sext, 4294967296
  %.mux.i = select i1 %cmp9131.not, double 0.000000e+00, double 1.000000e+00
  %switch.i = icmp ult i64 %conv, 2
  %sext237 = shl i64 %call.i, 32
  %145 = ashr exact i64 %sext237, 32
  %146 = add nsw i64 %145, -1
  %min.iters.check50 = icmp ult i64 %146, 4
  %n.vec53 = and i64 %146, -4
  %ind.end = or i64 %n.vec53, 1
  %cmp.n57 = icmp eq i64 %146, %n.vec53
  br label %for.body.i

for.cond.cleanup.i52:                             ; preds = %_ZL9logsumexpPKdm.exit.i, %_ZL13adept2_sincosPdS_mm.exit
  %total.0.lcssa.i39 = phi double [ 0.000000e+00, %_ZL13adept2_sincosPdS_mm.exit ], [ %add4.i, %_ZL9logsumexpPKdm.exit.i ]
  %call5.i = call i32 @gettimeofday(%struct.timeval* nonnull %end.i37, i8* null) #32
  %tv_sec.i.i40 = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i37, i64 0, i32 0
  %147 = load i64, i64* %tv_sec.i.i40, align 8, !tbaa !143
  %tv_sec1.i.i41 = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i36, i64 0, i32 0
  %148 = load i64, i64* %tv_sec1.i.i41, align 8, !tbaa !143
  %sub.i.i42 = sub nsw i64 %147, %148
  %conv.i.i43 = sitofp i64 %sub.i.i42 to double
  %tv_usec.i.i44 = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i37, i64 0, i32 1
  %149 = load i64, i64* %tv_usec.i.i44, align 8, !tbaa !145
  %tv_usec2.i.i45 = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i36, i64 0, i32 1
  %150 = load i64, i64* %tv_usec2.i.i45, align 8, !tbaa !145
  %sub3.i.i46 = sub nsw i64 %149, %150
  %conv4.i.i47 = sitofp i64 %sub3.i.i46 to double
  %mul.i.i48 = fmul fast double %conv4.i.i47, 0x3EB0C6F7A0B5ED8D
  %add.i.i49 = fadd fast double %mul.i.i48, %conv.i.i43
  %conv5.i.i50 = fptrunc double %add.i.i49 to float
  %conv7.i = fpext float %conv5.i.i50 to double
  %call8.i = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([32 x i8], [32 x i8]* @.str.96, i64 0, i64 0), double %conv7.i, double %total.0.lcssa.i39)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %144) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %143) #32
  store double %142, double* %7, align 8, !tbaa !43
  %151 = bitcast %struct.timeval* %start10.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %151) #32
  %152 = bitcast %struct.timeval* %end11.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %152) #32
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %call7, i8 0, i64 %mul.i, i1 false)
  %call12.i = call i32 @gettimeofday(%struct.timeval* nonnull %start10.i, i8* null) #32
  br i1 %cmp10374.not.i, label %for.cond.cleanup17.i, label %for.body18.lr.ph.i

for.body18.lr.ph.i:                               ; preds = %for.cond.cleanup.i52
  %153 = bitcast i32* %branch.i.i to i8*
  %exitcond.not.i74.i = icmp eq i64 %sext, 4294967296
  %conv18.i.i = add i32 %conv.i, -1
  %cmp207.i.i = icmp sgt i32 %conv18.i.i, -1
  %154 = zext i32 %conv18.i.i to i64
  %155 = add nuw nsw i64 %154, 1
  %sext238 = shl i64 %call.i, 32
  %156 = ashr exact i64 %sext238, 32
  %157 = add nsw i64 %156, -1
  %min.iters.check103 = icmp ult i64 %157, 4
  %n.vec106 = and i64 %157, -4
  %ind.end110 = or i64 %n.vec106, 1
  %cmp.n111 = icmp eq i64 %157, %n.vec106
  %min.iters.check69 = icmp ult i32 %conv18.i.i, 3
  %n.vec72 = and i64 %155, 8589934588
  %ind.end76 = sub nsw i64 %154, %n.vec72
  %cmp.n77 = icmp eq i64 %155, %n.vec72
  br label %for.body18.i

for.body.i:                                       ; preds = %_ZL9logsumexpPKdm.exit.i, %for.body.lr.ph.i
  %indvars.iv94.i = phi i64 [ 0, %for.body.lr.ph.i ], [ %indvars.iv.next95.i, %_ZL9logsumexpPKdm.exit.i ]
  %total.089.i = phi double [ 0.000000e+00, %for.body.lr.ph.i ], [ %add4.i, %_ZL9logsumexpPKdm.exit.i ]
  %158 = trunc i64 %indvars.iv94.i to i32
  %conv1.i = sitofp i32 %158 to double
  %div.i = fmul fast double %conv1.i, 0x3E7AD7F29ABCAF48
  %add.i53 = fadd fast double %div.i, %142
  store double %add.i53, double* %7, align 8, !tbaa !43
  br i1 %switch.i, label %_ZL9logsumexpPKdm.exit.i, label %for.body.for.body_crit_edge.i.i

for.body7.i.preheader.i:                          ; preds = %for.body.for.body_crit_edge.i.i
  %sub.i5282.i = fsub fast double %add.i53, %174
  %159 = call fast double @llvm.exp.f64(double %sub.i5282.i) #32
  br i1 %exitcond39.not.i79.i, label %_ZL9logsumexpPKdm.exit.i, label %for.body7.for.body7_crit_edge.i.i.preheader, !llvm.loop !193

for.body7.for.body7_crit_edge.i.i.preheader:      ; preds = %for.body7.i.preheader.i
  br i1 %min.iters.check50, label %for.body7.for.body7_crit_edge.i.i.preheader247, label %vector.ph51

vector.ph51:                                      ; preds = %for.body7.for.body7_crit_edge.i.i.preheader
  %160 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %159, i32 0
  %broadcast.splatinsert = insertelement <2 x double> poison, double %174, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert62 = insertelement <2 x double> poison, double %174, i32 0
  %broadcast.splat63 = shufflevector <2 x double> %broadcast.splatinsert62, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body49

vector.body49:                                    ; preds = %vector.body49, %vector.ph51
  %index54 = phi i64 [ 0, %vector.ph51 ], [ %index.next55, %vector.body49 ]
  %vec.phi58 = phi <2 x double> [ %160, %vector.ph51 ], [ %169, %vector.body49 ]
  %vec.phi59 = phi <2 x double> [ zeroinitializer, %vector.ph51 ], [ %170, %vector.body49 ]
  %offset.idx = or i64 %index54, 1
  %161 = getelementptr inbounds double, double* %7, i64 %offset.idx
  %162 = bitcast double* %161 to <2 x double>*
  %wide.load60 = load <2 x double>, <2 x double>* %162, align 8, !tbaa !43, !alias.scope !194
  %163 = getelementptr inbounds double, double* %161, i64 2
  %164 = bitcast double* %163 to <2 x double>*
  %wide.load61 = load <2 x double>, <2 x double>* %164, align 8, !tbaa !43, !alias.scope !194
  %165 = fsub fast <2 x double> %wide.load60, %broadcast.splat
  %166 = fsub fast <2 x double> %wide.load61, %broadcast.splat63
  %167 = call fast <2 x double> @llvm.exp.v2f64(<2 x double> %165)
  %168 = call fast <2 x double> @llvm.exp.v2f64(<2 x double> %166)
  %169 = fadd fast <2 x double> %167, %vec.phi58
  %170 = fadd fast <2 x double> %168, %vec.phi59
  %index.next55 = add i64 %index54, 4
  %171 = icmp eq i64 %index.next55, %n.vec53
  br i1 %171, label %middle.block47, label %vector.body49, !llvm.loop !197

middle.block47:                                   ; preds = %vector.body49
  %bin.rdx64 = fadd fast <2 x double> %170, %169
  %172 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx64)
  br i1 %cmp.n57, label %_ZL9logsumexpPKdm.exit.i, label %for.body7.for.body7_crit_edge.i.i.preheader247

for.body7.for.body7_crit_edge.i.i.preheader247:   ; preds = %for.body7.for.body7_crit_edge.i.i.preheader, %middle.block47
  %indvars.iv.next.i5486.i.ph = phi i64 [ 1, %for.body7.for.body7_crit_edge.i.i.preheader ], [ %ind.end, %middle.block47 ]
  %add.i5385.i.ph = phi double [ %159, %for.body7.for.body7_crit_edge.i.i.preheader ], [ %172, %middle.block47 ]
  br label %for.body7.for.body7_crit_edge.i.i

for.body.for.body_crit_edge.i.i:                  ; preds = %for.body.i, %for.body.for.body_crit_edge.i.i
  %indvars.iv.next38.i80.i = phi i64 [ %indvars.iv.next38.i.i, %for.body.for.body_crit_edge.i.i ], [ 1, %for.body.i ]
  %173 = phi double [ %174, %for.body.for.body_crit_edge.i.i ], [ %add.i53, %for.body.i ]
  %arrayidx1.phi.trans.insert.i49.i = getelementptr inbounds double, double* %7, i64 %indvars.iv.next38.i80.i
  %.pre.i50.i = load double, double* %arrayidx1.phi.trans.insert.i49.i, align 8, !tbaa !43, !alias.scope !194
  %174 = call fast double @llvm.maxnum.f64(double %173, double %.pre.i50.i) #32
  %indvars.iv.next38.i.i = add nuw nsw i64 %indvars.iv.next38.i80.i, 1
  %exitcond39.not.i.i = icmp eq i64 %indvars.iv.next38.i.i, %conv
  br i1 %exitcond39.not.i.i, label %for.body7.i.preheader.i, label %for.body.for.body_crit_edge.i.i, !llvm.loop !198

for.body7.for.body7_crit_edge.i.i:                ; preds = %for.body7.for.body7_crit_edge.i.i.preheader247, %for.body7.for.body7_crit_edge.i.i
  %indvars.iv.next.i5486.i = phi i64 [ %indvars.iv.next.i54.i, %for.body7.for.body7_crit_edge.i.i ], [ %indvars.iv.next.i5486.i.ph, %for.body7.for.body7_crit_edge.i.i.preheader247 ]
  %add.i5385.i = phi double [ %add.i53.i, %for.body7.for.body7_crit_edge.i.i ], [ %add.i5385.i.ph, %for.body7.for.body7_crit_edge.i.i.preheader247 ]
  %arrayidx9.phi.trans.insert.i.i = getelementptr inbounds double, double* %7, i64 %indvars.iv.next.i5486.i
  %.pre40.i.i = load double, double* %arrayidx9.phi.trans.insert.i.i, align 8, !tbaa !43, !alias.scope !194
  %sub.i52.i = fsub fast double %.pre40.i.i, %174
  %175 = call fast double @llvm.exp.f64(double %sub.i52.i) #32
  %add.i53.i = fadd fast double %175, %add.i5385.i
  %indvars.iv.next.i54.i = add nuw nsw i64 %indvars.iv.next.i5486.i, 1
  %exitcond.not.i55.i = icmp eq i64 %indvars.iv.next.i54.i, %conv
  br i1 %exitcond.not.i55.i, label %_ZL9logsumexpPKdm.exit.i, label %for.body7.for.body7_crit_edge.i.i, !llvm.loop !199

_ZL9logsumexpPKdm.exit.i:                         ; preds = %for.body7.for.body7_crit_edge.i.i, %middle.block47, %for.body7.i.preheader.i, %for.body.i
  %A.0.lcssa42.i.i = phi double [ %174, %for.body7.i.preheader.i ], [ %add.i53, %for.body.i ], [ %174, %middle.block47 ], [ %174, %for.body7.for.body7_crit_edge.i.i ]
  %sema.0.lcssa.i.i = phi double [ %159, %for.body7.i.preheader.i ], [ %.mux.i, %for.body.i ], [ %172, %middle.block47 ], [ %add.i53.i, %for.body7.for.body7_crit_edge.i.i ]
  %176 = call fast double @llvm.log.f64(double %sema.0.lcssa.i.i) #32
  %add13.i.i = fadd fast double %A.0.lcssa42.i.i, %total.089.i
  %add4.i = fadd fast double %add13.i.i, %176
  %indvars.iv.next95.i = add nuw nsw i64 %indvars.iv94.i, 1
  %exitcond96.not.i = icmp eq i64 %indvars.iv.next95.i, %conv5
  br i1 %exitcond96.not.i, label %for.cond.cleanup.i52, label %for.body.i, !llvm.loop !200

for.cond.cleanup17.i:                             ; preds = %_ZL11logsumexp_bPKdPdmd.exit.i, %for.cond.cleanup.i52
  %call22.i = call i32 @gettimeofday(%struct.timeval* nonnull %end11.i, i8* null) #32
  %tv_sec.i56.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end11.i, i64 0, i32 0
  %177 = load i64, i64* %tv_sec.i56.i, align 8, !tbaa !143
  %tv_sec1.i57.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start10.i, i64 0, i32 0
  %178 = load i64, i64* %tv_sec1.i57.i, align 8, !tbaa !143
  %tv_usec.i60.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end11.i, i64 0, i32 1
  %179 = load i64, i64* %tv_usec.i60.i, align 8, !tbaa !145
  %tv_usec2.i61.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start10.i, i64 0, i32 1
  %180 = load i64, i64* %tv_usec2.i61.i, align 8, !tbaa !145
  br i1 %cmp9131.not, label %_ZL15tapenade_sincosPdS_mm.exit, label %for.body.i71.i.preheader

for.body.i71.i.preheader:                         ; preds = %for.cond.cleanup17.i
  %sext239 = shl i64 %call.i, 32
  %181 = ashr exact i64 %sext239, 32
  %min.iters.check126 = icmp ult i64 %181, 4
  br i1 %min.iters.check126, label %for.body.i71.i.preheader244, label %vector.ph127

vector.ph127:                                     ; preds = %for.body.i71.i.preheader
  %n.mod.vf128 = and i64 %call.i, 3
  %n.vec129 = sub nsw i64 %181, %n.mod.vf128
  br label %vector.body125

vector.body125:                                   ; preds = %vector.body125, %vector.ph127
  %index130 = phi i64 [ 0, %vector.ph127 ], [ %index.next131, %vector.body125 ]
  %vec.phi134 = phi <2 x double> [ zeroinitializer, %vector.ph127 ], [ %186, %vector.body125 ]
  %vec.phi135 = phi <2 x double> [ zeroinitializer, %vector.ph127 ], [ %187, %vector.body125 ]
  %182 = getelementptr inbounds double, double* %8, i64 %index130
  %183 = bitcast double* %182 to <2 x double>*
  %wide.load136 = load <2 x double>, <2 x double>* %183, align 8, !tbaa !43
  %184 = getelementptr inbounds double, double* %182, i64 2
  %185 = bitcast double* %184 to <2 x double>*
  %wide.load137 = load <2 x double>, <2 x double>* %185, align 8, !tbaa !43
  %186 = fadd fast <2 x double> %wide.load136, %vec.phi134
  %187 = fadd fast <2 x double> %wide.load137, %vec.phi135
  %index.next131 = add i64 %index130, 4
  %188 = icmp eq i64 %index.next131, %n.vec129
  br i1 %188, label %middle.block123, label %vector.body125, !llvm.loop !201

middle.block123:                                  ; preds = %vector.body125
  %bin.rdx138 = fadd fast <2 x double> %187, %186
  %189 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx138)
  %cmp.n133 = icmp eq i64 %n.mod.vf128, 0
  br i1 %cmp.n133, label %_ZL15tapenade_sincosPdS_mm.exit, label %for.body.i71.i.preheader244

for.body.i71.i.preheader244:                      ; preds = %for.body.i71.i.preheader, %middle.block123
  %indvars.iv.i67.i.ph = phi i64 [ 0, %for.body.i71.i.preheader ], [ %n.vec129, %middle.block123 ]
  %res.07.i.i54.ph = phi double [ 0.000000e+00, %for.body.i71.i.preheader ], [ %189, %middle.block123 ]
  br label %for.body.i71.i

for.body.i71.i:                                   ; preds = %for.body.i71.i.preheader244, %for.body.i71.i
  %indvars.iv.i67.i = phi i64 [ %indvars.iv.next.i69.i, %for.body.i71.i ], [ %indvars.iv.i67.i.ph, %for.body.i71.i.preheader244 ]
  %res.07.i.i54 = phi double [ %add.i68.i, %for.body.i71.i ], [ %res.07.i.i54.ph, %for.body.i71.i.preheader244 ]
  %arrayidx.i.i55 = getelementptr inbounds double, double* %8, i64 %indvars.iv.i67.i
  %190 = load double, double* %arrayidx.i.i55, align 8, !tbaa !43
  %add.i68.i = fadd fast double %190, %res.07.i.i54
  %indvars.iv.next.i69.i = add nuw nsw i64 %indvars.iv.i67.i, 1
  %exitcond.not.i70.i = icmp eq i64 %indvars.iv.next.i69.i, %conv
  br i1 %exitcond.not.i70.i, label %_ZL15tapenade_sincosPdS_mm.exit, label %for.body.i71.i, !llvm.loop !202

for.body18.i:                                     ; preds = %_ZL11logsumexp_bPKdPdmd.exit.i, %for.body18.lr.ph.i
  %indvars.iv.i58 = phi i64 [ 0, %for.body18.lr.ph.i ], [ %indvars.iv.next.i65, %_ZL11logsumexp_bPKdPdmd.exit.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !203)
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %153) #32, !noalias !203
  br i1 %cmp9131.not, label %_ZL11logsumexp_bPKdPdmd.exit.i, label %for.body.i.i59.preheader

for.body.i.i59.preheader:                         ; preds = %for.body18.i
  call void @pushControl1b(i32 1), !noalias !203
  br i1 %exitcond.not.i74.i, label %for.cond.cleanup9.i.i, label %for.inc.for.body_crit_edge.i.i, !llvm.loop !206

for.body10.i.preheader.i:                         ; preds = %for.inc.for.body_crit_edge.i.i
  %sub.i4672.i = fsub fast double %142, %A.1.i.i
  %191 = call fast double @llvm.exp.f64(double %sub.i4672.i)
  br i1 %exitcond.not.i74.i, label %for.cond.cleanup9.i.i, label %for.body10.for.body10_crit_edge.i.i.preheader, !llvm.loop !207

for.body10.for.body10_crit_edge.i.i.preheader:    ; preds = %for.body10.i.preheader.i
  br i1 %min.iters.check103, label %for.body10.for.body10_crit_edge.i.i.preheader246, label %vector.ph104

vector.ph104:                                     ; preds = %for.body10.for.body10_crit_edge.i.i.preheader
  %192 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %191, i32 0
  %broadcast.splatinsert117 = insertelement <2 x double> poison, double %A.1.i.i, i32 0
  %broadcast.splat118 = shufflevector <2 x double> %broadcast.splatinsert117, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert119 = insertelement <2 x double> poison, double %A.1.i.i, i32 0
  %broadcast.splat120 = shufflevector <2 x double> %broadcast.splatinsert119, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body102

vector.body102:                                   ; preds = %vector.body102, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next108, %vector.body102 ]
  %vec.phi113 = phi <2 x double> [ %192, %vector.ph104 ], [ %201, %vector.body102 ]
  %vec.phi114 = phi <2 x double> [ zeroinitializer, %vector.ph104 ], [ %202, %vector.body102 ]
  %offset.idx112 = or i64 %index107, 1
  %193 = getelementptr inbounds double, double* %7, i64 %offset.idx112
  %194 = bitcast double* %193 to <2 x double>*
  %wide.load115 = load <2 x double>, <2 x double>* %194, align 8, !tbaa !43, !alias.scope !203
  %195 = getelementptr inbounds double, double* %193, i64 2
  %196 = bitcast double* %195 to <2 x double>*
  %wide.load116 = load <2 x double>, <2 x double>* %196, align 8, !tbaa !43, !alias.scope !203
  %197 = fsub fast <2 x double> %wide.load115, %broadcast.splat118
  %198 = fsub fast <2 x double> %wide.load116, %broadcast.splat120
  %199 = call fast <2 x double> @llvm.exp.v2f64(<2 x double> %197)
  %200 = call fast <2 x double> @llvm.exp.v2f64(<2 x double> %198)
  %201 = fadd fast <2 x double> %199, %vec.phi113
  %202 = fadd fast <2 x double> %200, %vec.phi114
  %index.next108 = add i64 %index107, 4
  %203 = icmp eq i64 %index.next108, %n.vec106
  br i1 %203, label %middle.block100, label %vector.body102, !llvm.loop !208

middle.block100:                                  ; preds = %vector.body102
  %bin.rdx121 = fadd fast <2 x double> %202, %201
  %204 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx121)
  br i1 %cmp.n111, label %for.cond.cleanup9.i.i, label %for.body10.for.body10_crit_edge.i.i.preheader246

for.body10.for.body10_crit_edge.i.i.preheader246: ; preds = %for.body10.for.body10_crit_edge.i.i.preheader, %middle.block100
  %indvars.iv.next24.i76.i.ph = phi i64 [ 1, %for.body10.for.body10_crit_edge.i.i.preheader ], [ %ind.end110, %middle.block100 ]
  %add.i4775.i.ph = phi double [ %191, %for.body10.for.body10_crit_edge.i.i.preheader ], [ %204, %middle.block100 ]
  br label %for.body10.for.body10_crit_edge.i.i

for.inc.for.body_crit_edge.i.i:                   ; preds = %for.body.i.i59.preheader, %for.inc.for.body_crit_edge.i.i
  %indvars.iv.next26.i.i28 = phi i64 [ %indvars.iv.next26.i.i, %for.inc.for.body_crit_edge.i.i ], [ 1, %for.body.i.i59.preheader ]
  %A.1.i.i27 = phi double [ %A.1.i.i, %for.inc.for.body_crit_edge.i.i ], [ %142, %for.body.i.i59.preheader ]
  %arrayidx1.phi.trans.insert.i.i = getelementptr inbounds double, double* %7, i64 %indvars.iv.next26.i.i28
  %.pre.i.i61 = load double, double* %arrayidx1.phi.trans.insert.i.i, align 8, !tbaa !43, !alias.scope !203
  %cmp2.i.i = fcmp fast olt double %A.1.i.i27, %.pre.i.i61
  %not.cmp2.i.i = xor i1 %cmp2.i.i, true
  %.sink = zext i1 %not.cmp2.i.i to i32
  %A.1.i.i = select i1 %cmp2.i.i, double %.pre.i.i61, double %A.1.i.i27
  call void @pushControl1b(i32 %.sink), !noalias !203
  %indvars.iv.next26.i.i = add nuw i64 %indvars.iv.next26.i.i28, 1
  %exitcond27.not.i.i = icmp eq i64 %indvars.iv.next26.i.i, %conv
  br i1 %exitcond27.not.i.i, label %for.body10.i.preheader.i, label %for.inc.for.body_crit_edge.i.i, !llvm.loop !206

for.cond.cleanup9.i.i:                            ; preds = %for.body10.for.body10_crit_edge.i.i, %middle.block100, %for.body.i.i59.preheader, %for.body10.i.preheader.i
  %A.1.i.i.lcssa36 = phi double [ %A.1.i.i, %for.body10.i.preheader.i ], [ %142, %for.body.i.i59.preheader ], [ %A.1.i.i, %middle.block100 ], [ %A.1.i.i, %for.body10.for.body10_crit_edge.i.i ]
  %add.i47.lcssa.i = phi double [ %191, %for.body10.i.preheader.i ], [ 1.000000e+00, %for.body.i.i59.preheader ], [ %204, %middle.block100 ], [ %add.i47.i, %for.body10.for.body10_crit_edge.i.i ]
  br i1 %cmp207.i.i, label %for.body22.i.i.preheader, label %_ZL11logsumexp_bPKdPdmd.exit.i

for.body22.i.i.preheader:                         ; preds = %for.cond.cleanup9.i.i
  br i1 %min.iters.check69, label %for.body22.i.i.preheader245, label %vector.ph70

vector.ph70:                                      ; preds = %for.body22.i.i.preheader
  %broadcast.splatinsert84 = insertelement <2 x double> poison, double %A.1.i.i.lcssa36, i32 0
  %broadcast.splat85 = shufflevector <2 x double> %broadcast.splatinsert84, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert86 = insertelement <2 x double> poison, double %A.1.i.i.lcssa36, i32 0
  %broadcast.splat87 = shufflevector <2 x double> %broadcast.splatinsert86, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert88 = insertelement <2 x double> poison, double %add.i47.lcssa.i, i32 0
  %broadcast.splat89 = shufflevector <2 x double> %broadcast.splatinsert88, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert90 = insertelement <2 x double> poison, double %add.i47.lcssa.i, i32 0
  %broadcast.splat91 = shufflevector <2 x double> %broadcast.splatinsert90, <2 x double> poison, <2 x i32> zeroinitializer
  %205 = fdiv fast <2 x double> <double 1.000000e+00, double 1.000000e+00>, %broadcast.splat89
  %206 = fdiv fast <2 x double> <double 1.000000e+00, double 1.000000e+00>, %broadcast.splat91
  br label %vector.body68

vector.body68:                                    ; preds = %vector.body68, %vector.ph70
  %index73 = phi i64 [ 0, %vector.ph70 ], [ %index.next74, %vector.body68 ]
  %vec.phi79 = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %vector.ph70 ], [ %229, %vector.body68 ]
  %vec.phi80 = phi <2 x double> [ zeroinitializer, %vector.ph70 ], [ %230, %vector.body68 ]
  %offset.idx78 = sub i64 %154, %index73
  %207 = getelementptr inbounds double, double* %7, i64 %offset.idx78
  %208 = getelementptr inbounds double, double* %207, i64 -1
  %209 = bitcast double* %208 to <2 x double>*
  %wide.load81 = load <2 x double>, <2 x double>* %209, align 8, !tbaa !43, !alias.scope !203
  %reverse = shufflevector <2 x double> %wide.load81, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %210 = getelementptr inbounds double, double* %207, i64 -2
  %211 = getelementptr inbounds double, double* %210, i64 -1
  %212 = bitcast double* %211 to <2 x double>*
  %wide.load82 = load <2 x double>, <2 x double>* %212, align 8, !tbaa !43, !alias.scope !203
  %reverse83 = shufflevector <2 x double> %wide.load82, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %213 = fsub fast <2 x double> %reverse, %broadcast.splat85
  %214 = fsub fast <2 x double> %reverse83, %broadcast.splat87
  %215 = call fast <2 x double> @llvm.exp.v2f64(<2 x double> %213)
  %216 = call fast <2 x double> @llvm.exp.v2f64(<2 x double> %214)
  %217 = fmul fast <2 x double> %215, %205
  %218 = fmul fast <2 x double> %216, %206
  %219 = getelementptr inbounds double, double* %8, i64 %offset.idx78
  %220 = getelementptr inbounds double, double* %219, i64 -1
  %221 = bitcast double* %220 to <2 x double>*
  %wide.load92 = load <2 x double>, <2 x double>* %221, align 8, !tbaa !43, !noalias !203
  %reverse93 = shufflevector <2 x double> %wide.load92, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %222 = getelementptr inbounds double, double* %219, i64 -2
  %223 = getelementptr inbounds double, double* %222, i64 -1
  %224 = bitcast double* %223 to <2 x double>*
  %wide.load94 = load <2 x double>, <2 x double>* %224, align 8, !tbaa !43, !noalias !203
  %reverse95 = shufflevector <2 x double> %wide.load94, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %225 = fadd fast <2 x double> %217, %reverse93
  %226 = fadd fast <2 x double> %218, %reverse95
  %reverse96 = shufflevector <2 x double> %225, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %227 = bitcast double* %220 to <2 x double>*
  store <2 x double> %reverse96, <2 x double>* %227, align 8, !tbaa !43, !noalias !203
  %reverse97 = shufflevector <2 x double> %226, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %228 = bitcast double* %223 to <2 x double>*
  store <2 x double> %reverse97, <2 x double>* %228, align 8, !tbaa !43, !noalias !203
  %229 = fsub fast <2 x double> %vec.phi79, %217
  %230 = fsub fast <2 x double> %vec.phi80, %218
  %index.next74 = add i64 %index73, 4
  %231 = icmp eq i64 %index.next74, %n.vec72
  br i1 %231, label %middle.block66, label %vector.body68, !llvm.loop !209

middle.block66:                                   ; preds = %vector.body68
  %bin.rdx98 = fadd fast <2 x double> %230, %229
  %232 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx98)
  br i1 %cmp.n77, label %for.body40.i.i.preheader, label %for.body22.i.i.preheader245

for.body22.i.i.preheader245:                      ; preds = %for.body22.i.i.preheader, %middle.block66
  %indvars.iv21.i.i.ph = phi i64 [ %154, %for.body22.i.i.preheader ], [ %ind.end76, %middle.block66 ]
  %Ab.08.i.i.ph = phi double [ 1.000000e+00, %for.body22.i.i.preheader ], [ %232, %middle.block66 ]
  %233 = fdiv fast double 1.000000e+00, %add.i47.lcssa.i
  br label %for.body22.i.i

for.body10.for.body10_crit_edge.i.i:              ; preds = %for.body10.for.body10_crit_edge.i.i.preheader246, %for.body10.for.body10_crit_edge.i.i
  %indvars.iv.next24.i76.i = phi i64 [ %indvars.iv.next24.i.i, %for.body10.for.body10_crit_edge.i.i ], [ %indvars.iv.next24.i76.i.ph, %for.body10.for.body10_crit_edge.i.i.preheader246 ]
  %add.i4775.i = phi double [ %add.i47.i, %for.body10.for.body10_crit_edge.i.i ], [ %add.i4775.i.ph, %for.body10.for.body10_crit_edge.i.i.preheader246 ]
  %arrayidx12.phi.trans.insert.i.i = getelementptr inbounds double, double* %7, i64 %indvars.iv.next24.i76.i
  %.pre28.i.i = load double, double* %arrayidx12.phi.trans.insert.i.i, align 8, !tbaa !43, !alias.scope !203
  %sub.i46.i = fsub fast double %.pre28.i.i, %A.1.i.i
  %234 = call fast double @llvm.exp.f64(double %sub.i46.i)
  %add.i47.i = fadd fast double %234, %add.i4775.i
  %indvars.iv.next24.i.i = add nuw nsw i64 %indvars.iv.next24.i76.i, 1
  %exitcond.not.i.i62 = icmp eq i64 %indvars.iv.next24.i.i, %conv
  br i1 %exitcond.not.i.i62, label %for.cond.cleanup9.i.i, label %for.body10.for.body10_crit_edge.i.i, !llvm.loop !210

for.body22.i.i:                                   ; preds = %for.body22.i.i.preheader245, %for.body22.i.i
  %indvars.iv21.i.i = phi i64 [ %indvars.iv.next22.i.i, %for.body22.i.i ], [ %indvars.iv21.i.i.ph, %for.body22.i.i.preheader245 ]
  %Ab.08.i.i = phi double [ %sub31.i.i, %for.body22.i.i ], [ %Ab.08.i.i.ph, %for.body22.i.i.preheader245 ]
  %arrayidx24.i.i = getelementptr inbounds double, double* %7, i64 %indvars.iv21.i.i
  %235 = load double, double* %arrayidx24.i.i, align 8, !tbaa !43, !alias.scope !203
  %sub25.i.i = fsub fast double %235, %A.1.i.i.lcssa36
  %236 = call fast double @llvm.exp.f64(double %sub25.i.i)
  %237 = fmul fast double %236, %233
  %arrayidx27.i.i = getelementptr inbounds double, double* %8, i64 %indvars.iv21.i.i
  %238 = load double, double* %arrayidx27.i.i, align 8, !tbaa !43, !noalias !203
  %add28.i.i = fadd fast double %237, %238
  store double %add28.i.i, double* %arrayidx27.i.i, align 8, !tbaa !43, !noalias !203
  %sub31.i.i = fsub fast double %Ab.08.i.i, %237
  %cmp20.i.i = icmp sgt i64 %indvars.iv21.i.i, 0
  %indvars.iv.next22.i.i = add nsw i64 %indvars.iv21.i.i, -1
  br i1 %cmp20.i.i, label %for.body22.i.i, label %for.body40.i.i.preheader, !llvm.loop !211

for.body40.i.i.preheader:                         ; preds = %for.body22.i.i, %middle.block66
  %Ab.14.i.i.ph = phi double [ %232, %middle.block66 ], [ %sub31.i.i, %for.body22.i.i ]
  br label %for.body40.i.i

for.body40.i.i:                                   ; preds = %for.body40.i.i.preheader, %for.inc49.i.i
  %indvars.iv.i.i63 = phi i64 [ %indvars.iv.next.i.i64, %for.inc49.i.i ], [ %154, %for.body40.i.i.preheader ]
  %Ab.14.i.i = phi double [ %Ab.2.i.i, %for.inc49.i.i ], [ %Ab.14.i.i.ph, %for.body40.i.i.preheader ]
  call void @popControl1b(i32* nonnull %branch.i.i), !noalias !203
  %239 = load i32, i32* %branch.i.i, align 4, !tbaa !46, !noalias !203
  %cmp41.i.i = icmp eq i32 %239, 0
  br i1 %cmp41.i.i, label %if.then42.i.i, label %for.inc49.i.i

if.then42.i.i:                                    ; preds = %for.body40.i.i
  %arrayidx44.i.i = getelementptr inbounds double, double* %8, i64 %indvars.iv.i.i63
  %240 = load double, double* %arrayidx44.i.i, align 8, !tbaa !43, !noalias !203
  %add45.i.i = fadd fast double %240, %Ab.14.i.i
  store double %add45.i.i, double* %arrayidx44.i.i, align 8, !tbaa !43, !noalias !203
  br label %for.inc49.i.i

for.inc49.i.i:                                    ; preds = %if.then42.i.i, %for.body40.i.i
  %Ab.2.i.i = phi double [ 0.000000e+00, %if.then42.i.i ], [ %Ab.14.i.i, %for.body40.i.i ]
  %cmp38.i.i = icmp sgt i64 %indvars.iv.i.i63, 0
  %indvars.iv.next.i.i64 = add nsw i64 %indvars.iv.i.i63, -1
  br i1 %cmp38.i.i, label %for.body40.i.i, label %_ZL11logsumexp_bPKdPdmd.exit.i, !llvm.loop !212

_ZL11logsumexp_bPKdPdmd.exit.i:                   ; preds = %for.inc49.i.i, %for.cond.cleanup9.i.i, %for.body18.i
  %Ab.1.lcssa.i.i = phi double [ 1.000000e+00, %for.cond.cleanup9.i.i ], [ 1.000000e+00, %for.body18.i ], [ %Ab.2.i.i, %for.inc49.i.i ]
  %241 = load double, double* %8, align 8, !tbaa !43, !noalias !203
  %add53.i.i = fadd fast double %241, %Ab.1.lcssa.i.i
  store double %add53.i.i, double* %8, align 8, !tbaa !43, !noalias !203
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %153) #32, !noalias !203
  %indvars.iv.next.i65 = add nuw i64 %indvars.iv.i58, 1
  %exitcond.not.i66 = icmp eq i64 %indvars.iv.next.i65, %conv5
  br i1 %exitcond.not.i66, label %for.cond.cleanup17.i, label %for.body18.i, !llvm.loop !213

_ZL15tapenade_sincosPdS_mm.exit:                  ; preds = %for.body.i71.i, %middle.block123, %for.cond.cleanup17.i
  %res.0.lcssa.i.i56 = phi double [ 0.000000e+00, %for.cond.cleanup17.i ], [ %189, %middle.block123 ], [ %add.i68.i, %for.body.i71.i ]
  %sub3.i62.i = sub nsw i64 %179, %180
  %conv4.i63.i = sitofp i64 %sub3.i62.i to double
  %mul.i64.i = fmul fast double %conv4.i63.i, 0x3EB0C6F7A0B5ED8D
  %sub.i58.i = sub nsw i64 %177, %178
  %conv.i59.i = sitofp i64 %sub.i58.i to double
  %add.i65.i = fadd fast double %mul.i64.i, %conv.i59.i
  %conv5.i66.i = fptrunc double %add.i65.i to float
  %conv24.i = fpext float %conv5.i66.i to double
  %call26.i = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([44 x i8], [44 x i8]* @.str.97, i64 0, i64 0), double %conv24.i, double %res.0.lcssa.i.i56)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %152) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %151) #32
  %242 = load double, double* %7, align 8, !tbaa !43
  %243 = bitcast %struct.timeval* %start.i67 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %243) #32
  %244 = bitcast %struct.timeval* %end.i68 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %244) #32
  %call.i71 = call i32 @gettimeofday(%struct.timeval* nonnull %start.i67, i8* null) #32
  br i1 %cmp10374.not.i, label %for.cond.cleanup.i91, label %for.body.lr.ph.i73

for.body.lr.ph.i73:                               ; preds = %_ZL15tapenade_sincosPdS_mm.exit
  %exitcond39.not.i66.i = icmp eq i64 %sext, 4294967296
  %.mux.i95 = select i1 %cmp9131.not, double 0.000000e+00, double 1.000000e+00
  %switch.i96 = icmp ult i64 %conv, 2
  %sext240 = shl i64 %call.i, 32
  %245 = ashr exact i64 %sext240, 32
  %246 = add nsw i64 %245, -1
  %min.iters.check143 = icmp ult i64 %246, 4
  %n.vec146 = and i64 %246, -4
  %ind.end150 = or i64 %n.vec146, 1
  %cmp.n151 = icmp eq i64 %246, %n.vec146
  br label %for.body.i97

for.cond.cleanup.i91:                             ; preds = %_ZL9logsumexpPKdm.exit.i111, %_ZL15tapenade_sincosPdS_mm.exit
  %total.0.lcssa.i74 = phi double [ 0.000000e+00, %_ZL15tapenade_sincosPdS_mm.exit ], [ %add4.i110, %_ZL9logsumexpPKdm.exit.i111 ]
  %call5.i75 = call i32 @gettimeofday(%struct.timeval* nonnull %end.i68, i8* null) #32
  %tv_sec.i.i76 = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i68, i64 0, i32 0
  %247 = load i64, i64* %tv_sec.i.i76, align 8, !tbaa !143
  %tv_sec1.i.i77 = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i67, i64 0, i32 0
  %248 = load i64, i64* %tv_sec1.i.i77, align 8, !tbaa !143
  %sub.i.i78 = sub nsw i64 %247, %248
  %conv.i.i79 = sitofp i64 %sub.i.i78 to double
  %tv_usec.i.i80 = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i68, i64 0, i32 1
  %249 = load i64, i64* %tv_usec.i.i80, align 8, !tbaa !145
  %tv_usec2.i.i81 = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i67, i64 0, i32 1
  %250 = load i64, i64* %tv_usec2.i.i81, align 8, !tbaa !145
  %sub3.i.i82 = sub nsw i64 %249, %250
  %conv4.i.i83 = sitofp i64 %sub3.i.i82 to double
  %mul.i.i84 = fmul fast double %conv4.i.i83, 0x3EB0C6F7A0B5ED8D
  %add.i.i85 = fadd fast double %mul.i.i84, %conv.i.i79
  %conv5.i.i86 = fptrunc double %add.i.i85 to float
  %conv7.i87 = fpext float %conv5.i.i86 to double
  %call8.i88 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.98, i64 0, i64 0), double %conv7.i87, double %total.0.lcssa.i74)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %244) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %243) #32
  store double %242, double* %7, align 8, !tbaa !43
  %251 = bitcast %struct.timeval* %start10.i69 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %251) #32
  %252 = bitcast %struct.timeval* %end11.i70 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %252) #32
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %call7, i8 0, i64 %mul.i, i1 false)
  %call12.i90 = call i32 @gettimeofday(%struct.timeval* nonnull %start10.i69, i8* null) #32
  br i1 %cmp10374.not.i, label %for.cond.cleanup17.i114, label %for.body18.i128.preheader

for.body18.i128.preheader:                        ; preds = %for.cond.cleanup.i91
  %253 = load double, double* %7, align 8, !tbaa !43, !alias.scope !214, !node !217
  %switch = icmp ult i64 %conv, 2
  %mallocsize.i = add nsw i64 %mul.i, -8
  %_unwrap9.i = add nsw i64 %conv, -2
  %254 = add nsw i64 %conv, -1
  %255 = add nsw i64 %conv, -1
  %min.iters.check201 = icmp ult i64 %255, 4
  %n.vec204 = and i64 %255, -4
  %cmp.n208 = icmp eq i64 %255, %n.vec204
  %min.iters.check166 = icmp ult i64 %254, 4
  %n.vec169 = and i64 %254, -4
  %ind.end173 = sub nsw i64 %_unwrap9.i, %n.vec169
  %256 = getelementptr inbounds i8, i8* %call6, i64 -24
  %257 = bitcast i8* %256 to double*
  %258 = getelementptr inbounds i8, i8* %call7, i64 -24
  %259 = bitcast i8* %258 to double*
  %cmp.n174 = icmp eq i64 %254, %n.vec169
  %xtraiter = and i64 %254, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %iv.next_unwrap.i.prol = add nsw i64 %conv, -1
  %arrayidx1.phi.trans.insert_unwrap.i.prol = getelementptr inbounds double, double* %7, i64 %iv.next_unwrap.i.prol
  %"arrayidx1.phi.trans.insert'ipg_unwrap.i.prol" = getelementptr inbounds double, double* %8, i64 %iv.next_unwrap.i.prol
  %260 = add nsw i64 %conv, -3
  %261 = icmp eq i64 %_unwrap9.i, 0
  br label %for.body18.i128

for.body.i97:                                     ; preds = %_ZL9logsumexpPKdm.exit.i111, %for.body.lr.ph.i73
  %indvars.iv79.i = phi i64 [ 0, %for.body.lr.ph.i73 ], [ %indvars.iv.next80.i, %_ZL9logsumexpPKdm.exit.i111 ]
  %total.075.i = phi double [ 0.000000e+00, %for.body.lr.ph.i73 ], [ %add4.i110, %_ZL9logsumexpPKdm.exit.i111 ]
  %262 = trunc i64 %indvars.iv79.i to i32
  %conv1.i92 = sitofp i32 %262 to double
  %div.i93 = fmul fast double %conv1.i92, 0x3E7AD7F29ABCAF48
  %add.i94 = fadd fast double %div.i93, %242
  store double %add.i94, double* %7, align 8, !tbaa !43
  br i1 %switch.i96, label %_ZL9logsumexpPKdm.exit.i111, label %for.body.for.body_crit_edge.i.i103

for.body7.i.preheader.i98:                        ; preds = %for.body.for.body_crit_edge.i.i103
  %sub.i6068.i = fsub fast double %add.i94, %278
  %263 = call fast double @llvm.exp.f64(double %sub.i6068.i) #32
  br i1 %exitcond39.not.i66.i, label %_ZL9logsumexpPKdm.exit.i111, label %for.body7.for.body7_crit_edge.i.i106.preheader, !llvm.loop !193

for.body7.for.body7_crit_edge.i.i106.preheader:   ; preds = %for.body7.i.preheader.i98
  br i1 %min.iters.check143, label %for.body7.for.body7_crit_edge.i.i106.preheader243, label %vector.ph144

vector.ph144:                                     ; preds = %for.body7.for.body7_crit_edge.i.i106.preheader
  %264 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %263, i32 0
  %broadcast.splatinsert157 = insertelement <2 x double> poison, double %278, i32 0
  %broadcast.splat158 = shufflevector <2 x double> %broadcast.splatinsert157, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert159 = insertelement <2 x double> poison, double %278, i32 0
  %broadcast.splat160 = shufflevector <2 x double> %broadcast.splatinsert159, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body142

vector.body142:                                   ; preds = %vector.body142, %vector.ph144
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next148, %vector.body142 ]
  %vec.phi153 = phi <2 x double> [ %264, %vector.ph144 ], [ %273, %vector.body142 ]
  %vec.phi154 = phi <2 x double> [ zeroinitializer, %vector.ph144 ], [ %274, %vector.body142 ]
  %offset.idx152 = or i64 %index147, 1
  %265 = getelementptr inbounds double, double* %7, i64 %offset.idx152
  %266 = bitcast double* %265 to <2 x double>*
  %wide.load155 = load <2 x double>, <2 x double>* %266, align 8, !tbaa !43, !alias.scope !218
  %267 = getelementptr inbounds double, double* %265, i64 2
  %268 = bitcast double* %267 to <2 x double>*
  %wide.load156 = load <2 x double>, <2 x double>* %268, align 8, !tbaa !43, !alias.scope !218
  %269 = fsub fast <2 x double> %wide.load155, %broadcast.splat158
  %270 = fsub fast <2 x double> %wide.load156, %broadcast.splat160
  %271 = call fast <2 x double> @llvm.exp.v2f64(<2 x double> %269)
  %272 = call fast <2 x double> @llvm.exp.v2f64(<2 x double> %270)
  %273 = fadd fast <2 x double> %271, %vec.phi153
  %274 = fadd fast <2 x double> %272, %vec.phi154
  %index.next148 = add i64 %index147, 4
  %275 = icmp eq i64 %index.next148, %n.vec146
  br i1 %275, label %middle.block140, label %vector.body142, !llvm.loop !221

middle.block140:                                  ; preds = %vector.body142
  %bin.rdx161 = fadd fast <2 x double> %274, %273
  %276 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx161)
  br i1 %cmp.n151, label %_ZL9logsumexpPKdm.exit.i111, label %for.body7.for.body7_crit_edge.i.i106.preheader243

for.body7.for.body7_crit_edge.i.i106.preheader243: ; preds = %for.body7.for.body7_crit_edge.i.i106.preheader, %middle.block140
  %indvars.iv.next.i6272.i.ph = phi i64 [ 1, %for.body7.for.body7_crit_edge.i.i106.preheader ], [ %ind.end150, %middle.block140 ]
  %add.i6171.i.ph = phi double [ %263, %for.body7.for.body7_crit_edge.i.i106.preheader ], [ %276, %middle.block140 ]
  br label %for.body7.for.body7_crit_edge.i.i106

for.body.for.body_crit_edge.i.i103:               ; preds = %for.body.i97, %for.body.for.body_crit_edge.i.i103
  %indvars.iv.next38.i67.i = phi i64 [ %indvars.iv.next38.i.i101, %for.body.for.body_crit_edge.i.i103 ], [ 1, %for.body.i97 ]
  %277 = phi double [ %278, %for.body.for.body_crit_edge.i.i103 ], [ %add.i94, %for.body.i97 ]
  %arrayidx1.phi.trans.insert.i.i99 = getelementptr inbounds double, double* %7, i64 %indvars.iv.next38.i67.i
  %.pre.i.i100 = load double, double* %arrayidx1.phi.trans.insert.i.i99, align 8, !tbaa !43, !alias.scope !218
  %278 = call fast double @llvm.maxnum.f64(double %277, double %.pre.i.i100) #32
  %indvars.iv.next38.i.i101 = add nuw nsw i64 %indvars.iv.next38.i67.i, 1
  %exitcond39.not.i.i102 = icmp eq i64 %indvars.iv.next38.i.i101, %conv
  br i1 %exitcond39.not.i.i102, label %for.body7.i.preheader.i98, label %for.body.for.body_crit_edge.i.i103, !llvm.loop !198

for.body7.for.body7_crit_edge.i.i106:             ; preds = %for.body7.for.body7_crit_edge.i.i106.preheader243, %for.body7.for.body7_crit_edge.i.i106
  %indvars.iv.next.i6272.i = phi i64 [ %indvars.iv.next.i62.i, %for.body7.for.body7_crit_edge.i.i106 ], [ %indvars.iv.next.i6272.i.ph, %for.body7.for.body7_crit_edge.i.i106.preheader243 ]
  %add.i6171.i = phi double [ %add.i61.i, %for.body7.for.body7_crit_edge.i.i106 ], [ %add.i6171.i.ph, %for.body7.for.body7_crit_edge.i.i106.preheader243 ]
  %arrayidx9.phi.trans.insert.i.i104 = getelementptr inbounds double, double* %7, i64 %indvars.iv.next.i6272.i
  %.pre40.i.i105 = load double, double* %arrayidx9.phi.trans.insert.i.i104, align 8, !tbaa !43, !alias.scope !218
  %sub.i60.i = fsub fast double %.pre40.i.i105, %278
  %279 = call fast double @llvm.exp.f64(double %sub.i60.i) #32
  %add.i61.i = fadd fast double %279, %add.i6171.i
  %indvars.iv.next.i62.i = add nuw nsw i64 %indvars.iv.next.i6272.i, 1
  %exitcond.not.i63.i = icmp eq i64 %indvars.iv.next.i62.i, %conv
  br i1 %exitcond.not.i63.i, label %_ZL9logsumexpPKdm.exit.i111, label %for.body7.for.body7_crit_edge.i.i106, !llvm.loop !222

_ZL9logsumexpPKdm.exit.i111:                      ; preds = %for.body7.for.body7_crit_edge.i.i106, %middle.block140, %for.body7.i.preheader.i98, %for.body.i97
  %A.0.lcssa42.i.i107 = phi double [ %278, %for.body7.i.preheader.i98 ], [ %add.i94, %for.body.i97 ], [ %278, %middle.block140 ], [ %278, %for.body7.for.body7_crit_edge.i.i106 ]
  %sema.0.lcssa.i.i108 = phi double [ %263, %for.body7.i.preheader.i98 ], [ %.mux.i95, %for.body.i97 ], [ %276, %middle.block140 ], [ %add.i61.i, %for.body7.for.body7_crit_edge.i.i106 ]
  %280 = call fast double @llvm.log.f64(double %sema.0.lcssa.i.i108) #32
  %add13.i.i109 = fadd fast double %A.0.lcssa42.i.i107, %total.075.i
  %add4.i110 = fadd fast double %add13.i.i109, %280
  %indvars.iv.next80.i = add nuw nsw i64 %indvars.iv79.i, 1
  %exitcond81.not.i = icmp eq i64 %indvars.iv.next80.i, %conv5
  br i1 %exitcond81.not.i, label %for.cond.cleanup.i91, label %for.body.i97, !llvm.loop !223

for.cond.cleanup17.i114:                          ; preds = %diffe_ZL9logsumexpPKdm.exit, %for.cond.cleanup.i91
  %call22.i112 = call i32 @gettimeofday(%struct.timeval* nonnull %end11.i70, i8* null) #32
  %tv_sec.i47.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end11.i70, i64 0, i32 0
  %281 = load i64, i64* %tv_sec.i47.i, align 8, !tbaa !143
  %tv_sec1.i48.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start10.i69, i64 0, i32 0
  %282 = load i64, i64* %tv_sec1.i48.i, align 8, !tbaa !143
  %tv_usec.i51.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end11.i70, i64 0, i32 1
  %283 = load i64, i64* %tv_usec.i51.i, align 8, !tbaa !145
  %tv_usec2.i52.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start10.i69, i64 0, i32 1
  %284 = load i64, i64* %tv_usec2.i52.i, align 8, !tbaa !145
  br i1 %cmp9131.not, label %_ZL13enzyme_sincosPdS_mm.exit, label %for.body.i.i120.preheader

for.body.i.i120.preheader:                        ; preds = %for.cond.cleanup17.i114
  %sext241 = shl i64 %call.i, 32
  %285 = ashr exact i64 %sext241, 32
  %min.iters.check222 = icmp ult i64 %285, 4
  br i1 %min.iters.check222, label %for.body.i.i120.preheader242, label %vector.ph223

vector.ph223:                                     ; preds = %for.body.i.i120.preheader
  %n.mod.vf224 = and i64 %call.i, 3
  %n.vec225 = sub nsw i64 %285, %n.mod.vf224
  br label %vector.body221

vector.body221:                                   ; preds = %vector.body221, %vector.ph223
  %index226 = phi i64 [ 0, %vector.ph223 ], [ %index.next227, %vector.body221 ]
  %vec.phi230 = phi <2 x double> [ zeroinitializer, %vector.ph223 ], [ %290, %vector.body221 ]
  %vec.phi231 = phi <2 x double> [ zeroinitializer, %vector.ph223 ], [ %291, %vector.body221 ]
  %286 = getelementptr inbounds double, double* %8, i64 %index226
  %287 = bitcast double* %286 to <2 x double>*
  %wide.load232 = load <2 x double>, <2 x double>* %287, align 8, !tbaa !43
  %288 = getelementptr inbounds double, double* %286, i64 2
  %289 = bitcast double* %288 to <2 x double>*
  %wide.load233 = load <2 x double>, <2 x double>* %289, align 8, !tbaa !43
  %290 = fadd fast <2 x double> %wide.load232, %vec.phi230
  %291 = fadd fast <2 x double> %wide.load233, %vec.phi231
  %index.next227 = add i64 %index226, 4
  %292 = icmp eq i64 %index.next227, %n.vec225
  br i1 %292, label %middle.block219, label %vector.body221, !llvm.loop !224

middle.block219:                                  ; preds = %vector.body221
  %bin.rdx234 = fadd fast <2 x double> %291, %290
  %293 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx234)
  %cmp.n229 = icmp eq i64 %n.mod.vf224, 0
  br i1 %cmp.n229, label %_ZL13enzyme_sincosPdS_mm.exit, label %for.body.i.i120.preheader242

for.body.i.i120.preheader242:                     ; preds = %for.body.i.i120.preheader, %middle.block219
  %indvars.iv.i.i115.ph = phi i64 [ 0, %for.body.i.i120.preheader ], [ %n.vec225, %middle.block219 ]
  %res.07.i.i116.ph = phi double [ 0.000000e+00, %for.body.i.i120.preheader ], [ %293, %middle.block219 ]
  br label %for.body.i.i120

for.body.i.i120:                                  ; preds = %for.body.i.i120.preheader242, %for.body.i.i120
  %indvars.iv.i.i115 = phi i64 [ %indvars.iv.next.i.i118, %for.body.i.i120 ], [ %indvars.iv.i.i115.ph, %for.body.i.i120.preheader242 ]
  %res.07.i.i116 = phi double [ %add.i46.i, %for.body.i.i120 ], [ %res.07.i.i116.ph, %for.body.i.i120.preheader242 ]
  %arrayidx.i.i117 = getelementptr inbounds double, double* %8, i64 %indvars.iv.i.i115
  %294 = load double, double* %arrayidx.i.i117, align 8, !tbaa !43
  %add.i46.i = fadd fast double %294, %res.07.i.i116
  %indvars.iv.next.i.i118 = add nuw nsw i64 %indvars.iv.i.i115, 1
  %exitcond.not.i.i119 = icmp eq i64 %indvars.iv.next.i.i118, %conv
  br i1 %exitcond.not.i.i119, label %_ZL13enzyme_sincosPdS_mm.exit, label %for.body.i.i120, !llvm.loop !225

for.body18.i128:                                  ; preds = %for.body18.i128.preheader, %diffe_ZL9logsumexpPKdm.exit
  %indvars.iv.i125 = phi i64 [ %indvars.iv.next.i126, %diffe_ZL9logsumexpPKdm.exit ], [ 0, %for.body18.i128.preheader ]
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  br i1 %switch, label %diffe_ZL9logsumexpPKdm.exit, label %for.body.for.body_crit_edge.preheader.i

for.body.for.body_crit_edge.preheader.i:          ; preds = %for.body18.i128
  %malloccall.i = call noalias nonnull i8* @malloc(i64 %mallocsize.i) #32, !noalias !214, !node !217
  %_malloccache.i = bitcast i8* %malloccall.i to double*, !node !217
  br label %for.body.for.body_crit_edge.i

for.body7.for.body7_crit_edge.preheader.i:        ; preds = %for.body.for.body_crit_edge.i
  %sub43.i = fsub fast double %253, %312
  %295 = call fast double @llvm.exp.f64(double %sub43.i) #32
  br i1 %min.iters.check201, label %for.body7.for.body7_crit_edge.i.preheader, label %vector.ph202

vector.ph202:                                     ; preds = %for.body7.for.body7_crit_edge.preheader.i
  %296 = insertelement <2 x double> <double poison, double 0.000000e+00>, double %295, i32 0
  %broadcast.splatinsert213 = insertelement <2 x double> poison, double %312, i32 0
  %broadcast.splat214 = shufflevector <2 x double> %broadcast.splatinsert213, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert215 = insertelement <2 x double> poison, double %312, i32 0
  %broadcast.splat216 = shufflevector <2 x double> %broadcast.splatinsert215, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body200

vector.body200:                                   ; preds = %vector.body200, %vector.ph202
  %index205 = phi i64 [ 0, %vector.ph202 ], [ %index.next206, %vector.body200 ]
  %vec.phi209 = phi <2 x double> [ %296, %vector.ph202 ], [ %306, %vector.body200 ]
  %vec.phi210 = phi <2 x double> [ zeroinitializer, %vector.ph202 ], [ %307, %vector.body200 ]
  %297 = or i64 %index205, 1
  %298 = getelementptr inbounds double, double* %7, i64 %297, !node !217
  %299 = bitcast double* %298 to <2 x double>*
  %wide.load211 = load <2 x double>, <2 x double>* %299, align 8, !tbaa !43, !alias.scope !214
  %300 = getelementptr inbounds double, double* %298, i64 2
  %301 = bitcast double* %300 to <2 x double>*
  %wide.load212 = load <2 x double>, <2 x double>* %301, align 8, !tbaa !43, !alias.scope !214
  %302 = fsub fast <2 x double> %wide.load211, %broadcast.splat214
  %303 = fsub fast <2 x double> %wide.load212, %broadcast.splat216
  %304 = call fast <2 x double> @llvm.exp.v2f64(<2 x double> %302)
  %305 = call fast <2 x double> @llvm.exp.v2f64(<2 x double> %303)
  %306 = fadd fast <2 x double> %304, %vec.phi209
  %307 = fadd fast <2 x double> %305, %vec.phi210
  %index.next206 = add i64 %index205, 4
  %308 = icmp eq i64 %index.next206, %n.vec204
  br i1 %308, label %middle.block198, label %vector.body200, !llvm.loop !226

middle.block198:                                  ; preds = %vector.body200
  %bin.rdx217 = fadd fast <2 x double> %307, %306
  %309 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx217)
  br i1 %cmp.n208, label %invertfor.cond.cleanup6.loopexit.i, label %for.body7.for.body7_crit_edge.i.preheader

for.body7.for.body7_crit_edge.i.preheader:        ; preds = %for.body7.for.body7_crit_edge.preheader.i, %middle.block198
  %iv1.i.ph = phi i64 [ 0, %for.body7.for.body7_crit_edge.preheader.i ], [ %n.vec204, %middle.block198 ]
  %add45.i.ph = phi double [ %295, %for.body7.for.body7_crit_edge.preheader.i ], [ %309, %middle.block198 ]
  br label %for.body7.for.body7_crit_edge.i

for.body.for.body_crit_edge.i:                    ; preds = %for.body.for.body_crit_edge.i, %for.body.for.body_crit_edge.preheader.i
  %iv.i = phi i64 [ %iv.next.i, %for.body.for.body_crit_edge.i ], [ 0, %for.body.for.body_crit_edge.preheader.i ]
  %310 = phi double [ %312, %for.body.for.body_crit_edge.i ], [ %253, %for.body.for.body_crit_edge.preheader.i ], !node !217
  %311 = getelementptr inbounds double, double* %_malloccache.i, i64 %iv.i, !node !217
  store double %310, double* %311, align 8, !noalias !214, !invariant.group !227
  %iv.next.i = add nuw nsw i64 %iv.i, 1
  %arrayidx1.phi.trans.insert.i = getelementptr inbounds double, double* %7, i64 %iv.next.i, !node !217
  %.pre.i = load double, double* %arrayidx1.phi.trans.insert.i, align 8, !tbaa !43, !alias.scope !214, !invariant.group !228, !node !217
  %312 = call fast double @llvm.maxnum.f64(double %310, double %.pre.i) #32, !node !217
  %indvars.iv.next38.i = add nuw nsw i64 %iv.i, 2
  %exitcond39.not.i = icmp eq i64 %indvars.iv.next38.i, %conv
  br i1 %exitcond39.not.i, label %for.body7.for.body7_crit_edge.preheader.i, label %for.body.for.body_crit_edge.i, !llvm.loop !198

for.body7.for.body7_crit_edge.i:                  ; preds = %for.body7.for.body7_crit_edge.i.preheader, %for.body7.for.body7_crit_edge.i
  %iv1.i = phi i64 [ %iv.next2.i, %for.body7.for.body7_crit_edge.i ], [ %iv1.i.ph, %for.body7.for.body7_crit_edge.i.preheader ]
  %add45.i = phi double [ %add.i19, %for.body7.for.body7_crit_edge.i ], [ %add45.i.ph, %for.body7.for.body7_crit_edge.i.preheader ], !node !217
  %iv.next2.i = add nuw nsw i64 %iv1.i, 1
  %arrayidx9.phi.trans.insert.i = getelementptr inbounds double, double* %7, i64 %iv.next2.i, !node !217
  %.pre40.i = load double, double* %arrayidx9.phi.trans.insert.i, align 8, !tbaa !43, !alias.scope !214, !invariant.group !229, !node !217
  %sub.i = fsub fast double %.pre40.i, %312, !node !217
  %313 = call fast double @llvm.exp.f64(double %sub.i) #32, !node !217
  %add.i19 = fadd fast double %313, %add45.i, !node !217
  %indvars.iv.next.i20 = add nuw nsw i64 %iv1.i, 2
  %exitcond.not.i21 = icmp eq i64 %indvars.iv.next.i20, %conv
  br i1 %exitcond.not.i21, label %invertfor.cond.cleanup6.loopexit.i, label %for.body7.for.body7_crit_edge.i, !llvm.loop !230

invertfor.body.for.body_crit_edge.preheader.i:    ; preds = %invertfor.body.for.body_crit_edge.i, %invertfor.body.for.body_crit_edge.i.prol.loopexit
  %.lcssa257 = phi double [ %.lcssa257.unr.ph, %invertfor.body.for.body_crit_edge.i.prol.loopexit ], [ %335, %invertfor.body.for.body_crit_edge.i ]
  %314 = fadd fast double %.lcssa257, %315
  call void @free(i8* nonnull %malloccall.i) #32, !noalias !214
  br label %diffe_ZL9logsumexpPKdm.exit

invertfor.cond3.preheader.loopexit.i:             ; preds = %invertfor.body7.for.body7_crit_edge.i, %middle.block163
  %.lcssa41 = phi double [ %364, %middle.block163 ], [ %367, %invertfor.body7.for.body7_crit_edge.i ]
  %315 = fmul fast double %341, %295
  %316 = fsub fast double %.lcssa41, %315
  br i1 %lcmp.mod.not, label %invertfor.body.for.body_crit_edge.i.prol.loopexit, label %invertfor.body.for.body_crit_edge.i.prol

invertfor.body.for.body_crit_edge.i.prol:         ; preds = %invertfor.cond3.preheader.loopexit.i
  %.pre_unwrap.i.prol = load double, double* %arrayidx1.phi.trans.insert_unwrap.i.prol, align 8, !tbaa !43, !alias.scope !214, !invariant.group !228
  %317 = getelementptr inbounds double, double* %_malloccache.i, i64 %_unwrap9.i
  %318 = load double, double* %317, align 8, !noalias !214, !invariant.group !227
  %319 = fcmp fast olt double %318, %.pre_unwrap.i.prol
  %320 = select fast i1 %319, double 0.000000e+00, double %316
  %321 = select fast i1 %319, double %316, double 0.000000e+00
  %322 = load double, double* %"arrayidx1.phi.trans.insert'ipg_unwrap.i.prol", align 8, !noalias !214
  %323 = fadd fast double %321, %322
  store double %323, double* %"arrayidx1.phi.trans.insert'ipg_unwrap.i.prol", align 8, !noalias !214
  br label %invertfor.body.for.body_crit_edge.i.prol.loopexit

invertfor.body.for.body_crit_edge.i.prol.loopexit: ; preds = %invertfor.body.for.body_crit_edge.i.prol, %invertfor.cond3.preheader.loopexit.i
  %.lcssa257.unr.ph = phi double [ %320, %invertfor.body.for.body_crit_edge.i.prol ], [ undef, %invertfor.cond3.preheader.loopexit.i ]
  %"iv'ac.0.i.unr.ph" = phi i64 [ %260, %invertfor.body.for.body_crit_edge.i.prol ], [ %_unwrap9.i, %invertfor.cond3.preheader.loopexit.i ]
  %"'de3.0.i.unr.ph" = phi double [ %320, %invertfor.body.for.body_crit_edge.i.prol ], [ %316, %invertfor.cond3.preheader.loopexit.i ]
  br i1 %261, label %invertfor.body.for.body_crit_edge.preheader.i, label %invertfor.body.for.body_crit_edge.i

invertfor.body.for.body_crit_edge.i:              ; preds = %invertfor.body.for.body_crit_edge.i.prol.loopexit, %invertfor.body.for.body_crit_edge.i
  %"iv'ac.0.i" = phi i64 [ %340, %invertfor.body.for.body_crit_edge.i ], [ %"iv'ac.0.i.unr.ph", %invertfor.body.for.body_crit_edge.i.prol.loopexit ]
  %"'de3.0.i" = phi double [ %335, %invertfor.body.for.body_crit_edge.i ], [ %"'de3.0.i.unr.ph", %invertfor.body.for.body_crit_edge.i.prol.loopexit ]
  %iv.next_unwrap.i = add nuw nsw i64 %"iv'ac.0.i", 1
  %arrayidx1.phi.trans.insert_unwrap.i = getelementptr inbounds double, double* %7, i64 %iv.next_unwrap.i
  %.pre_unwrap.i = load double, double* %arrayidx1.phi.trans.insert_unwrap.i, align 8, !tbaa !43, !alias.scope !214, !invariant.group !228
  %324 = getelementptr inbounds double, double* %_malloccache.i, i64 %"iv'ac.0.i"
  %325 = load double, double* %324, align 8, !noalias !214, !invariant.group !227
  %326 = fcmp fast olt double %325, %.pre_unwrap.i
  %327 = select fast i1 %326, double 0.000000e+00, double %"'de3.0.i"
  %328 = select fast i1 %326, double %"'de3.0.i", double 0.000000e+00
  %"arrayidx1.phi.trans.insert'ipg_unwrap.i" = getelementptr inbounds double, double* %8, i64 %iv.next_unwrap.i
  %329 = load double, double* %"arrayidx1.phi.trans.insert'ipg_unwrap.i", align 8, !noalias !214
  %330 = fadd fast double %328, %329
  store double %330, double* %"arrayidx1.phi.trans.insert'ipg_unwrap.i", align 8, !noalias !214
  %331 = add nsw i64 %"iv'ac.0.i", -1
  %arrayidx1.phi.trans.insert_unwrap.i.1 = getelementptr inbounds double, double* %7, i64 %"iv'ac.0.i"
  %.pre_unwrap.i.1 = load double, double* %arrayidx1.phi.trans.insert_unwrap.i.1, align 8, !tbaa !43, !alias.scope !214, !invariant.group !228
  %332 = getelementptr inbounds double, double* %_malloccache.i, i64 %331
  %333 = load double, double* %332, align 8, !noalias !214, !invariant.group !227
  %334 = fcmp fast olt double %333, %.pre_unwrap.i.1
  %335 = select fast i1 %334, double 0.000000e+00, double %327
  %336 = select fast i1 %334, double %327, double 0.000000e+00
  %"arrayidx1.phi.trans.insert'ipg_unwrap.i.1" = getelementptr inbounds double, double* %8, i64 %"iv'ac.0.i"
  %337 = load double, double* %"arrayidx1.phi.trans.insert'ipg_unwrap.i.1", align 8, !noalias !214
  %338 = fadd fast double %336, %337
  store double %338, double* %"arrayidx1.phi.trans.insert'ipg_unwrap.i.1", align 8, !noalias !214
  %339 = icmp eq i64 %331, 0
  %340 = add nsw i64 %"iv'ac.0.i", -2
  br i1 %339, label %invertfor.body.for.body_crit_edge.preheader.i, label %invertfor.body.for.body_crit_edge.i

invertfor.cond.cleanup6.loopexit.i:               ; preds = %for.body7.for.body7_crit_edge.i, %middle.block198
  %add.i19.lcssa = phi double [ %309, %middle.block198 ], [ %add.i19, %for.body7.for.body7_crit_edge.i ]
  %341 = fdiv fast double 1.000000e+00, %add.i19.lcssa
  br i1 %min.iters.check166, label %invertfor.body7.for.body7_crit_edge.i.preheader, label %vector.ph167

vector.ph167:                                     ; preds = %invertfor.cond.cleanup6.loopexit.i
  %broadcast.splatinsert182 = insertelement <2 x double> poison, double %312, i32 0
  %broadcast.splat183 = shufflevector <2 x double> %broadcast.splatinsert182, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert184 = insertelement <2 x double> poison, double %312, i32 0
  %broadcast.splat185 = shufflevector <2 x double> %broadcast.splatinsert184, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert186 = insertelement <2 x double> poison, double %341, i32 0
  %broadcast.splat187 = shufflevector <2 x double> %broadcast.splatinsert186, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert188 = insertelement <2 x double> poison, double %341, i32 0
  %broadcast.splat189 = shufflevector <2 x double> %broadcast.splatinsert188, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body165

vector.body165:                                   ; preds = %vector.body165, %vector.ph167
  %index170 = phi i64 [ 0, %vector.ph167 ], [ %index.next171, %vector.body165 ]
  %vec.phi176 = phi <2 x double> [ <double 1.000000e+00, double 0.000000e+00>, %vector.ph167 ], [ %353, %vector.body165 ]
  %vec.phi177 = phi <2 x double> [ zeroinitializer, %vector.ph167 ], [ %354, %vector.body165 ]
  %offset.idx175 = sub i64 %_unwrap9.i, %index170
  %342 = add nuw nsw i64 %offset.idx175, 1
  %343 = getelementptr inbounds double, double* %7, i64 %offset.idx175
  %344 = bitcast double* %343 to <2 x double>*
  %wide.load178 = load <2 x double>, <2 x double>* %344, align 8, !tbaa !43, !alias.scope !214
  %reverse179 = shufflevector <2 x double> %wide.load178, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %345 = getelementptr inbounds double, double* %257, i64 %342
  %346 = bitcast double* %345 to <2 x double>*
  %wide.load180 = load <2 x double>, <2 x double>* %346, align 8, !tbaa !43, !alias.scope !214
  %reverse181 = shufflevector <2 x double> %wide.load180, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %347 = fsub fast <2 x double> %reverse179, %broadcast.splat183
  %348 = fsub fast <2 x double> %reverse181, %broadcast.splat185
  %349 = call fast <2 x double> @llvm.exp.v2f64(<2 x double> %347)
  %350 = call fast <2 x double> @llvm.exp.v2f64(<2 x double> %348)
  %351 = fmul fast <2 x double> %349, %broadcast.splat187
  %352 = fmul fast <2 x double> %350, %broadcast.splat189
  %353 = fsub fast <2 x double> %vec.phi176, %351
  %354 = fsub fast <2 x double> %vec.phi177, %352
  %355 = getelementptr inbounds double, double* %8, i64 %offset.idx175
  %356 = bitcast double* %355 to <2 x double>*
  %wide.load190 = load <2 x double>, <2 x double>* %356, align 8, !noalias !214
  %reverse191 = shufflevector <2 x double> %wide.load190, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %357 = getelementptr inbounds double, double* %259, i64 %342
  %358 = bitcast double* %357 to <2 x double>*
  %wide.load192 = load <2 x double>, <2 x double>* %358, align 8, !noalias !214
  %reverse193 = shufflevector <2 x double> %wide.load192, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %359 = fadd fast <2 x double> %351, %reverse191
  %360 = fadd fast <2 x double> %352, %reverse193
  %reverse194 = shufflevector <2 x double> %359, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %361 = bitcast double* %355 to <2 x double>*
  store <2 x double> %reverse194, <2 x double>* %361, align 8, !noalias !214
  %reverse195 = shufflevector <2 x double> %360, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %362 = bitcast double* %357 to <2 x double>*
  store <2 x double> %reverse195, <2 x double>* %362, align 8, !noalias !214
  %index.next171 = add i64 %index170, 4
  %363 = icmp eq i64 %index.next171, %n.vec169
  br i1 %363, label %middle.block163, label %vector.body165, !llvm.loop !231

middle.block163:                                  ; preds = %vector.body165
  %bin.rdx196 = fadd fast <2 x double> %354, %353
  %364 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx196)
  br i1 %cmp.n174, label %invertfor.cond3.preheader.loopexit.i, label %invertfor.body7.for.body7_crit_edge.i.preheader

invertfor.body7.for.body7_crit_edge.i.preheader:  ; preds = %invertfor.cond.cleanup6.loopexit.i, %middle.block163
  %"iv1'ac.0.i.ph" = phi i64 [ %_unwrap9.i, %invertfor.cond.cleanup6.loopexit.i ], [ %ind.end173, %middle.block163 ]
  %".lcssa'de.2.i.ph" = phi double [ 1.000000e+00, %invertfor.cond.cleanup6.loopexit.i ], [ %364, %middle.block163 ]
  br label %invertfor.body7.for.body7_crit_edge.i

invertfor.body7.for.body7_crit_edge.i:            ; preds = %invertfor.body7.for.body7_crit_edge.i.preheader, %invertfor.body7.for.body7_crit_edge.i
  %"iv1'ac.0.i" = phi i64 [ %371, %invertfor.body7.for.body7_crit_edge.i ], [ %"iv1'ac.0.i.ph", %invertfor.body7.for.body7_crit_edge.i.preheader ]
  %".lcssa'de.2.i" = phi double [ %367, %invertfor.body7.for.body7_crit_edge.i ], [ %".lcssa'de.2.i.ph", %invertfor.body7.for.body7_crit_edge.i.preheader ]
  %iv.next2_unwrap.i = add nuw nsw i64 %"iv1'ac.0.i", 1
  %arrayidx9.phi.trans.insert_unwrap.i = getelementptr inbounds double, double* %7, i64 %iv.next2_unwrap.i
  %.pre40_unwrap.i = load double, double* %arrayidx9.phi.trans.insert_unwrap.i, align 8, !tbaa !43, !alias.scope !214, !invariant.group !229
  %sub_unwrap.i = fsub fast double %.pre40_unwrap.i, %312
  %365 = call fast double @llvm.exp.f64(double %sub_unwrap.i) #32
  %366 = fmul fast double %365, %341
  %367 = fsub fast double %".lcssa'de.2.i", %366
  %"arrayidx9.phi.trans.insert'ipg_unwrap.i" = getelementptr inbounds double, double* %8, i64 %iv.next2_unwrap.i
  %368 = load double, double* %"arrayidx9.phi.trans.insert'ipg_unwrap.i", align 8, !noalias !214
  %369 = fadd fast double %366, %368
  store double %369, double* %"arrayidx9.phi.trans.insert'ipg_unwrap.i", align 8, !noalias !214
  %370 = icmp eq i64 %"iv1'ac.0.i", 0
  %371 = add nsw i64 %"iv1'ac.0.i", -1
  br i1 %370, label %invertfor.cond3.preheader.loopexit.i, label %invertfor.body7.for.body7_crit_edge.i, !llvm.loop !232

diffe_ZL9logsumexpPKdm.exit:                      ; preds = %for.body18.i128, %invertfor.body.for.body_crit_edge.preheader.i
  %"'de.0.i" = phi double [ %314, %invertfor.body.for.body_crit_edge.preheader.i ], [ 1.000000e+00, %for.body18.i128 ]
  %372 = load double, double* %8, align 8, !noalias !214
  %373 = fadd fast double %372, %"'de.0.i"
  store double %373, double* %8, align 8, !noalias !214
  %indvars.iv.next.i126 = add nuw i64 %indvars.iv.i125, 1
  %exitcond.not.i127 = icmp eq i64 %indvars.iv.next.i126, %conv5
  br i1 %exitcond.not.i127, label %for.cond.cleanup17.i114, label %for.body18.i128, !llvm.loop !234

_ZL13enzyme_sincosPdS_mm.exit:                    ; preds = %for.body.i.i120, %middle.block219, %for.cond.cleanup17.i114
  %res.0.lcssa.i.i121 = phi double [ 0.000000e+00, %for.cond.cleanup17.i114 ], [ %293, %middle.block219 ], [ %add.i46.i, %for.body.i.i120 ]
  %sub3.i53.i = sub nsw i64 %283, %284
  %conv4.i54.i = sitofp i64 %sub3.i53.i to double
  %mul.i55.i = fmul fast double %conv4.i54.i, 0x3EB0C6F7A0B5ED8D
  %sub.i49.i = sub nsw i64 %281, %282
  %conv.i50.i = sitofp i64 %sub.i49.i to double
  %add.i56.i = fadd fast double %mul.i55.i, %conv.i50.i
  %conv5.i57.i = fptrunc double %add.i56.i to float
  %conv24.i122 = fpext float %conv5.i57.i to double
  %call26.i123 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([42 x i8], [42 x i8]* @.str.99, i64 0, i64 0), double %conv24.i122, double %res.0.lcssa.i.i121)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %252) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %251) #32
  br label %return

for.body:                                         ; preds = %for.body, %for.body.preheader
  %indvars.iv = phi i64 [ 0, %for.body.preheader ], [ %indvars.iv.next, %for.body ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %374 = trunc i64 %indvars.iv.next to i32
  %conv10 = sitofp i32 %374 to double
  %div = fdiv fast double 0x400921FB54411744, %conv10
  %arrayidx11 = getelementptr inbounds double, double* %7, i64 %indvars.iv
  store double %div, double* %arrayidx11, align 8, !tbaa !43
  %exitcond.not = icmp eq i64 %indvars.iv.next, %umax
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !235

return:                                           ; preds = %_ZL13enzyme_sincosPdS_mm.exit, %if.then
  %retval.0 = phi i32 [ 1, %if.then ], [ 0, %_ZL13enzyme_sincosPdS_mm.exit ]
  ret i32 %retval.0
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept17invalid_operationD0Ev(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !17
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !11
  %2 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #32
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #32
  %4 = bitcast %"class.adept::invalid_operation"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #34
  ret void
}

; Function Attrs: nounwind uwtable willreturn mustprogress
define linkonce_odr dso_local i8* @_ZNK5adept9exception4whatEv(%"class.adept::exception"* nonnull dereferenceable(40) %this) unnamed_addr #20 comdat align 2 {
entry:
  %_M_p.i.i = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 0, i32 0
  %0 = load i8*, i8** %_M_p.i.i, align 8, !tbaa !11
  ret i8* %0
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept15array_exceptionD0Ev(%"class.adept::array_exception"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::array_exception", %"class.adept::array_exception"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !17
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::array_exception", %"class.adept::array_exception"* %this, i64 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !11
  %2 = getelementptr inbounds %"class.adept::array_exception", %"class.adept::array_exception"* %this, i64 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #32
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::array_exception", %"class.adept::array_exception"* %this, i64 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #32
  %4 = bitcast %"class.adept::array_exception"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #34
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept9exceptionD0Ev(%"class.adept::exception"* nonnull dereferenceable(40) %this) unnamed_addr #4 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !17
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !11
  %2 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #32
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #32
  %4 = bitcast %"class.adept::exception"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #34
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) local_unnamed_addr #21 comdat {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #32
  tail call void @_ZSt9terminatev() #37
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare dso_local void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #6

; Function Attrs: nounwind
declare dso_local void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8)) unnamed_addr #1

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32), %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32)) local_unnamed_addr #0

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept20stack_already_activeD0Ev(%"class.adept::stack_already_active"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::stack_already_active", %"class.adept::stack_already_active"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !17
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::stack_already_active", %"class.adept::stack_already_active"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !11
  %2 = getelementptr inbounds %"class.adept::stack_already_active", %"class.adept::stack_already_active"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #32
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::stack_already_active", %"class.adept::stack_already_active"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #32
  %4 = bitcast %"class.adept::stack_already_active"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #34
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept25gradients_not_initializedD0Ev(%"class.adept::gradients_not_initialized"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::gradients_not_initialized", %"class.adept::gradients_not_initialized"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !17
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::gradients_not_initialized", %"class.adept::gradients_not_initialized"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !11
  %2 = getelementptr inbounds %"class.adept::gradients_not_initialized", %"class.adept::gradients_not_initialized"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #32
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::gradients_not_initialized", %"class.adept::gradients_not_initialized"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #32
  %4 = bitcast %"class.adept::gradients_not_initialized"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #34
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept21feature_not_availableD0Ev(%"class.adept::feature_not_available"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::feature_not_available", %"class.adept::feature_not_available"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !17
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::feature_not_available", %"class.adept::feature_not_available"* %this, i64 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !11
  %2 = getelementptr inbounds %"class.adept::feature_not_available", %"class.adept::feature_not_available"* %this, i64 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #32
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::feature_not_available", %"class.adept::feature_not_available"* %this, i64 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #32
  %4 = bitcast %"class.adept::feature_not_available"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #34
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept41dependents_or_independents_not_identifiedD0Ev(%"class.adept::dependents_or_independents_not_identified"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::dependents_or_independents_not_identified", %"class.adept::dependents_or_independents_not_identified"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !17
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::dependents_or_independents_not_identified", %"class.adept::dependents_or_independents_not_identified"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !11
  %2 = getelementptr inbounds %"class.adept::dependents_or_independents_not_identified", %"class.adept::dependents_or_independents_not_identified"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #32
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::dependents_or_independents_not_identified", %"class.adept::dependents_or_independents_not_identified"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #32
  %4 = bitcast %"class.adept::dependents_or_independents_not_identified"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #34
  ret void
}

; Function Attrs: nofree nounwind willreturn
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #22

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept5StackC2Eb(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i1 zeroext %activate_immediately) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %gap_list_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4
  %0 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_prev.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1
  %1 = bitcast %"class.adept::Stack"* %this to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(96) %1, i8 0, i64 96, i1 false)
  store %"struct.std::__detail::_List_node_base"* %0, %"struct.std::__detail::_List_node_base"** %_M_prev.i.i.i.i.i, align 8, !tbaa !65
  %_M_next.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %0, %"struct.std::__detail::_List_node_base"** %_M_next.i.i.i.i.i, align 8, !tbaa !28
  %_M_size.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i64 0, i64* %_M_size.i.i.i.i.i, align 8, !tbaa !236
  %coerce.dive = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5, i32 0
  store %"struct.std::__detail::_List_node_base"* %0, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %i_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 6
  %is_recording_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 12
  %2 = bitcast i32* %i_gradient_ to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(18) %2, i8 0, i64 18, i1 false)
  store i8 1, i8* %is_recording_, align 2, !tbaa !72
  %have_openmp_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 13
  store i8 0, i8* %have_openmp_, align 1, !tbaa !237
  %openmp_manually_disabled_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 14
  store i8 0, i8* %openmp_manually_disabled_, align 4, !tbaa !238
  %call.i12 = invoke noalias nonnull dereferenceable(8388608) i8* @_Znam(i64 8388608) #36
          to label %call.i.noexc unwind label %lpad

call.i.noexc:                                     ; preds = %entry
  %multiplier_.i10 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %3 = bitcast double** %multiplier_.i10 to i8**
  store i8* %call.i12, i8** %3, align 8, !tbaa !37
  %call3.i13 = invoke noalias nonnull dereferenceable(4194304) i8* @_Znam(i64 4194304) #36
          to label %call3.i.noexc unwind label %lpad

call3.i.noexc:                                    ; preds = %call.i.noexc
  %index_.i11 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %4 = bitcast i32** %index_.i11 to i8**
  store i8* %call3.i13, i8** %4, align 8, !tbaa !38
  %n_allocated_operations_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 6
  store i32 1048576, i32* %n_allocated_operations_.i, align 4, !tbaa !75
  %call5.i14 = invoke noalias nonnull dereferenceable(8388608) i8* @_Znam(i64 8388608) #36
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %call3.i.noexc
  %5 = bitcast %"class.adept::Stack"* %this to i8**
  store i8* %call5.i14, i8** %5, align 8, !tbaa !35
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 4
  store i32 1048576, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  invoke void @_ZN5adept5Stack13new_recordingEv(%"class.adept::Stack"* nonnull dereferenceable(149) %this)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont
  br i1 %activate_immediately, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont3
  invoke void @_ZN5adept5Stack8activateEv(%"class.adept::Stack"* nonnull dereferenceable(149) %this)
          to label %if.end unwind label %lpad

lpad:                                             ; preds = %if.then, %invoke.cont, %call3.i.noexc, %call.i.noexc, %entry
  %6 = landingpad { i8*, i32 }
          cleanup
  %7 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i.i.i.i, align 8, !tbaa !28
  %cmp.not12.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %7, %0
  br i1 %cmp.not12.i.i, label %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit, label %while.body.i.i

while.body.i.i:                                   ; preds = %lpad, %while.body.i.i
  %__cur.013.i.i = phi %"struct.std::__detail::_List_node_base"* [ %8, %while.body.i.i ], [ %7, %lpad ]
  %_M_next4.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %__cur.013.i.i, i64 0, i32 0
  %8 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next4.i.i, align 8, !tbaa !28
  %9 = bitcast %"struct.std::__detail::_List_node_base"* %__cur.013.i.i to i8*
  tail call void @_ZdlPv(i8* %9) #32
  %cmp.not.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %8, %0
  br i1 %cmp.not.i.i, label %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit, label %while.body.i.i, !llvm.loop !30

_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit: ; preds = %while.body.i.i, %lpad
  %_M_start.i.i6 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %10 = load i32*, i32** %_M_start.i.i6, align 8, !tbaa !33
  %tobool.not.i.i.i7 = icmp eq i32* %10, null
  br i1 %tobool.not.i.i.i7, label %_ZNSt6vectorIiSaIiEED2Ev.exit9, label %if.then.i.i.i8

if.then.i.i.i8:                                   ; preds = %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit
  %11 = bitcast i32* %10 to i8*
  tail call void @_ZdlPv(i8* nonnull %11) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit9

_ZNSt6vectorIiSaIiEED2Ev.exit9:                   ; preds = %if.then.i.i.i8, %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %12 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
  %tobool.not.i.i.i = icmp eq i32* %12, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit9
  %13 = bitcast i32* %12 to i8*
  tail call void @_ZdlPv(i8* nonnull %13) #32
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %if.then.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit9
  %statement_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %14 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i, align 8, !tbaa !35
  %tobool.not.i = icmp eq %"struct.adept::internal::Statement"* %14, null
  br i1 %tobool.not.i, label %if.end.i, label %delete.notnull.i

delete.notnull.i:                                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %15 = bitcast %"struct.adept::internal::Statement"* %14 to i8*
  tail call void @_ZdaPv(i8* %15) #34
  br label %if.end.i

if.end.i:                                         ; preds = %delete.notnull.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %multiplier_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %16 = load double*, double** %multiplier_.i, align 8, !tbaa !37
  %tobool3.not.i = icmp eq double* %16, null
  br i1 %tobool3.not.i, label %if.end9.i, label %delete.notnull7.i

delete.notnull7.i:                                ; preds = %if.end.i
  %17 = bitcast double* %16 to i8*
  tail call void @_ZdaPv(i8* %17) #34
  br label %if.end9.i

if.end9.i:                                        ; preds = %delete.notnull7.i, %if.end.i
  %index_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %18 = load i32*, i32** %index_.i, align 8, !tbaa !38
  %tobool10.not.i = icmp eq i32* %18, null
  br i1 %tobool10.not.i, label %_ZN5adept8internal16StackStorageOrigD2Ev.exit, label %delete.notnull14.i

delete.notnull14.i:                               ; preds = %if.end9.i
  %19 = bitcast i32* %18 to i8*
  tail call void @_ZdaPv(i8* %19) #34
  br label %_ZN5adept8internal16StackStorageOrigD2Ev.exit

_ZN5adept8internal16StackStorageOrigD2Ev.exit:    ; preds = %delete.notnull14.i, %if.end9.i
  resume { i8*, i32 } %6

if.end:                                           ; preds = %if.then, %invoke.cont3
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #23

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #18

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept5Stack13new_recordingEv(%"class.adept::Stack"* nonnull dereferenceable(149) %this) local_unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %n_operations_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 5
  store i32 0, i32* %n_operations_.i, align 8, !tbaa !74
  %n_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  store i32 0, i32* %n_statements_.i, align 8, !tbaa !40
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %0 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
  %_M_finish.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %1 = load i32*, i32** %_M_finish.i.i.i, align 8, !tbaa !76
  %tobool.not.i.i.i = icmp eq i32* %1, %0
  br i1 %tobool.not.i.i.i, label %_ZN5adept5Stack18clear_independentsEv.exit, label %invoke.cont.i.i.i

invoke.cont.i.i.i:                                ; preds = %entry
  store i32* %0, i32** %_M_finish.i.i.i, align 8, !tbaa !76
  br label %_ZN5adept5Stack18clear_independentsEv.exit

_ZN5adept5Stack18clear_independentsEv.exit:       ; preds = %invoke.cont.i.i.i, %entry
  %_M_start.i.i4 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %2 = load i32*, i32** %_M_start.i.i4, align 8, !tbaa !33
  %_M_finish.i.i.i5 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %3 = load i32*, i32** %_M_finish.i.i.i5, align 8, !tbaa !76
  %tobool.not.i.i.i6 = icmp eq i32* %3, %2
  br i1 %tobool.not.i.i.i6, label %_ZN5adept5Stack16clear_dependentsEv.exit, label %invoke.cont.i.i.i7

invoke.cont.i.i.i7:                               ; preds = %_ZN5adept5Stack18clear_independentsEv.exit
  store i32* %2, i32** %_M_finish.i.i.i5, align 8, !tbaa !76
  br label %_ZN5adept5Stack16clear_dependentsEv.exit

_ZN5adept5Stack16clear_dependentsEv.exit:         ; preds = %invoke.cont.i.i.i7, %_ZN5adept5Stack18clear_independentsEv.exit
  %gradients_initialized_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 10
  store i8 0, i8* %gradients_initialized_.i, align 8, !tbaa !39
  %i_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 6
  %4 = load i32, i32* %i_gradient_, align 8, !tbaa !62
  %add = add nsw i32 %4, 1
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  store i32 %add, i32* %max_gradient_, align 8, !tbaa !63
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 4
  %5 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %cmp.not.i = icmp sgt i32 %5, 0
  br i1 %cmp.not.i, label %entry.if.end_crit_edge.i, label %if.then.i

entry.if.end_crit_edge.i:                         ; preds = %_ZN5adept5Stack16clear_dependentsEv.exit
  %statement_.phi.trans.insert.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %.pre.i = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i, align 8, !tbaa !35
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

if.then.i:                                        ; preds = %_ZN5adept5Stack16clear_dependentsEv.exit
  %mul.i.i = shl nsw i32 %5, 1
  %conv.i.i = sext i32 %mul.i.i to i64
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i, i64 8)
  %7 = extractvalue { i64, i1 } %6, 1
  %8 = extractvalue { i64, i1 } %6, 0
  %9 = select i1 %7, i64 -1, i64 %8
  %call.i.i = tail call noalias nonnull i8* @_Znam(i64 %9) #36
  %10 = bitcast %"class.adept::Stack"* %this to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !35
  %isnull.i.i = icmp eq i8* %11, null
  br i1 %isnull.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %if.then.i
  tail call void @_ZdaPv(i8* nonnull %11) #34
  %.pre7.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  %.pre.pre = load i32, i32* %n_operations_.i, align 8, !tbaa !74
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i: ; preds = %delete.notnull.i.i, %if.then.i
  %.pre = phi i32 [ 0, %if.then.i ], [ %.pre.pre, %delete.notnull.i.i ]
  %.pre7.i = phi i32 [ 0, %if.then.i ], [ %.pre7.pre.i, %delete.notnull.i.i ]
  store i8* %call.i.i, i8** %10, align 8, !tbaa !35
  store i32 %mul.i.i, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %12 = bitcast i8* %call.i.i to %"struct.adept::internal::Statement"*
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, %entry.if.end_crit_edge.i
  %13 = phi i32 [ 0, %entry.if.end_crit_edge.i ], [ %.pre, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %14 = phi i32 [ 0, %entry.if.end_crit_edge.i ], [ %.pre7.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %15 = phi %"struct.adept::internal::Statement"* [ %.pre.i, %entry.if.end_crit_edge.i ], [ %12, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %idxprom.i = sext i32 %14 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %15, i64 %idxprom.i, i32 0
  store i32 -1, i32* %index.i, align 4, !tbaa !41
  %inc.i = add nsw i32 %14, 1
  store i32 %inc.i, i32* %n_statements_.i, align 8, !tbaa !40
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %15, i64 %idxprom.i, i32 1
  store i32 %13, i32* %end_plus_one.i, align 4, !tbaa !45
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept5ArrayILi1EdLb1EE6resizeEPKib(%"class.adept::Array.30"* nonnull dereferenceable(32) %this, i32* %dim, i1 zeroext %force_contiguous) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %result.i.i = alloca double*, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp6 = alloca %"class.std::__cxx11::basic_string", align 8
  %storage_ = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %this, i64 0, i32 2
  %0 = load %"class.adept::Storage.14"*, %"class.adept::Storage.14"** %storage_, align 8, !tbaa !176
  %tobool.not = icmp eq %"class.adept::Storage.14"* %0, null
  br i1 %tobool.not, label %for.body.critedge, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage.14"* nonnull dereferenceable(20) %0)
  store %"class.adept::Storage.14"* null, %"class.adept::Storage.14"** %storage_, align 8, !tbaa !176
  br label %for.body.critedge

for.body.critedge:                                ; preds = %if.then, %entry
  %1 = load i32, i32* %dim, align 4, !tbaa !46
  %cmp4 = icmp slt i32 %1, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.body.critedge
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %2 = bitcast i8* %exception to %"class.adept::invalid_dimension"*
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #32
  %4 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #32
  invoke void @_ZN5adept8internal18exception_locationB5cxx11EPKci(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp6, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.88, i64 0, i64 0), i32 1969)
          to label %invoke.cont unwind label %ehcleanup11.thread

invoke.cont:                                      ; preds = %if.then5
  %call3.i.i.i57 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp6, i64 0, i64 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.87, i64 0, i64 0), i64 34)
          to label %call3.i.i.i.noexc unwind label %lpad7

call3.i.i.i.noexc:                                ; preds = %invoke.cont
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %6 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !9, !alias.scope !239
  %_M_p.i.i30.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %_M_p.i.i30.i.i, align 8, !tbaa !11
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 2
  %arraydecay.i.i.i.i = bitcast %union.anon* %8 to i8*
  %cmp.i.i.i = icmp eq i8* %7, %arraydecay.i.i.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %call3.i.i.i.noexc
  %arraydecay.i.i.i = bitcast %union.anon* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %arraydecay.i.i.i, i8* nonnull align 8 dereferenceable(16) %7, i64 16, i1 false) #32
  br label %invoke.cont8

if.else.i.i:                                      ; preds = %call3.i.i.i.noexc
  %_M_p.i28.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %7, i8** %_M_p.i28.i.i, align 8, !tbaa !11, !alias.scope !239
  %_M_allocated_capacity.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 2, i32 0
  %9 = load i64, i64* %_M_allocated_capacity.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %9, i64* %_M_allocated_capacity.i.i.i, align 8, !tbaa !12, !alias.scope !239
  br label %invoke.cont8

invoke.cont8:                                     ; preds = %if.else.i.i, %if.then.i.i
  %_M_string_length.i27.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 1
  %10 = load i64, i64* %_M_string_length.i27.i.i, align 8, !tbaa !2
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %10, i64* %_M_string_length.i.i.i, align 8, !tbaa !2, !alias.scope !239
  %11 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i57 to %union.anon**
  store %union.anon* %8, %union.anon** %11, align 8, !tbaa !11
  store i64 0, i64* %_M_string_length.i27.i.i, align 8, !tbaa !2
  store i8 0, i8* %arraydecay.i.i.i.i, align 8, !tbaa !12
  invoke void @_ZN5adept17invalid_dimensionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_dimension"* nonnull dereferenceable(40) %2, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont8
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_dimensionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad9

ehcleanup11.thread:                               ; preds = %if.then5
  %12 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #32
  br label %cleanup.action

lpad7:                                            ; preds = %invoke.cont
  %13 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad9:                                            ; preds = %invoke.cont10, %invoke.cont8
  %cleanup.isactive.0 = phi i1 [ false, %invoke.cont10 ], [ true, %invoke.cont8 ]
  %14 = landingpad { i8*, i32 }
          cleanup
  %_M_p.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  %15 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !11
  %arraydecay.i.i.i.i58 = bitcast %union.anon* %5 to i8*
  %cmp.i.i.i59 = icmp eq i8* %15, %arraydecay.i.i.i.i58
  br i1 %cmp.i.i.i59, label %ehcleanup, label %if.then.i.i60

if.then.i.i60:                                    ; preds = %lpad9
  call void @_ZdlPv(i8* %15) #32
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i60, %lpad9, %lpad7
  %.pn = phi { i8*, i32 } [ %13, %lpad7 ], [ %14, %lpad9 ], [ %14, %if.then.i.i60 ]
  %cleanup.isactive.1 = phi i1 [ true, %lpad7 ], [ %cleanup.isactive.0, %lpad9 ], [ %cleanup.isactive.0, %if.then.i.i60 ]
  %_M_p.i.i.i.i61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp6, i64 0, i32 0, i32 0
  %16 = load i8*, i8** %_M_p.i.i.i.i61, align 8, !tbaa !11
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp6, i64 0, i32 2
  %arraydecay.i.i.i.i62 = bitcast %union.anon* %17 to i8*
  %cmp.i.i.i63 = icmp eq i8* %16, %arraydecay.i.i.i.i62
  br i1 %cmp.i.i.i63, label %ehcleanup11, label %if.then.i.i64

if.then.i.i64:                                    ; preds = %ehcleanup
  call void @_ZdlPv(i8* %16) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #32
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

ehcleanup11:                                      ; preds = %ehcleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #32
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

cleanup.action:                                   ; preds = %ehcleanup11, %if.then.i.i64, %ehcleanup11.thread
  %.pn.pn73 = phi { i8*, i32 } [ %12, %ehcleanup11.thread ], [ %.pn, %ehcleanup11 ], [ %.pn, %if.then.i.i64 ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

if.else:                                          ; preds = %for.body.critedge
  %cmp16 = icmp eq i32 %1, 0
  br i1 %cmp16, label %_ZN5adept5ArrayILi1EdLb1EE5clearEv.exit, label %for.end, !llvm.loop !242

_ZN5adept5ArrayILi1EdLb1EE5clearEv.exit:          ; preds = %if.else
  %data_.i = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %this, i64 0, i32 1
  store double* null, double** %data_.i, align 8, !tbaa !149
  %arrayidx.i.i = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %this, i64 0, i32 3, i32 0, i64 0
  store i32 0, i32* %arrayidx.i.i, align 4, !tbaa !46
  %arrayidx.i4.i = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %this, i64 0, i32 4, i32 0, i64 0
  store i32 0, i32* %arrayidx.i4.i, align 4, !tbaa !46
  br label %return

for.end:                                          ; preds = %if.else
  %arrayidx3.i = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %this, i64 0, i32 3, i32 0, i64 0
  store i32 %1, i32* %arrayidx3.i, align 4, !tbaa !46
  %18 = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %this, i64 0, i32 4, i32 0, i64 0
  store i32 1, i32* %18, align 4
  %call32 = tail call noalias nonnull dereferenceable(24) i8* @_Znwm(i64 24) #36
  %n_.i = getelementptr inbounds i8, i8* %call32, i64 8
  %19 = bitcast i8* %n_.i to i32*
  store i32 %1, i32* %19, align 8, !tbaa !243
  %n_links_.i = getelementptr inbounds i8, i8* %call32, i64 12
  %20 = bitcast i8* %n_links_.i to i32*
  store i32 1, i32* %20, align 4, !tbaa !245
  %gradient_index_.i = getelementptr inbounds i8, i8* %call32, i64 16
  %21 = bitcast i8* %gradient_index_.i to i32*
  store i32 -1, i32* %21, align 8, !tbaa !246
  %22 = bitcast double** %result.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #32
  %23 = bitcast double** %result.i.i to i8**
  %conv1.i.i74 = zext i32 %1 to i64
  %mul.i.i = shl nuw nsw i64 %conv1.i.i74, 3
  %call2.i.i = call i32 @posix_memalign(i8** nonnull %23, i64 16, i64 %mul.i.i) #32
  %cmp3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %cmp3.not.i.i, label %invoke.cont34, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %for.end
  %exception.i.i = call i8* @__cxa_allocate_exception(i64 8) #32
  %24 = bitcast i8* %exception.i.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt9bad_alloc, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %24, align 8, !tbaa !17
  invoke void @__cxa_throw(i8* nonnull %exception.i.i, i8* bitcast (i8** @_ZTISt9bad_alloc to i8*), i8* bitcast (void (%"class.std::bad_alloc"*)* @_ZNSt9bad_allocD1Ev to i8*)) #33
          to label %.noexc unwind label %lpad33

.noexc:                                           ; preds = %if.then4.i.i
  unreachable

invoke.cont34:                                    ; preds = %for.end
  %25 = load double*, double** %result.i.i, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #32
  %data_.i67 = bitcast i8* %call32 to double**
  store double* %25, double** %data_.i67, align 8, !tbaa !247
  %26 = load i32, i32* @_ZN5adept8internal26n_storage_objects_created_E, align 4, !tbaa !46
  %inc.i = add nsw i32 %26, 1
  store i32 %inc.i, i32* @_ZN5adept8internal26n_storage_objects_created_E, align 4, !tbaa !46
  %27 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %n_gradients_registered_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %27, i64 0, i32 9
  %28 = load i32, i32* %n_gradients_registered_.i, align 4, !tbaa !51
  %add.i = add nsw i32 %28, %1
  store i32 %add.i, i32* %n_gradients_registered_.i, align 4, !tbaa !51
  %gap_list_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %27, i64 0, i32 4
  %29 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %30 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i, align 8, !tbaa !28
  %cmp.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %30, %29
  br i1 %cmp.i.i, label %if.end49.i, label %for.body.i

for.body.i:                                       ; preds = %invoke.cont34, %for.inc.i
  %it.sroa.0.0110.i = phi %"struct.std::__detail::_List_node_base"* [ %37, %for.inc.i ], [ %30, %invoke.cont34 ]
  %_M_storage.i.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.0110.i, i64 1
  %31 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i.i to %"struct.adept::Gap"*
  %end.i = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %31, i64 0, i32 1
  %32 = load i32, i32* %end.i, align 4, !tbaa !52
  %add9.i = add nsw i32 %32, 1
  %start.i = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i.i to i32*
  %33 = load i32, i32* %start.i, align 4, !tbaa !54
  %sub.i = sub i32 %add9.i, %33
  %cmp.i = icmp sgt i32 %sub.i, %1
  br i1 %cmp.i, label %if.then11.i, label %if.else.i

if.then11.i:                                      ; preds = %for.body.i
  %start.i.le = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i.i to i32*
  %add16.i = add nsw i32 %33, %1
  store i32 %add16.i, i32* %start.i.le, align 4, !tbaa !54
  br label %_ZN5adept5Stack21do_register_gradientsERKi.exit

if.else.i:                                        ; preds = %for.body.i
  %cmp17.i = icmp eq i32 %sub.i, %1
  br i1 %cmp17.i, label %if.then18.i, label %for.inc.i

if.then18.i:                                      ; preds = %if.else.i
  %_M_node.i83.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %27, i64 0, i32 5, i32 0
  %34 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i83.i, align 8, !tbaa !55
  %cmp.i85.i = icmp eq %"struct.std::__detail::_List_node_base"* %34, %it.sroa.0.0110.i
  %_M_size.i.i.i77.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %27, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %35 = load i64, i64* %_M_size.i.i.i77.i, align 8, !tbaa !56
  %sub.i.i.i78.i = add i64 %35, -1
  store i64 %sub.i.i.i78.i, i64* %_M_size.i.i.i77.i, align 8, !tbaa !56
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %it.sroa.0.0110.i) #32
  %36 = bitcast %"struct.std::__detail::_List_node_base"* %it.sroa.0.0110.i to i8*
  call void @_ZdlPv(i8* nonnull %36) #32
  br i1 %cmp.i85.i, label %if.then22.i, label %_ZN5adept5Stack21do_register_gradientsERKi.exit

if.then22.i:                                      ; preds = %if.then18.i
  store %"struct.std::__detail::_List_node_base"* %29, %"struct.std::__detail::_List_node_base"** %_M_node.i83.i, align 8, !tbaa.struct !60
  br label %_ZN5adept5Stack21do_register_gradientsERKi.exit

for.inc.i:                                        ; preds = %if.else.i
  %_M_next.i73.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.0110.i, i64 0, i32 0
  %37 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i73.i, align 8, !tbaa !28
  %cmp.i80.not.i = icmp eq %"struct.std::__detail::_List_node_base"* %37, %29
  br i1 %cmp.i80.not.i, label %if.end49.i, label %for.body.i, !llvm.loop !61

if.end49.i:                                       ; preds = %for.inc.i, %invoke.cont34
  %i_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %27, i64 0, i32 6
  %38 = load i32, i32* %i_gradient_.i, align 8, !tbaa !62
  %add50.i = add nsw i32 %38, %1
  store i32 %add50.i, i32* %i_gradient_.i, align 8, !tbaa !62
  %max_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %27, i64 0, i32 8
  %39 = load i32, i32* %max_gradient_.i, align 8, !tbaa !63
  %cmp52.i = icmp sgt i32 %add50.i, %39
  br i1 %cmp52.i, label %if.then53.i, label %_ZN5adept5Stack21do_register_gradientsERKi.exit

if.then53.i:                                      ; preds = %if.end49.i
  store i32 %add50.i, i32* %max_gradient_.i, align 8, !tbaa !63
  br label %_ZN5adept5Stack21do_register_gradientsERKi.exit

_ZN5adept5Stack21do_register_gradientsERKi.exit:  ; preds = %if.end49.i, %if.then53.i, %if.then11.i, %if.then18.i, %if.then22.i
  %retval.3.i = phi i32 [ %33, %if.then22.i ], [ %33, %if.then11.i ], [ %33, %if.then18.i ], [ %38, %if.then53.i ], [ %38, %if.end49.i ]
  store i32 %retval.3.i, i32* %21, align 8, !tbaa !246
  %40 = bitcast %"class.adept::Storage.14"** %storage_ to i8**
  store i8* %call32, i8** %40, align 8, !tbaa !176
  %41 = load double*, double** %data_.i67, align 8, !tbaa !247
  %data_ = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %this, i64 0, i32 1
  store double* %41, double** %data_, align 8, !tbaa !149
  br label %return

return:                                           ; preds = %_ZN5adept5Stack21do_register_gradientsERKi.exit, %_ZN5adept5ArrayILi1EdLb1EE5clearEv.exit
  %.sink = phi i32 [ -9999, %_ZN5adept5ArrayILi1EdLb1EE5clearEv.exit ], [ %retval.3.i, %_ZN5adept5Stack21do_register_gradientsERKi.exit ]
  %value_.i.i = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %this, i64 0, i32 0, i32 0
  store i32 %.sink, i32* %value_.i.i, align 4, !tbaa !151
  ret void

lpad33:                                           ; preds = %if.then4.i.i
  %42 = landingpad { i8*, i32 }
          cleanup
  call void @_ZdlPv(i8* nonnull %call32) #34
  br label %eh.resume

eh.resume:                                        ; preds = %lpad33, %cleanup.action, %ehcleanup11, %if.then.i.i64
  %.pn.pn.pn = phi { i8*, i32 } [ %42, %lpad33 ], [ %.pn.pn73, %cleanup.action ], [ %.pn, %ehcleanup11 ], [ %.pn, %if.then.i.i64 ]
  resume { i8*, i32 } %.pn.pn.pn

unreachable:                                      ; preds = %invoke.cont10
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage.14"* nonnull dereferenceable(20) %this) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp2 = alloca %"class.std::__cxx11::basic_string", align 8
  %n_links_ = getelementptr inbounds %"class.adept::Storage.14", %"class.adept::Storage.14"* %this, i64 0, i32 2
  %0 = load i32, i32* %n_links_, align 4, !tbaa !245
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %1 = bitcast i8* %exception to %"class.adept::invalid_operation"*
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #32
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #32
  invoke void @_ZN5adept8internal18exception_locationB5cxx11EPKci(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp2, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.90, i64 0, i64 0), i32 112)
          to label %invoke.cont unwind label %ehcleanup7.thread

invoke.cont:                                      ; preds = %if.then
  %call3.i.i.i17 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp2, i64 0, i64 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.89, i64 0, i64 0), i64 57)
          to label %call3.i.i.i.noexc unwind label %lpad3

call3.i.i.i.noexc:                                ; preds = %invoke.cont
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %5 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %4, %union.anon** %5, align 8, !tbaa !9, !alias.scope !248
  %_M_p.i.i30.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 0, i32 0
  %6 = load i8*, i8** %_M_p.i.i30.i.i, align 8, !tbaa !11
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 2
  %arraydecay.i.i.i.i = bitcast %union.anon* %7 to i8*
  %cmp.i.i.i = icmp eq i8* %6, %arraydecay.i.i.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %call3.i.i.i.noexc
  %arraydecay.i.i.i = bitcast %union.anon* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %arraydecay.i.i.i, i8* nonnull align 8 dereferenceable(16) %6, i64 16, i1 false) #32
  br label %invoke.cont4

if.else.i.i:                                      ; preds = %call3.i.i.i.noexc
  %_M_p.i28.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %6, i8** %_M_p.i28.i.i, align 8, !tbaa !11, !alias.scope !248
  %_M_allocated_capacity.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 2, i32 0
  %8 = load i64, i64* %_M_allocated_capacity.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %8, i64* %_M_allocated_capacity.i.i.i, align 8, !tbaa !12, !alias.scope !248
  br label %invoke.cont4

invoke.cont4:                                     ; preds = %if.else.i.i, %if.then.i.i
  %_M_string_length.i27.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 1
  %9 = load i64, i64* %_M_string_length.i27.i.i, align 8, !tbaa !2
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %9, i64* %_M_string_length.i.i.i, align 8, !tbaa !2, !alias.scope !248
  %10 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i17 to %union.anon**
  store %union.anon* %7, %union.anon** %10, align 8, !tbaa !11
  store i64 0, i64* %_M_string_length.i27.i.i, align 8, !tbaa !2
  store i8 0, i8* %arraydecay.i.i.i.i, align 8, !tbaa !12
  invoke void @_ZN5adept17invalid_operationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %1, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont4
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_operationE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad5

ehcleanup7.thread:                                ; preds = %if.then
  %11 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #32
  br label %cleanup.action

lpad3:                                            ; preds = %invoke.cont
  %12 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad5:                                            ; preds = %invoke.cont6, %invoke.cont4
  %cleanup.isactive.0 = phi i1 [ false, %invoke.cont6 ], [ true, %invoke.cont4 ]
  %13 = landingpad { i8*, i32 }
          cleanup
  %_M_p.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  %14 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !11
  %arraydecay.i.i.i.i18 = bitcast %union.anon* %4 to i8*
  %cmp.i.i.i19 = icmp eq i8* %14, %arraydecay.i.i.i.i18
  br i1 %cmp.i.i.i19, label %ehcleanup, label %if.then.i.i20

if.then.i.i20:                                    ; preds = %lpad5
  call void @_ZdlPv(i8* %14) #32
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i20, %lpad5, %lpad3
  %.pn = phi { i8*, i32 } [ %12, %lpad3 ], [ %13, %lpad5 ], [ %13, %if.then.i.i20 ]
  %cleanup.isactive.1 = phi i1 [ true, %lpad3 ], [ %cleanup.isactive.0, %lpad5 ], [ %cleanup.isactive.0, %if.then.i.i20 ]
  %_M_p.i.i.i.i21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp2, i64 0, i32 0, i32 0
  %15 = load i8*, i8** %_M_p.i.i.i.i21, align 8, !tbaa !11
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp2, i64 0, i32 2
  %arraydecay.i.i.i.i22 = bitcast %union.anon* %16 to i8*
  %cmp.i.i.i23 = icmp eq i8* %15, %arraydecay.i.i.i.i22
  br i1 %cmp.i.i.i23, label %ehcleanup7, label %if.then.i.i24

if.then.i.i24:                                    ; preds = %ehcleanup
  call void @_ZdlPv(i8* %15) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #32
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

ehcleanup7:                                       ; preds = %ehcleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #32
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

cleanup.action:                                   ; preds = %ehcleanup7, %if.then.i.i24, %ehcleanup7.thread
  %.pn.pn29 = phi { i8*, i32 } [ %11, %ehcleanup7.thread ], [ %.pn, %ehcleanup7 ], [ %.pn, %if.then.i.i24 ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

if.else:                                          ; preds = %entry
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %n_links_, align 4, !tbaa !245
  %cmp11.not = icmp eq i32 %dec, 0
  br i1 %cmp11.not, label %delete.notnull, label %if.end13

delete.notnull:                                   ; preds = %if.else
  %17 = bitcast %"class.adept::Storage.14"* %this to i8**
  %18 = load i8*, i8** %17, align 8, !tbaa !247
  tail call void @free(i8* %18) #32
  %gradient_index_.i = getelementptr inbounds %"class.adept::Storage.14", %"class.adept::Storage.14"* %this, i64 0, i32 3
  %19 = load i32, i32* %gradient_index_.i, align 8, !tbaa !246
  %cmp.i = icmp sgt i32 %19, -1
  br i1 %cmp.i, label %if.then.i, label %_ZN5adept7StorageIdED2Ev.exit

if.then.i:                                        ; preds = %delete.notnull
  %20 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %n_.i = getelementptr inbounds %"class.adept::Storage.14", %"class.adept::Storage.14"* %this, i64 0, i32 1
  invoke void @_ZN5adept5Stack20unregister_gradientsERKiS2_(%"class.adept::Stack"* nonnull dereferenceable(149) %20, i32* nonnull align 4 dereferenceable(4) %gradient_index_.i, i32* nonnull align 4 dereferenceable(4) %n_.i)
          to label %_ZN5adept7StorageIdED2Ev.exit unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %if.then.i
  %21 = landingpad { i8*, i32 }
          catch i8* null
  %22 = extractvalue { i8*, i32 } %21, 0
  tail call void @__clang_call_terminate(i8* %22) #37
  unreachable

_ZN5adept7StorageIdED2Ev.exit:                    ; preds = %if.then.i, %delete.notnull
  %23 = load i32, i32* @_ZN5adept8internal26n_storage_objects_deleted_E, align 4, !tbaa !46
  %inc.i = add nsw i32 %23, 1
  store i32 %inc.i, i32* @_ZN5adept8internal26n_storage_objects_deleted_E, align 4, !tbaa !46
  %24 = bitcast %"class.adept::Storage.14"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %24) #34
  br label %if.end13

if.end13:                                         ; preds = %_ZN5adept7StorageIdED2Ev.exit, %if.else
  ret void

eh.resume:                                        ; preds = %cleanup.action, %ehcleanup7, %if.then.i.i24
  %.pn.pn28 = phi { i8*, i32 } [ %.pn, %ehcleanup7 ], [ %.pn.pn29, %cleanup.action ], [ %.pn, %if.then.i.i24 ]
  resume { i8*, i32 } %.pn.pn28

unreachable:                                      ; preds = %invoke.cont6
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN5adept8internal18exception_locationB5cxx11EPKci(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result, i8* %file, i32 %line) local_unnamed_addr #24 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %s = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %0 = bitcast %"class.std::__cxx11::basic_stringstream"* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 392, i8* nonnull %0) #32
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull dereferenceable(128) %s)
  %add.ptr = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1
  %1 = bitcast %"class.std::basic_ostream.base"* %add.ptr to %"class.std::basic_ostream"*
  %call1.i11 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.93, i64 0, i64 0), i64 5)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %tobool.not.i = icmp eq i8* %file, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %invoke.cont
  %2 = bitcast %"class.std::basic_ostream.base"* %add.ptr to i8**
  %vtable.i = load i8*, i8** %2, align 8, !tbaa !17
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i64 -24
  %3 = bitcast i8* %vbase.offset.ptr.i to i64*
  %vbase.offset.i = load i64, i64* %3, align 8
  %4 = bitcast %"class.std::basic_ostream.base"* %add.ptr to i8*
  %add.ptr.i = getelementptr inbounds i8, i8* %4, i64 %vbase.offset.i
  %5 = bitcast i8* %add.ptr.i to %"class.std::basic_ios"*
  %_M_streambuf_state.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 32
  %6 = bitcast i8* %_M_streambuf_state.i.i.i to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !251
  %or.i.i.i = or i32 %7, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull dereferenceable(264) %5, i32 %or.i.i.i)
          to label %invoke.cont1 unwind label %lpad

if.else.i:                                        ; preds = %invoke.cont
  %call.i.i12 = call i64 @strlen(i8* nonnull dereferenceable(1) %file) #32
  %call1.i13 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull %file, i64 %call.i.i12)
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %if.else.i, %if.then.i
  %call1.i18 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i64 1)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont1
  %call6 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %1, i32 %line)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont3
  %call1.i23 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call6, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.94, i64 0, i64 0), i64 1)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont5
  %_M_stringbuf.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %agg.result, %"class.std::__cxx11::basic_stringbuf"* nonnull dereferenceable(104) %_M_stringbuf.i)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %invoke.cont7
  %8 = load i32 (...)**, i32 (...)*** bitcast ([10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE to i32 (...)***), align 8
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** %8, i32 (...)*** %9, align 8, !tbaa !17
  %10 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i32 (...)***), align 8
  %vbase.offset.ptr4.i.i = getelementptr i32 (...)*, i32 (...)** %8, i64 -3
  %11 = bitcast i32 (...)** %vbase.offset.ptr4.i.i to i64*
  %vbase.offset.i.i = load i64, i64* %11, align 8
  %add.ptr.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i
  %12 = bitcast i8* %add.ptr.i.i to i32 (...)***
  store i32 (...)** %10, i32 (...)*** %12, align 8, !tbaa !17
  %13 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i32 (...)***), align 8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** %13, i32 (...)*** %14, align 8, !tbaa !17
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %15, align 8, !tbaa !17
  %_M_p.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 0, i32 0
  %16 = load i8*, i8** %_M_p.i.i.i.i.i.i.i, align 8, !tbaa !11
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 2
  %arraydecay.i.i.i.i.i.i.i = bitcast %union.anon* %17 to i8*
  %cmp.i.i.i.i.i.i = icmp eq i8* %16, %arraydecay.i.i.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %invoke.cont9
  call void @_ZdlPv(i8* %16) #32
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %if.then.i.i.i.i.i, %invoke.cont9
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %15, align 8, !tbaa !17
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i) #32
  %18 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)***), align 8
  store i32 (...)** %18, i32 (...)*** %9, align 8, !tbaa !17
  %19 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr3.i.i.i.i = getelementptr i32 (...)*, i32 (...)** %18, i64 -3
  %20 = bitcast i32 (...)** %vbase.offset.ptr3.i.i.i.i to i64*
  %vbase.offset.i.i.i.i = load i64, i64* %20, align 8
  %add.ptr.i.i.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i.i.i
  %21 = bitcast i8* %add.ptr.i.i.i.i to i32 (...)***
  store i32 (...)** %19, i32 (...)*** %21, align 8, !tbaa !17
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %22, align 8, !tbaa !136
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216) %23) #32
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %0) #32
  ret void

lpad:                                             ; preds = %invoke.cont7, %invoke.cont5, %invoke.cont3, %invoke.cont1, %if.else.i, %if.then.i, %entry
  %24 = landingpad { i8*, i32 }
          cleanup
  %25 = load i32 (...)**, i32 (...)*** bitcast ([10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE to i32 (...)***), align 8
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** %25, i32 (...)*** %26, align 8, !tbaa !17
  %27 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i32 (...)***), align 8
  %vbase.offset.ptr4.i.i26 = getelementptr i32 (...)*, i32 (...)** %25, i64 -3
  %28 = bitcast i32 (...)** %vbase.offset.ptr4.i.i26 to i64*
  %vbase.offset.i.i27 = load i64, i64* %28, align 8
  %add.ptr.i.i28 = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i27
  %29 = bitcast i8* %add.ptr.i.i28 to i32 (...)***
  store i32 (...)** %27, i32 (...)*** %29, align 8, !tbaa !17
  %30 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i32 (...)***), align 8
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** %30, i32 (...)*** %31, align 8, !tbaa !17
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %32, align 8, !tbaa !17
  %_M_p.i.i.i.i.i.i.i29 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 0, i32 0
  %33 = load i8*, i8** %_M_p.i.i.i.i.i.i.i29, align 8, !tbaa !11
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 2
  %arraydecay.i.i.i.i.i.i.i30 = bitcast %union.anon* %34 to i8*
  %cmp.i.i.i.i.i.i31 = icmp eq i8* %33, %arraydecay.i.i.i.i.i.i.i30
  br i1 %cmp.i.i.i.i.i.i31, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit37, label %if.then.i.i.i.i.i32

if.then.i.i.i.i.i32:                              ; preds = %lpad
  call void @_ZdlPv(i8* %33) #32
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit37

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit37: ; preds = %if.then.i.i.i.i.i32, %lpad
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %32, align 8, !tbaa !17
  %_M_buf_locale.i.i.i.i33 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i33) #32
  %35 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)***), align 8
  store i32 (...)** %35, i32 (...)*** %26, align 8, !tbaa !17
  %36 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr3.i.i.i.i34 = getelementptr i32 (...)*, i32 (...)** %35, i64 -3
  %37 = bitcast i32 (...)** %vbase.offset.ptr3.i.i.i.i34 to i64*
  %vbase.offset.i.i.i.i35 = load i64, i64* %37, align 8
  %add.ptr.i.i.i.i36 = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i.i.i35
  %38 = bitcast i8* %add.ptr.i.i.i.i36 to i32 (...)***
  store i32 (...)** %36, i32 (...)*** %38, align 8, !tbaa !17
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %39, align 8, !tbaa !136
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216) %40) #32
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %0) #32
  resume { i8*, i32 } %24
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept17invalid_dimensionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_dimension"* nonnull dereferenceable(40) %this, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %message) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #32
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !9
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #32
  store i64 27, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i15 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %lpad

call5.i.i.i9.i.noexc:                             ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i15, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(27) %call5.i.i.i9.i15, i8* nonnull align 1 dereferenceable(27) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.84, i64 0, i64 0), i64 27, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %6 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #32
  %7 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %message_.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1
  %8 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %message_.i.i to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i.i, align 8, !tbaa !2
  %.cast.i.i.i = bitcast %union.anon* %8 to i8*
  store i8 0, i8* %.cast.i.i.i, align 1, !tbaa !12
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept15array_exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %10 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !17
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %11 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %11, %.cast.i.i.i
  br i1 %cmp.i.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %11) #32
  br label %_ZN5adept9exceptionD2Ev.exit.i

_ZN5adept9exceptionD2Ev.exit.i:                   ; preds = %if.then.i.i.i.i, %lpad.i
  %12 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %12) #32
  %13 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i18 = icmp eq i8* %13, %3
  br i1 %cmp.i.i.i18, label %ehcleanup, label %if.then.i.i19

invoke.cont4:                                     ; preds = %call5.i.i.i9.i.noexc
  %14 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %14, %3
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont4
  call void @_ZdlPv(i8* %14) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %invoke.cont4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept17invalid_dimensionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %message)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

lpad:                                             ; preds = %entry
  %15 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

if.then.i.i19:                                    ; preds = %_ZN5adept9exceptionD2Ev.exit.i
  call void @_ZdlPv(i8* %13) #32
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i19, %lpad, %_ZN5adept9exceptionD2Ev.exit.i
  %.pn = phi { i8*, i32 } [ %15, %lpad ], [ %10, %_ZN5adept9exceptionD2Ev.exit.i ], [ %10, %if.then.i.i19 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #32
  br label %eh.resume

lpad7:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %16 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !17
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %17 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i.i = icmp eq i8* %17, %.cast.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lpad7
  call void @_ZdlPv(i8* %17) #32
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %lpad7
  %18 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %18) #32
  br label %eh.resume

eh.resume:                                        ; preds = %_ZN5adept9exceptionD2Ev.exit, %ehcleanup
  %.pn12 = phi { i8*, i32 } [ %16, %_ZN5adept9exceptionD2Ev.exit ], [ %.pn, %ehcleanup ]
  resume { i8*, i32 } %.pn12
}

; Function Attrs: nobuiltin nofree allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) local_unnamed_addr #10

declare dso_local nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32), i64, i64, i8*, i64) local_unnamed_addr #0

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #25

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept17invalid_dimensionD0Ev(%"class.adept::invalid_dimension"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !17
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !11
  %2 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #32
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #32
  %4 = bitcast %"class.adept::invalid_dimension"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #34
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept5Stack13set_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPKS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i32 %start, i32 %end_plus_one, double* %gradient) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %gradients_initialized_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 10
  %0 = load i8, i8* %gradients_initialized_.i, align 8, !tbaa !39, !range !25
  %tobool.i.not = icmp eq i8 %0, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %max_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %1 = load i32, i32* %max_gradient_.i, align 8, !tbaa !63
  %cmp.i = icmp sgt i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %_ZN5adept5Stack20initialize_gradientsEv.exit

if.then.i:                                        ; preds = %if.then
  %n_allocated_gradients_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 7
  %2 = load i32, i32* %n_allocated_gradients_.i, align 4, !tbaa !71
  %cmp3.i = icmp slt i32 %2, %1
  %gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i.for.body.lr.ph.i_crit_edge

if.then.i.for.body.lr.ph.i_crit_edge:             ; preds = %if.then.i
  %.phi.trans.insert = bitcast double** %gradient_.i to i8**
  %.pre = load i8*, i8** %.phi.trans.insert, align 8, !tbaa !27
  br label %for.body.lr.ph.i

if.then4.i:                                       ; preds = %if.then.i
  %3 = load double*, double** %gradient_.i, align 8, !tbaa !27
  %tobool.not.i = icmp eq double* %3, null
  br i1 %tobool.not.i, label %if.end11.i, label %delete.notnull.i

delete.notnull.i:                                 ; preds = %if.then4.i
  %4 = bitcast double* %3 to i8*
  tail call void @_ZdaPv(i8* %4) #34
  %.pre.i = load i32, i32* %max_gradient_.i, align 8, !tbaa !63
  br label %if.end11.i

if.end11.i:                                       ; preds = %delete.notnull.i, %if.then4.i
  %5 = phi i32 [ %.pre.i, %delete.notnull.i ], [ %1, %if.then4.i ]
  %conv.i = sext i32 %5 to i64
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i, i64 8)
  %7 = extractvalue { i64, i1 } %6, 1
  %8 = extractvalue { i64, i1 } %6, 0
  %9 = select i1 %7, i64 -1, i64 %8
  %call.i = tail call noalias nonnull i8* @_Znam(i64 %9) #36
  %10 = bitcast double** %gradient_.i to i8**
  store i8* %call.i, i8** %10, align 8, !tbaa !27
  store i32 %5, i32* %n_allocated_gradients_.i, align 4, !tbaa !71
  %cmp1320.i = icmp sgt i32 %5, 0
  br i1 %cmp1320.i, label %for.body.lr.ph.i, label %_ZN5adept5Stack20initialize_gradientsEv.exit

for.body.lr.ph.i:                                 ; preds = %if.end11.i, %if.then.i.for.body.lr.ph.i_crit_edge
  %11 = phi i8* [ %call.i, %if.end11.i ], [ %.pre, %if.then.i.for.body.lr.ph.i_crit_edge ]
  %12 = phi i32 [ %5, %if.end11.i ], [ %1, %if.then.i.for.body.lr.ph.i_crit_edge ]
  %13 = zext i32 %12 to i64
  %14 = shl nuw nsw i64 %13, 3
  tail call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 %14, i1 false)
  br label %_ZN5adept5Stack20initialize_gradientsEv.exit

_ZN5adept5Stack20initialize_gradientsEv.exit:     ; preds = %for.body.lr.ph.i, %if.end11.i, %if.then
  store i8 1, i8* %gradients_initialized_.i, align 8, !tbaa !39
  br label %if.end

if.end:                                           ; preds = %_ZN5adept5Stack20initialize_gradientsEv.exit, %entry
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %15 = load i32, i32* %max_gradient_, align 8, !tbaa !63
  %cmp = icmp slt i32 %15, %end_plus_one
  br i1 %cmp, label %if.then2, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cmp1029 = icmp sgt i32 %end_plus_one, %start
  br i1 %cmp1029, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
  %16 = load double*, double** %gradient_, align 8, !tbaa !27
  %17 = sext i32 %start to i64
  %18 = sub i32 %end_plus_one, %start
  %wide.trip.count = zext i32 %18 to i64
  %min.iters.check = icmp ult i32 %18, 4
  br i1 %min.iters.check, label %for.body.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.lr.ph
  %scevgep = getelementptr double, double* %16, i64 %17
  %19 = add nsw i64 %17, %wide.trip.count
  %scevgep8 = getelementptr double, double* %16, i64 %19
  %scevgep11 = getelementptr double, double* %gradient, i64 %wide.trip.count
  %bound0 = icmp ult double* %scevgep, %scevgep11
  %bound1 = icmp ugt double* %scevgep8, %gradient
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292
  %ind.end = add nsw i64 %n.vec, %17
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %index, %17
  %20 = getelementptr inbounds double, double* %gradient, i64 %index
  %21 = bitcast double* %20 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %21, align 8, !tbaa !43, !alias.scope !257
  %22 = getelementptr inbounds double, double* %20, i64 2
  %23 = bitcast double* %22 to <2 x double>*
  %wide.load14 = load <2 x double>, <2 x double>* %23, align 8, !tbaa !43, !alias.scope !257
  %24 = getelementptr inbounds double, double* %16, i64 %offset.idx
  %25 = bitcast double* %24 to <2 x double>*
  store <2 x double> %wide.load, <2 x double>* %25, align 8, !tbaa !43, !alias.scope !260, !noalias !257
  %26 = getelementptr inbounds double, double* %24, i64 2
  %27 = bitcast double* %26 to <2 x double>*
  store <2 x double> %wide.load14, <2 x double>* %27, align 8, !tbaa !43, !alias.scope !260, !noalias !257
  %index.next = add i64 %index, 4
  %28 = icmp eq i64 %index.next, %n.vec
  br i1 %28, label %middle.block, label %vector.body, !llvm.loop !262

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %for.body.lr.ph, %middle.block
  %indvars.iv33.ph = phi i64 [ %17, %vector.memcheck ], [ %17, %for.body.lr.ph ], [ %ind.end, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  br label %for.body

if.then2:                                         ; preds = %if.end
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %29 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %29) #32
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %31 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %30, %union.anon** %31, align 8, !tbaa !9
  %32 = bitcast %union.anon* %30 to i8*
  %33 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #32
  store i64 98, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i23 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %if.then2
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i23, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %34 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %34, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(98) %call5.i.i.i9.i23, i8* nonnull align 1 dereferenceable(98) getelementptr inbounds ([99 x i8], [99 x i8]* @.str.95, i64 0, i64 0), i64 98, i1 false) #32
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %34, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i23, i64 %34
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #32
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %35 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %36 = getelementptr inbounds i8, i8* %exception, i64 24
  %37 = bitcast i8* %message_.i.i.i to i8**
  store i8* %36, i8** %37, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i.i24 = getelementptr inbounds i8, i8* %exception, i64 16
  %38 = bitcast i8* %_M_string_length.i.i.i.i.i.i24 to i64*
  store i64 0, i64* %38, align 8, !tbaa !2
  store i8 0, i8* %36, align 1, !tbaa !12
  %39 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21gradient_out_of_rangeE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %39, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %35, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont5 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc
  %40 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %39, align 8, !tbaa !17
  %41 = load i8*, i8** %37, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %41, %36
  br i1 %cmp.i.i.i.i.i, label %lpad4.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %41) #32
  br label %lpad4.body

invoke.cont5:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21gradient_out_of_rangeE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad4.body.thread

ehcleanup.thread:                                 ; preds = %if.then2
  %42 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %29) #32
  br label %cleanup.action

lpad4.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %43 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %43) #32
  %44 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %44, %32
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad4.body
  call void @_ZdlPv(i8* %44) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %29) #32
  br label %cleanup.action

lpad4.body.thread:                                ; preds = %invoke.cont5
  %45 = landingpad { i8*, i32 }
          cleanup
  %46 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i37 = icmp eq i8* %46, %32
  br i1 %cmp.i.i.i37, label %ehcleanup.thread42, label %if.then.i.i

ehcleanup.thread42:                               ; preds = %lpad4.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %29) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad4.body.thread
  call void @_ZdlPv(i8* %46) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %29) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad4.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %29) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn28 = phi { i8*, i32 } [ %42, %ehcleanup.thread ], [ %40, %ehcleanup ], [ %40, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

for.cond.cleanup:                                 ; preds = %for.body, %middle.block, %for.cond.preheader
  ret void

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.body ], [ %indvars.iv33.ph, %for.body.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %arrayidx = getelementptr inbounds double, double* %gradient, i64 %indvars.iv
  %47 = load double, double* %arrayidx, align 8, !tbaa !43
  %arrayidx12 = getelementptr inbounds double, double* %16, i64 %indvars.iv33
  store double %47, double* %arrayidx12, align 8, !tbaa !43
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !263

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread42
  %.pn27 = phi { i8*, i32 } [ %.pn28, %cleanup.action ], [ %45, %if.then.i.i ], [ %45, %ehcleanup.thread42 ]
  resume { i8*, i32 } %.pn27

unreachable:                                      ; preds = %invoke.cont5
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept21gradient_out_of_rangeD0Ev(%"class.adept::gradient_out_of_range"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::gradient_out_of_range", %"class.adept::gradient_out_of_range"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !17
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::gradient_out_of_range", %"class.adept::gradient_out_of_range"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !11
  %2 = getelementptr inbounds %"class.adept::gradient_out_of_range", %"class.adept::gradient_out_of_range"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #32
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::gradient_out_of_range", %"class.adept::gradient_out_of_range"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #32
  %4 = bitcast %"class.adept::gradient_out_of_range"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #34
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK5adept5Stack13get_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i32 %start, i32 %end_plus_one, double* %gradient) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i57 = alloca i64, align 8
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp10 = alloca %"class.std::__cxx11::basic_string", align 8
  %gradients_initialized_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 10
  %0 = load i8, i8* %gradients_initialized_.i, align 8, !tbaa !39, !range !25
  %tobool.i.not = icmp eq i8 %0, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %1 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #32
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %2, %union.anon** %3, align 8, !tbaa !9
  %4 = bitcast %union.anon* %2 to i8*
  %5 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #32
  store i64 106, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %call5.i.i.i9.i42 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i9.i.noexc unwind label %ehcleanup.thread

call5.i.i.i9.i.noexc:                             ; preds = %if.then
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i42, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %6 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %6, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(106) %call5.i.i.i9.i42, i8* nonnull align 1 dereferenceable(106) getelementptr inbounds ([107 x i8], [107 x i8]* @.str.27, i64 0, i64 0), i64 106, i1 false) #32
  %_M_string_length.i.i.i.i.i.i41 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %6, i64* %_M_string_length.i.i.i.i.i.i41, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i9.i42, i64 %6
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #32
  %message_.i.i.i43 = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i.i43 to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i.i43 to i8**
  store i8* %8, i8** %9, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i.i44 = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i.i44 to i64*
  store i64 0, i64* %10, align 8, !tbaa !2
  store i8 0, i8* %8, align 1, !tbaa !12
  %11 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept25gradients_not_initializedE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %11, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad.i48

lpad.i48:                                         ; preds = %call5.i.i.i9.i.noexc
  %12 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %11, align 8, !tbaa !17
  %13 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i47 = icmp eq i8* %13, %8
  br i1 %cmp.i.i.i.i.i47, label %lpad3.body, label %if.then.i.i.i.i49

if.then.i.i.i.i49:                                ; preds = %lpad.i48
  call void @_ZdlPv(i8* %13) #32
  br label %lpad3.body

invoke.cont4:                                     ; preds = %call5.i.i.i9.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept25gradients_not_initializedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad3.body.thread

ehcleanup.thread:                                 ; preds = %if.then
  %14 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #32
  br label %cleanup.action

lpad3.body:                                       ; preds = %if.then.i.i.i.i49, %lpad.i48
  %15 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %15) #32
  %16 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i54 = icmp eq i8* %16, %4
  br i1 %cmp.i.i.i54, label %ehcleanup, label %if.then.i.i55.thread

if.then.i.i55.thread:                             ; preds = %lpad3.body
  call void @_ZdlPv(i8* %16) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #32
  br label %cleanup.action

lpad3.body.thread:                                ; preds = %invoke.cont4
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i5486 = icmp eq i8* %18, %4
  br i1 %cmp.i.i.i5486, label %ehcleanup.thread91, label %if.then.i.i55

ehcleanup.thread91:                               ; preds = %lpad3.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #32
  br label %eh.resume

if.then.i.i55:                                    ; preds = %lpad3.body.thread
  call void @_ZdlPv(i8* %18) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #32
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad3.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #32
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i55.thread, %ehcleanup.thread
  %.pn74 = phi { i8*, i32 } [ %14, %ehcleanup.thread ], [ %12, %ehcleanup ], [ %12, %if.then.i.i55.thread ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

if.end:                                           ; preds = %entry
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %19 = load i32, i32* %max_gradient_, align 8, !tbaa !63
  %cmp = icmp slt i32 %19, %end_plus_one
  br i1 %cmp, label %if.then8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cmp2678 = icmp sgt i32 %end_plus_one, %start
  br i1 %cmp2678, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
  %20 = load double*, double** %gradient_, align 8, !tbaa !27
  %21 = sext i32 %start to i64
  %22 = sub i32 %end_plus_one, %start
  %wide.trip.count = zext i32 %22 to i64
  %min.iters.check = icmp ult i32 %22, 4
  br i1 %min.iters.check, label %for.body.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.lr.ph
  %scevgep = getelementptr double, double* %gradient, i64 %wide.trip.count
  %scevgep9 = getelementptr double, double* %20, i64 %21
  %23 = add nsw i64 %21, %wide.trip.count
  %scevgep11 = getelementptr double, double* %20, i64 %23
  %bound0 = icmp ugt double* %scevgep11, %gradient
  %bound1 = icmp ult double* %scevgep9, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292
  %ind.end = add nsw i64 %n.vec, %21
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %index, %21
  %24 = getelementptr inbounds double, double* %20, i64 %offset.idx
  %25 = bitcast double* %24 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %25, align 8, !tbaa !43, !alias.scope !264
  %26 = getelementptr inbounds double, double* %24, i64 2
  %27 = bitcast double* %26 to <2 x double>*
  %wide.load14 = load <2 x double>, <2 x double>* %27, align 8, !tbaa !43, !alias.scope !264
  %28 = getelementptr inbounds double, double* %gradient, i64 %index
  %29 = bitcast double* %28 to <2 x double>*
  store <2 x double> %wide.load, <2 x double>* %29, align 8, !tbaa !43, !alias.scope !267, !noalias !264
  %30 = getelementptr inbounds double, double* %28, i64 2
  %31 = bitcast double* %30 to <2 x double>*
  store <2 x double> %wide.load14, <2 x double>* %31, align 8, !tbaa !43, !alias.scope !267, !noalias !264
  %index.next = add i64 %index, 4
  %32 = icmp eq i64 %index.next, %n.vec
  br i1 %32, label %middle.block, label %vector.body, !llvm.loop !269

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %for.body.lr.ph, %middle.block
  %indvars.iv82.ph = phi i64 [ %21, %vector.memcheck ], [ %21, %for.body.lr.ph ], [ %ind.end, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  br label %for.body

if.then8:                                         ; preds = %if.end
  %exception9 = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %33 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %33) #32
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp10, i64 0, i32 2
  %35 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp10 to %union.anon**
  store %union.anon* %34, %union.anon** %35, align 8, !tbaa !9
  %36 = bitcast %union.anon* %34 to i8*
  %37 = bitcast i64* %__dnew.i.i.i.i57 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %37) #32
  store i64 98, i64* %__dnew.i.i.i.i57, align 8, !tbaa !10
  %call5.i.i.i9.i70 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp10, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i57, i64 0)
          to label %call5.i.i.i9.i.noexc69 unwind label %ehcleanup18.thread

call5.i.i.i9.i.noexc69:                           ; preds = %if.then8
  %_M_p.i13.i.i.i.i60 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp10, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i9.i70, i8** %_M_p.i13.i.i.i.i60, align 8, !tbaa !11
  %38 = load i64, i64* %__dnew.i.i.i.i57, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i.i.i61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp10, i64 0, i32 2, i32 0
  store i64 %38, i64* %_M_allocated_capacity.i.i.i.i.i61, align 8, !tbaa !12
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(98) %call5.i.i.i9.i70, i8* nonnull align 1 dereferenceable(98) getelementptr inbounds ([99 x i8], [99 x i8]* @.str.95, i64 0, i64 0), i64 98, i1 false) #32
  %_M_string_length.i.i.i.i.i.i67 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp10, i64 0, i32 1
  store i64 %38, i64* %_M_string_length.i.i.i.i.i.i67, align 8, !tbaa !2
  %arrayidx.i.i.i.i.i68 = getelementptr inbounds i8, i8* %call5.i.i.i9.i70, i64 %38
  store i8 0, i8* %arrayidx.i.i.i.i.i68, align 1, !tbaa !12
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %37) #32
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception9, i64 8
  %39 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %40 = getelementptr inbounds i8, i8* %exception9, i64 24
  %41 = bitcast i8* %message_.i.i.i to i8**
  store i8* %40, i8** %41, align 8, !tbaa !9
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds i8, i8* %exception9, i64 16
  %42 = bitcast i8* %_M_string_length.i.i.i.i.i.i to i64*
  store i64 0, i64* %42, align 8, !tbaa !2
  store i8 0, i8* %40, align 1, !tbaa !12
  %43 = bitcast i8* %exception9 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21gradient_out_of_rangeE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %43, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %39, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp10)
          to label %invoke.cont15 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i9.i.noexc69
  %44 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %43, align 8, !tbaa !17
  %45 = load i8*, i8** %41, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %45, %40
  br i1 %cmp.i.i.i.i.i, label %lpad14.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %45) #32
  br label %lpad14.body

invoke.cont15:                                    ; preds = %call5.i.i.i9.i.noexc69
  invoke void @__cxa_throw(i8* nonnull %exception9, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21gradient_out_of_rangeE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad14.body.thread

ehcleanup18.thread:                               ; preds = %if.then8
  %46 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #32
  br label %cleanup.action23

lpad14.body:                                      ; preds = %if.then.i.i.i.i, %lpad.i
  %47 = bitcast i8* %exception9 to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %47) #32
  %48 = load i8*, i8** %_M_p.i13.i.i.i.i60, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %48, %36
  br i1 %cmp.i.i.i, label %ehcleanup18, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad14.body
  call void @_ZdlPv(i8* %48) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #32
  br label %cleanup.action23

lpad14.body.thread:                               ; preds = %invoke.cont15
  %49 = landingpad { i8*, i32 }
          cleanup
  %50 = load i8*, i8** %_M_p.i13.i.i.i.i60, align 8, !tbaa !11
  %cmp.i.i.i96 = icmp eq i8* %50, %36
  br i1 %cmp.i.i.i96, label %ehcleanup18.thread101, label %if.then.i.i

ehcleanup18.thread101:                            ; preds = %lpad14.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #32
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad14.body.thread
  call void @_ZdlPv(i8* %50) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #32
  br label %eh.resume

ehcleanup18:                                      ; preds = %lpad14.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #32
  br label %cleanup.action23

cleanup.action23:                                 ; preds = %ehcleanup18, %if.then.i.i.thread, %ehcleanup18.thread
  %.pn3877 = phi { i8*, i32 } [ %46, %ehcleanup18.thread ], [ %44, %ehcleanup18 ], [ %44, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception9) #32
  br label %eh.resume

for.cond.cleanup:                                 ; preds = %for.body, %middle.block, %for.cond.preheader
  ret void

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %for.body ], [ %indvars.iv82.ph, %for.body.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %arrayidx = getelementptr inbounds double, double* %20, i64 %indvars.iv82
  %51 = load double, double* %arrayidx, align 8, !tbaa !43
  %arrayidx28 = getelementptr inbounds double, double* %gradient, i64 %indvars.iv
  store double %51, double* %arrayidx28, align 8, !tbaa !43
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !270

eh.resume:                                        ; preds = %cleanup.action23, %if.then.i.i, %ehcleanup18.thread101, %cleanup.action, %if.then.i.i55, %ehcleanup.thread91
  %.pn38.pn = phi { i8*, i32 } [ %.pn3877, %cleanup.action23 ], [ %.pn74, %cleanup.action ], [ %17, %if.then.i.i55 ], [ %49, %if.then.i.i ], [ %17, %ehcleanup.thread91 ], [ %49, %ehcleanup18.thread101 ]
  resume { i8*, i32 } %.pn38.pn

unreachable:                                      ; preds = %invoke.cont15, %invoke.cont4
  unreachable
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.exp.f64(double) #9

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.log.f64(double) #9

declare dso_local void @pushControl1b(i32) local_unnamed_addr #0

declare dso_local void @popControl1b(i32*) local_unnamed_addr #0

declare dso_local i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32), i64* nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8)) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216)) unnamed_addr #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #0

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull dereferenceable(264), i32) local_unnamed_addr #0

; Function Attrs: uwtable
declare dso_local void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8, %"class.std::__cxx11::basic_stringbuf"* nonnull dereferenceable(104)) local_unnamed_addr #5 align 2

; Function Attrs: nounwind
declare dso_local void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16)) local_unnamed_addr #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull dereferenceable(8), double) local_unnamed_addr #0

; Function Attrs: nounwind
declare dso_local void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16), %"struct.std::__detail::_List_node_base"*) local_unnamed_addr #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIPKvEERSoT_(%"class.std::basic_ostream"* nonnull dereferenceable(8), i8*) local_unnamed_addr #0

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull dereferenceable(8), i64) local_unnamed_addr #0

; Function Attrs: nofree nounwind
declare dso_local i32 @posix_memalign(i8**, i64, i64) local_unnamed_addr #18

; Function Attrs: nounwind
declare dso_local void @_ZNSt9bad_allocD1Ev(%"class.std::bad_alloc"* nonnull dereferenceable(8)) unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #26

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) local_unnamed_addr #27

declare dso_local nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32), i8*, i64) local_unnamed_addr #0

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept5ArrayILi1EdLb0EE6resizeEPKib(%"class.adept::Array.28"* nonnull dereferenceable(24) %this, i32* %dim, i1 zeroext %force_contiguous) local_unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %result.i.i = alloca double*, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp6 = alloca %"class.std::__cxx11::basic_string", align 8
  %storage_ = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %this, i64 0, i32 1
  %0 = load %"class.adept::Storage.14"*, %"class.adept::Storage.14"** %storage_, align 8, !tbaa !138
  %tobool.not = icmp eq %"class.adept::Storage.14"* %0, null
  br i1 %tobool.not, label %for.body.critedge, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage.14"* nonnull dereferenceable(20) %0)
  store %"class.adept::Storage.14"* null, %"class.adept::Storage.14"** %storage_, align 8, !tbaa !138
  br label %for.body.critedge

for.body.critedge:                                ; preds = %if.then, %entry
  %1 = load i32, i32* %dim, align 4, !tbaa !46
  %cmp4 = icmp slt i32 %1, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.body.critedge
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #32
  %2 = bitcast i8* %exception to %"class.adept::invalid_dimension"*
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #32
  %4 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #32
  invoke void @_ZN5adept8internal18exception_locationB5cxx11EPKci(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp6, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.88, i64 0, i64 0), i32 1969)
          to label %invoke.cont unwind label %ehcleanup11.thread

invoke.cont:                                      ; preds = %if.then5
  %call3.i.i.i57 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp6, i64 0, i64 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.87, i64 0, i64 0), i64 34)
          to label %call3.i.i.i.noexc unwind label %lpad7

call3.i.i.i.noexc:                                ; preds = %invoke.cont
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %6 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !9, !alias.scope !271
  %_M_p.i.i30.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %_M_p.i.i30.i.i, align 8, !tbaa !11
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 2
  %arraydecay.i.i.i.i = bitcast %union.anon* %8 to i8*
  %cmp.i.i.i = icmp eq i8* %7, %arraydecay.i.i.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %call3.i.i.i.noexc
  %arraydecay.i.i.i = bitcast %union.anon* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %arraydecay.i.i.i, i8* nonnull align 8 dereferenceable(16) %7, i64 16, i1 false) #32
  br label %invoke.cont8

if.else.i.i:                                      ; preds = %call3.i.i.i.noexc
  %_M_p.i28.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %7, i8** %_M_p.i28.i.i, align 8, !tbaa !11, !alias.scope !271
  %_M_allocated_capacity.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 2, i32 0
  %9 = load i64, i64* %_M_allocated_capacity.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %9, i64* %_M_allocated_capacity.i.i.i, align 8, !tbaa !12, !alias.scope !271
  br label %invoke.cont8

invoke.cont8:                                     ; preds = %if.else.i.i, %if.then.i.i
  %_M_string_length.i27.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 1
  %10 = load i64, i64* %_M_string_length.i27.i.i, align 8, !tbaa !2
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %10, i64* %_M_string_length.i.i.i, align 8, !tbaa !2, !alias.scope !271
  %11 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i57 to %union.anon**
  store %union.anon* %8, %union.anon** %11, align 8, !tbaa !11
  store i64 0, i64* %_M_string_length.i27.i.i, align 8, !tbaa !2
  store i8 0, i8* %arraydecay.i.i.i.i, align 8, !tbaa !12
  invoke void @_ZN5adept17invalid_dimensionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_dimension"* nonnull dereferenceable(40) %2, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont8
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_dimensionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #33
          to label %unreachable unwind label %lpad9

ehcleanup11.thread:                               ; preds = %if.then5
  %12 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #32
  br label %cleanup.action

lpad7:                                            ; preds = %invoke.cont
  %13 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad9:                                            ; preds = %invoke.cont10, %invoke.cont8
  %cleanup.isactive.0 = phi i1 [ false, %invoke.cont10 ], [ true, %invoke.cont8 ]
  %14 = landingpad { i8*, i32 }
          cleanup
  %_M_p.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  %15 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !11
  %arraydecay.i.i.i.i58 = bitcast %union.anon* %5 to i8*
  %cmp.i.i.i59 = icmp eq i8* %15, %arraydecay.i.i.i.i58
  br i1 %cmp.i.i.i59, label %ehcleanup, label %if.then.i.i60

if.then.i.i60:                                    ; preds = %lpad9
  call void @_ZdlPv(i8* %15) #32
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i60, %lpad9, %lpad7
  %.pn = phi { i8*, i32 } [ %13, %lpad7 ], [ %14, %lpad9 ], [ %14, %if.then.i.i60 ]
  %cleanup.isactive.1 = phi i1 [ true, %lpad7 ], [ %cleanup.isactive.0, %lpad9 ], [ %cleanup.isactive.0, %if.then.i.i60 ]
  %_M_p.i.i.i.i61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp6, i64 0, i32 0, i32 0
  %16 = load i8*, i8** %_M_p.i.i.i.i61, align 8, !tbaa !11
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp6, i64 0, i32 2
  %arraydecay.i.i.i.i62 = bitcast %union.anon* %17 to i8*
  %cmp.i.i.i63 = icmp eq i8* %16, %arraydecay.i.i.i.i62
  br i1 %cmp.i.i.i63, label %ehcleanup11, label %if.then.i.i64

if.then.i.i64:                                    ; preds = %ehcleanup
  call void @_ZdlPv(i8* %16) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #32
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

ehcleanup11:                                      ; preds = %ehcleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #32
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #32
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

cleanup.action:                                   ; preds = %ehcleanup11, %if.then.i.i64, %ehcleanup11.thread
  %.pn.pn73 = phi { i8*, i32 } [ %12, %ehcleanup11.thread ], [ %.pn, %ehcleanup11 ], [ %.pn, %if.then.i.i64 ]
  call void @__cxa_free_exception(i8* %exception) #32
  br label %eh.resume

if.else:                                          ; preds = %for.body.critedge
  %cmp16 = icmp eq i32 %1, 0
  br i1 %cmp16, label %_ZN5adept5ArrayILi1EdLb0EE5clearEv.exit, label %for.end, !llvm.loop !274

_ZN5adept5ArrayILi1EdLb0EE5clearEv.exit:          ; preds = %if.else
  %data_.i = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %this, i64 0, i32 0
  store double* null, double** %data_.i, align 8, !tbaa !141
  %arrayidx.i.i = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %this, i64 0, i32 2, i32 0, i64 0
  store i32 0, i32* %arrayidx.i.i, align 4, !tbaa !46
  %arrayidx.i4.i = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %this, i64 0, i32 3, i32 0, i64 0
  store i32 0, i32* %arrayidx.i4.i, align 4, !tbaa !46
  br label %return

for.end:                                          ; preds = %if.else
  %arrayidx3.i = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %this, i64 0, i32 2, i32 0, i64 0
  store i32 %1, i32* %arrayidx3.i, align 4, !tbaa !46
  %18 = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %this, i64 0, i32 3, i32 0, i64 0
  store i32 1, i32* %18, align 4
  %call32 = tail call noalias nonnull dereferenceable(24) i8* @_Znwm(i64 24) #36
  %n_.i = getelementptr inbounds i8, i8* %call32, i64 8
  %19 = bitcast i8* %n_.i to i32*
  store i32 %1, i32* %19, align 8, !tbaa !243
  %n_links_.i = getelementptr inbounds i8, i8* %call32, i64 12
  %20 = bitcast i8* %n_links_.i to i32*
  store i32 1, i32* %20, align 4, !tbaa !245
  %gradient_index_.i = getelementptr inbounds i8, i8* %call32, i64 16
  %21 = bitcast i8* %gradient_index_.i to i32*
  store i32 -1, i32* %21, align 8, !tbaa !246
  %22 = bitcast double** %result.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #32
  %23 = bitcast double** %result.i.i to i8**
  %conv1.i.i74 = zext i32 %1 to i64
  %mul.i.i = shl nuw nsw i64 %conv1.i.i74, 3
  %call2.i.i = call i32 @posix_memalign(i8** nonnull %23, i64 16, i64 %mul.i.i) #32
  %cmp3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %cmp3.not.i.i, label %invoke.cont34, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %for.end
  %exception.i.i = call i8* @__cxa_allocate_exception(i64 8) #32
  %24 = bitcast i8* %exception.i.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt9bad_alloc, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %24, align 8, !tbaa !17
  invoke void @__cxa_throw(i8* nonnull %exception.i.i, i8* bitcast (i8** @_ZTISt9bad_alloc to i8*), i8* bitcast (void (%"class.std::bad_alloc"*)* @_ZNSt9bad_allocD1Ev to i8*)) #33
          to label %.noexc unwind label %lpad33

.noexc:                                           ; preds = %if.then4.i.i
  unreachable

invoke.cont34:                                    ; preds = %for.end
  %25 = load double*, double** %result.i.i, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #32
  %data_.i67 = bitcast i8* %call32 to double**
  store double* %25, double** %data_.i67, align 8, !tbaa !247
  %26 = load i32, i32* @_ZN5adept8internal26n_storage_objects_created_E, align 4, !tbaa !46
  %inc.i = add nsw i32 %26, 1
  store i32 %inc.i, i32* @_ZN5adept8internal26n_storage_objects_created_E, align 4, !tbaa !46
  %27 = bitcast %"class.adept::Storage.14"** %storage_ to i8**
  store i8* %call32, i8** %27, align 8, !tbaa !138
  %data_ = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %this, i64 0, i32 0
  store double* %25, double** %data_, align 8, !tbaa !141
  br label %return

return:                                           ; preds = %invoke.cont34, %_ZN5adept5ArrayILi1EdLb0EE5clearEv.exit
  ret void

lpad33:                                           ; preds = %if.then4.i.i
  %28 = landingpad { i8*, i32 }
          cleanup
  call void @_ZdlPv(i8* nonnull %call32) #34
  br label %eh.resume

eh.resume:                                        ; preds = %lpad33, %cleanup.action, %ehcleanup11, %if.then.i.i64
  %.pn.pn.pn = phi { i8*, i32 } [ %28, %lpad33 ], [ %.pn.pn73, %cleanup.action ], [ %.pn, %ehcleanup11 ], [ %.pn, %if.then.i.i64 ]
  resume { i8*, i32 } %.pn.pn.pn

unreachable:                                      ; preds = %invoke.cont10
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN5adept8internal13reduce_activeINS0_3SumIdEEdNS0_14UnaryOperationIdNS0_3ExpENS0_15BinaryOperationIdNS_5ArrayILi1EdLb1EEENS0_8SubtractENS_6ActiveIdEEEEEEEEvRKNS_10ExpressionIT0_T1_EERNSA_ISF_EE(%"struct.adept::Expression.37"* nonnull align 1 dereferenceable(1) %rhs, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %total) local_unnamed_addr #24 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
if.else:
  %array.i.i.i.i.i.i.i = getelementptr inbounds %"struct.adept::Expression.37", %"struct.adept::Expression.37"* %rhs, i64 8
  %0 = bitcast %"struct.adept::Expression.37"* %array.i.i.i.i.i.i.i to %"class.adept::Array.30"**
  %1 = load %"class.adept::Array.30"*, %"class.adept::Array.30"** %0, align 8, !tbaa !275
  %2 = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %1, i64 0, i32 3, i32 0, i64 0
  %3 = load i32, i32* %2, align 8, !tbaa !12
  %cmp = icmp eq i32 %3, 0
  %val_.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %total, i64 0, i32 0
  store double 0.000000e+00, double* %val_.i, align 8, !tbaa !155
  %4 = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !26
  br i1 %cmp, label %if.then22, label %if.else25

if.then22:                                        ; preds = %if.else
  %n_statements_.i.i126 = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %4, i64 0, i32 3
  %5 = load i32, i32* %n_statements_.i.i126, align 8, !tbaa !40
  %n_allocated_statements_.i.i127 = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %4, i64 0, i32 4
  %6 = load i32, i32* %n_allocated_statements_.i.i127, align 4, !tbaa !73
  %cmp.not.i.i128 = icmp slt i32 %5, %6
  br i1 %cmp.not.i.i128, label %entry.if.end_crit_edge.i.i131, label %if.then.i.i138

entry.if.end_crit_edge.i.i131:                    ; preds = %if.then22
  %statement_.phi.trans.insert.i.i129 = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %4, i64 0, i32 0
  %.pre.i.i130 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i.i129, align 8, !tbaa !35
  br label %_ZN5adept6ActiveIdEaSIiEENS_8internal9enable_ifIXsr17is_not_expressionIT_EE5valueERS1_E4typeERKS5_.exit

if.then.i.i138:                                   ; preds = %if.then22
  %mul.i.i.i132 = shl nsw i32 %6, 1
  %conv.i.i.i133 = sext i32 %mul.i.i.i132 to i64
  %7 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i.i133, i64 8)
  %8 = extractvalue { i64, i1 } %7, 1
  %9 = extractvalue { i64, i1 } %7, 0
  %10 = select i1 %8, i64 -1, i64 %9
  %call.i.i.i134 = tail call noalias nonnull i8* @_Znam(i64 %10) #36
  %11 = bitcast %"class.adept::internal::StackStorageOrig"* %4 to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !35
  %conv5.i.i.i135 = sext i32 %5 to i64
  %mul6.i.i.i136 = shl nsw i64 %conv5.i.i.i135, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call.i.i.i134, i8* align 4 %12, i64 %mul6.i.i.i136, i1 false)
  %isnull.i.i.i137 = icmp eq i8* %12, null
  br i1 %isnull.i.i.i137, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i142, label %delete.notnull.i.i.i140

delete.notnull.i.i.i140:                          ; preds = %if.then.i.i138
  tail call void @_ZdaPv(i8* nonnull %12) #34
  %.pre7.pre.i.i139 = load i32, i32* %n_statements_.i.i126, align 8, !tbaa !40
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i142

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i142: ; preds = %delete.notnull.i.i.i140, %if.then.i.i138
  %.pre7.i.i141 = phi i32 [ %5, %if.then.i.i138 ], [ %.pre7.pre.i.i139, %delete.notnull.i.i.i140 ]
  store i8* %call.i.i.i134, i8** %11, align 8, !tbaa !35
  store i32 %mul.i.i.i132, i32* %n_allocated_statements_.i.i127, align 4, !tbaa !73
  %13 = bitcast i8* %call.i.i.i134 to %"struct.adept::internal::Statement"*
  br label %_ZN5adept6ActiveIdEaSIiEENS_8internal9enable_ifIXsr17is_not_expressionIT_EE5valueERS1_E4typeERKS5_.exit

_ZN5adept6ActiveIdEaSIiEENS_8internal9enable_ifIXsr17is_not_expressionIT_EE5valueERS1_E4typeERKS5_.exit: ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i142, %entry.if.end_crit_edge.i.i131
  %14 = phi i32 [ %5, %entry.if.end_crit_edge.i.i131 ], [ %.pre7.i.i141, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i142 ]
  %15 = phi %"struct.adept::internal::Statement"* [ %.pre.i.i130, %entry.if.end_crit_edge.i.i131 ], [ %13, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i142 ]
  %gradient_index_.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %total, i64 0, i32 1
  %16 = load i32, i32* %gradient_index_.i, align 8, !tbaa !46
  %idxprom.i.i143 = sext i32 %14 to i64
  %index.i.i144 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %15, i64 %idxprom.i.i143, i32 0
  store i32 %16, i32* %index.i.i144, align 4, !tbaa !41
  %n_operations_.i.i145 = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %4, i64 0, i32 5
  %17 = load i32, i32* %n_operations_.i.i145, align 8, !tbaa !74
  %inc.i.i146 = add nsw i32 %14, 1
  store i32 %inc.i.i146, i32* %n_statements_.i.i126, align 8, !tbaa !40
  %end_plus_one.i.i147 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %15, i64 %idxprom.i.i143, i32 1
  br label %if.end44

if.else25:                                        ; preds = %if.else
  %mul = shl nsw i32 %3, 1
  %n_allocated_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %4, i64 0, i32 6
  %18 = load i32, i32* %n_allocated_operations_.i, align 4, !tbaa !75
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %4, i64 0, i32 5
  %19 = load i32, i32* %n_operations_.i, align 8, !tbaa !74
  %add.i157 = add nsw i32 %19, %mul
  %cmp.not.i = icmp sgt i32 %18, %add.i157
  br i1 %cmp.not.i, label %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit, label %if.then.i

if.then.i:                                        ; preds = %if.else25
  tail call void @_ZN5adept8internal16StackStorageOrig20grow_operation_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %4, i32 %mul)
  %.pre = load %"class.adept::Array.30"*, %"class.adept::Array.30"** %0, align 8, !tbaa !275
  br label %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit

_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit: ; preds = %if.then.i, %if.else25
  %20 = phi %"class.adept::Array.30"* [ %1, %if.else25 ], [ %.pre, %if.then.i ]
  %arrayidx.i9.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %20, i64 0, i32 4, i32 0, i64 0
  %cmp32170 = icmp sgt i32 %3, 0
  br i1 %cmp32170, label %for.body.lr.ph, label %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit.do.end_crit_edge

_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit.do.end_crit_edge: ; preds = %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit
  %.pre173 = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !26
  br label %do.end

for.body.lr.ph:                                   ; preds = %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit
  %21 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %data.i.i.i.i.i.i = bitcast %"struct.adept::Expression.37"* %rhs to double**
  %22 = load double*, double** %data.i.i.i.i.i.i, align 8, !tbaa !277
  %right.i.i.i.i.i = getelementptr inbounds %"struct.adept::Expression.37", %"struct.adept::Expression.37"* %rhs, i64 16
  %23 = bitcast %"struct.adept::Expression.37"* %right.i.i.i.i.i to %"class.adept::Active"**
  %24 = load %"class.adept::Active"*, %"class.adept::Active"** %23, align 8, !tbaa !278
  %val_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %24, i64 0, i32 0
  %value_.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Array.30", %"class.adept::Array.30"* %20, i64 0, i32 0, i32 0
  %multiplier_.i.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0, i32 1
  %25 = load double*, double** %multiplier_.i.i.i.i.i.i.i.i.i, align 8, !tbaa !37
  %n_operations_.i.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0, i32 5
  %index_.i.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0, i32 2
  %26 = load i32*, i32** %index_.i.i.i.i.i.i.i.i.i, align 8, !tbaa !38
  %gradient_index_.i.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %24, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %loc.sroa.0.0172 = phi i32 [ 0, %for.body.lr.ph ], [ %add.i.i.i.i.i.i, %for.body ]
  %i.sroa.0.0171 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body ]
  %idxprom.i.i.i.i.i.i = sext i32 %loc.sroa.0.0172 to i64
  %arrayidx.i.i.i.i.i.i = getelementptr inbounds double, double* %22, i64 %idxprom.i.i.i.i.i.i
  %27 = load double, double* %arrayidx.i.i.i.i.i.i, align 8, !tbaa !43
  %28 = load double, double* %val_.i.i.i.i.i.i, align 8, !tbaa !155
  %sub.i.i.i.i.i.i = fsub fast double %27, %28
  %29 = tail call fast double @llvm.exp.f64(double %sub.i.i.i.i.i.i) #32
  %30 = load i32, i32* %value_.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !151
  %add.i.i.i.i.i.i.i.i = add nsw i32 %30, %loc.sroa.0.0172
  %31 = load i32, i32* %n_operations_.i.i.i.i.i.i.i.i.i, align 8, !tbaa !74
  %idxprom.i.i.i.i.i.i.i.i.i = sext i32 %31 to i64
  %arrayidx.i.i.i.i.i.i.i.i.i = getelementptr inbounds double, double* %25, i64 %idxprom.i.i.i.i.i.i.i.i.i
  store double %29, double* %arrayidx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %inc.i.i.i.i.i.i.i.i.i = add nsw i32 %31, 1
  store i32 %inc.i.i.i.i.i.i.i.i.i, i32* %n_operations_.i.i.i.i.i.i.i.i.i, align 8, !tbaa !74
  %arrayidx4.i.i.i.i.i.i.i.i.i = getelementptr inbounds i32, i32* %26, i64 %idxprom.i.i.i.i.i.i.i.i.i
  store i32 %add.i.i.i.i.i.i.i.i, i32* %arrayidx4.i.i.i.i.i.i.i.i.i, align 4, !tbaa !46
  %fneg.i.i.i.i.i.i = fneg fast double %29
  %32 = load i32, i32* %n_operations_.i.i.i.i.i.i.i.i.i, align 8, !tbaa !74
  %idxprom.i.i.i.i.i.i.i.i = sext i32 %32 to i64
  %arrayidx.i.i.i.i.i.i.i.i = getelementptr inbounds double, double* %25, i64 %idxprom.i.i.i.i.i.i.i.i
  store double %fneg.i.i.i.i.i.i, double* %arrayidx.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %33 = load i32, i32* %gradient_index_.i.i.i.i.i.i.i, align 8, !tbaa !46
  %inc.i.i.i.i.i.i.i.i = add nsw i32 %32, 1
  store i32 %inc.i.i.i.i.i.i.i.i, i32* %n_operations_.i.i.i.i.i.i.i.i.i, align 8, !tbaa !74
  %arrayidx4.i.i.i.i.i.i.i.i = getelementptr inbounds i32, i32* %26, i64 %idxprom.i.i.i.i.i.i.i.i
  store i32 %33, i32* %arrayidx4.i.i.i.i.i.i.i.i, align 4, !tbaa !46
  %34 = load i32, i32* %arrayidx.i9.i.i.i.i.i.i, align 4, !tbaa !46
  %add.i.i.i.i.i.i = add nsw i32 %34, %loc.sroa.0.0172
  %35 = load double, double* %val_.i, align 8, !tbaa !43
  %add.i = fadd fast double %35, %29
  store double %add.i, double* %val_.i, align 8, !tbaa !43
  %inc = add nuw nsw i32 %i.sroa.0.0171, 1
  %exitcond.not = icmp eq i32 %inc, %3
  br i1 %exitcond.not, label %do.end.loopexit, label %for.body, !llvm.loop !280

do.end.loopexit:                                  ; preds = %for.body
  %36 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0
  br label %do.end

do.end:                                           ; preds = %do.end.loopexit, %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit.do.end_crit_edge
  %37 = phi %"class.adept::internal::StackStorageOrig"* [ %.pre173, %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit.do.end_crit_edge ], [ %36, %do.end.loopexit ]
  %n_statements_.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %37, i64 0, i32 3
  %38 = load i32, i32* %n_statements_.i.i, align 8, !tbaa !40
  %n_allocated_statements_.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %37, i64 0, i32 4
  %39 = load i32, i32* %n_allocated_statements_.i.i, align 4, !tbaa !73
  %cmp.not.i.i = icmp slt i32 %38, %39
  br i1 %cmp.not.i.i, label %entry.if.end_crit_edge.i.i, label %if.then.i.i

entry.if.end_crit_edge.i.i:                       ; preds = %do.end
  %statement_.phi.trans.insert.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %37, i64 0, i32 0
  %.pre.i.i = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i.i, align 8, !tbaa !35
  br label %_ZN5adept8internal3SumIdE13finish_activeERNS_6ActiveIdEERKi.exit

if.then.i.i:                                      ; preds = %do.end
  %mul.i.i.i = shl nsw i32 %39, 1
  %conv.i.i.i = sext i32 %mul.i.i.i to i64
  %40 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i.i, i64 8)
  %41 = extractvalue { i64, i1 } %40, 1
  %42 = extractvalue { i64, i1 } %40, 0
  %43 = select i1 %41, i64 -1, i64 %42
  %call.i.i.i = tail call noalias nonnull i8* @_Znam(i64 %43) #36
  %44 = bitcast %"class.adept::internal::StackStorageOrig"* %37 to i8**
  %45 = load i8*, i8** %44, align 8, !tbaa !35
  %conv5.i.i.i = sext i32 %38 to i64
  %mul6.i.i.i = shl nsw i64 %conv5.i.i.i, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call.i.i.i, i8* align 4 %45, i64 %mul6.i.i.i, i1 false)
  %isnull.i.i.i = icmp eq i8* %45, null
  br i1 %isnull.i.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i, label %delete.notnull.i.i.i

delete.notnull.i.i.i:                             ; preds = %if.then.i.i
  tail call void @_ZdaPv(i8* nonnull %45) #34
  %.pre7.pre.i.i = load i32, i32* %n_statements_.i.i, align 8, !tbaa !40
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i: ; preds = %delete.notnull.i.i.i, %if.then.i.i
  %.pre7.i.i = phi i32 [ %38, %if.then.i.i ], [ %.pre7.pre.i.i, %delete.notnull.i.i.i ]
  store i8* %call.i.i.i, i8** %44, align 8, !tbaa !35
  store i32 %mul.i.i.i, i32* %n_allocated_statements_.i.i, align 4, !tbaa !73
  %46 = bitcast i8* %call.i.i.i to %"struct.adept::internal::Statement"*
  br label %_ZN5adept8internal3SumIdE13finish_activeERNS_6ActiveIdEERKi.exit

_ZN5adept8internal3SumIdE13finish_activeERNS_6ActiveIdEERKi.exit: ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i, %entry.if.end_crit_edge.i.i
  %47 = phi i32 [ %38, %entry.if.end_crit_edge.i.i ], [ %.pre7.i.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i ]
  %48 = phi %"struct.adept::internal::Statement"* [ %.pre.i.i, %entry.if.end_crit_edge.i.i ], [ %46, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i ]
  %gradient_index_.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %total, i64 0, i32 1
  %49 = load i32, i32* %gradient_index_.i.i, align 8, !tbaa !46
  %idxprom.i.i = sext i32 %47 to i64
  %index.i.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %48, i64 %idxprom.i.i, i32 0
  store i32 %49, i32* %index.i.i, align 4, !tbaa !41
  %n_operations_.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %37, i64 0, i32 5
  %50 = load i32, i32* %n_operations_.i.i, align 8, !tbaa !74
  %inc.i.i = add nsw i32 %47, 1
  store i32 %inc.i.i, i32* %n_statements_.i.i, align 8, !tbaa !40
  %end_plus_one.i.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %48, i64 %idxprom.i.i, i32 1
  br label %if.end44

if.end44:                                         ; preds = %_ZN5adept8internal3SumIdE13finish_activeERNS_6ActiveIdEERKi.exit, %_ZN5adept6ActiveIdEaSIiEENS_8internal9enable_ifIXsr17is_not_expressionIT_EE5valueERS1_E4typeERKS5_.exit
  %end_plus_one.i.i147.sink = phi i32* [ %end_plus_one.i.i147, %_ZN5adept6ActiveIdEaSIiEENS_8internal9enable_ifIXsr17is_not_expressionIT_EE5valueERS1_E4typeERKS5_.exit ], [ %end_plus_one.i.i, %_ZN5adept8internal3SumIdE13finish_activeERNS_6ActiveIdEERKi.exit ]
  %.sink = phi i32 [ %17, %_ZN5adept6ActiveIdEaSIiEENS_8internal9enable_ifIXsr17is_not_expressionIT_EE5valueERS1_E4typeERKS5_.exit ], [ %50, %_ZN5adept8internal3SumIdE13finish_activeERNS_6ActiveIdEERKi.exit ]
  store i32 %.sink, i32* %end_plus_one.i.i147.sink, align 4, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept9exceptionD2Ev(%"class.adept::exception"* nonnull dereferenceable(40) %this) unnamed_addr #4 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !17
  %_M_p.i.i.i.i = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !11
  %2 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 2
  %arraydecay.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #32
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #32
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_logsumexp.cpp() #5 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1) @_ZStL8__ioinit)
  %0 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #32
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E to %union.anon**), align 8, !tbaa !9
  store i16 8236, i16* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 2) to i16*), align 8
  store i64 2, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 2) to i8*), i64 2), align 2, !tbaa !12
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E to i8*), i8* nonnull @__dso_handle) #32
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E to %union.anon**), align 8, !tbaa !9
  store i8 123, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 2) to i8*), align 8, !tbaa !12
  store i64 1, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 2) to i8*), i64 1), align 1, !tbaa !12
  %2 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E to i8*), i8* nonnull @__dso_handle) #32
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E to %union.anon**), align 8, !tbaa !9
  store i8 125, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 2) to i8*), align 8, !tbaa !12
  store i64 1, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 2) to i8*), i64 1), align 1, !tbaa !12
  %3 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E to i8*), i8* nonnull @__dso_handle) #32
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E to %union.anon**), align 8, !tbaa !9
  store i8 123, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 2) to i8*), align 8, !tbaa !12
  store i64 1, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 2) to i8*), i64 1), align 1, !tbaa !12
  %4 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E to i8*), i8* nonnull @__dso_handle) #32
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E to %union.anon**), align 8, !tbaa !9
  store i8 125, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 2) to i8*), align 8, !tbaa !12
  store i64 1, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 2) to i8*), i64 1), align 1, !tbaa !12
  %5 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E to i8*), i8* nonnull @__dso_handle) #32
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E to %union.anon**), align 8, !tbaa !9
  store i16 8236, i16* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 2) to i16*), align 8
  store i64 2, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 2) to i8*), i64 2), align 2, !tbaa !12
  %6 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E to i8*), i8* nonnull @__dso_handle) #32
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E to %union.anon**), align 8, !tbaa !9
  store i16 2604, i16* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 2) to i16*), align 8
  store i64 2, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 2) to i8*), i64 2), align 2, !tbaa !12
  %7 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E to i8*), i8* nonnull @__dso_handle) #32
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E to %union.anon**), align 8, !tbaa !9
  store i16 31498, i16* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 2) to i16*), align 8
  store i64 2, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 2) to i8*), i64 2), align 2, !tbaa !12
  %8 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E to i8*), i8* nonnull @__dso_handle) #32
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E to %union.anon**), align 8, !tbaa !9
  store i8 125, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 2) to i8*), align 8, !tbaa !12
  store i64 1, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 2) to i8*), i64 1), align 1, !tbaa !12
  %9 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E to i8*), i8* nonnull @__dso_handle) #32
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E to %union.anon**), align 8, !tbaa !9
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(12) bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 2) to i8*), i8* nonnull align 1 dereferenceable(12) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i64 12, i1 false) #32
  store i64 12, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  store i8 0, i8* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 2, i32 1, i64 4), align 4, !tbaa !12
  %10 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E to i8*), i8* nonnull @__dso_handle) #32
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E to %union.anon**), align 8, !tbaa !9
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(7) bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 2) to i8*), i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i64 7, i1 false) #32
  store i64 7, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !2
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 2) to i8*), i64 7), align 1, !tbaa !12
  %11 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E to i8*), i8* nonnull @__dso_handle) #32
  ret void
}

; Function Attrs: uwtable willreturn
define weak_odr hidden %"class.adept::Stack"** @_ZTWN5adept21_stack_current_threadE() local_unnamed_addr #28 comdat {
  ret %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.maxnum.f64(double, double) #9

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) local_unnamed_addr #30

; Function Attrs: nofree nosync nounwind readnone willreturn
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #31

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare <2 x double> @llvm.exp.v2f64(<2 x double>) #9

attributes #0 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { nofree nounwind }
attributes #3 = { argmemonly nofree nosync nounwind willreturn }
attributes #4 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { nobuiltin nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #7 = { norecurse nounwind readnone uwtable willreturn mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #8 = { uwtable mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #9 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nobuiltin nofree allocsize(0) "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #11 = { noreturn uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #12 = { nofree norecurse nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #13 = { nofree nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #14 = { uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #15 = { nofree nounwind uwtable willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #16 = { norecurse nounwind readonly uwtable willreturn mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #17 = { norecurse uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #18 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #19 = { inlinehint nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #20 = { nounwind uwtable willreturn mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #21 = { noinline noreturn nounwind }
attributes #22 = { nofree nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #23 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #24 = { inlinehint uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #25 = { argmemonly nofree nounwind readonly willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #26 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #27 = { noreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #28 = { uwtable willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #29 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #30 = { inaccessiblememonly nofree nounwind willreturn }
attributes #31 = { nofree nosync nounwind readnone willreturn }
attributes #32 = { nounwind }
attributes #33 = { noreturn }
attributes #34 = { builtin nounwind }
attributes #35 = { allocsize(0) }
attributes #36 = { builtin allocsize(0) }
attributes #37 = { noreturn nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)"}
!2 = !{!3, !8, i64 8}
!3 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !4, i64 0, !8, i64 8, !6, i64 16}
!4 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !5, i64 0}
!5 = !{!"any pointer", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!"long", !6, i64 0}
!9 = !{!4, !5, i64 0}
!10 = !{!8, !8, i64 0}
!11 = !{!3, !5, i64 0}
!12 = !{!6, !6, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"bool", !6, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"_ZTSN5adept15ArrayPrintStyleE", !6, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !7, i64 0}
!19 = !{!20, !14, i64 145}
!20 = !{!"_ZTSN5adept5StackE", !5, i64 40, !21, i64 48, !21, i64 72, !22, i64 96, !23, i64 120, !24, i64 128, !24, i64 132, !24, i64 136, !24, i64 140, !14, i64 144, !14, i64 145, !14, i64 146, !14, i64 147, !14, i64 148}
!21 = !{!"_ZTSSt6vectorIiSaIiEE"}
!22 = !{!"_ZTSNSt7__cxx114listIN5adept3GapESaIS2_EEE"}
!23 = !{!"_ZTSSt14_List_iteratorIN5adept3GapEE", !5, i64 0}
!24 = !{!"int", !6, i64 0}
!25 = !{i8 0, i8 2}
!26 = !{!5, !5, i64 0}
!27 = !{!20, !5, i64 40}
!28 = !{!29, !5, i64 0}
!29 = !{!"_ZTSNSt8__detail15_List_node_baseE", !5, i64 0, !5, i64 8}
!30 = distinct !{!30, !31, !32}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!34, !5, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !5, i64 0, !5, i64 8, !5, i64 16}
!35 = !{!36, !5, i64 0}
!36 = !{!"_ZTSN5adept8internal16StackStorageOrigE", !5, i64 0, !5, i64 8, !5, i64 16, !24, i64 24, !24, i64 28, !24, i64 32, !24, i64 36}
!37 = !{!36, !5, i64 8}
!38 = !{!36, !5, i64 16}
!39 = !{!20, !14, i64 144}
!40 = !{!36, !24, i64 24}
!41 = !{!42, !24, i64 0}
!42 = !{!"_ZTSN5adept8internal9StatementE", !24, i64 0, !24, i64 4}
!43 = !{!44, !44, i64 0}
!44 = !{!"double", !6, i64 0}
!45 = !{!42, !24, i64 4}
!46 = !{!24, !24, i64 0}
!47 = distinct !{!47, !31, !32}
!48 = distinct !{!48, !31, !32}
!49 = distinct !{!49, !31, !32}
!50 = distinct !{!50, !31, !32}
!51 = !{!20, !24, i64 140}
!52 = !{!53, !24, i64 4}
!53 = !{!"_ZTSN5adept3GapE", !24, i64 0, !24, i64 4}
!54 = !{!53, !24, i64 0}
!55 = !{!23, !5, i64 0}
!56 = !{!57, !8, i64 16}
!57 = !{!"_ZTSNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EEE", !58, i64 0}
!58 = !{!"_ZTSNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EE10_List_implE", !59, i64 0}
!59 = !{!"_ZTSNSt8__detail17_List_node_headerE", !8, i64 16}
!60 = !{i64 0, i64 8, !26}
!61 = distinct !{!61, !31, !32}
!62 = !{!20, !24, i64 128}
!63 = !{!20, !24, i64 136}
!64 = distinct !{!64, !31, !32}
!65 = !{!29, !5, i64 8}
!66 = distinct !{!66, !31, !32}
!67 = distinct !{!67, !31, !32}
!68 = distinct !{!68, !31, !32}
!69 = distinct !{!69, !31, !32}
!70 = distinct !{!70, !31, !32}
!71 = !{!20, !24, i64 132}
!72 = !{!20, !14, i64 146}
!73 = !{!36, !24, i64 28}
!74 = !{!36, !24, i64 32}
!75 = !{!36, !24, i64 36}
!76 = !{!34, !5, i64 8}
!77 = distinct !{!77, !31, !32}
!78 = distinct !{!78, !31, !32}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZNK5adept8internal6PacketIdE3putEPd: %d"}
!81 = distinct !{!81, !"_ZNK5adept8internal6PacketIdE3putEPd"}
!82 = distinct !{!82, !31, !32}
!83 = distinct !{!83, !31, !32}
!84 = distinct !{!84, !31, !32, !85}
!85 = !{!"llvm.loop.isvectorized", i32 1}
!86 = distinct !{!86, !31, !32}
!87 = distinct !{!87, !31, !32, !85}
!88 = distinct !{!88, !31, !32}
!89 = !{!90}
!90 = distinct !{!90, !91, !"_ZNK5adept5Stack23jacobian_forward_kernelEPd: %gradient_multipass_b"}
!91 = distinct !{!91, !"_ZNK5adept5Stack23jacobian_forward_kernelEPd"}
!92 = !{!93, !90}
!93 = distinct !{!93, !94, !"_ZNK5adept8internal6PacketIdE3putEPd: %d"}
!94 = distinct !{!94, !"_ZNK5adept8internal6PacketIdE3putEPd"}
!95 = distinct !{!95, !31, !32}
!96 = distinct !{!96, !31, !32}
!97 = distinct !{!97, !31, !32}
!98 = distinct !{!98, !31, !32}
!99 = !{!100}
!100 = distinct !{!100, !101, !"_ZNK5adept5Stack23jacobian_forward_kernelEPd: %gradient_multipass_b"}
!101 = distinct !{!101, !"_ZNK5adept5Stack23jacobian_forward_kernelEPd"}
!102 = !{!103, !100}
!103 = distinct !{!103, !104, !"_ZNK5adept8internal6PacketIdE3putEPd: %d"}
!104 = distinct !{!104, !"_ZNK5adept8internal6PacketIdE3putEPd"}
!105 = distinct !{!105, !31, !32}
!106 = distinct !{!106, !31, !32}
!107 = !{!108}
!108 = distinct !{!108, !109, !"_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi: %gradient_multipass_b"}
!109 = distinct !{!109, !"_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi"}
!110 = distinct !{!110, !31, !32}
!111 = distinct !{!111, !31, !32}
!112 = distinct !{!112, !31, !32}
!113 = distinct !{!113, !31, !32}
!114 = distinct !{!114, !31, !32}
!115 = distinct !{!115, !31, !32}
!116 = distinct !{!116, !31, !32}
!117 = distinct !{!117, !31, !32}
!118 = distinct !{!118, !31, !32}
!119 = distinct !{!119, !31, !32}
!120 = distinct !{!120, !31, !32}
!121 = distinct !{!121, !31, !32}
!122 = distinct !{!122, !31, !32}
!123 = distinct !{!123, !31, !32}
!124 = distinct !{!124, !31, !32}
!125 = distinct !{!125, !31, !32}
!126 = distinct !{!126, !31, !32}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN5adept7versionB5cxx11Ev: %agg.result"}
!129 = distinct !{!129, !"_ZN5adept7versionB5cxx11Ev"}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN5adept16compiler_versionB5cxx11Ev: %agg.result"}
!132 = distinct !{!132, !"_ZN5adept16compiler_versionB5cxx11Ev"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZN5adept14compiler_flagsB5cxx11Ev: %agg.result"}
!135 = distinct !{!135, !"_ZN5adept14compiler_flagsB5cxx11Ev"}
!136 = !{!137, !8, i64 8}
!137 = !{!"_ZTSSi", !8, i64 8}
!138 = !{!139, !5, i64 8}
!139 = !{!"_ZTSN5adept5ArrayILi1EdLb0EEE", !5, i64 0, !5, i64 8, !140, i64 16, !140, i64 20}
!140 = !{!"_ZTSN5adept14ExpressionSizeILi1EEE", !6, i64 0}
!141 = !{!139, !5, i64 0}
!142 = distinct !{!142, !31, !32}
!143 = !{!144, !8, i64 0}
!144 = !{!"_ZTS7timeval", !8, i64 0, !8, i64 8}
!145 = !{!144, !8, i64 8}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZNK5adept5ArrayILi1EdLb1EEixIiEENS_8internal9enable_ifIXaaaaeqLi1ELi1Esr15all_scalar_intsILi1ET_EE5valueLb1EENS_20ActiveConstReferenceIdEEE4typeES5_: %agg.result"}
!148 = distinct !{!148, !"_ZNK5adept5ArrayILi1EdLb1EEixIiEENS_8internal9enable_ifIXaaaaeqLi1ELi1Esr15all_scalar_intsILi1ET_EE5valueLb1EENS_20ActiveConstReferenceIdEEE4typeES5_"}
!149 = !{!150, !5, i64 8}
!150 = !{!"_ZTSN5adept5ArrayILi1EdLb1EEE", !5, i64 8, !5, i64 16, !140, i64 24, !140, i64 28}
!151 = !{!152, !24, i64 0}
!152 = !{!"_ZTSN5adept8internal13GradientIndexILb1EEE", !24, i64 0}
!153 = !{!154, !24, i64 8}
!154 = !{!"_ZTSN5adept20ActiveConstReferenceIdEE", !5, i64 0, !24, i64 8}
!155 = !{!156, !44, i64 0}
!156 = !{!"_ZTSN5adept6ActiveIdEE", !44, i64 0, !24, i64 8}
!157 = !{!156, !24, i64 8}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZNK5adept5ArrayILi1EdLb1EEixIiEENS_8internal9enable_ifIXaaaaeqLi1ELi1Esr15all_scalar_intsILi1ET_EE5valueLb1EENS_20ActiveConstReferenceIdEEE4typeES5_: %agg.result"}
!160 = distinct !{!160, !"_ZNK5adept5ArrayILi1EdLb1EEixIiEENS_8internal9enable_ifIXaaaaeqLi1ELi1Esr15all_scalar_intsILi1ET_EE5valueLb1EENS_20ActiveConstReferenceIdEEE4typeES5_"}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZL4amaxN5adept6ActiveIdEES1_: %agg.result"}
!163 = distinct !{!163, !"_ZL4amaxN5adept6ActiveIdEES1_"}
!164 = distinct !{!164, !31, !32}
!165 = !{!166}
!166 = distinct !{!166, !167, !"_ZN5adeptmiINS_5ArrayILi1EdLb1EEENS_6ActiveIdEEEENS_8internal9enable_ifIXsr8internal15rank_compatibleIXsrT_4rankEXsrT0_4rankEEE5valueENS5_15BinaryOperationINS5_7promoteINS7_4typeENS8_4typeEE4typeES7_NS5_8SubtractES8_EEE4typeERKNS_10ExpressionISB_S7_EERKNSJ_ISC_S8_EE: %agg.result"}
!167 = distinct !{!167, !"_ZN5adeptmiINS_5ArrayILi1EdLb1EEENS_6ActiveIdEEEENS_8internal9enable_ifIXsr8internal15rank_compatibleIXsrT_4rankEXsrT0_4rankEEE5valueENS5_15BinaryOperationINS5_7promoteINS7_4typeENS8_4typeEE4typeES7_NS5_8SubtractES8_EEE4typeERKNS_10ExpressionISB_S7_EERKNSJ_ISC_S8_EE"}
!168 = !{!169}
!169 = distinct !{!169, !170, !"_ZN5adept3sumIdNS_8internal14UnaryOperationIdNS1_3ExpENS1_15BinaryOperationIdNS_5ArrayILi1EdLb1EEENS1_8SubtractENS_6ActiveIdEEEEEEEENS1_9enable_ifIXaasrT0_9is_activenesrSD_4rankLi0EENS8_IT_EEE4typeERKNS_10ExpressionISE_SD_EE: %agg.result"}
!170 = distinct !{!170, !"_ZN5adept3sumIdNS_8internal14UnaryOperationIdNS1_3ExpENS1_15BinaryOperationIdNS_5ArrayILi1EdLb1EEENS1_8SubtractENS_6ActiveIdEEEEEEEENS1_9enable_ifIXaasrT0_9is_activenesrSD_4rankLi0EENS8_IT_EEE4typeERKNS_10ExpressionISE_SD_EE"}
!171 = !{!154, !5, i64 0}
!172 = !{!173, !5, i64 0}
!173 = !{!"_ZTSN5adept8internal14UnaryOperationIdNS0_3LogENS_6ActiveIdEEEE", !5, i64 0}
!174 = !{!175, !5, i64 8}
!175 = !{!"_ZTSN5adept8internal15BinaryOperationIdNS0_14UnaryOperationIdNS0_3LogENS_6ActiveIdEEEENS0_3AddES5_EE", !173, i64 0, !5, i64 8}
!176 = !{!150, !5, i64 16}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_ZN5adept5ArrayILi1EdLb1EEclIiEENS_8internal9enable_ifIXaaaaeqLi1ELi1Esr15all_scalar_intsILi1ET_EE5valueLb1EENS_15ActiveReferenceIdEEE4typeES5_: %agg.result"}
!179 = distinct !{!179, !"_ZN5adept5ArrayILi1EdLb1EEclIiEENS_8internal9enable_ifIXaaaaeqLi1ELi1Esr15all_scalar_intsILi1ET_EE5valueLb1EENS_15ActiveReferenceIdEEE4typeES5_"}
!180 = distinct !{!180, !31, !32}
!181 = distinct !{!181, !31, !32}
!182 = !{!183}
!183 = distinct !{!183, !184, !"_ZN5adept5ArrayILi1EdLb1EEclIiEENS_8internal9enable_ifIXaaaaeqLi1ELi1Esr15all_scalar_intsILi1ET_EE5valueLb1EENS_15ActiveReferenceIdEEE4typeES5_: %agg.result"}
!184 = distinct !{!184, !"_ZN5adept5ArrayILi1EdLb1EEclIiEENS_8internal9enable_ifIXaaaaeqLi1ELi1Esr15all_scalar_intsILi1ET_EE5valueLb1EENS_15ActiveReferenceIdEEE4typeES5_"}
!185 = distinct !{!185, !31, !32}
!186 = distinct !{!186, !31, !32, !85}
!187 = distinct !{!187, !31, !32, !85}
!188 = distinct !{!188, !31, !32}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZN5adept5ArrayILi1EdLb1EEclIiEENS_8internal9enable_ifIXaaaaeqLi1ELi1Esr15all_scalar_intsILi1ET_EE5valueLb1EENS_15ActiveReferenceIdEEE4typeES5_: %agg.result"}
!191 = distinct !{!191, !"_ZN5adept5ArrayILi1EdLb1EEclIiEENS_8internal9enable_ifIXaaaaeqLi1ELi1Esr15all_scalar_intsILi1ET_EE5valueLb1EENS_15ActiveReferenceIdEEE4typeES5_"}
!192 = distinct !{!192, !31, !32}
!193 = distinct !{!193, !31, !32}
!194 = !{!195}
!195 = distinct !{!195, !196, !"_ZL9logsumexpPKdm: %x"}
!196 = distinct !{!196, !"_ZL9logsumexpPKdm"}
!197 = distinct !{!197, !31, !32, !85}
!198 = distinct !{!198, !31, !32}
!199 = distinct !{!199, !31, !32, !85}
!200 = distinct !{!200, !31, !32}
!201 = distinct !{!201, !31, !32, !85}
!202 = distinct !{!202, !31, !32, !85}
!203 = !{!204}
!204 = distinct !{!204, !205, !"_ZL11logsumexp_bPKdPdmd: %x"}
!205 = distinct !{!205, !"_ZL11logsumexp_bPKdPdmd"}
!206 = distinct !{!206, !31, !32}
!207 = distinct !{!207, !31, !32}
!208 = distinct !{!208, !31, !32, !85}
!209 = distinct !{!209, !31, !32, !85}
!210 = distinct !{!210, !31, !32, !85}
!211 = distinct !{!211, !31, !32, !85}
!212 = distinct !{!212, !31, !32}
!213 = distinct !{!213, !31, !32}
!214 = !{!215}
!215 = distinct !{!215, !216, !"diffe_ZL9logsumexpPKdm: %x"}
!216 = distinct !{!216, !"diffe_ZL9logsumexpPKdm"}
!217 = !{!"true"}
!218 = !{!219}
!219 = distinct !{!219, !220, !"_ZL9logsumexpPKdm: %x"}
!220 = distinct !{!220, !"_ZL9logsumexpPKdm"}
!221 = distinct !{!221, !31, !32, !85}
!222 = distinct !{!222, !31, !32, !85}
!223 = distinct !{!223, !31, !32}
!224 = distinct !{!224, !31, !32, !85}
!225 = distinct !{!225, !31, !32, !85}
!226 = distinct !{!226, !31, !32, !85}
!227 = distinct !{}
!228 = distinct !{}
!229 = distinct !{}
!230 = distinct !{!230, !31, !32, !85}
!231 = distinct !{!231, !85}
!232 = distinct !{!232, !233, !85}
!233 = !{!"llvm.loop.unroll.runtime.disable"}
!234 = distinct !{!234, !31, !32}
!235 = distinct !{!235, !31, !32}
!236 = !{!59, !8, i64 16}
!237 = !{!20, !14, i64 147}
!238 = !{!20, !14, i64 148}
!239 = !{!240}
!240 = distinct !{!240, !241, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: %agg.result"}
!241 = distinct !{!241, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!242 = distinct !{!242, !31, !32}
!243 = !{!244, !24, i64 8}
!244 = !{!"_ZTSN5adept7StorageIdEE", !5, i64 0, !24, i64 8, !24, i64 12, !24, i64 16}
!245 = !{!244, !24, i64 12}
!246 = !{!244, !24, i64 16}
!247 = !{!244, !5, i64 0}
!248 = !{!249}
!249 = distinct !{!249, !250, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: %agg.result"}
!250 = distinct !{!250, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!251 = !{!252, !254, i64 32}
!252 = !{!"_ZTSSt8ios_base", !8, i64 8, !8, i64 16, !253, i64 24, !254, i64 28, !254, i64 32, !5, i64 40, !255, i64 48, !6, i64 64, !24, i64 192, !5, i64 200, !256, i64 208}
!253 = !{!"_ZTSSt13_Ios_Fmtflags", !6, i64 0}
!254 = !{!"_ZTSSt12_Ios_Iostate", !6, i64 0}
!255 = !{!"_ZTSNSt8ios_base6_WordsE", !5, i64 0, !8, i64 8}
!256 = !{!"_ZTSSt6locale", !5, i64 0}
!257 = !{!258}
!258 = distinct !{!258, !259}
!259 = distinct !{!259, !"LVerDomain"}
!260 = !{!261}
!261 = distinct !{!261, !259}
!262 = distinct !{!262, !31, !32, !85}
!263 = distinct !{!263, !31, !32, !85}
!264 = !{!265}
!265 = distinct !{!265, !266}
!266 = distinct !{!266, !"LVerDomain"}
!267 = !{!268}
!268 = distinct !{!268, !266}
!269 = distinct !{!269, !31, !32, !85}
!270 = distinct !{!270, !31, !32, !85}
!271 = !{!272}
!272 = distinct !{!272, !273, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: %agg.result"}
!273 = distinct !{!273, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!274 = distinct !{!274, !31, !32}
!275 = !{!276, !5, i64 8}
!276 = !{!"_ZTSN5adept8internal12ArrayWrapperILi1EdLb1EEE", !5, i64 0, !5, i64 8}
!277 = !{!276, !5, i64 0}
!278 = !{!279, !5, i64 16}
!279 = !{!"_ZTSN5adept8internal15BinaryOperationIdNS_5ArrayILi1EdLb1EEENS0_8SubtractENS_6ActiveIdEEEE", !276, i64 0, !5, i64 16}
!280 = distinct !{!280, !31, !32}
