; ModuleID = 'matdescent-unopt.ll'
source_filename = "matdescent.cpp"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::ios_base::Init" = type { i8 }
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
%struct.timeval = type { i64, i64 }
%"class.adept::Array" = type { %"struct.adept::internal::GradientIndex", double*, %"class.adept::Storage"*, %"class.adept::ExpressionSize", %"class.adept::ExpressionSize" }
%"struct.adept::internal::GradientIndex" = type { i32 }
%"class.adept::Storage" = type <{ double*, i32, i32, i32, [4 x i8] }>
%"class.adept::ExpressionSize" = type { [2 x i32] }
%"class.adept::Array.4" = type { double*, %"class.adept::Storage"*, %"class.adept::ExpressionSize.7", %"class.adept::ExpressionSize.7" }
%"class.adept::ExpressionSize.7" = type { [1 x i32] }
%"class.adept::Active" = type <{ double, i32, [4 x i8] }>
%"struct.adept::internal::BinaryOperation.16" = type { %"class.adept::Active"*, %"struct.adept::internal::BinaryOperation" }
%"struct.adept::internal::BinaryOperation" = type { %"class.adept::ActiveReference"*, %"class.adept::ActiveReference"* }
%"class.adept::ActiveReference" = type <{ double*, i32, [4 x i8] }>
%"class.adept::Array.13" = type { %"struct.adept::internal::GradientIndex", double*, %"class.adept::Storage"*, %"class.adept::ExpressionSize.7", %"class.adept::ExpressionSize.7" }
%"struct.adept::Expression" = type { i8 }
%"struct.adept::Expression.5" = type { i8 }
%"struct.adept::Expression.17" = type { i8 }
%"struct.std::_List_node" = type { %"struct.std::__detail::_List_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [8 x i8] }
%"class.std::__cxx11::basic_string" = type { %"struct.std::__cxx11::basic_string<char>::_Alloc_hider", i64, %union.anon }
%"struct.std::__cxx11::basic_string<char>::_Alloc_hider" = type { i8* }
%union.anon = type { i64, [8 x i8] }
%"class.adept::invalid_dimension" = type { %"class.adept::array_exception" }
%"class.adept::array_exception" = type { %"class.adept::exception" }
%"class.adept::exception" = type { %"class.std::exception", %"class.std::__cxx11::basic_string" }
%"class.std::exception" = type { i32 (...)** }
%"class.adept::invalid_operation" = type { %"class.adept::array_exception" }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::basic_ostream.base" }
%"class.std::basic_istream.base" = type { i32 (...)**, i64 }
%"class.std::basic_ostream.base" = type { i32 (...)** }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.std::basic_streambuf" = type { i32 (...)**, i8*, i8*, i8*, i8*, i8*, i8*, %"class.std::locale" }
%"class.std::locale" = type { %"class.std::locale::_Impl"* }
%"class.std::locale::_Impl" = type { i32, %"class.std::locale::facet"**, i64, %"class.std::locale::facet"**, i8** }
%"class.std::locale::facet" = type <{ i32 (...)**, i32, [4 x i8] }>
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_get"* }
%"class.std::ios_base" = type { i32 (...)**, i64, i64, i32, i32, i32, %"struct.std::ios_base::_Callback_list"*, %"struct.std::ios_base::_Words", [8 x %"struct.std::ios_base::_Words"], i32, %"struct.std::ios_base::_Words"*, %"class.std::locale" }
%"struct.std::ios_base::_Callback_list" = type { %"struct.std::ios_base::_Callback_list"*, void (i32, %"class.std::ios_base"*, i32)*, i32, i32 }
%"struct.std::ios_base::_Words" = type { i8*, i64 }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::ctype" = type <{ %"class.std::locale::facet.base", [4 x i8], %struct.__locale_struct*, i8, [7 x i8], i32*, i32*, i16*, i8, [256 x i8], [256 x i8], i8, [6 x i8] }>
%"class.std::locale::facet.base" = type <{ i32 (...)**, i32 }>
%struct.__locale_struct = type { [13 x %struct.__locale_data*], i16*, i32*, i32*, [13 x i8*] }
%struct.__locale_data = type opaque
%"class.std::num_put" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::num_get" = type { %"class.std::locale::facet.base", [4 x i8] }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"class.adept::empty_array" = type { %"class.adept::array_exception" }
%"class.adept::inner_dimension_mismatch" = type { %"class.adept::array_exception" }
%"class.adept::size_mismatch" = type { %"class.adept::array_exception" }
%"class.adept::gradient_out_of_range" = type { %"class.adept::autodiff_exception" }
%"class.adept::autodiff_exception" = type { %"class.adept::exception" }
%"class.adept::gradients_not_initialized" = type { %"class.adept::autodiff_exception" }

$_ZN5adept5StackC2Eb = comdat any

$_ZN5adept6ActiveIdED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN5adept5ArrayILi2EdLb1EE6resizeEPKib = comdat any

$_ZN5adept7StorageIdE11remove_linkEv = comdat any

$_ZN5adept8internal18exception_locationB5cxx11EPKci = comdat any

$_ZN5adept17invalid_dimensionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN5adept7StorageIdEC2Eib = comdat any

$_ZN5adept17invalid_operationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN5adept17invalid_operationD0Ev = comdat any

$_ZNK5adept9exception4whatEv = comdat any

$_ZN5adept15array_exceptionD0Ev = comdat any

$_ZN5adept9exceptionD0Ev = comdat any

$_ZN5adept17invalid_dimensionD0Ev = comdat any

$_ZN5adept5ArrayILi1EdLb0EE6resizeEPKib = comdat any

$_ZN5adept6ActiveIdEC2IiEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE = comdat any

$_ZN5adept6matmulIdNS_5ArrayILi2EdLb1EEEdNS1_ILi1EdLb0EEEEENS_8internal9enable_ifIXaaaaooeqsrT0_4rankLi1EeqsrS6_4rankLi2EooeqsrT2_4rankLi1EeqsrS7_4rankLi2EgtplsrS6_4ranksrS7_4rankLi2EENS1_IXmiplsrS6_4ranksrS7_4rankLi2EENS4_7promoteIT_T1_E4typeEXoosrS6_9is_activesrS7_9is_activeEEEE4typeERKNS_10ExpressionIS9_S6_EERKNSG_ISA_S7_EE = comdat any

$_ZN5adept8internal7matmul_IdLb1ELb0EEENS_5ArrayILi1ET_XooT0_T1_EEERKNS2_ILi2ES3_XT0_EEERKNS2_ILi1ES3_XT1_EEE = comdat any

$_ZN5adept8internal22check_inner_dimensionsINS_5ArrayILi2EdLb1EEENS2_ILi1EdLb0EEEEEvRKT_RKT0_ = comdat any

$_ZN5adept11empty_arrayC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN5adept24inner_dimension_mismatchC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN5adept9exceptionD2Ev = comdat any

$_ZN5adept11empty_arrayD0Ev = comdat any

$_ZN5adept24inner_dimension_mismatchD0Ev = comdat any

$_ZN5adept5ArrayILi1EdLb1EE6resizeEPKib = comdat any

$_ZN5adept5ArrayILi2EdLb1EEaSIdS1_EENS_8internal9enable_ifIXeqsrT0_4rankLi2EERS1_E4typeERKNS_10ExpressionIT_S5_EE = comdat any

$_ZN5adept13size_mismatchC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZNK5adept14ExpressionSizeILi2EE3strB5cxx11Ev = comdat any

$_ZNK5adept5ArrayILi2EdLb1EE18expression_string_B5cxx11Ev = comdat any

$_ZN5adept5ArrayILi2EdLb1EE18assign_expression_ILi2ELb1ELb1ES1_EENS_8internal9enable_ifIXaaT0_T1_EvE4typeET2_ = comdat any

$_ZN5adept13size_mismatchD0Ev = comdat any

$_ZN5adept6ActiveIdEaSIdNS_8internal15BinaryOperationIdS1_NS3_3AddENS4_IdNS_15ActiveReferenceIdEENS3_8MultiplyES7_EEEEEENS3_9enable_ifIXaasrT0_9is_activeeqsrSC_4rankLi0EERS1_E4typeERKNS_10ExpressionIT_SC_EE = comdat any

$_ZN5adept5Stack13set_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPKS4_ = comdat any

$_ZN5adept21gradient_out_of_rangeD0Ev = comdat any

$_ZNK5adept5Stack13get_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPS4_ = comdat any

$_ZN5adept25gradients_not_initializedD0Ev = comdat any

$_Z11matvec_realPdS_ = comdat any

$_ZTSN5adept17invalid_dimensionE = comdat any

$_ZTSN5adept15array_exceptionE = comdat any

$_ZTSN5adept9exceptionE = comdat any

$_ZTIN5adept9exceptionE = comdat any

$_ZTIN5adept15array_exceptionE = comdat any

$_ZTIN5adept17invalid_dimensionE = comdat any

$_ZTSN5adept17invalid_operationE = comdat any

$_ZTIN5adept17invalid_operationE = comdat any

$_ZTVN5adept17invalid_operationE = comdat any

$_ZTVN5adept15array_exceptionE = comdat any

$_ZTVN5adept9exceptionE = comdat any

$_ZTVN5adept17invalid_dimensionE = comdat any

$_ZTSN5adept11empty_arrayE = comdat any

$_ZTIN5adept11empty_arrayE = comdat any

$_ZTSN5adept24inner_dimension_mismatchE = comdat any

$_ZTIN5adept24inner_dimension_mismatchE = comdat any

$_ZTVN5adept11empty_arrayE = comdat any

$_ZTVN5adept24inner_dimension_mismatchE = comdat any

$_ZTSN5adept13size_mismatchE = comdat any

$_ZTIN5adept13size_mismatchE = comdat any

$_ZTVN5adept13size_mismatchE = comdat any

$_ZTSN5adept21gradient_out_of_rangeE = comdat any

$_ZTSN5adept18autodiff_exceptionE = comdat any

$_ZTIN5adept18autodiff_exceptionE = comdat any

$_ZTIN5adept21gradient_out_of_rangeE = comdat any

$_ZTVN5adept21gradient_out_of_rangeE = comdat any

$_ZTSN5adept25gradients_not_initializedE = comdat any

$_ZTIN5adept25gradients_not_initializedE = comdat any

$_ZTVN5adept25gradients_not_initializedE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [21 x i8] c"%0.6f res'=%f %f %f\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Negative array dimension requested\00", align 1
@.str.2 = private unnamed_addr constant [89 x i8] c"/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src/adept2/include/adept/Array.h\00", align 1
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSN5adept17invalid_dimensionE = linkonce_odr dso_local constant [28 x i8] c"N5adept17invalid_dimensionE\00", comdat, align 1
@_ZTSN5adept15array_exceptionE = linkonce_odr dso_local constant [26 x i8] c"N5adept15array_exceptionE\00", comdat, align 1
@_ZTSN5adept9exceptionE = linkonce_odr dso_local constant [19 x i8] c"N5adept9exceptionE\00", comdat, align 1
@_ZTISt9exception = external dso_local constant i8*
@_ZTIN5adept9exceptionE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @_ZTSN5adept9exceptionE, i32 0, i32 0), i8* bitcast (i8** @_ZTISt9exception to i8*) }, comdat, align 8
@_ZTIN5adept15array_exceptionE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @_ZTSN5adept15array_exceptionE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept9exceptionE to i8*) }, comdat, align 8
@_ZTIN5adept17invalid_dimensionE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_ZTSN5adept17invalid_dimensionE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept15array_exceptionE to i8*) }, comdat, align 8
@_ZN5adept8internal21array_row_major_orderE = external dso_local local_unnamed_addr global i8, align 1
@.str.3 = private unnamed_addr constant [58 x i8] c"Attempt to remove more links to a storage object than set\00", align 1
@.str.4 = private unnamed_addr constant [91 x i8] c"/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src/adept2/include/adept/Storage.h\00", align 1
@_ZTSN5adept17invalid_operationE = linkonce_odr dso_local constant [28 x i8] c"N5adept17invalid_operationE\00", comdat, align 1
@_ZTIN5adept17invalid_operationE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_ZTSN5adept17invalid_operationE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept15array_exceptionE to i8*) }, comdat, align 8
@.str.5 = private unnamed_addr constant [28 x i8] c"A misuse of arrays occurred\00", align 1
@_ZTVN5adept17invalid_operationE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_operationE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::invalid_operation"*)* @_ZN5adept17invalid_operationD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTVN5adept15array_exceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept15array_exceptionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::array_exception"*)* @_ZN5adept15array_exceptionD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTVN5adept9exceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept9exceptionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZN5adept21_stack_current_threadE = external thread_local local_unnamed_addr global %"class.adept::Stack"*, align 8
@_ZN5adept8internal26n_storage_objects_deleted_E = external dso_local local_unnamed_addr global i32, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c" (in \00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c")\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x i8*], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTVN5adept17invalid_dimensionE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_dimensionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::invalid_dimension"*)* @_ZN5adept17invalid_dimensionD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZN5adept8internal26n_storage_objects_created_E = external dso_local local_unnamed_addr global i32, align 4
@_ZTISt9bad_alloc = external dso_local constant i8*
@_ZTVSt9bad_alloc = external dso_local unnamed_addr constant { [5 x i8*] }, align 8
@.str.12 = private unnamed_addr constant [61 x i8] c"Attempt to perform matrix multiplication with empty array(s)\00", align 1
@.str.13 = private unnamed_addr constant [90 x i8] c"/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src/adept2/include/adept/matmul.h\00", align 1
@_ZTSN5adept11empty_arrayE = linkonce_odr dso_local constant [22 x i8] c"N5adept11empty_arrayE\00", comdat, align 1
@_ZTIN5adept11empty_arrayE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @_ZTSN5adept11empty_arrayE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept15array_exceptionE to i8*) }, comdat, align 8
@.str.14 = private unnamed_addr constant [49 x i8] c"Inner dimension mismatch in array multiplication\00", align 1
@_ZTSN5adept24inner_dimension_mismatchE = linkonce_odr dso_local constant [35 x i8] c"N5adept24inner_dimension_mismatchE\00", comdat, align 1
@_ZTIN5adept24inner_dimension_mismatchE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([35 x i8], [35 x i8]* @_ZTSN5adept24inner_dimension_mismatchE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept15array_exceptionE to i8*) }, comdat, align 8
@_ZTVN5adept11empty_arrayE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept11empty_arrayE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::empty_array"*)* @_ZN5adept11empty_arrayD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTVN5adept24inner_dimension_mismatchE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept24inner_dimension_mismatchE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::inner_dimension_mismatch"*)* @_ZN5adept24inner_dimension_mismatchD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTSN5adept13size_mismatchE = linkonce_odr dso_local constant [24 x i8] c"N5adept13size_mismatchE\00", comdat, align 1
@_ZTIN5adept13size_mismatchE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @_ZTSN5adept13size_mismatchE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept15array_exceptionE to i8*) }, comdat, align 8
@.str.18 = private unnamed_addr constant [21 x i8] c" object assigned to \00", align 1
@.str.19 = private unnamed_addr constant [21 x i8] c"basic_string::append\00", align 1
@_ZTVN5adept13size_mismatchE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept13size_mismatchE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::size_mismatch"*)* @_ZN5adept13size_mismatchD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@.str.20 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"aMatrix\00", align 1
@.str.24 = private unnamed_addr constant [99 x i8] c"Gradient index out of range: probably aReal objects have been created after a set_gradient(s) call\00", align 1
@_ZTSN5adept21gradient_out_of_rangeE = linkonce_odr dso_local constant [32 x i8] c"N5adept21gradient_out_of_rangeE\00", comdat, align 1
@_ZTSN5adept18autodiff_exceptionE = linkonce_odr dso_local constant [29 x i8] c"N5adept18autodiff_exceptionE\00", comdat, align 1
@_ZTIN5adept18autodiff_exceptionE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @_ZTSN5adept18autodiff_exceptionE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept9exceptionE to i8*) }, comdat, align 8
@_ZTIN5adept21gradient_out_of_rangeE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @_ZTSN5adept21gradient_out_of_rangeE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept18autodiff_exceptionE to i8*) }, comdat, align 8
@_ZTVN5adept21gradient_out_of_rangeE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21gradient_out_of_rangeE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::gradient_out_of_range"*)* @_ZN5adept21gradient_out_of_rangeD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@.str.25 = private unnamed_addr constant [107 x i8] c"Gradients not initialized: at least one call to set_gradient(s) is needed before a forward or reverse pass\00", align 1
@_ZTSN5adept25gradients_not_initializedE = linkonce_odr dso_local constant [36 x i8] c"N5adept25gradients_not_initializedE\00", comdat, align 1
@_ZTIN5adept25gradients_not_initializedE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @_ZTSN5adept25gradients_not_initializedE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept18autodiff_exceptionE to i8*) }, comdat, align 8
@_ZTVN5adept25gradients_not_initializedE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept25gradients_not_initializedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::gradients_not_initialized"*)* @_ZN5adept25gradients_not_initializedD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@.str.26 = private unnamed_addr constant [23 x i8] c"tapenade %0.6f res=%f\0A\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"tapenade mv %0.6f res=%f\0A\00", align 1
@.str.28 = private unnamed_addr constant [30 x i8] c"tapenade %0.6f res'=%f %f %f\0A\00", align 1
@.str.29 = private unnamed_addr constant [14 x i8] c"%0.6f res=%f\0A\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"mv %0.6f res=%f\0A\00", align 1
@enzyme_const = external dso_local local_unnamed_addr global i32, align 4
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_matdescent.cpp, i8* null }]

; Function Attrs: norecurse nounwind readonly uwtable willreturn mustprogress
define dso_local float @_Z5tdiffP7timevalS0_(%struct.timeval* nocapture readonly %start, %struct.timeval* nocapture readonly %end) local_unnamed_addr #0 {
entry:
  %tv_sec = getelementptr inbounds %struct.timeval, %struct.timeval* %end, i64 0, i32 0
  %0 = load i64, i64* %tv_sec, align 8, !tbaa !2
  %tv_sec1 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 0
  %1 = load i64, i64* %tv_sec1, align 8, !tbaa !2
  %sub = sub nsw i64 %0, %1
  %conv = sitofp i64 %sub to double
  %tv_usec = getelementptr inbounds %struct.timeval, %struct.timeval* %end, i64 0, i32 1
  %2 = load i64, i64* %tv_usec, align 8, !tbaa !7
  %tv_usec2 = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 1
  %3 = load i64, i64* %tv_usec2, align 8, !tbaa !7
  %sub3 = sub nsw i64 %2, %3
  %conv4 = sitofp i64 %sub3 to double
  %mul = fmul fast double %conv4, 0x3EB0C6F7A0B5ED8D
  %add = fadd fast double %mul, %conv
  %conv5 = fptrunc double %add to float
  ret float %conv5
}

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1)) unnamed_addr #2

; Function Attrs: nofree nounwind
declare dso_local i32 @__cxa_atexit(void (i8*)*, i8*, i8*) local_unnamed_addr #3

; Function Attrs: nounwind uwtable mustprogress
define dso_local void @_Z13matvec_real_bPdS_S_d(double* nocapture readonly %mat, double* nocapture %matb, double* nocapture readonly %vec, double %matvec_realb) local_unnamed_addr #4 {
entry:
  %call = tail call noalias dereferenceable_or_null(16000) i8* @malloc(i64 16000) #27
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16000) %call, i8 0, i64 16000, i1 false)
  %0 = bitcast i8* %call to double*
  %call1 = tail call noalias dereferenceable_or_null(16000) i8* @malloc(i64 16000) #27
  %1 = bitcast i8* %call1 to double*
  br label %for.body4

for.cond28.preheader:                             ; preds = %for.cond.cleanup9
  %mul36 = fmul fast double %matvec_realb, 2.000000e+00
  br label %for.body31

for.body4:                                        ; preds = %for.cond.cleanup9, %entry
  %indvars.iv138 = phi i64 [ 0, %entry ], [ %indvars.iv.next139, %for.cond.cleanup9 ]
  %arrayidx6 = getelementptr inbounds double, double* %1, i64 %indvars.iv138
  store double 0.000000e+00, double* %arrayidx6, align 8, !tbaa !8
  %2 = mul nuw nsw i64 %indvars.iv138, 2000
  br label %for.body10

for.cond.cleanup9:                                ; preds = %for.body10
  store double %add18, double* %arrayidx6, align 8, !tbaa !8
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1
  %exitcond141.not = icmp eq i64 %indvars.iv.next139, 2000
  br i1 %exitcond141.not, label %for.cond28.preheader, label %for.body4, !llvm.loop !10

for.body10:                                       ; preds = %for.body10, %for.body4
  %indvars.iv135 = phi i64 [ 0, %for.body4 ], [ %indvars.iv.next136, %for.body10 ]
  %add18128 = phi double [ 0.000000e+00, %for.body4 ], [ %add18, %for.body10 ]
  %3 = add nuw nsw i64 %indvars.iv135, %2
  %arrayidx14 = getelementptr inbounds double, double* %mat, i64 %3
  %4 = load double, double* %arrayidx14, align 8, !tbaa !8
  %arrayidx16 = getelementptr inbounds double, double* %vec, i64 %indvars.iv135
  %5 = load double, double* %arrayidx16, align 8, !tbaa !8
  %mul17 = fmul fast double %5, %4
  %add18 = fadd fast double %mul17, %add18128
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next136, 2000
  br i1 %exitcond.not, label %for.cond.cleanup9, label %for.body10, !llvm.loop !13

for.body31:                                       ; preds = %for.body31, %for.cond28.preheader
  %indvars.iv133 = phi i64 [ 2000, %for.cond28.preheader ], [ %indvars.iv.next134, %for.body31 ]
  %arrayidx33 = getelementptr inbounds double, double* %0, i64 %indvars.iv133
  %6 = load double, double* %arrayidx33, align 8, !tbaa !8
  %arrayidx35 = getelementptr inbounds double, double* %1, i64 %indvars.iv133
  %7 = load double, double* %arrayidx35, align 8, !tbaa !8
  %mul37 = fmul fast double %mul36, %7
  %add38 = fadd fast double %mul37, %6
  store double %add38, double* %arrayidx33, align 8, !tbaa !8
  %indvars.iv.next134 = add nsw i64 %indvars.iv133, -1
  %cmp29.not = icmp eq i64 %indvars.iv133, 0
  br i1 %cmp29.not, label %for.cond49.preheader, label %for.body31, !llvm.loop !14

for.cond49.preheader:                             ; preds = %for.cond.cleanup51, %for.body31
  %indvars.iv130 = phi i64 [ %indvars.iv.next131, %for.cond.cleanup51 ], [ 2000, %for.body31 ]
  %8 = mul nuw nsw i64 %indvars.iv130, 2000
  %arrayidx60 = getelementptr inbounds double, double* %0, i64 %indvars.iv130
  %9 = load double, double* %arrayidx60, align 8, !tbaa !8
  br label %for.body52

for.cond.cleanup46:                               ; preds = %for.cond.cleanup51
  tail call void @free(i8* %call1) #27
  tail call void @free(i8* %call) #27
  ret void

for.cond.cleanup51:                               ; preds = %for.body52
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, -1
  %cmp45.not = icmp eq i64 %indvars.iv130, 0
  br i1 %cmp45.not, label %for.cond.cleanup46, label %for.cond49.preheader, !llvm.loop !15

for.body52:                                       ; preds = %for.body52, %for.cond49.preheader
  %indvars.iv = phi i64 [ 2000, %for.cond49.preheader ], [ %indvars.iv.next, %for.body52 ]
  %10 = add nuw nsw i64 %indvars.iv, %8
  %arrayidx56 = getelementptr inbounds double, double* %matb, i64 %10
  %11 = load double, double* %arrayidx56, align 8, !tbaa !8
  %arrayidx58 = getelementptr inbounds double, double* %vec, i64 %indvars.iv
  %12 = load double, double* %arrayidx58, align 8, !tbaa !8
  %mul61 = fmul fast double %9, %12
  %add62 = fadd fast double %mul61, %11
  store double %add62, double* %arrayidx56, align 8, !tbaa !8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp50.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp50.not, label %for.cond.cleanup51, label %for.body52, !llvm.loop !16
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readnone %argv) local_unnamed_addr #8 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %start.i65 = alloca %struct.timeval, align 8
  %end.i66 = alloca %struct.timeval, align 8
  %start5.i67 = alloca %struct.timeval, align 8
  %end6.i68 = alloca %struct.timeval, align 8
  %start17.i69 = alloca %struct.timeval, align 8
  %end18.i70 = alloca %struct.timeval, align 8
  %start.i44 = alloca %struct.timeval, align 8
  %end.i45 = alloca %struct.timeval, align 8
  %start5.i = alloca %struct.timeval, align 8
  %end6.i = alloca %struct.timeval, align 8
  %start17.i = alloca %struct.timeval, align 8
  %end18.i = alloca %struct.timeval, align 8
  %gradient.i175.i = alloca double, align 8
  %gradient.i.i = alloca double, align 8
  %dim.i.i.i = alloca [7 x i32], align 16
  %start.i = alloca %struct.timeval, align 8
  %end.i = alloca %struct.timeval, align 8
  %stack.i = alloca %"class.adept::Stack", align 8
  %mat.i = alloca %"class.adept::Array", align 8
  %vec.i = alloca %"class.adept::Array.4", align 8
  %resa.i = alloca %"class.adept::Active", align 8
  %ref.tmp39.i = alloca double, align 8
  %start69.i = alloca %struct.timeval, align 8
  %end70.i = alloca %struct.timeval, align 8
  %stack72.i = alloca %"class.adept::Stack", align 8
  %mat73.i = alloca %"class.adept::Array", align 8
  %vec106.i = alloca %"class.adept::Array.4", align 8
  %resa131.i = alloca %"class.adept::Active", align 8
  %ref.tmp134.i = alloca double, align 8
  %call = tail call noalias nonnull dereferenceable(32000000) i8* @_Znam(i64 32000000) #28
  %0 = bitcast i8* %call to double*
  %call1 = tail call noalias nonnull dereferenceable(32000000) i8* @_Znam(i64 32000000) #28
  %call2 = tail call noalias nonnull dereferenceable(16000) i8* @_Znam(i64 16000) #28
  br label %for.body

for.body:                                         ; preds = %for.body, %entry
  %indvars.iv150 = phi i64 [ 0, %entry ], [ %indvars.iv.next151, %for.body ]
  %1 = trunc i64 %indvars.iv150 to i32
  %2 = mul i32 %1, 3
  %conv = sitofp i32 %2 to double
  %arrayidx = getelementptr inbounds double, double* %0, i64 %indvars.iv150
  store double %conv, double* %arrayidx, align 8, !tbaa !8
  %indvars.iv.next151 = add nuw nsw i64 %indvars.iv150, 1
  %exitcond153.not = icmp eq i64 %indvars.iv.next151, 4000000
  br i1 %exitcond153.not, label %for.body8.preheader, label %for.body, !llvm.loop !17

for.body8.preheader:                              ; preds = %for.body
  %3 = bitcast i8* %call1 to double*
  %4 = bitcast i8* %call2 to double*
  br label %for.body8

for.cond.cleanup7:                                ; preds = %for.body8
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(32000000) %call1, i8 0, i64 32000000, i1 false)
  %5 = bitcast %struct.timeval* %start.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #27
  %6 = bitcast %struct.timeval* %end.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #27
  %7 = bitcast %"class.adept::Stack"* %stack.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %7) #27
  call void @_ZN5adept5StackC2Eb(%"class.adept::Stack"* nonnull dereferenceable(149) %stack.i, i1 zeroext true)
  %8 = bitcast %"class.adept::Array"* %mat.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %8) #27
  %value_.i.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %mat.i, i64 0, i32 0, i32 0
  store i32 -9999, i32* %value_.i.i.i, align 8, !tbaa !18
  %storage_.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %mat.i, i64 0, i32 2
  store %"class.adept::Storage"* null, %"class.adept::Storage"** %storage_.i.i, align 8, !tbaa !21
  %9 = bitcast [7 x i32]* %dim.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %9) #27
  %arrayinit.begin.i.i.i = getelementptr inbounds [7 x i32], [7 x i32]* %dim.i.i.i, i64 0, i64 0
  store i32 2000, i32* %arrayinit.begin.i.i.i, align 16, !tbaa !25
  %arrayinit.element.i.i.i = getelementptr inbounds [7 x i32], [7 x i32]* %dim.i.i.i, i64 0, i64 1
  store i32 2000, i32* %arrayinit.element.i.i.i, align 4, !tbaa !25
  %arrayinit.element2.i.i.i = getelementptr inbounds [7 x i32], [7 x i32]* %dim.i.i.i, i64 0, i64 2
  %10 = bitcast i32* %arrayinit.element2.i.i.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(20) %10, i8 -1, i64 20, i1 false)
  invoke void @_ZN5adept5ArrayILi2EdLb1EE6resizeEPKib(%"class.adept::Array"* nonnull dereferenceable(40) %mat.i, i32* nonnull %arrayinit.begin.i.i.i, i1 zeroext false)
          to label %_ZN5adept5ArrayILi2EdLb1EEC2Eii.exit.i unwind label %lpad.i

_ZN5adept5ArrayILi2EdLb1EEC2Eii.exit.i:           ; preds = %for.cond.cleanup7
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %9) #27
  %arrayidx.i13.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %mat.i, i64 0, i32 4, i32 0, i64 0
  %arrayidx.i11.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %mat.i, i64 0, i32 4, i32 0, i64 1
  %data_.i.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %mat.i, i64 0, i32 1
  br label %for.cond1.preheader.i

for.cond1.preheader.i:                            ; preds = %for.cond.cleanup3.i, %_ZN5adept5ArrayILi2EdLb1EEC2Eii.exit.i
  %indvars.iv311.i = phi i64 [ 0, %_ZN5adept5ArrayILi2EdLb1EEC2Eii.exit.i ], [ %indvars.iv.next312.i, %for.cond.cleanup3.i ]
  %11 = mul nuw nsw i64 %indvars.iv311.i, 2000
  %12 = trunc i64 %indvars.iv311.i to i32
  br label %invoke.cont6.i

for.cond.cleanup.i:                               ; preds = %for.cond.cleanup3.i
  %13 = bitcast %"class.adept::Array.4"* %vec.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %13) #27
  %storage_.i24.i = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %vec.i, i64 0, i32 1
  store %"class.adept::Storage"* null, %"class.adept::Storage"** %storage_.i24.i, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %9) #27
  store i32 2000, i32* %arrayinit.begin.i.i.i, align 16, !tbaa !25
  %14 = bitcast i32* %arrayinit.element.i.i.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(24) %14, i8 -1, i64 24, i1 false)
  invoke void @_ZN5adept5ArrayILi1EdLb0EE6resizeEPKib(%"class.adept::Array.4"* nonnull dereferenceable(24) %vec.i, i32* nonnull %arrayinit.begin.i.i.i, i1 zeroext false)
          to label %_ZN5adept5ArrayILi1EdLb0EEC2Ei.exit.i unwind label %lpad14.i

_ZN5adept5ArrayILi1EdLb0EEC2Ei.exit.i:            ; preds = %for.cond.cleanup.i
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %9) #27
  %data_.i.i = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %vec.i, i64 0, i32 0
  %15 = load double*, double** %data_.i.i, align 8, !tbaa !29
  %arrayidx.i4.i.i = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %vec.i, i64 0, i32 3, i32 0, i64 0
  %16 = load i32, i32* %arrayidx.i4.i.i, align 4, !tbaa !25
  %17 = sext i32 %16 to i64
  br label %for.body20.i

lpad.i:                                           ; preds = %for.cond.cleanup7
  %18 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup63.i

for.cond.cleanup3.i:                              ; preds = %invoke.cont8.i
  %indvars.iv.next312.i = add nuw nsw i64 %indvars.iv311.i, 1
  %exitcond314.not.i = icmp eq i64 %indvars.iv.next312.i, 2000
  br i1 %exitcond314.not.i, label %for.cond.cleanup.i, label %for.cond1.preheader.i, !llvm.loop !30

invoke.cont6.i:                                   ; preds = %invoke.cont8.i, %for.cond1.preheader.i
  %indvars.iv307.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next308.i, %invoke.cont8.i ]
  %19 = load i32, i32* %arrayidx.i13.i.i, align 8, !tbaa !25, !noalias !31
  %mul.i.i = mul nsw i32 %19, %12
  %20 = load i32, i32* %arrayidx.i11.i.i, align 4, !tbaa !25, !noalias !31
  %21 = trunc i64 %indvars.iv307.i to i32
  %mul9.i.i = mul nsw i32 %20, %21
  %add.i.i = add nsw i32 %mul9.i.i, %mul.i.i
  %22 = load double*, double** %data_.i.i.i, align 8, !tbaa !34, !noalias !35
  %idxprom.i.i.i = sext i32 %add.i.i to i64
  %arrayidx.i10.i.i = getelementptr inbounds double, double* %22, i64 %idxprom.i.i.i
  %23 = load i32, i32* %value_.i.i.i, align 8, !tbaa !18, !noalias !35
  %add.i.i.i = add nsw i32 %23, %add.i.i
  %24 = add nuw nsw i64 %indvars.iv307.i, %11
  %arrayidx.i = getelementptr inbounds double, double* %0, i64 %24
  %25 = load double, double* %arrayidx.i, align 8, !tbaa !8
  store double %25, double* %arrayidx.i10.i.i, align 8, !tbaa !8
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %26, label %_ZTWN5adept21_stack_current_threadE.exit.i.i

26:                                               ; preds = %invoke.cont6.i
  invoke void @_ZTHN5adept21_stack_current_threadE()
          to label %_ZTWN5adept21_stack_current_threadE.exit.i.i unwind label %lpad7.i

_ZTWN5adept21_stack_current_threadE.exit.i.i:     ; preds = %26, %invoke.cont6.i
  %27 = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !38
  %n_statements_.i.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %27, i64 0, i32 3
  %28 = load i32, i32* %n_statements_.i.i.i, align 8, !tbaa !39
  %n_allocated_statements_.i.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %27, i64 0, i32 4
  %29 = load i32, i32* %n_allocated_statements_.i.i.i, align 4, !tbaa !41
  %cmp.not.i.i.i = icmp slt i32 %28, %29
  br i1 %cmp.not.i.i.i, label %invoke.cont8.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %_ZTWN5adept21_stack_current_threadE.exit.i.i
  invoke void @_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %27, i32 0)
          to label %.noexc29.i unwind label %lpad7.i

.noexc29.i:                                       ; preds = %if.then.i.i.i
  %.pre.i.i.i = load i32, i32* %n_statements_.i.i.i, align 8, !tbaa !39
  br label %invoke.cont8.i

invoke.cont8.i:                                   ; preds = %.noexc29.i, %_ZTWN5adept21_stack_current_threadE.exit.i.i
  %30 = phi i32 [ %.pre.i.i.i, %.noexc29.i ], [ %28, %_ZTWN5adept21_stack_current_threadE.exit.i.i ]
  %statement_.i.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %27, i64 0, i32 0
  %31 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i.i.i, align 8, !tbaa !42
  %idxprom.i.i28.i = sext i32 %30 to i64
  %index.i.i.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %31, i64 %idxprom.i.i28.i, i32 0
  store i32 %add.i.i.i, i32* %index.i.i.i, align 4, !tbaa !43
  %n_operations_.i.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %27, i64 0, i32 5
  %32 = load i32, i32* %n_operations_.i.i.i, align 8, !tbaa !45
  %inc.i.i.i = add nsw i32 %30, 1
  store i32 %inc.i.i.i, i32* %n_statements_.i.i.i, align 8, !tbaa !39
  %end_plus_one.i.i.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %31, i64 %idxprom.i.i28.i, i32 1
  store i32 %32, i32* %end_plus_one.i.i.i, align 4, !tbaa !46
  %indvars.iv.next308.i = add nuw nsw i64 %indvars.iv307.i, 1
  %exitcond310.not.i = icmp eq i64 %indvars.iv.next308.i, 2000
  br i1 %exitcond310.not.i, label %for.cond.cleanup3.i, label %invoke.cont6.i, !llvm.loop !47

lpad7.i:                                          ; preds = %if.then.i.i.i, %26
  %33 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup62.i

for.cond.cleanup19.i:                             ; preds = %for.body20.i
  %call30.i = call i32 @gettimeofday(%struct.timeval* nonnull %start.i, i8* null) #27
  %34 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 0
  %n_operations_.i.i55.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 0, i32 5
  %n_statements_.i.i56.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 0, i32 3
  %_M_start.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %_M_finish.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %_M_start.i.i4.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %_M_finish.i.i.i5.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %gradients_initialized_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 10
  %i_gradient_.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 6
  %max_gradient_.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 8
  %n_allocated_statements_.i.i58.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 0, i32 4
  %statement_.i.i62.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 0, i32 0
  %35 = bitcast %"class.adept::Active"* %resa.i to i8*
  %36 = bitcast double* %ref.tmp39.i to i8*
  %gradient_index_.i68.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %resa.i, i64 0, i32 1
  br label %for.body34.i

lpad14.i:                                         ; preds = %for.cond.cleanup.i
  %37 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup61.i

for.body20.i:                                     ; preds = %for.body20.i, %_ZN5adept5ArrayILi1EdLb0EEC2Ei.exit.i
  %indvars.iv303.i = phi i64 [ 0, %_ZN5adept5ArrayILi1EdLb0EEC2Ei.exit.i ], [ %indvars.iv.next304.i, %for.body20.i ]
  %arrayidx22.i = getelementptr inbounds double, double* %4, i64 %indvars.iv303.i
  %38 = load double, double* %arrayidx22.i, align 8, !tbaa !8
  %39 = mul nsw i64 %indvars.iv303.i, %17
  %arrayidx.i.i = getelementptr inbounds double, double* %15, i64 %39
  store double %38, double* %arrayidx.i.i, align 8, !tbaa !8
  %indvars.iv.next304.i = add nuw nsw i64 %indvars.iv303.i, 1
  %exitcond306.not.i = icmp eq i64 %indvars.iv.next304.i, 2000
  br i1 %exitcond306.not.i, label %for.cond.cleanup19.i, label %for.body20.i, !llvm.loop !48

for.cond.cleanup33.i:                             ; preds = %invoke.cont41.i
  %call52.i = call i32 @gettimeofday(%struct.timeval* nonnull %end.i, i8* null) #27
  %tv_sec.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i, i64 0, i32 0
  %40 = load i64, i64* %tv_sec.i.i, align 8, !tbaa !2
  %tv_sec1.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i, i64 0, i32 0
  %41 = load i64, i64* %tv_sec1.i.i, align 8, !tbaa !2
  %sub.i.i = sub nsw i64 %40, %41
  %conv.i.i = sitofp i64 %sub.i.i to double
  %tv_usec.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i, i64 0, i32 1
  %42 = load i64, i64* %tv_usec.i.i, align 8, !tbaa !7
  %tv_usec2.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i, i64 0, i32 1
  %43 = load i64, i64* %tv_usec2.i.i, align 8, !tbaa !7
  %sub3.i.i = sub nsw i64 %42, %43
  %conv4.i.i = sitofp i64 %sub3.i.i to double
  %mul.i35.i = fmul fast double %conv4.i.i, 0x3EB0C6F7A0B5ED8D
  %add.i36.i = fadd fast double %mul.i35.i, %conv.i.i
  %conv5.i.i = fptrunc double %add.i36.i to float
  %conv.i = fpext float %conv5.i.i to double
  %arrayidx54.i = getelementptr inbounds i8, i8* %call1, i64 8
  %44 = bitcast i8* %arrayidx54.i to double*
  %45 = load double, double* %44, align 8, !tbaa !8
  %arrayidx55.i = getelementptr inbounds i8, i8* %call1, i64 16
  %46 = bitcast i8* %arrayidx55.i to double*
  %47 = load double, double* %46, align 8, !tbaa !8
  %arrayidx56.i = getelementptr inbounds i8, i8* %call1, i64 24
  %48 = bitcast i8* %arrayidx56.i to double*
  %49 = load double, double* %48, align 8, !tbaa !8
  %call59.i = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), double %conv.i, double %45, double %47, double %49)
  %50 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i24.i, align 8, !tbaa !26
  %tobool.not.i38.i = icmp eq %"class.adept::Storage"* %50, null
  br i1 %tobool.not.i38.i, label %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit41.i, label %if.then.i39.i

if.then.i39.i:                                    ; preds = %for.cond.cleanup33.i
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %50)
          to label %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit41.i unwind label %terminate.lpad.i40.i

terminate.lpad.i40.i:                             ; preds = %if.then.i39.i
  %51 = landingpad { i8*, i32 }
          catch i8* null
  %52 = extractvalue { i8*, i32 } %51, 0
  call void @__clang_call_terminate(i8* %52) #29
  unreachable

_ZN5adept5ArrayILi1EdLb0EED2Ev.exit41.i:          ; preds = %if.then.i39.i, %for.cond.cleanup33.i
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #27
  %53 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i.i, align 8, !tbaa !21
  %tobool.not.i43.i = icmp eq %"class.adept::Storage"* %53, null
  br i1 %tobool.not.i43.i, label %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit46.i, label %if.then.i44.i

if.then.i44.i:                                    ; preds = %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit41.i
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %53)
          to label %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit46.i unwind label %terminate.lpad.i45.i

terminate.lpad.i45.i:                             ; preds = %if.then.i44.i
  %54 = landingpad { i8*, i32 }
          catch i8* null
  %55 = extractvalue { i8*, i32 } %54, 0
  call void @__clang_call_terminate(i8* %55) #29
  unreachable

_ZN5adept5ArrayILi2EdLb1EED2Ev.exit46.i:          ; preds = %if.then.i44.i, %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit41.i
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #27
  call void @_ZN5adept5StackD1Ev(%"class.adept::Stack"* nonnull dereferenceable(149) %stack.i) #27
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %7) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #27
  %56 = bitcast %struct.timeval* %start69.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %56) #27
  %57 = bitcast %struct.timeval* %end70.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %57) #27
  %58 = bitcast %"class.adept::Stack"* %stack72.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %58) #27
  call void @_ZN5adept5StackC2Eb(%"class.adept::Stack"* nonnull dereferenceable(149) %stack72.i, i1 zeroext true)
  %59 = bitcast %"class.adept::Array"* %mat73.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %59) #27
  %value_.i.i48.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %mat73.i, i64 0, i32 0, i32 0
  store i32 -9999, i32* %value_.i.i48.i, align 8, !tbaa !18
  %storage_.i49.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %mat73.i, i64 0, i32 2
  store %"class.adept::Storage"* null, %"class.adept::Storage"** %storage_.i49.i, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %9) #27
  store i32 2000, i32* %arrayinit.begin.i.i.i, align 16, !tbaa !25
  store i32 2000, i32* %arrayinit.element.i.i.i, align 4, !tbaa !25
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(20) %10, i8 -1, i64 20, i1 false)
  invoke void @_ZN5adept5ArrayILi2EdLb1EE6resizeEPKib(%"class.adept::Array"* nonnull dereferenceable(40) %mat73.i, i32* nonnull %arrayinit.begin.i.i.i, i1 zeroext false)
          to label %_ZN5adept5ArrayILi2EdLb1EEC2Eii.exit54.i unwind label %lpad74.i

_ZN5adept5ArrayILi2EdLb1EEC2Eii.exit54.i:         ; preds = %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit46.i
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %9) #27
  %arrayidx.i13.i89.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %mat73.i, i64 0, i32 4, i32 0, i64 0
  %arrayidx.i11.i91.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %mat73.i, i64 0, i32 4, i32 0, i64 1
  %data_.i.i94.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %mat73.i, i64 0, i32 1
  br label %for.cond82.preheader.i

for.body34.i:                                     ; preds = %invoke.cont41.i, %for.cond.cleanup19.i
  %iter.0278.i = phi i32 [ 0, %for.cond.cleanup19.i ], [ %inc49.i, %invoke.cont41.i ]
  store i32 0, i32* %n_operations_.i.i55.i, align 8, !tbaa !45
  store i32 0, i32* %n_statements_.i.i56.i, align 8, !tbaa !39
  %60 = load i32*, i32** %_M_start.i.i.i.i, align 8, !tbaa !49
  %61 = load i32*, i32** %_M_finish.i.i.i.i.i, align 8, !tbaa !51
  %tobool.not.i.i.i.i.i = icmp eq i32* %61, %60
  br i1 %tobool.not.i.i.i.i.i, label %_ZN5adept5Stack18clear_independentsEv.exit.i.i, label %invoke.cont.i.i.i.i.i

invoke.cont.i.i.i.i.i:                            ; preds = %for.body34.i
  store i32* %60, i32** %_M_finish.i.i.i.i.i, align 8, !tbaa !51
  br label %_ZN5adept5Stack18clear_independentsEv.exit.i.i

_ZN5adept5Stack18clear_independentsEv.exit.i.i:   ; preds = %invoke.cont.i.i.i.i.i, %for.body34.i
  %62 = load i32*, i32** %_M_start.i.i4.i.i, align 8, !tbaa !49
  %63 = load i32*, i32** %_M_finish.i.i.i5.i.i, align 8, !tbaa !51
  %tobool.not.i.i.i6.i.i = icmp eq i32* %63, %62
  br i1 %tobool.not.i.i.i6.i.i, label %_ZN5adept5Stack16clear_dependentsEv.exit.i.i, label %invoke.cont.i.i.i7.i.i

invoke.cont.i.i.i7.i.i:                           ; preds = %_ZN5adept5Stack18clear_independentsEv.exit.i.i
  store i32* %62, i32** %_M_finish.i.i.i5.i.i, align 8, !tbaa !51
  br label %_ZN5adept5Stack16clear_dependentsEv.exit.i.i

_ZN5adept5Stack16clear_dependentsEv.exit.i.i:     ; preds = %invoke.cont.i.i.i7.i.i, %_ZN5adept5Stack18clear_independentsEv.exit.i.i
  store i8 0, i8* %gradients_initialized_.i.i.i, align 8, !tbaa !52
  %64 = load i32, i32* %i_gradient_.i.i, align 8, !tbaa !58
  %add.i57.i = add nsw i32 %64, 1
  store i32 %add.i57.i, i32* %max_gradient_.i.i, align 8, !tbaa !59
  %65 = load i32, i32* %n_allocated_statements_.i.i58.i, align 4, !tbaa !41
  %cmp.not.i.i59.i = icmp sgt i32 %65, 0
  br i1 %cmp.not.i.i59.i, label %invoke.cont36.i, label %if.then.i.i61.i

if.then.i.i61.i:                                  ; preds = %_ZN5adept5Stack16clear_dependentsEv.exit.i.i
  invoke void @_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %34, i32 0)
          to label %.noexc67.i unwind label %lpad35.i

.noexc67.i:                                       ; preds = %if.then.i.i61.i
  %.pre.i.i60.i = load i32, i32* %n_statements_.i.i56.i, align 8, !tbaa !39
  %.pre.i.i = load i32, i32* %n_operations_.i.i55.i, align 8, !tbaa !45
  br label %invoke.cont36.i

invoke.cont36.i:                                  ; preds = %.noexc67.i, %_ZN5adept5Stack16clear_dependentsEv.exit.i.i
  %66 = phi i32 [ %.pre.i.i, %.noexc67.i ], [ 0, %_ZN5adept5Stack16clear_dependentsEv.exit.i.i ]
  %67 = phi i32 [ %.pre.i.i60.i, %.noexc67.i ], [ 0, %_ZN5adept5Stack16clear_dependentsEv.exit.i.i ]
  %68 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i.i62.i, align 8, !tbaa !42
  %idxprom.i.i63.i = sext i32 %67 to i64
  %index.i.i64.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %68, i64 %idxprom.i.i63.i, i32 0
  store i32 -1, i32* %index.i.i64.i, align 4, !tbaa !43
  %inc.i.i65.i = add nsw i32 %67, 1
  store i32 %inc.i.i65.i, i32* %n_statements_.i.i56.i, align 8, !tbaa !39
  %end_plus_one.i.i66.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %68, i64 %idxprom.i.i63.i, i32 1
  store i32 %66, i32* %end_plus_one.i.i66.i, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %35) #27
  invoke fastcc void @_ZL6matvecRN5adept5ArrayILi2EdLb1EEERNS0_ILi1EdLb0EEE(%"class.adept::Active"* nonnull sret(%"class.adept::Active") align 8 %resa.i, %"class.adept::Array"* nonnull align 8 dereferenceable(40) %mat.i, %"class.adept::Array.4"* nonnull align 8 dereferenceable(24) %vec.i)
          to label %invoke.cont38.i unwind label %lpad37.i

invoke.cont38.i:                                  ; preds = %invoke.cont36.i
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %36) #27
  store double 1.000000e+00, double* %ref.tmp39.i, align 8, !tbaa !8
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %69, label %_ZTWN5adept21_stack_current_threadE.exit.i70.i

69:                                               ; preds = %invoke.cont38.i
  invoke void @_ZTHN5adept21_stack_current_threadE()
          to label %_ZTWN5adept21_stack_current_threadE.exit.i70.i unwind label %lpad40.i

_ZTWN5adept21_stack_current_threadE.exit.i70.i:   ; preds = %69, %invoke.cont38.i
  %70 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !38
  %71 = load i32, i32* %gradient_index_.i68.i, align 8, !tbaa !60
  %add.i69.i = add nsw i32 %71, 1
  invoke void @_ZN5adept5Stack13set_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPKS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %70, i32 %71, i32 %add.i69.i, double* nonnull %ref.tmp39.i)
          to label %invoke.cont41.i unwind label %lpad40.i

invoke.cont41.i:                                  ; preds = %_ZTWN5adept21_stack_current_threadE.exit.i70.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #27
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %resa.i) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %35) #27
  %inc49.i = add nuw nsw i32 %iter.0278.i, 1
  %exitcond302.not.i = icmp eq i32 %inc49.i, 1000
  br i1 %exitcond302.not.i, label %for.cond.cleanup33.i, label %for.body34.i, !llvm.loop !62

lpad35.i:                                         ; preds = %if.then.i.i61.i
  %72 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup60.i

lpad37.i:                                         ; preds = %invoke.cont36.i
  %73 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup47.i

lpad40.i:                                         ; preds = %_ZTWN5adept21_stack_current_threadE.exit.i70.i, %69
  %74 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %36) #27
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %resa.i) #27
  br label %ehcleanup47.i

ehcleanup47.i:                                    ; preds = %lpad40.i, %lpad37.i
  %.pn14.i = phi { i8*, i32 } [ %74, %lpad40.i ], [ %73, %lpad37.i ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %35) #27
  br label %ehcleanup60.i

for.cond82.preheader.i:                           ; preds = %for.cond.cleanup84.i, %_ZN5adept5ArrayILi2EdLb1EEC2Eii.exit54.i
  %indvars.iv298.i = phi i64 [ 0, %_ZN5adept5ArrayILi2EdLb1EEC2Eii.exit54.i ], [ %indvars.iv.next299.i, %for.cond.cleanup84.i ]
  %75 = mul nuw nsw i64 %indvars.iv298.i, 2000
  %76 = trunc i64 %indvars.iv298.i to i32
  br label %invoke.cont92.i

for.cond.cleanup79.i:                             ; preds = %for.cond.cleanup84.i
  %77 = bitcast %"class.adept::Array.4"* %vec106.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %77) #27
  %storage_.i74.i = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %vec106.i, i64 0, i32 1
  store %"class.adept::Storage"* null, %"class.adept::Storage"** %storage_.i74.i, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %9) #27
  store i32 2000, i32* %arrayinit.begin.i.i.i, align 16, !tbaa !25
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(24) %14, i8 -1, i64 24, i1 false)
  invoke void @_ZN5adept5ArrayILi1EdLb0EE6resizeEPKib(%"class.adept::Array.4"* nonnull dereferenceable(24) %vec106.i, i32* nonnull %arrayinit.begin.i.i.i, i1 zeroext false)
          to label %_ZN5adept5ArrayILi1EdLb0EEC2Ei.exit78.i unwind label %lpad107.i

_ZN5adept5ArrayILi1EdLb0EEC2Ei.exit78.i:          ; preds = %for.cond.cleanup79.i
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %9) #27
  %data_.i118.i = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %vec106.i, i64 0, i32 0
  %78 = load double*, double** %data_.i118.i, align 8, !tbaa !29
  %arrayidx.i4.i119.i = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %vec106.i, i64 0, i32 3, i32 0, i64 0
  %79 = load i32, i32* %arrayidx.i4.i119.i, align 4, !tbaa !25
  %80 = sext i32 %79 to i64
  br label %for.body113.i

ehcleanup60.i:                                    ; preds = %ehcleanup47.i, %lpad35.i
  %.pn14.pn.i = phi { i8*, i32 } [ %.pn14.i, %ehcleanup47.i ], [ %72, %lpad35.i ]
  %81 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i24.i, align 8, !tbaa !26
  %tobool.not.i80.i = icmp eq %"class.adept::Storage"* %81, null
  br i1 %tobool.not.i80.i, label %ehcleanup61.i, label %if.then.i81.i

if.then.i81.i:                                    ; preds = %ehcleanup60.i
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %81)
          to label %ehcleanup61.i unwind label %terminate.lpad.i82.i

terminate.lpad.i82.i:                             ; preds = %if.then.i81.i
  %82 = landingpad { i8*, i32 }
          catch i8* null
  %83 = extractvalue { i8*, i32 } %82, 0
  call void @__clang_call_terminate(i8* %83) #29
  unreachable

ehcleanup61.i:                                    ; preds = %if.then.i81.i, %ehcleanup60.i, %lpad14.i
  %.pn14.pn.pn.i = phi { i8*, i32 } [ %37, %lpad14.i ], [ %.pn14.pn.i, %ehcleanup60.i ], [ %.pn14.pn.i, %if.then.i81.i ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #27
  br label %ehcleanup62.i

ehcleanup62.i:                                    ; preds = %ehcleanup61.i, %lpad7.i
  %.pn18.pn.i = phi { i8*, i32 } [ %.pn14.pn.pn.i, %ehcleanup61.i ], [ %33, %lpad7.i ]
  %84 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i.i, align 8, !tbaa !21
  %tobool.not.i85.i = icmp eq %"class.adept::Storage"* %84, null
  br i1 %tobool.not.i85.i, label %ehcleanup63.i, label %if.then.i86.i

if.then.i86.i:                                    ; preds = %ehcleanup62.i
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %84)
          to label %ehcleanup63.i unwind label %terminate.lpad.i87.i

terminate.lpad.i87.i:                             ; preds = %if.then.i86.i
  %85 = landingpad { i8*, i32 }
          catch i8* null
  %86 = extractvalue { i8*, i32 } %85, 0
  call void @__clang_call_terminate(i8* %86) #29
  unreachable

ehcleanup63.i:                                    ; preds = %if.then.i86.i, %ehcleanup62.i, %lpad.i
  %.pn18.pn.pn.i = phi { i8*, i32 } [ %18, %lpad.i ], [ %.pn18.pn.i, %ehcleanup62.i ], [ %.pn18.pn.i, %if.then.i86.i ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #27
  call void @_ZN5adept5StackD1Ev(%"class.adept::Stack"* nonnull dereferenceable(149) %stack.i) #27
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %7) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #27
  br label %eh.resume.i

lpad74.i:                                         ; preds = %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit46.i
  %87 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup224.i

for.cond.cleanup84.i:                             ; preds = %invoke.cont94.i
  %indvars.iv.next299.i = add nuw nsw i64 %indvars.iv298.i, 1
  %exitcond301.not.i = icmp eq i64 %indvars.iv.next299.i, 2000
  br i1 %exitcond301.not.i, label %for.cond.cleanup79.i, label %for.cond82.preheader.i, !llvm.loop !63

invoke.cont92.i:                                  ; preds = %invoke.cont94.i, %for.cond82.preheader.i
  %indvars.iv294.i = phi i64 [ 0, %for.cond82.preheader.i ], [ %indvars.iv.next295.i, %invoke.cont94.i ]
  %88 = load i32, i32* %arrayidx.i13.i89.i, align 8, !tbaa !25, !noalias !64
  %mul.i90.i = mul nsw i32 %88, %76
  %89 = load i32, i32* %arrayidx.i11.i91.i, align 4, !tbaa !25, !noalias !64
  %90 = trunc i64 %indvars.iv294.i to i32
  %mul9.i92.i = mul nsw i32 %89, %90
  %add.i93.i = add nsw i32 %mul9.i92.i, %mul.i90.i
  %91 = load double*, double** %data_.i.i94.i, align 8, !tbaa !34, !noalias !67
  %idxprom.i.i95.i = sext i32 %add.i93.i to i64
  %arrayidx.i10.i96.i = getelementptr inbounds double, double* %91, i64 %idxprom.i.i95.i
  %92 = load i32, i32* %value_.i.i48.i, align 8, !tbaa !18, !noalias !67
  %add.i.i98.i = add nsw i32 %92, %add.i93.i
  %93 = add nuw nsw i64 %indvars.iv294.i, %75
  %arrayidx89.i = getelementptr inbounds double, double* %0, i64 %93
  %94 = load double, double* %arrayidx89.i, align 8, !tbaa !8
  store double %94, double* %arrayidx.i10.i96.i, align 8, !tbaa !8
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %95, label %_ZTWN5adept21_stack_current_threadE.exit.i105.i

95:                                               ; preds = %invoke.cont92.i
  invoke void @_ZTHN5adept21_stack_current_threadE()
          to label %_ZTWN5adept21_stack_current_threadE.exit.i105.i unwind label %lpad93.i

_ZTWN5adept21_stack_current_threadE.exit.i105.i:  ; preds = %95, %invoke.cont92.i
  %96 = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !38
  %n_statements_.i.i102.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %96, i64 0, i32 3
  %97 = load i32, i32* %n_statements_.i.i102.i, align 8, !tbaa !39
  %n_allocated_statements_.i.i103.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %96, i64 0, i32 4
  %98 = load i32, i32* %n_allocated_statements_.i.i103.i, align 4, !tbaa !41
  %cmp.not.i.i104.i = icmp slt i32 %97, %98
  br i1 %cmp.not.i.i104.i, label %invoke.cont94.i, label %if.then.i.i107.i

if.then.i.i107.i:                                 ; preds = %_ZTWN5adept21_stack_current_threadE.exit.i105.i
  invoke void @_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %96, i32 0)
          to label %.noexc116.i unwind label %lpad93.i

.noexc116.i:                                      ; preds = %if.then.i.i107.i
  %.pre.i.i106.i = load i32, i32* %n_statements_.i.i102.i, align 8, !tbaa !39
  br label %invoke.cont94.i

invoke.cont94.i:                                  ; preds = %.noexc116.i, %_ZTWN5adept21_stack_current_threadE.exit.i105.i
  %99 = phi i32 [ %.pre.i.i106.i, %.noexc116.i ], [ %97, %_ZTWN5adept21_stack_current_threadE.exit.i105.i ]
  %statement_.i.i109.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %96, i64 0, i32 0
  %100 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i.i109.i, align 8, !tbaa !42
  %idxprom.i.i110.i = sext i32 %99 to i64
  %index.i.i111.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %100, i64 %idxprom.i.i110.i, i32 0
  store i32 %add.i.i98.i, i32* %index.i.i111.i, align 4, !tbaa !43
  %n_operations_.i.i112.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %96, i64 0, i32 5
  %101 = load i32, i32* %n_operations_.i.i112.i, align 8, !tbaa !45
  %inc.i.i113.i = add nsw i32 %99, 1
  store i32 %inc.i.i113.i, i32* %n_statements_.i.i102.i, align 8, !tbaa !39
  %end_plus_one.i.i114.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %100, i64 %idxprom.i.i110.i, i32 1
  store i32 %101, i32* %end_plus_one.i.i114.i, align 4, !tbaa !46
  %indvars.iv.next295.i = add nuw nsw i64 %indvars.iv294.i, 1
  %exitcond297.not.i = icmp eq i64 %indvars.iv.next295.i, 2000
  br i1 %exitcond297.not.i, label %for.cond.cleanup84.i, label %invoke.cont92.i, !llvm.loop !70

lpad93.i:                                         ; preds = %if.then.i.i107.i, %95
  %102 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup223.i

for.cond.cleanup112.i:                            ; preds = %for.body113.i
  %call123.i = call i32 @gettimeofday(%struct.timeval* nonnull %start69.i, i8* null) #27
  %103 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack72.i, i64 0, i32 0
  %n_operations_.i.i123.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack72.i, i64 0, i32 0, i32 5
  %n_statements_.i.i124.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack72.i, i64 0, i32 0, i32 3
  %_M_start.i.i.i125.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack72.i, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %_M_finish.i.i.i.i126.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack72.i, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %_M_start.i.i4.i129.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack72.i, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %_M_finish.i.i.i5.i130.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack72.i, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %gradients_initialized_.i.i134.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack72.i, i64 0, i32 10
  %i_gradient_.i135.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack72.i, i64 0, i32 6
  %max_gradient_.i137.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack72.i, i64 0, i32 8
  %n_allocated_statements_.i.i138.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack72.i, i64 0, i32 0, i32 4
  %statement_.i.i144.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack72.i, i64 0, i32 0, i32 0
  %104 = bitcast %"class.adept::Active"* %resa131.i to i8*
  %105 = bitcast double* %ref.tmp134.i to i8*
  %gradient_index_.i151.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %resa131.i, i64 0, i32 1
  %106 = bitcast double* %gradient.i175.i to i8*
  br label %for.body128.i

lpad107.i:                                        ; preds = %for.cond.cleanup79.i
  %107 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup222.i

for.body113.i:                                    ; preds = %for.body113.i, %_ZN5adept5ArrayILi1EdLb0EEC2Ei.exit78.i
  %indvars.iv290.i = phi i64 [ 0, %_ZN5adept5ArrayILi1EdLb0EEC2Ei.exit78.i ], [ %indvars.iv.next291.i, %for.body113.i ]
  %arrayidx115.i = getelementptr inbounds double, double* %4, i64 %indvars.iv290.i
  %108 = load double, double* %arrayidx115.i, align 8, !tbaa !8
  %109 = mul nsw i64 %indvars.iv290.i, %80
  %arrayidx.i122.i = getelementptr inbounds double, double* %78, i64 %109
  store double %108, double* %arrayidx.i122.i, align 8, !tbaa !8
  %indvars.iv.next291.i = add nuw nsw i64 %indvars.iv290.i, 1
  %exitcond293.not.i = icmp eq i64 %indvars.iv.next291.i, 2000
  br i1 %exitcond293.not.i, label %for.cond.cleanup112.i, label %for.body113.i, !llvm.loop !71

for.cond.cleanup127.i:                            ; preds = %for.cond.cleanup145.i
  %call187.i = call i32 @gettimeofday(%struct.timeval* nonnull %end70.i, i8* null) #27
  %110 = bitcast double* %gradient.i.i to i8*
  br label %for.cond197.preheader.i

for.body128.i:                                    ; preds = %for.cond.cleanup145.i, %for.cond.cleanup112.i
  %iter124.0274.i = phi i32 [ 0, %for.cond.cleanup112.i ], [ %inc184.i, %for.cond.cleanup145.i ]
  store i32 0, i32* %n_operations_.i.i123.i, align 8, !tbaa !45
  store i32 0, i32* %n_statements_.i.i124.i, align 8, !tbaa !39
  %111 = load i32*, i32** %_M_start.i.i.i125.i, align 8, !tbaa !49
  %112 = load i32*, i32** %_M_finish.i.i.i.i126.i, align 8, !tbaa !51
  %tobool.not.i.i.i.i127.i = icmp eq i32* %112, %111
  br i1 %tobool.not.i.i.i.i127.i, label %_ZN5adept5Stack18clear_independentsEv.exit.i132.i, label %invoke.cont.i.i.i.i128.i

invoke.cont.i.i.i.i128.i:                         ; preds = %for.body128.i
  store i32* %111, i32** %_M_finish.i.i.i.i126.i, align 8, !tbaa !51
  br label %_ZN5adept5Stack18clear_independentsEv.exit.i132.i

_ZN5adept5Stack18clear_independentsEv.exit.i132.i: ; preds = %invoke.cont.i.i.i.i128.i, %for.body128.i
  %113 = load i32*, i32** %_M_start.i.i4.i129.i, align 8, !tbaa !49
  %114 = load i32*, i32** %_M_finish.i.i.i5.i130.i, align 8, !tbaa !51
  %tobool.not.i.i.i6.i131.i = icmp eq i32* %114, %113
  br i1 %tobool.not.i.i.i6.i131.i, label %_ZN5adept5Stack16clear_dependentsEv.exit.i140.i, label %invoke.cont.i.i.i7.i133.i

invoke.cont.i.i.i7.i133.i:                        ; preds = %_ZN5adept5Stack18clear_independentsEv.exit.i132.i
  store i32* %113, i32** %_M_finish.i.i.i5.i130.i, align 8, !tbaa !51
  br label %_ZN5adept5Stack16clear_dependentsEv.exit.i140.i

_ZN5adept5Stack16clear_dependentsEv.exit.i140.i:  ; preds = %invoke.cont.i.i.i7.i133.i, %_ZN5adept5Stack18clear_independentsEv.exit.i132.i
  store i8 0, i8* %gradients_initialized_.i.i134.i, align 8, !tbaa !52
  %115 = load i32, i32* %i_gradient_.i135.i, align 8, !tbaa !58
  %add.i136.i = add nsw i32 %115, 1
  store i32 %add.i136.i, i32* %max_gradient_.i137.i, align 8, !tbaa !59
  %116 = load i32, i32* %n_allocated_statements_.i.i138.i, align 4, !tbaa !41
  %cmp.not.i.i139.i = icmp sgt i32 %116, 0
  br i1 %cmp.not.i.i139.i, label %invoke.cont130.i, label %if.then.i.i143.i

if.then.i.i143.i:                                 ; preds = %_ZN5adept5Stack16clear_dependentsEv.exit.i140.i
  invoke void @_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %103, i32 0)
          to label %.noexc149.i unwind label %lpad129.i

.noexc149.i:                                      ; preds = %if.then.i.i143.i
  %.pre.i.i141.i = load i32, i32* %n_statements_.i.i124.i, align 8, !tbaa !39
  %.pre.i142.i = load i32, i32* %n_operations_.i.i123.i, align 8, !tbaa !45
  br label %invoke.cont130.i

invoke.cont130.i:                                 ; preds = %.noexc149.i, %_ZN5adept5Stack16clear_dependentsEv.exit.i140.i
  %117 = phi i32 [ %.pre.i142.i, %.noexc149.i ], [ 0, %_ZN5adept5Stack16clear_dependentsEv.exit.i140.i ]
  %118 = phi i32 [ %.pre.i.i141.i, %.noexc149.i ], [ 0, %_ZN5adept5Stack16clear_dependentsEv.exit.i140.i ]
  %119 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i.i144.i, align 8, !tbaa !42
  %idxprom.i.i145.i = sext i32 %118 to i64
  %index.i.i146.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %119, i64 %idxprom.i.i145.i, i32 0
  store i32 -1, i32* %index.i.i146.i, align 4, !tbaa !43
  %inc.i.i147.i = add nsw i32 %118, 1
  store i32 %inc.i.i147.i, i32* %n_statements_.i.i124.i, align 8, !tbaa !39
  %end_plus_one.i.i148.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %119, i64 %idxprom.i.i145.i, i32 1
  store i32 %117, i32* %end_plus_one.i.i148.i, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %104) #27
  invoke fastcc void @_ZL6matvecRN5adept5ArrayILi2EdLb1EEERNS0_ILi1EdLb0EEE(%"class.adept::Active"* nonnull sret(%"class.adept::Active") align 8 %resa131.i, %"class.adept::Array"* nonnull align 8 dereferenceable(40) %mat73.i, %"class.adept::Array.4"* nonnull align 8 dereferenceable(24) %vec106.i)
          to label %invoke.cont133.i unwind label %lpad132.i

invoke.cont133.i:                                 ; preds = %invoke.cont130.i
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %105) #27
  store double 1.000000e+00, double* %ref.tmp134.i, align 8, !tbaa !8
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %120, label %_ZTWN5adept21_stack_current_threadE.exit.i153.i

120:                                              ; preds = %invoke.cont133.i
  invoke void @_ZTHN5adept21_stack_current_threadE()
          to label %_ZTWN5adept21_stack_current_threadE.exit.i153.i unwind label %lpad135.i

_ZTWN5adept21_stack_current_threadE.exit.i153.i:  ; preds = %120, %invoke.cont133.i
  %121 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !38
  %122 = load i32, i32* %gradient_index_.i151.i, align 8, !tbaa !60
  %add.i152.i = add nsw i32 %122, 1
  invoke void @_ZN5adept5Stack13set_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPKS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %121, i32 %122, i32 %add.i152.i, double* nonnull %ref.tmp134.i)
          to label %invoke.cont136.i unwind label %lpad135.i

invoke.cont136.i:                                 ; preds = %_ZTWN5adept21_stack_current_threadE.exit.i153.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %105) #27
  invoke void @_ZN5adept5Stack15compute_adjointEv(%"class.adept::Stack"* nonnull dereferenceable(149) %stack72.i)
          to label %for.cond148.preheader.i unwind label %lpad138.i

for.cond148.preheader.i:                          ; preds = %for.cond.cleanup150.i, %invoke.cont136.i
  %i142.0273.i = phi i32 [ %inc176.i, %for.cond.cleanup150.i ], [ 0, %invoke.cont136.i ]
  %.pre.i = load i32, i32* %arrayidx.i13.i89.i, align 8, !tbaa !25, !noalias !72
  %.pre315.i = load i32, i32* %arrayidx.i11.i91.i, align 4, !tbaa !25, !noalias !72
  br label %invoke.cont155.i

for.cond.cleanup145.i:                            ; preds = %for.cond.cleanup150.i
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %resa131.i) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %104) #27
  %inc184.i = add nuw nsw i32 %iter124.0274.i, 1
  %exitcond289.not.i = icmp eq i32 %inc184.i, 1000
  br i1 %exitcond289.not.i, label %for.cond.cleanup127.i, label %for.body128.i, !llvm.loop !75

lpad129.i:                                        ; preds = %if.then.i.i143.i
  %123 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup221.i

lpad132.i:                                        ; preds = %invoke.cont130.i
  %124 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup182.i

lpad135.i:                                        ; preds = %_ZTWN5adept21_stack_current_threadE.exit.i153.i, %120
  %125 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %105) #27
  br label %ehcleanup181.i

lpad138.i:                                        ; preds = %invoke.cont136.i
  %126 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup181.i

for.cond.cleanup150.i:                            ; preds = %invoke.cont162.i
  %inc176.i = add nuw nsw i32 %i142.0273.i, 1
  %exitcond288.not.i = icmp eq i32 %inc176.i, 2000
  br i1 %exitcond288.not.i, label %for.cond.cleanup145.i, label %for.cond148.preheader.i, !llvm.loop !76

invoke.cont155.i:                                 ; preds = %invoke.cont162.i, %for.cond148.preheader.i
  %127 = phi i32 [ %.pre315.i, %for.cond148.preheader.i ], [ %134, %invoke.cont162.i ]
  %128 = phi i32 [ %.pre.i, %for.cond148.preheader.i ], [ %133, %invoke.cont162.i ]
  %j147.0272.i = phi i32 [ 0, %for.cond148.preheader.i ], [ %inc172.i, %invoke.cont162.i ]
  %mul.i164.i = mul nsw i32 %128, %i142.0273.i
  %mul9.i166.i = mul nsw i32 %j147.0272.i, %127
  %add.i167.i = add nsw i32 %mul9.i166.i, %mul.i164.i
  %129 = load i32, i32* %value_.i.i48.i, align 8, !tbaa !18, !noalias !77
  %add.i.i172.i = add nsw i32 %add.i167.i, %129
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %106) #27
  store double 0.000000e+00, double* %gradient.i175.i, align 8, !tbaa !8
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %130, label %_ZTWN5adept21_stack_current_threadE.exit.i178.i

130:                                              ; preds = %invoke.cont155.i
  invoke void @_ZTHN5adept21_stack_current_threadE()
          to label %_ZTWN5adept21_stack_current_threadE.exit.i178.i unwind label %lpad156.i

_ZTWN5adept21_stack_current_threadE.exit.i178.i:  ; preds = %130, %invoke.cont155.i
  %131 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !38
  %add.i177.i = add nsw i32 %add.i.i172.i, 1
  invoke void @_ZNK5adept5Stack13get_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %131, i32 %add.i.i172.i, i32 %add.i177.i, double* nonnull %gradient.i175.i)
          to label %invoke.cont162.i unwind label %lpad156.i

invoke.cont162.i:                                 ; preds = %_ZTWN5adept21_stack_current_threadE.exit.i178.i
  %132 = load double, double* %gradient.i175.i, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %106) #27
  %mul159.i = fmul fast double %132, 1.000000e-08
  %133 = load i32, i32* %arrayidx.i13.i89.i, align 8, !tbaa !25, !noalias !80
  %mul.i183.i = mul nsw i32 %133, %i142.0273.i
  %134 = load i32, i32* %arrayidx.i11.i91.i, align 4, !tbaa !25, !noalias !80
  %mul9.i185.i = mul nsw i32 %134, %j147.0272.i
  %add.i186.i = add nsw i32 %mul9.i185.i, %mul.i183.i
  %135 = load double*, double** %data_.i.i94.i, align 8, !tbaa !34, !noalias !83
  %idxprom.i.i188.i = sext i32 %add.i186.i to i64
  %arrayidx.i10.i189.i = getelementptr inbounds double, double* %135, i64 %idxprom.i.i188.i
  %136 = load double, double* %arrayidx.i10.i189.i, align 8, !tbaa !8
  %sub.i195.i = fsub fast double %136, %mul159.i
  store double %sub.i195.i, double* %arrayidx.i10.i189.i, align 8, !tbaa !8
  %inc172.i = add nuw nsw i32 %j147.0272.i, 1
  %exitcond287.not.i = icmp eq i32 %inc172.i, 2000
  br i1 %exitcond287.not.i, label %for.cond.cleanup150.i, label %invoke.cont155.i, !llvm.loop !86

lpad156.i:                                        ; preds = %_ZTWN5adept21_stack_current_threadE.exit.i178.i, %130
  %137 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup181.i

ehcleanup181.i:                                   ; preds = %lpad156.i, %lpad138.i, %lpad135.i
  %.pn2.pn.pn.i = phi { i8*, i32 } [ %126, %lpad138.i ], [ %125, %lpad135.i ], [ %137, %lpad156.i ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %resa131.i) #27
  br label %ehcleanup182.i

ehcleanup182.i:                                   ; preds = %ehcleanup181.i, %lpad132.i
  %.pn2.pn.pn.pn.i = phi { i8*, i32 } [ %.pn2.pn.pn.i, %ehcleanup181.i ], [ %124, %lpad132.i ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %104) #27
  br label %ehcleanup221.i

for.cond197.preheader.i:                          ; preds = %for.cond.cleanup199.i, %for.cond.cleanup127.i
  %indvars.iv283.i = phi i64 [ 0, %for.cond.cleanup127.i ], [ %indvars.iv.next284.i, %for.cond.cleanup199.i ]
  %138 = mul nuw nsw i64 %indvars.iv283.i, 2000
  %139 = trunc i64 %indvars.iv283.i to i32
  br label %invoke.cont203.i

for.cond.cleanup194.i:                            ; preds = %for.cond.cleanup199.i
  %140 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i74.i, align 8, !tbaa !26
  %tobool.not.i225.i = icmp eq %"class.adept::Storage"* %140, null
  br i1 %tobool.not.i225.i, label %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit228.i, label %if.then.i226.i

if.then.i226.i:                                   ; preds = %for.cond.cleanup194.i
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %140)
          to label %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit228.i unwind label %terminate.lpad.i227.i

terminate.lpad.i227.i:                            ; preds = %if.then.i226.i
  %141 = landingpad { i8*, i32 }
          catch i8* null
  %142 = extractvalue { i8*, i32 } %141, 0
  call void @__clang_call_terminate(i8* %142) #29
  unreachable

_ZN5adept5ArrayILi1EdLb0EED2Ev.exit228.i:         ; preds = %if.then.i226.i, %for.cond.cleanup194.i
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %77) #27
  %143 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i49.i, align 8, !tbaa !21
  %tobool.not.i220.i = icmp eq %"class.adept::Storage"* %143, null
  br i1 %tobool.not.i220.i, label %_ZL12adept_sincosPdS_S_S_.exit, label %if.then.i221.i

if.then.i221.i:                                   ; preds = %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit228.i
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %143)
          to label %_ZL12adept_sincosPdS_S_S_.exit unwind label %terminate.lpad.i222.i

terminate.lpad.i222.i:                            ; preds = %if.then.i221.i
  %144 = landingpad { i8*, i32 }
          catch i8* null
  %145 = extractvalue { i8*, i32 } %144, 0
  call void @__clang_call_terminate(i8* %145) #29
  unreachable

for.cond.cleanup199.i:                            ; preds = %invoke.cont205.i
  %indvars.iv.next284.i = add nuw nsw i64 %indvars.iv283.i, 1
  %exitcond286.not.i = icmp eq i64 %indvars.iv.next284.i, 2000
  br i1 %exitcond286.not.i, label %for.cond.cleanup194.i, label %for.cond197.preheader.i, !llvm.loop !87

invoke.cont203.i:                                 ; preds = %invoke.cont205.i, %for.cond197.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond197.preheader.i ], [ %indvars.iv.next.i, %invoke.cont205.i ]
  %146 = load i32, i32* %arrayidx.i13.i89.i, align 8, !tbaa !25, !noalias !88
  %mul.i197.i = mul nsw i32 %146, %139
  %147 = load i32, i32* %arrayidx.i11.i91.i, align 4, !tbaa !25, !noalias !88
  %148 = trunc i64 %indvars.iv.i to i32
  %mul9.i199.i = mul nsw i32 %147, %148
  %add.i200.i = add nsw i32 %mul9.i199.i, %mul.i197.i
  %149 = load i32, i32* %value_.i.i48.i, align 8, !tbaa !18, !noalias !91
  %add.i.i205.i = add nsw i32 %add.i200.i, %149
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %110) #27
  store double 0.000000e+00, double* %gradient.i.i, align 8, !tbaa !8
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %150, label %_ZTWN5adept21_stack_current_threadE.exit.i160.i

150:                                              ; preds = %invoke.cont203.i
  invoke void @_ZTHN5adept21_stack_current_threadE()
          to label %_ZTWN5adept21_stack_current_threadE.exit.i160.i unwind label %lpad204.i

_ZTWN5adept21_stack_current_threadE.exit.i160.i:  ; preds = %150, %invoke.cont203.i
  %151 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !38
  %add.i159.i = add nsw i32 %add.i.i205.i, 1
  invoke void @_ZNK5adept5Stack13get_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %151, i32 %add.i.i205.i, i32 %add.i159.i, double* nonnull %gradient.i.i)
          to label %invoke.cont205.i unwind label %lpad204.i

invoke.cont205.i:                                 ; preds = %_ZTWN5adept21_stack_current_threadE.exit.i160.i
  %152 = load double, double* %gradient.i.i, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %110) #27
  %153 = add nuw nsw i64 %indvars.iv.i, %138
  %arrayidx210.i = getelementptr inbounds double, double* %3, i64 %153
  store double %152, double* %arrayidx210.i, align 8, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2000
  br i1 %exitcond.not.i, label %for.cond.cleanup199.i, label %invoke.cont203.i, !llvm.loop !94

lpad204.i:                                        ; preds = %_ZTWN5adept21_stack_current_threadE.exit.i160.i, %150
  %154 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup221.i

ehcleanup221.i:                                   ; preds = %lpad204.i, %ehcleanup182.i, %lpad129.i
  %.pn2.pn.pn.pn.pn.pn.i = phi { i8*, i32 } [ %.pn2.pn.pn.pn.i, %ehcleanup182.i ], [ %123, %lpad129.i ], [ %154, %lpad204.i ]
  %155 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i74.i, align 8, !tbaa !26
  %tobool.not.i32.i = icmp eq %"class.adept::Storage"* %155, null
  br i1 %tobool.not.i32.i, label %ehcleanup222.i, label %if.then.i33.i

if.then.i33.i:                                    ; preds = %ehcleanup221.i
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %155)
          to label %ehcleanup222.i unwind label %terminate.lpad.i34.i

terminate.lpad.i34.i:                             ; preds = %if.then.i33.i
  %156 = landingpad { i8*, i32 }
          catch i8* null
  %157 = extractvalue { i8*, i32 } %156, 0
  call void @__clang_call_terminate(i8* %157) #29
  unreachable

ehcleanup222.i:                                   ; preds = %if.then.i33.i, %ehcleanup221.i, %lpad107.i
  %.pn2.pn.pn.pn.pn.pn.pn.i = phi { i8*, i32 } [ %107, %lpad107.i ], [ %.pn2.pn.pn.pn.pn.pn.i, %ehcleanup221.i ], [ %.pn2.pn.pn.pn.pn.pn.i, %if.then.i33.i ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %77) #27
  br label %ehcleanup223.i

ehcleanup223.i:                                   ; preds = %ehcleanup222.i, %lpad93.i
  %.pn10.pn.i = phi { i8*, i32 } [ %.pn2.pn.pn.pn.pn.pn.pn.i, %ehcleanup222.i ], [ %102, %lpad93.i ]
  %158 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i49.i, align 8, !tbaa !21
  %tobool.not.i.i = icmp eq %"class.adept::Storage"* %158, null
  br i1 %tobool.not.i.i, label %ehcleanup224.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %ehcleanup223.i
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %158)
          to label %ehcleanup224.i unwind label %terminate.lpad.i.i

terminate.lpad.i.i:                               ; preds = %if.then.i.i
  %159 = landingpad { i8*, i32 }
          catch i8* null
  %160 = extractvalue { i8*, i32 } %159, 0
  call void @__clang_call_terminate(i8* %160) #29
  unreachable

ehcleanup224.i:                                   ; preds = %if.then.i.i, %ehcleanup223.i, %lpad74.i
  %.pn10.pn.pn.i = phi { i8*, i32 } [ %87, %lpad74.i ], [ %.pn10.pn.i, %ehcleanup223.i ], [ %.pn10.pn.i, %if.then.i.i ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %59) #27
  call void @_ZN5adept5StackD1Ev(%"class.adept::Stack"* nonnull dereferenceable(149) %stack72.i) #27
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %58) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %57) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %56) #27
  br label %eh.resume.i

eh.resume.i:                                      ; preds = %ehcleanup224.i, %ehcleanup63.i
  %.pn18.pn.pn.pn.i = phi { i8*, i32 } [ %.pn18.pn.pn.i, %ehcleanup63.i ], [ %.pn10.pn.pn.i, %ehcleanup224.i ]
  resume { i8*, i32 } %.pn18.pn.pn.pn.i

_ZL12adept_sincosPdS_S_S_.exit:                   ; preds = %if.then.i221.i, %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit228.i
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %59) #27
  call void @_ZN5adept5StackD1Ev(%"class.adept::Stack"* nonnull dereferenceable(149) %stack72.i) #27
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %58) #27
  %tv_sec.i208.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end70.i, i64 0, i32 0
  %161 = load i64, i64* %tv_sec.i208.i, align 8, !tbaa !2
  %tv_sec1.i209.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start69.i, i64 0, i32 0
  %162 = load i64, i64* %tv_sec1.i209.i, align 8, !tbaa !2
  %sub.i210.i = sub nsw i64 %161, %162
  %conv.i211.i = sitofp i64 %sub.i210.i to double
  %tv_usec.i212.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end70.i, i64 0, i32 1
  %163 = load i64, i64* %tv_usec.i212.i, align 8, !tbaa !7
  %tv_usec2.i213.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start69.i, i64 0, i32 1
  %164 = load i64, i64* %tv_usec2.i213.i, align 8, !tbaa !7
  %sub3.i214.i = sub nsw i64 %163, %164
  %conv4.i215.i = sitofp i64 %sub3.i214.i to double
  %mul.i216.i = fmul fast double %conv4.i215.i, 0x3EB0C6F7A0B5ED8D
  %add.i217.i = fadd fast double %mul.i216.i, %conv.i211.i
  %conv5.i218.i = fptrunc double %add.i217.i to float
  %conv228.i = fpext float %conv5.i218.i to double
  %165 = load double, double* %44, align 8, !tbaa !8
  %166 = load double, double* %46, align 8, !tbaa !8
  %167 = load double, double* %48, align 8, !tbaa !8
  %call232.i = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), double %conv228.i, double %165, double %166, double %167)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %57) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %56) #27
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(32000000) %call1, i8 0, i64 32000000, i1 false)
  %168 = bitcast %struct.timeval* %start.i44 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %168) #27
  %169 = bitcast %struct.timeval* %end.i45 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %169) #27
  %call.i = call i32 @gettimeofday(%struct.timeval* nonnull %start.i44, i8* null) #27
  %call.i.i = call noalias dereferenceable_or_null(16000) i8* @malloc(i64 16000) #27
  %170 = bitcast i8* %call.i.i to double*
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.cleanup3.i.i, %_ZL12adept_sincosPdS_S_S_.exit
  %indvars.iv58.i.i = phi i64 [ 0, %_ZL12adept_sincosPdS_S_S_.exit ], [ %indvars.iv.next59.i.i, %for.cond.cleanup3.i.i ]
  %arrayidx.i.i46 = getelementptr inbounds double, double* %170, i64 %indvars.iv58.i.i
  store double 0.000000e+00, double* %arrayidx.i.i46, align 8, !tbaa !8
  %171 = mul nuw nsw i64 %indvars.iv58.i.i, 2000
  br label %for.body4.i.i

for.cond.cleanup3.i.i:                            ; preds = %for.body4.i.i
  store double %add12.i.i, double* %arrayidx.i.i46, align 8, !tbaa !8
  %indvars.iv.next59.i.i = add nuw nsw i64 %indvars.iv58.i.i, 1
  %exitcond61.not.i.i = icmp eq i64 %indvars.iv.next59.i.i, 2000
  br i1 %exitcond61.not.i.i, label %for.body20.i.i, label %for.body.i.i, !llvm.loop !95

for.body4.i.i:                                    ; preds = %for.body4.i.i, %for.body.i.i
  %indvars.iv54.i.i = phi i64 [ 0, %for.body.i.i ], [ %indvars.iv.next55.i.i, %for.body4.i.i ]
  %172 = phi double [ 0.000000e+00, %for.body.i.i ], [ %add12.i.i, %for.body4.i.i ]
  %173 = add nuw nsw i64 %indvars.iv54.i.i, %171
  %arrayidx6.i.i = getelementptr inbounds double, double* %0, i64 %173
  %174 = load double, double* %arrayidx6.i.i, align 8, !tbaa !8
  %arrayidx8.i.i = getelementptr inbounds double, double* %4, i64 %indvars.iv54.i.i
  %175 = load double, double* %arrayidx8.i.i, align 8, !tbaa !8
  %mul9.i.i47 = fmul fast double %175, %174
  %add12.i.i = fadd fast double %mul9.i.i47, %172
  %indvars.iv.next55.i.i = add nuw nsw i64 %indvars.iv54.i.i, 1
  %exitcond57.not.i.i = icmp eq i64 %indvars.iv.next55.i.i, 2000
  br i1 %exitcond57.not.i.i, label %for.cond.cleanup3.i.i, label %for.body4.i.i, !llvm.loop !96

for.body20.i.i:                                   ; preds = %for.body20.i.i, %for.cond.cleanup3.i.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body20.i.i ], [ 0, %for.cond.cleanup3.i.i ]
  %sum.050.i.i = phi double [ %add26.i.i, %for.body20.i.i ], [ 0.000000e+00, %for.cond.cleanup3.i.i ]
  %arrayidx22.i.i = getelementptr inbounds double, double* %170, i64 %indvars.iv.i.i
  %176 = load double, double* %arrayidx22.i.i, align 8, !tbaa !8
  %mul25.i.i = fmul fast double %176, %176
  %add26.i.i = fadd fast double %mul25.i.i, %sum.050.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, 2000
  br i1 %exitcond.not.i.i, label %_Z11matvec_realPdS_.exit.i, label %for.body20.i.i, !llvm.loop !97

_Z11matvec_realPdS_.exit.i:                       ; preds = %for.body20.i.i
  call void @free(i8* nonnull %call.i.i) #27
  %call2.i = call i32 @gettimeofday(%struct.timeval* nonnull %end.i45, i8* null) #27
  %tv_sec.i.i48 = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i45, i64 0, i32 0
  %177 = load i64, i64* %tv_sec.i.i48, align 8, !tbaa !2
  %tv_sec1.i.i49 = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i44, i64 0, i32 0
  %178 = load i64, i64* %tv_sec1.i.i49, align 8, !tbaa !2
  %sub.i.i50 = sub nsw i64 %177, %178
  %conv.i.i51 = sitofp i64 %sub.i.i50 to double
  %tv_usec.i.i52 = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i45, i64 0, i32 1
  %179 = load i64, i64* %tv_usec.i.i52, align 8, !tbaa !7
  %tv_usec2.i.i53 = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i44, i64 0, i32 1
  %180 = load i64, i64* %tv_usec2.i.i53, align 8, !tbaa !7
  %sub3.i.i54 = sub nsw i64 %179, %180
  %conv4.i.i55 = sitofp i64 %sub3.i.i54 to double
  %mul.i.i56 = fmul fast double %conv4.i.i55, 0x3EB0C6F7A0B5ED8D
  %add.i.i57 = fadd fast double %mul.i.i56, %conv.i.i51
  %conv5.i.i58 = fptrunc double %add.i.i57 to float
  %conv.i59 = fpext float %conv5.i.i58 to double
  %call4.i = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), double %conv.i59, double %add26.i.i) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %169) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %168) #27
  %181 = bitcast %struct.timeval* %start5.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %181) #27
  %182 = bitcast %struct.timeval* %end6.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %182) #27
  %183 = load double, double* %0, align 8, !tbaa !8
  %call7.i = call i32 @gettimeofday(%struct.timeval* nonnull %start5.i, i8* null) #27
  br label %for.body.i

for.cond.cleanup.i60:                             ; preds = %_Z11matvec_realPdS_.exit35.i
  %call12.i = call i32 @gettimeofday(%struct.timeval* nonnull %end6.i, i8* null) #27
  %tv_sec.i1.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end6.i, i64 0, i32 0
  %184 = load i64, i64* %tv_sec.i1.i, align 8, !tbaa !2
  %tv_sec1.i2.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start5.i, i64 0, i32 0
  %185 = load i64, i64* %tv_sec1.i2.i, align 8, !tbaa !2
  %sub.i3.i = sub nsw i64 %184, %185
  %conv.i4.i = sitofp i64 %sub.i3.i to double
  %tv_usec.i5.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end6.i, i64 0, i32 1
  %186 = load i64, i64* %tv_usec.i5.i, align 8, !tbaa !7
  %tv_usec2.i6.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start5.i, i64 0, i32 1
  %187 = load i64, i64* %tv_usec2.i6.i, align 8, !tbaa !7
  %sub3.i7.i = sub nsw i64 %186, %187
  %conv4.i8.i = sitofp i64 %sub3.i7.i to double
  %mul.i9.i = fmul fast double %conv4.i8.i, 0x3EB0C6F7A0B5ED8D
  %add.i10.i = fadd fast double %mul.i9.i, %conv.i4.i
  %conv5.i11.i = fptrunc double %add.i10.i to float
  %conv14.i = fpext float %conv5.i11.i to double
  %call15.i = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0), double %conv14.i, double %add11.i) #27
  store double %183, double* %0, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %182) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %181) #27
  %188 = bitcast %struct.timeval* %start17.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %188) #27
  %189 = bitcast %struct.timeval* %end18.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %189) #27
  %call19.i = call i32 @gettimeofday(%struct.timeval* nonnull %start17.i, i8* null) #27
  br label %for.cond26.preheader.i

for.body.i:                                       ; preds = %_Z11matvec_realPdS_.exit35.i, %_Z11matvec_realPdS_.exit.i
  %sum.051.i = phi double [ 0.000000e+00, %_Z11matvec_realPdS_.exit.i ], [ %add11.i, %_Z11matvec_realPdS_.exit35.i ]
  %i.050.i = phi i32 [ 0, %_Z11matvec_realPdS_.exit.i ], [ %inc.i, %_Z11matvec_realPdS_.exit35.i ]
  %conv8.i = sitofp i32 %i.050.i to double
  %div.i = fmul fast double %conv8.i, 1.000000e-08
  %add.i = fadd fast double %div.i, %183
  store double %add.i, double* %0, align 8, !tbaa !8
  %call.i12.i = call noalias dereferenceable_or_null(16000) i8* @malloc(i64 16000) #27
  %190 = bitcast i8* %call.i12.i to double*
  br label %for.body.i15.i

for.body.i15.i:                                   ; preds = %for.cond.cleanup3.i18.i, %for.body.i
  %indvars.iv58.i13.i = phi i64 [ 0, %for.body.i ], [ %indvars.iv.next59.i16.i, %for.cond.cleanup3.i18.i ]
  %arrayidx.i14.i = getelementptr inbounds double, double* %190, i64 %indvars.iv58.i13.i
  store double 0.000000e+00, double* %arrayidx.i14.i, align 8, !tbaa !8
  %191 = mul nuw nsw i64 %indvars.iv58.i13.i, 2000
  br label %for.body4.i26.i

for.cond.cleanup3.i18.i:                          ; preds = %for.body4.i26.i
  store double %add12.i23.i, double* %arrayidx.i14.i, align 8, !tbaa !8
  %indvars.iv.next59.i16.i = add nuw nsw i64 %indvars.iv58.i13.i, 1
  %exitcond61.not.i17.i = icmp eq i64 %indvars.iv.next59.i16.i, 2000
  br i1 %exitcond61.not.i17.i, label %for.body20.i34.i, label %for.body.i15.i, !llvm.loop !95

for.body4.i26.i:                                  ; preds = %for.body4.i26.i, %for.body.i15.i
  %indvars.iv54.i19.i = phi i64 [ 0, %for.body.i15.i ], [ %indvars.iv.next55.i24.i, %for.body4.i26.i ]
  %192 = phi double [ 0.000000e+00, %for.body.i15.i ], [ %add12.i23.i, %for.body4.i26.i ]
  %193 = add nuw nsw i64 %indvars.iv54.i19.i, %191
  %arrayidx6.i20.i = getelementptr inbounds double, double* %0, i64 %193
  %194 = load double, double* %arrayidx6.i20.i, align 8, !tbaa !8
  %arrayidx8.i21.i = getelementptr inbounds double, double* %4, i64 %indvars.iv54.i19.i
  %195 = load double, double* %arrayidx8.i21.i, align 8, !tbaa !8
  %mul9.i22.i = fmul fast double %195, %194
  %add12.i23.i = fadd fast double %mul9.i22.i, %192
  %indvars.iv.next55.i24.i = add nuw nsw i64 %indvars.iv54.i19.i, 1
  %exitcond57.not.i25.i = icmp eq i64 %indvars.iv.next55.i24.i, 2000
  br i1 %exitcond57.not.i25.i, label %for.cond.cleanup3.i18.i, label %for.body4.i26.i, !llvm.loop !96

for.body20.i34.i:                                 ; preds = %for.body20.i34.i, %for.cond.cleanup3.i18.i
  %indvars.iv.i27.i = phi i64 [ %indvars.iv.next.i32.i, %for.body20.i34.i ], [ 0, %for.cond.cleanup3.i18.i ]
  %sum.050.i28.i = phi double [ %add26.i31.i, %for.body20.i34.i ], [ 0.000000e+00, %for.cond.cleanup3.i18.i ]
  %arrayidx22.i29.i = getelementptr inbounds double, double* %190, i64 %indvars.iv.i27.i
  %196 = load double, double* %arrayidx22.i29.i, align 8, !tbaa !8
  %mul25.i30.i = fmul fast double %196, %196
  %add26.i31.i = fadd fast double %mul25.i30.i, %sum.050.i28.i
  %indvars.iv.next.i32.i = add nuw nsw i64 %indvars.iv.i27.i, 1
  %exitcond.not.i33.i = icmp eq i64 %indvars.iv.next.i32.i, 2000
  br i1 %exitcond.not.i33.i, label %_Z11matvec_realPdS_.exit35.i, label %for.body20.i34.i, !llvm.loop !97

_Z11matvec_realPdS_.exit35.i:                     ; preds = %for.body20.i34.i
  call void @free(i8* nonnull %call.i12.i) #27
  %add11.i = fadd fast double %add26.i31.i, %sum.051.i
  %inc.i = add nuw nsw i32 %i.050.i, 1
  %exitcond54.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond54.not.i, label %for.cond.cleanup.i60, label %for.body.i, !llvm.loop !98

for.cond26.preheader.i:                           ; preds = %for.cond.cleanup37.i, %for.cond.cleanup.i60
  %i20.049.i = phi i32 [ 0, %for.cond.cleanup.i60 ], [ %inc47.i, %for.cond.cleanup37.i ]
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(32000000) %call1, i8 0, i64 32000000, i1 false) #27
  call void @_Z13matvec_real_bPdS_S_d(double* nonnull %0, double* nonnull %3, double* nonnull %4, double 1.000000e+00) #27
  br label %for.body38.i

for.cond.cleanup37.i:                             ; preds = %for.body38.i
  %inc47.i = add nuw nsw i32 %i20.049.i, 1
  %exitcond53.not.i = icmp eq i32 %inc47.i, 1000
  br i1 %exitcond53.not.i, label %_ZL15tapenade_sincosPdS_S_S_.exit, label %for.cond26.preheader.i, !llvm.loop !99

for.body38.i:                                     ; preds = %for.body38.i, %for.cond26.preheader.i
  %indvars.iv.i62 = phi i64 [ 0, %for.cond26.preheader.i ], [ %indvars.iv.next.i63, %for.body38.i ]
  %arrayidx40.i = getelementptr inbounds double, double* %3, i64 %indvars.iv.i62
  %197 = load double, double* %arrayidx40.i, align 8, !tbaa !8
  %mul.i = fmul fast double %197, 1.000000e-08
  %arrayidx42.i = getelementptr inbounds double, double* %0, i64 %indvars.iv.i62
  %198 = load double, double* %arrayidx42.i, align 8, !tbaa !8
  %sub.i = fsub fast double %198, %mul.i
  store double %sub.i, double* %arrayidx42.i, align 8, !tbaa !8
  %indvars.iv.next.i63 = add nuw nsw i64 %indvars.iv.i62, 1
  %exitcond.not.i64 = icmp eq i64 %indvars.iv.next.i63, 4000000
  br i1 %exitcond.not.i64, label %for.cond.cleanup37.i, label %for.body38.i, !llvm.loop !100

_ZL15tapenade_sincosPdS_S_S_.exit:                ; preds = %for.cond.cleanup37.i
  %call49.i = call i32 @gettimeofday(%struct.timeval* nonnull %end18.i, i8* null) #27
  %tv_sec.i36.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end18.i, i64 0, i32 0
  %199 = load i64, i64* %tv_sec.i36.i, align 8, !tbaa !2
  %tv_sec1.i37.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start17.i, i64 0, i32 0
  %200 = load i64, i64* %tv_sec1.i37.i, align 8, !tbaa !2
  %sub.i38.i = sub nsw i64 %199, %200
  %conv.i39.i = sitofp i64 %sub.i38.i to double
  %tv_usec.i40.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end18.i, i64 0, i32 1
  %201 = load i64, i64* %tv_usec.i40.i, align 8, !tbaa !7
  %tv_usec2.i41.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start17.i, i64 0, i32 1
  %202 = load i64, i64* %tv_usec2.i41.i, align 8, !tbaa !7
  %sub3.i42.i = sub nsw i64 %201, %202
  %conv4.i43.i = sitofp i64 %sub3.i42.i to double
  %mul.i44.i = fmul fast double %conv4.i43.i, 0x3EB0C6F7A0B5ED8D
  %add.i45.i = fadd fast double %mul.i44.i, %conv.i39.i
  %conv5.i46.i = fptrunc double %add.i45.i to float
  %conv51.i = fpext float %conv5.i46.i to double
  %203 = load double, double* %44, align 8, !tbaa !8
  %204 = load double, double* %46, align 8, !tbaa !8
  %205 = load double, double* %48, align 8, !tbaa !8
  %call55.i = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), double %conv51.i, double %203, double %204, double %205) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %189) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %188) #27
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(32000000) %call1, i8 0, i64 32000000, i1 false)
  %206 = bitcast %struct.timeval* %start.i65 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %206) #27
  %207 = bitcast %struct.timeval* %end.i66 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %207) #27
  %call.i71 = call i32 @gettimeofday(%struct.timeval* nonnull %start.i65, i8* null) #27
  %call.i.i72 = call noalias dereferenceable_or_null(16000) i8* @malloc(i64 16000) #27
  %208 = bitcast i8* %call.i.i72 to double*
  br label %for.body.i.i75

for.body.i.i75:                                   ; preds = %for.cond.cleanup3.i.i78, %_ZL15tapenade_sincosPdS_S_S_.exit
  %indvars.iv58.i.i73 = phi i64 [ 0, %_ZL15tapenade_sincosPdS_S_S_.exit ], [ %indvars.iv.next59.i.i76, %for.cond.cleanup3.i.i78 ]
  %arrayidx.i.i74 = getelementptr inbounds double, double* %208, i64 %indvars.iv58.i.i73
  store double 0.000000e+00, double* %arrayidx.i.i74, align 8, !tbaa !8
  %209 = mul nuw nsw i64 %indvars.iv58.i.i73, 2000
  br label %for.body4.i.i87

for.cond.cleanup3.i.i78:                          ; preds = %for.body4.i.i87
  store double %add12.i.i84, double* %arrayidx.i.i74, align 8, !tbaa !8
  %indvars.iv.next59.i.i76 = add nuw nsw i64 %indvars.iv58.i.i73, 1
  %exitcond61.not.i.i77 = icmp eq i64 %indvars.iv.next59.i.i76, 2000
  br i1 %exitcond61.not.i.i77, label %for.body20.i.i95, label %for.body.i.i75, !llvm.loop !95

for.body4.i.i87:                                  ; preds = %for.body4.i.i87, %for.body.i.i75
  %indvars.iv54.i.i80 = phi i64 [ 0, %for.body.i.i75 ], [ %indvars.iv.next55.i.i85, %for.body4.i.i87 ]
  %210 = phi double [ 0.000000e+00, %for.body.i.i75 ], [ %add12.i.i84, %for.body4.i.i87 ]
  %211 = add nuw nsw i64 %indvars.iv54.i.i80, %209
  %arrayidx6.i.i81 = getelementptr inbounds double, double* %0, i64 %211
  %212 = load double, double* %arrayidx6.i.i81, align 8, !tbaa !8
  %arrayidx8.i.i82 = getelementptr inbounds double, double* %4, i64 %indvars.iv54.i.i80
  %213 = load double, double* %arrayidx8.i.i82, align 8, !tbaa !8
  %mul9.i.i83 = fmul fast double %213, %212
  %add12.i.i84 = fadd fast double %mul9.i.i83, %210
  %indvars.iv.next55.i.i85 = add nuw nsw i64 %indvars.iv54.i.i80, 1
  %exitcond57.not.i.i86 = icmp eq i64 %indvars.iv.next55.i.i85, 2000
  br i1 %exitcond57.not.i.i86, label %for.cond.cleanup3.i.i78, label %for.body4.i.i87, !llvm.loop !96

for.body20.i.i95:                                 ; preds = %for.body20.i.i95, %for.cond.cleanup3.i.i78
  %indvars.iv.i.i88 = phi i64 [ %indvars.iv.next.i.i93, %for.body20.i.i95 ], [ 0, %for.cond.cleanup3.i.i78 ]
  %sum.050.i.i89 = phi double [ %add26.i.i92, %for.body20.i.i95 ], [ 0.000000e+00, %for.cond.cleanup3.i.i78 ]
  %arrayidx22.i.i90 = getelementptr inbounds double, double* %208, i64 %indvars.iv.i.i88
  %214 = load double, double* %arrayidx22.i.i90, align 8, !tbaa !8
  %mul25.i.i91 = fmul fast double %214, %214
  %add26.i.i92 = fadd fast double %mul25.i.i91, %sum.050.i.i89
  %indvars.iv.next.i.i93 = add nuw nsw i64 %indvars.iv.i.i88, 1
  %exitcond.not.i.i94 = icmp eq i64 %indvars.iv.next.i.i93, 2000
  br i1 %exitcond.not.i.i94, label %_Z11matvec_realPdS_.exit.i111, label %for.body20.i.i95, !llvm.loop !97

_Z11matvec_realPdS_.exit.i111:                    ; preds = %for.body20.i.i95
  call void @free(i8* nonnull %call.i.i72) #27
  %call2.i96 = call i32 @gettimeofday(%struct.timeval* nonnull %end.i66, i8* null) #27
  %tv_sec.i.i97 = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i66, i64 0, i32 0
  %215 = load i64, i64* %tv_sec.i.i97, align 8, !tbaa !2
  %tv_sec1.i.i98 = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i65, i64 0, i32 0
  %216 = load i64, i64* %tv_sec1.i.i98, align 8, !tbaa !2
  %sub.i.i99 = sub nsw i64 %215, %216
  %conv.i.i100 = sitofp i64 %sub.i.i99 to double
  %tv_usec.i.i101 = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i66, i64 0, i32 1
  %217 = load i64, i64* %tv_usec.i.i101, align 8, !tbaa !7
  %tv_usec2.i.i102 = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i65, i64 0, i32 1
  %218 = load i64, i64* %tv_usec2.i.i102, align 8, !tbaa !7
  %sub3.i.i103 = sub nsw i64 %217, %218
  %conv4.i.i104 = sitofp i64 %sub3.i.i103 to double
  %mul.i.i105 = fmul fast double %conv4.i.i104, 0x3EB0C6F7A0B5ED8D
  %add.i.i106 = fadd fast double %mul.i.i105, %conv.i.i100
  %conv5.i.i107 = fptrunc double %add.i.i106 to float
  %conv.i108 = fpext float %conv5.i.i107 to double
  %call4.i109 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), double %conv.i108, double %add26.i.i92)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %207) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %206) #27
  %219 = bitcast %struct.timeval* %start5.i67 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %219) #27
  %220 = bitcast %struct.timeval* %end6.i68 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %220) #27
  %221 = load double, double* %0, align 8, !tbaa !8
  %call7.i110 = call i32 @gettimeofday(%struct.timeval* nonnull %start5.i67, i8* null) #27
  br label %for.body.i133

for.cond.cleanup.i127:                            ; preds = %_Z11matvec_realPdS_.exit46.i
  %call12.i112 = call i32 @gettimeofday(%struct.timeval* nonnull %end6.i68, i8* null) #27
  %tv_sec.i1.i113 = getelementptr inbounds %struct.timeval, %struct.timeval* %end6.i68, i64 0, i32 0
  %222 = load i64, i64* %tv_sec.i1.i113, align 8, !tbaa !2
  %tv_sec1.i2.i114 = getelementptr inbounds %struct.timeval, %struct.timeval* %start5.i67, i64 0, i32 0
  %223 = load i64, i64* %tv_sec1.i2.i114, align 8, !tbaa !2
  %sub.i3.i115 = sub nsw i64 %222, %223
  %conv.i4.i116 = sitofp i64 %sub.i3.i115 to double
  %tv_usec.i5.i117 = getelementptr inbounds %struct.timeval, %struct.timeval* %end6.i68, i64 0, i32 1
  %224 = load i64, i64* %tv_usec.i5.i117, align 8, !tbaa !7
  %tv_usec2.i6.i118 = getelementptr inbounds %struct.timeval, %struct.timeval* %start5.i67, i64 0, i32 1
  %225 = load i64, i64* %tv_usec2.i6.i118, align 8, !tbaa !7
  %sub3.i7.i119 = sub nsw i64 %224, %225
  %conv4.i8.i120 = sitofp i64 %sub3.i7.i119 to double
  %mul.i9.i121 = fmul fast double %conv4.i8.i120, 0x3EB0C6F7A0B5ED8D
  %add.i10.i122 = fadd fast double %mul.i9.i121, %conv.i4.i116
  %conv5.i11.i123 = fptrunc double %add.i10.i122 to float
  %conv14.i124 = fpext float %conv5.i11.i123 to double
  %call15.i125 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0), double %conv14.i124, double %add11.i134)
  store double %221, double* %0, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %220) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %219) #27
  %226 = bitcast %struct.timeval* %start17.i69 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %226) #27
  %227 = bitcast %struct.timeval* %end18.i70 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %227) #27
  %call19.i126 = call i32 @gettimeofday(%struct.timeval* nonnull %start17.i69, i8* null) #27
  br label %for.cond26.preheader.i138

for.body.i133:                                    ; preds = %_Z11matvec_realPdS_.exit46.i, %_Z11matvec_realPdS_.exit.i111
  %sum.051.i128 = phi double [ 0.000000e+00, %_Z11matvec_realPdS_.exit.i111 ], [ %add11.i134, %_Z11matvec_realPdS_.exit46.i ]
  %i.050.i129 = phi i32 [ 0, %_Z11matvec_realPdS_.exit.i111 ], [ %inc.i135, %_Z11matvec_realPdS_.exit46.i ]
  %conv8.i130 = sitofp i32 %i.050.i129 to double
  %div.i131 = fmul fast double %conv8.i130, 1.000000e-08
  %add.i132 = fadd fast double %div.i131, %221
  store double %add.i132, double* %0, align 8, !tbaa !8
  %call.i23.i = call noalias dereferenceable_or_null(16000) i8* @malloc(i64 16000) #27
  %228 = bitcast i8* %call.i23.i to double*
  br label %for.body.i26.i

for.body.i26.i:                                   ; preds = %for.cond.cleanup3.i29.i, %for.body.i133
  %indvars.iv58.i24.i = phi i64 [ 0, %for.body.i133 ], [ %indvars.iv.next59.i27.i, %for.cond.cleanup3.i29.i ]
  %arrayidx.i25.i = getelementptr inbounds double, double* %228, i64 %indvars.iv58.i24.i
  store double 0.000000e+00, double* %arrayidx.i25.i, align 8, !tbaa !8
  %229 = mul nuw nsw i64 %indvars.iv58.i24.i, 2000
  br label %for.body4.i37.i

for.cond.cleanup3.i29.i:                          ; preds = %for.body4.i37.i
  store double %add12.i34.i, double* %arrayidx.i25.i, align 8, !tbaa !8
  %indvars.iv.next59.i27.i = add nuw nsw i64 %indvars.iv58.i24.i, 1
  %exitcond61.not.i28.i = icmp eq i64 %indvars.iv.next59.i27.i, 2000
  br i1 %exitcond61.not.i28.i, label %for.body20.i45.i, label %for.body.i26.i, !llvm.loop !95

for.body4.i37.i:                                  ; preds = %for.body4.i37.i, %for.body.i26.i
  %indvars.iv54.i30.i = phi i64 [ 0, %for.body.i26.i ], [ %indvars.iv.next55.i35.i, %for.body4.i37.i ]
  %230 = phi double [ 0.000000e+00, %for.body.i26.i ], [ %add12.i34.i, %for.body4.i37.i ]
  %231 = add nuw nsw i64 %indvars.iv54.i30.i, %229
  %arrayidx6.i31.i = getelementptr inbounds double, double* %0, i64 %231
  %232 = load double, double* %arrayidx6.i31.i, align 8, !tbaa !8
  %arrayidx8.i32.i = getelementptr inbounds double, double* %4, i64 %indvars.iv54.i30.i
  %233 = load double, double* %arrayidx8.i32.i, align 8, !tbaa !8
  %mul9.i33.i = fmul fast double %233, %232
  %add12.i34.i = fadd fast double %mul9.i33.i, %230
  %indvars.iv.next55.i35.i = add nuw nsw i64 %indvars.iv54.i30.i, 1
  %exitcond57.not.i36.i = icmp eq i64 %indvars.iv.next55.i35.i, 2000
  br i1 %exitcond57.not.i36.i, label %for.cond.cleanup3.i29.i, label %for.body4.i37.i, !llvm.loop !96

for.body20.i45.i:                                 ; preds = %for.body20.i45.i, %for.cond.cleanup3.i29.i
  %indvars.iv.i38.i = phi i64 [ %indvars.iv.next.i43.i, %for.body20.i45.i ], [ 0, %for.cond.cleanup3.i29.i ]
  %sum.050.i39.i = phi double [ %add26.i42.i, %for.body20.i45.i ], [ 0.000000e+00, %for.cond.cleanup3.i29.i ]
  %arrayidx22.i40.i = getelementptr inbounds double, double* %228, i64 %indvars.iv.i38.i
  %234 = load double, double* %arrayidx22.i40.i, align 8, !tbaa !8
  %mul25.i41.i = fmul fast double %234, %234
  %add26.i42.i = fadd fast double %mul25.i41.i, %sum.050.i39.i
  %indvars.iv.next.i43.i = add nuw nsw i64 %indvars.iv.i38.i, 1
  %exitcond.not.i44.i = icmp eq i64 %indvars.iv.next.i43.i, 2000
  br i1 %exitcond.not.i44.i, label %_Z11matvec_realPdS_.exit46.i, label %for.body20.i45.i, !llvm.loop !97

_Z11matvec_realPdS_.exit46.i:                     ; preds = %for.body20.i45.i
  call void @free(i8* nonnull %call.i23.i) #27
  %add11.i134 = fadd fast double %add26.i42.i, %sum.051.i128
  %inc.i135 = add nuw nsw i32 %i.050.i129, 1
  %exitcond54.not.i136 = icmp eq i32 %inc.i135, 1000
  br i1 %exitcond54.not.i136, label %for.cond.cleanup.i127, label %for.body.i133, !llvm.loop !101

for.cond26.preheader.i138:                        ; preds = %for.cond.cleanup38.i, %for.cond.cleanup.i127
  %i20.049.i137 = phi i32 [ 0, %for.cond.cleanup.i127 ], [ %inc48.i, %for.cond.cleanup38.i ]
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(32000000) %call1, i8 0, i64 32000000, i1 false)
  call void @diffe_Z11matvec_realPdS_(double* nonnull %0, double* nonnull %3, double* nonnull %4, double 1.000000e+00)
  br label %for.body39.i

for.cond.cleanup38.i:                             ; preds = %for.body39.i
  %inc48.i = add nuw nsw i32 %i20.049.i137, 1
  %exitcond53.not.i142 = icmp eq i32 %inc48.i, 1000
  br i1 %exitcond53.not.i142, label %_ZL13enzyme_sincosPdS_S_S_.exit, label %for.cond26.preheader.i138, !llvm.loop !102

for.body39.i:                                     ; preds = %for.body39.i, %for.cond26.preheader.i138
  %indvars.iv.i143 = phi i64 [ 0, %for.cond26.preheader.i138 ], [ %indvars.iv.next.i146, %for.body39.i ]
  %arrayidx41.i = getelementptr inbounds double, double* %3, i64 %indvars.iv.i143
  %235 = load double, double* %arrayidx41.i, align 8, !tbaa !8
  %mul.i144 = fmul fast double %235, 1.000000e-08
  %arrayidx43.i = getelementptr inbounds double, double* %0, i64 %indvars.iv.i143
  %236 = load double, double* %arrayidx43.i, align 8, !tbaa !8
  %sub.i145 = fsub fast double %236, %mul.i144
  store double %sub.i145, double* %arrayidx43.i, align 8, !tbaa !8
  %indvars.iv.next.i146 = add nuw nsw i64 %indvars.iv.i143, 1
  %exitcond.not.i147 = icmp eq i64 %indvars.iv.next.i146, 4000000
  br i1 %exitcond.not.i147, label %for.cond.cleanup38.i, label %for.body39.i, !llvm.loop !103

_ZL13enzyme_sincosPdS_S_S_.exit:                  ; preds = %for.cond.cleanup38.i
  %call50.i = call i32 @gettimeofday(%struct.timeval* nonnull %end18.i70, i8* null) #27
  %tv_sec.i12.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end18.i70, i64 0, i32 0
  %237 = load i64, i64* %tv_sec.i12.i, align 8, !tbaa !2
  %tv_sec1.i13.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start17.i69, i64 0, i32 0
  %238 = load i64, i64* %tv_sec1.i13.i, align 8, !tbaa !2
  %sub.i14.i = sub nsw i64 %237, %238
  %conv.i15.i = sitofp i64 %sub.i14.i to double
  %tv_usec.i16.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end18.i70, i64 0, i32 1
  %239 = load i64, i64* %tv_usec.i16.i, align 8, !tbaa !7
  %tv_usec2.i17.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start17.i69, i64 0, i32 1
  %240 = load i64, i64* %tv_usec2.i17.i, align 8, !tbaa !7
  %sub3.i18.i = sub nsw i64 %239, %240
  %conv4.i19.i = sitofp i64 %sub3.i18.i to double
  %mul.i20.i = fmul fast double %conv4.i19.i, 0x3EB0C6F7A0B5ED8D
  %add.i21.i = fadd fast double %mul.i20.i, %conv.i15.i
  %conv5.i22.i = fptrunc double %add.i21.i to float
  %conv52.i = fpext float %conv5.i22.i to double
  %241 = load double, double* %44, align 8, !tbaa !8
  %242 = load double, double* %46, align 8, !tbaa !8
  %243 = load double, double* %48, align 8, !tbaa !8
  %call56.i = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), double %conv52.i, double %241, double %242, double %243)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %227) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %226) #27
  ret i32 0

for.body8:                                        ; preds = %for.body8, %for.body8.preheader
  %indvars.iv = phi i64 [ 0, %for.body8.preheader ], [ %indvars.iv.next, %for.body8 ]
  %244 = trunc i64 %indvars.iv to i32
  %conv10 = sitofp i32 %244 to double
  %arrayidx12 = getelementptr inbounds double, double* %4, i64 %indvars.iv
  store double %conv10, double* %arrayidx12, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2000
  br i1 %exitcond.not, label %for.cond.cleanup7, label %for.body8, !llvm.loop !104
}

; Function Attrs: nobuiltin nofree allocsize(0)
declare dso_local nonnull i8* @_Znam(i64) local_unnamed_addr #9

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #10

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept5StackC2Eb(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i1 zeroext %activate_immediately) unnamed_addr #11 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0
  %gap_list_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4
  %1 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_prev.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1
  %2 = bitcast %"class.adept::Stack"* %this to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(96) %2, i8 0, i64 96, i1 false)
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %_M_prev.i.i.i.i.i, align 8, !tbaa !105
  %_M_next.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %_M_next.i.i.i.i.i, align 8, !tbaa !107
  %_M_size.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i64 0, i64* %_M_size.i.i.i.i.i, align 8, !tbaa !108
  %coerce.dive = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5, i32 0
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %i_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 6
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %gradients_initialized_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 10
  %is_recording_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 12
  %3 = bitcast i32* %i_gradient_ to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(18) %3, i8 0, i64 18, i1 false)
  store i8 1, i8* %is_recording_, align 2, !tbaa !110
  %have_openmp_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 13
  store i8 0, i8* %have_openmp_, align 1, !tbaa !111
  %openmp_manually_disabled_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 14
  store i8 0, i8* %openmp_manually_disabled_, align 4, !tbaa !112
  %call.i11 = invoke noalias nonnull dereferenceable(8388608) i8* @_Znam(i64 8388608) #28
          to label %call.i.noexc unwind label %lpad

call.i.noexc:                                     ; preds = %entry
  %multiplier_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %4 = bitcast double** %multiplier_.i to i8**
  store i8* %call.i11, i8** %4, align 8, !tbaa !113
  %call3.i12 = invoke noalias nonnull dereferenceable(4194304) i8* @_Znam(i64 4194304) #28
          to label %call3.i.noexc unwind label %lpad

call3.i.noexc:                                    ; preds = %call.i.noexc
  %index_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %5 = bitcast i32** %index_.i to i8**
  store i8* %call3.i12, i8** %5, align 8, !tbaa !114
  %n_allocated_operations_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 6
  store i32 1048576, i32* %n_allocated_operations_.i, align 4, !tbaa !115
  %call5.i13 = invoke noalias nonnull dereferenceable(8388608) i8* @_Znam(i64 8388608) #28
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %call3.i.noexc
  %6 = bitcast %"class.adept::Stack"* %this to i8**
  store i8* %call5.i13, i8** %6, align 8, !tbaa !42
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 4
  store i32 1048576, i32* %n_allocated_statements_.i, align 4, !tbaa !41
  %n_operations_.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 5
  store i32 0, i32* %n_operations_.i.i, align 8, !tbaa !45
  %n_statements_.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  store i8 0, i8* %gradients_initialized_, align 8, !tbaa !52
  store i32 1, i32* %max_gradient_, align 8, !tbaa !59
  %index.i.i = bitcast i8* %call5.i13 to i32*
  store i32 -1, i32* %index.i.i, align 4, !tbaa !43
  store i32 1, i32* %n_statements_.i.i, align 8, !tbaa !39
  %end_plus_one.i.i = getelementptr inbounds i8, i8* %call5.i13, i64 4
  %7 = bitcast i8* %end_plus_one.i.i to i32*
  store i32 0, i32* %7, align 4, !tbaa !46
  br i1 %activate_immediately, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont3
  invoke void @_ZN5adept5Stack8activateEv(%"class.adept::Stack"* nonnull dereferenceable(149) %this)
          to label %if.end unwind label %lpad

lpad:                                             ; preds = %if.then, %call3.i.noexc, %call.i.noexc, %entry
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i.i.i.i, align 8, !tbaa !107
  %cmp.not12.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %9, %1
  br i1 %cmp.not12.i.i, label %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %lpad
  %__cur.013.i.i = phi %"struct.std::__detail::_List_node_base"* [ %10, %while.body.i.i ], [ %9, %lpad ]
  %_M_next4.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %__cur.013.i.i, i64 0, i32 0
  %10 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next4.i.i, align 8, !tbaa !107
  %11 = bitcast %"struct.std::__detail::_List_node_base"* %__cur.013.i.i to i8*
  tail call void @_ZdlPv(i8* %11) #27
  %cmp.not.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %10, %1
  br i1 %cmp.not.i.i, label %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit, label %while.body.i.i, !llvm.loop !116

_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit: ; preds = %while.body.i.i, %lpad
  %_M_start.i.i6 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %12 = load i32*, i32** %_M_start.i.i6, align 8, !tbaa !49
  %tobool.not.i.i.i7 = icmp eq i32* %12, null
  br i1 %tobool.not.i.i.i7, label %_ZNSt6vectorIiSaIiEED2Ev.exit9, label %if.then.i.i.i8

if.then.i.i.i8:                                   ; preds = %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit
  %13 = bitcast i32* %12 to i8*
  tail call void @_ZdlPv(i8* nonnull %13) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit9

_ZNSt6vectorIiSaIiEED2Ev.exit9:                   ; preds = %if.then.i.i.i8, %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %14 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !49
  %tobool.not.i.i.i = icmp eq i32* %14, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit9
  %15 = bitcast i32* %14 to i8*
  tail call void @_ZdlPv(i8* nonnull %15) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %if.then.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit9
  tail call void @_ZN5adept8internal16StackStorageOrigD2Ev(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %0) #27
  resume { i8*, i32 } %8

if.end:                                           ; preds = %if.then, %invoke.cont3
  ret void
}

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #12

; Function Attrs: norecurse uwtable
define internal fastcc void @_ZL6matvecRN5adept5ArrayILi2EdLb1EEERNS0_ILi1EdLb0EEE(%"class.adept::Active"* noalias sret(%"class.adept::Active") align 8 %agg.result, %"class.adept::Array"* nonnull align 8 dereferenceable(40) %mat, %"class.adept::Array.4"* nonnull align 8 dereferenceable(24) %vec) unnamed_addr #13 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp.i = alloca %"struct.adept::internal::BinaryOperation.16", align 8
  %out = alloca %"class.adept::Array.13", align 8
  %ref.tmp1 = alloca i32, align 4
  %ref.tmp3 = alloca %"class.adept::ActiveReference", align 8
  %ref.tmp6 = alloca %"class.adept::ActiveReference", align 8
  %0 = bitcast %"class.adept::Array.13"* %out to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #27
  %1 = bitcast %"class.adept::Array"* %mat to %"struct.adept::Expression"*
  %2 = bitcast %"class.adept::Array.4"* %vec to %"struct.adept::Expression.5"*
  call void @_ZN5adept6matmulIdNS_5ArrayILi2EdLb1EEEdNS1_ILi1EdLb0EEEEENS_8internal9enable_ifIXaaaaooeqsrT0_4rankLi1EeqsrS6_4rankLi2EooeqsrT2_4rankLi1EeqsrS7_4rankLi2EgtplsrS6_4ranksrS7_4rankLi2EENS1_IXmiplsrS6_4ranksrS7_4rankLi2EENS4_7promoteIT_T1_E4typeEXoosrS6_9is_activesrS7_9is_activeEEEE4typeERKNS_10ExpressionIS9_S6_EERKNSG_ISA_S7_EE(%"class.adept::Array.13"* nonnull sret(%"class.adept::Array.13") align 8 %out, %"struct.adept::Expression"* nonnull align 1 dereferenceable(1) %1, %"struct.adept::Expression.5"* nonnull align 1 dereferenceable(1) %2)
  %3 = bitcast i32* %ref.tmp1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %3) #27
  store i32 0, i32* %ref.tmp1, align 4, !tbaa !25
  invoke void @_ZN5adept6ActiveIdEC2IiEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %agg.result, i32* nonnull align 4 dereferenceable(4) %ref.tmp1, i8* null)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #27
  %4 = bitcast %"class.adept::ActiveReference"* %ref.tmp3 to i8*
  %arrayidx.i7.i = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %out, i64 0, i32 4, i32 0, i64 0
  %data_.i = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %out, i64 0, i32 1
  %value_.i.i.i = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %out, i64 0, i32 0, i32 0
  %val_.i.i = getelementptr inbounds %"class.adept::ActiveReference", %"class.adept::ActiveReference"* %ref.tmp3, i64 0, i32 0
  %gradient_index_.i.i = getelementptr inbounds %"class.adept::ActiveReference", %"class.adept::ActiveReference"* %ref.tmp3, i64 0, i32 1
  %5 = bitcast %"class.adept::ActiveReference"* %ref.tmp6 to i8*
  %val_.i.i37 = getelementptr inbounds %"class.adept::ActiveReference", %"class.adept::ActiveReference"* %ref.tmp6, i64 0, i32 0
  %gradient_index_.i.i38 = getelementptr inbounds %"class.adept::ActiveReference", %"class.adept::ActiveReference"* %ref.tmp6, i64 0, i32 1
  %6 = bitcast %"struct.adept::internal::BinaryOperation.16"* %ref.tmp.i to i8*
  %7 = getelementptr inbounds %"struct.adept::internal::BinaryOperation.16", %"struct.adept::internal::BinaryOperation.16"* %ref.tmp.i, i64 0, i32 0
  %ref.tmp2.sroa.0.0..sroa_idx = getelementptr inbounds %"struct.adept::internal::BinaryOperation.16", %"struct.adept::internal::BinaryOperation.16"* %ref.tmp.i, i64 0, i32 1, i32 0
  %ref.tmp2.sroa.5.0..sroa_idx49 = getelementptr inbounds %"struct.adept::internal::BinaryOperation.16", %"struct.adept::internal::BinaryOperation.16"* %ref.tmp.i, i64 0, i32 1, i32 1
  %8 = bitcast %"struct.adept::internal::BinaryOperation.16"* %ref.tmp.i to %"struct.adept::Expression.17"*
  br label %invoke.cont10

lpad:                                             ; preds = %entry
  %9 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %3) #27
  br label %ehcleanup19

invoke.cont10:                                    ; preds = %invoke.cont12, %invoke.cont
  %i.052 = phi i32 [ 0, %invoke.cont ], [ %inc, %invoke.cont12 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #27
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %10 = load i32, i32* %arrayidx.i7.i, align 4, !tbaa !25, !noalias !117
  %mul.i = mul nsw i32 %10, %i.052
  %11 = load double*, double** %data_.i, align 8, !tbaa !120, !noalias !117
  %idxprom.i = sext i32 %mul.i to i64
  %arrayidx.i = getelementptr inbounds double, double* %11, i64 %idxprom.i
  %12 = load i32, i32* %value_.i.i.i, align 8, !tbaa !18, !noalias !117
  %add.i = add nsw i32 %12, %mul.i
  store double* %arrayidx.i, double** %val_.i.i, align 8, !tbaa !38, !alias.scope !117
  store i32 %add.i, i32* %gradient_index_.i.i, align 8, !tbaa !122, !alias.scope !117
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #27
  store double* %arrayidx.i, double** %val_.i.i37, align 8, !tbaa !38, !alias.scope !124
  store i32 %add.i, i32* %gradient_index_.i.i38, align 8, !tbaa !122, !alias.scope !124
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #27
  store %"class.adept::Active"* %agg.result, %"class.adept::Active"** %7, align 8, !tbaa !38, !alias.scope !127
  store %"class.adept::ActiveReference"* %ref.tmp3, %"class.adept::ActiveReference"** %ref.tmp2.sroa.0.0..sroa_idx, align 8
  store %"class.adept::ActiveReference"* %ref.tmp6, %"class.adept::ActiveReference"** %ref.tmp2.sroa.5.0..sroa_idx49, align 8
  %call.i44 = invoke nonnull align 8 dereferenceable(12) %"class.adept::Active"* @_ZN5adept6ActiveIdEaSIdNS_8internal15BinaryOperationIdS1_NS3_3AddENS4_IdNS_15ActiveReferenceIdEENS3_8MultiplyES7_EEEEEENS3_9enable_ifIXaasrT0_9is_activeeqsrSC_4rankLi0EERS1_E4typeERKNS_10ExpressionIT_SC_EE(%"class.adept::Active"* nonnull dereferenceable(12) %agg.result, %"struct.adept::Expression.17"* nonnull align 1 dereferenceable(1) %8)
          to label %invoke.cont12 unwind label %lpad9

invoke.cont12:                                    ; preds = %invoke.cont10
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %6) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #27
  %inc = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, 2000
  br i1 %exitcond.not, label %nrvo.skipdtor, label %invoke.cont10, !llvm.loop !130

lpad9:                                            ; preds = %invoke.cont10
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #27
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.result) #27
  br label %ehcleanup19

nrvo.skipdtor:                                    ; preds = %invoke.cont12
  %storage_.i39 = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %out, i64 0, i32 2
  %14 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i39, align 8, !tbaa !131
  %tobool.not.i40 = icmp eq %"class.adept::Storage"* %14, null
  br i1 %tobool.not.i40, label %_ZN5adept5ArrayILi1EdLb1EED2Ev.exit43, label %if.then.i41

if.then.i41:                                      ; preds = %nrvo.skipdtor
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %14)
          to label %_ZN5adept5ArrayILi1EdLb1EED2Ev.exit43 unwind label %terminate.lpad.i42

terminate.lpad.i42:                               ; preds = %if.then.i41
  %15 = landingpad { i8*, i32 }
          catch i8* null
  %16 = extractvalue { i8*, i32 } %15, 0
  call void @__clang_call_terminate(i8* %16) #29
  unreachable

_ZN5adept5ArrayILi1EdLb1EED2Ev.exit43:            ; preds = %if.then.i41, %nrvo.skipdtor
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #27
  ret void

ehcleanup19:                                      ; preds = %lpad9, %lpad
  %.pn.pn.pn = phi { i8*, i32 } [ %13, %lpad9 ], [ %9, %lpad ]
  %storage_.i = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %out, i64 0, i32 2
  %17 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i, align 8, !tbaa !131
  %tobool.not.i = icmp eq %"class.adept::Storage"* %17, null
  br i1 %tobool.not.i, label %_ZN5adept5ArrayILi1EdLb1EED2Ev.exit, label %if.then.i

if.then.i:                                        ; preds = %ehcleanup19
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %17)
          to label %_ZN5adept5ArrayILi1EdLb1EED2Ev.exit unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %if.then.i
  %18 = landingpad { i8*, i32 }
          catch i8* null
  %19 = extractvalue { i8*, i32 } %18, 0
  call void @__clang_call_terminate(i8* %19) #29
  unreachable

_ZN5adept5ArrayILi1EdLb1EED2Ev.exit:              ; preds = %if.then.i, %ehcleanup19
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #27
  resume { i8*, i32 } %.pn.pn.pn
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %this) unnamed_addr #14 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %0, label %_ZTWN5adept21_stack_current_threadE.exit

0:                                                ; preds = %entry
  tail call void @_ZTHN5adept21_stack_current_threadE() #27
  br label %_ZTWN5adept21_stack_current_threadE.exit

_ZTWN5adept21_stack_current_threadE.exit:         ; preds = %0, %entry
  %1 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !38
  %gradient_index_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 1
  %n_gradients_registered_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 9
  %2 = load i32, i32* %n_gradients_registered_.i, align 4, !tbaa !132
  %dec.i = add nsw i32 %2, -1
  store i32 %dec.i, i32* %n_gradients_registered_.i, align 4, !tbaa !132
  %3 = load i32, i32* %gradient_index_, align 4, !tbaa !25
  %add.i = add nsw i32 %3, 1
  %i_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 6
  %4 = load i32, i32* %i_gradient_.i, align 8, !tbaa !58
  %cmp.i = icmp eq i32 %add.i, %4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %_ZTWN5adept21_stack_current_threadE.exit
  store i32 %3, i32* %i_gradient_.i, align 8, !tbaa !58
  %gap_list_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 4
  %5 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %6 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i, align 8, !tbaa !107
  %cmp.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %6, %5
  br i1 %cmp.i.i, label %invoke.cont, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  %_M_prev.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1
  %7 = bitcast %"struct.std::__detail::_List_node_base"** %_M_prev.i.i.i to %"struct.std::_List_node"**
  %8 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %7, align 8, !tbaa !105
  %end.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %8, i64 0, i32 1, i32 0, i64 4
  %9 = bitcast i8* %end.i to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !133
  %add8.i = add nsw i32 %10, 1
  %cmp9.i = icmp eq i32 %3, %add8.i
  %11 = getelementptr %"struct.std::_List_node", %"struct.std::_List_node"* %8, i64 0, i32 0
  br i1 %cmp9.i, label %if.then10.i, label %invoke.cont

if.then10.i:                                      ; preds = %if.then4.i
  %_M_storage.i.i.i.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %8, i64 0, i32 1
  %start.i = bitcast %"struct.__gnu_cxx::__aligned_membuf"* %_M_storage.i.i.i.i to i32*
  %12 = load i32, i32* %start.i, align 4, !tbaa !135
  store i32 %12, i32* %i_gradient_.i, align 8, !tbaa !58
  %_M_node.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 5, i32 0
  %13 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa !136
  %cmp.i30.i = icmp eq %"struct.std::__detail::_List_node_base"* %13, %11
  br i1 %cmp.i30.i, label %if.then17.i, label %if.end.i

if.then17.i:                                      ; preds = %if.then10.i
  store %"struct.std::__detail::_List_node_base"* %5, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa.struct !137
  br label %if.end.i

if.end.i:                                         ; preds = %if.then17.i, %if.then10.i
  %_M_size.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %14 = load i64, i64* %_M_size.i.i.i.i, align 8, !tbaa !138
  %sub.i.i.i.i = add i64 %14, -1
  store i64 %sub.i.i.i.i, i64* %_M_size.i.i.i.i, align 8, !tbaa !138
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %11) #27
  %15 = bitcast %"struct.std::_List_node"* %8 to i8*
  tail call void @_ZdlPv(i8* nonnull %15) #27
  br label %invoke.cont

if.else.i:                                        ; preds = %_ZTWN5adept21_stack_current_threadE.exit
  invoke void @_ZN5adept5Stack27unregister_gradient_not_topERKi(%"class.adept::Stack"* nonnull dereferenceable(149) %1, i32* nonnull align 4 dereferenceable(4) %gradient_index_)
          to label %invoke.cont unwind label %terminate.lpad

invoke.cont:                                      ; preds = %if.else.i, %if.end.i, %if.then4.i, %if.then.i
  ret void

terminate.lpad:                                   ; preds = %if.else.i
  %16 = landingpad { i8*, i32 }
          catch i8* null
  %17 = extractvalue { i8*, i32 } %16, 0
  tail call void @__clang_call_terminate(i8* %17) #29
  unreachable
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #12

; Function Attrs: nounwind
declare dso_local void @_ZN5adept5StackD1Ev(%"class.adept::Stack"* nonnull dereferenceable(149)) unnamed_addr #2

declare dso_local void @_ZN5adept5Stack8activateEv(%"class.adept::Stack"* nonnull dereferenceable(149)) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZN5adept8internal16StackStorageOrigD2Ev(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40)) unnamed_addr #2

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) local_unnamed_addr #15 comdat {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #27
  tail call void @_ZSt9terminatev() #29
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare dso_local void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #16

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept5ArrayILi2EdLb1EE6resizeEPKib(%"class.adept::Array"* nonnull dereferenceable(40) %this, i32* %dim, i1 zeroext %force_contiguous) local_unnamed_addr #11 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp6 = alloca %"class.std::__cxx11::basic_string", align 8
  %storage_ = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 2
  %0 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_, align 8, !tbaa !21
  %tobool.not = icmp eq %"class.adept::Storage"* %0, null
  br i1 %tobool.not, label %for.body.preheader, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %0)
  store %"class.adept::Storage"* null, %"class.adept::Storage"** %storage_, align 8, !tbaa !21
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then, %entry
  br label %for.body

for.cond:                                         ; preds = %if.else
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !141

for.body:                                         ; preds = %for.cond, %for.body.preheader
  %cmp = phi i1 [ false, %for.cond ], [ true, %for.body.preheader ]
  %indvars.iv = phi i64 [ 1, %for.cond ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr inbounds i32, i32* %dim, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !25
  %cmp4 = icmp slt i32 %1, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.body
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #27
  %2 = bitcast i8* %exception to %"class.adept::invalid_dimension"*
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #27
  %4 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #27
  invoke void @_ZN5adept8internal18exception_locationB5cxx11EPKci(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp6, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i32 1969)
          to label %invoke.cont unwind label %ehcleanup11.thread

invoke.cont:                                      ; preds = %if.then5
  %call3.i.i.i57 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp6, i64 0, i64 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 34)
          to label %call3.i.i.i.noexc unwind label %lpad7

call3.i.i.i.noexc:                                ; preds = %invoke.cont
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %6 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !142, !alias.scope !144
  %_M_p.i.i25.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %_M_p.i.i25.i.i, align 8, !tbaa !147
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 2
  %arraydecay.i.i.i.i = bitcast %union.anon* %8 to i8*
  %cmp.i.i.i = icmp eq i8* %7, %arraydecay.i.i.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %call3.i.i.i.noexc
  %arraydecay.i.i.i = bitcast %union.anon* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %arraydecay.i.i.i, i8* nonnull align 8 dereferenceable(16) %7, i64 16, i1 false) #27
  br label %invoke.cont8

if.else.i.i:                                      ; preds = %call3.i.i.i.noexc
  %_M_p.i23.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %7, i8** %_M_p.i23.i.i, align 8, !tbaa !147, !alias.scope !144
  %_M_allocated_capacity.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 2, i32 0
  %9 = load i64, i64* %_M_allocated_capacity.i.i, align 8, !tbaa !149
  %_M_allocated_capacity.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %9, i64* %_M_allocated_capacity.i.i.i, align 8, !tbaa !149, !alias.scope !144
  br label %invoke.cont8

invoke.cont8:                                     ; preds = %if.else.i.i, %if.then.i.i
  %_M_string_length.i22.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 1
  %10 = load i64, i64* %_M_string_length.i22.i.i, align 8, !tbaa !150
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %10, i64* %_M_string_length.i.i.i, align 8, !tbaa !150, !alias.scope !144
  %11 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i57 to %union.anon**
  store %union.anon* %8, %union.anon** %11, align 8, !tbaa !147
  store i64 0, i64* %_M_string_length.i22.i.i, align 8, !tbaa !150
  store i8 0, i8* %arraydecay.i.i.i.i, align 8, !tbaa !149
  invoke void @_ZN5adept17invalid_dimensionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_dimension"* nonnull dereferenceable(40) %2, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont8
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_dimensionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad9

ehcleanup11.thread:                               ; preds = %if.then5
  %12 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #27
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
  %15 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !147
  %arraydecay.i.i.i.i58 = bitcast %union.anon* %5 to i8*
  %cmp.i.i.i59 = icmp eq i8* %15, %arraydecay.i.i.i.i58
  br i1 %cmp.i.i.i59, label %ehcleanup, label %if.then.i.i60

if.then.i.i60:                                    ; preds = %lpad9
  call void @_ZdlPv(i8* %15) #27
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i60, %lpad9, %lpad7
  %.pn = phi { i8*, i32 } [ %13, %lpad7 ], [ %14, %lpad9 ], [ %14, %if.then.i.i60 ]
  %cleanup.isactive.1 = phi i1 [ true, %lpad7 ], [ %cleanup.isactive.0, %lpad9 ], [ %cleanup.isactive.0, %if.then.i.i60 ]
  %_M_p.i.i.i.i61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp6, i64 0, i32 0, i32 0
  %16 = load i8*, i8** %_M_p.i.i.i.i61, align 8, !tbaa !147
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp6, i64 0, i32 2
  %arraydecay.i.i.i.i62 = bitcast %union.anon* %17 to i8*
  %cmp.i.i.i63 = icmp eq i8* %16, %arraydecay.i.i.i.i62
  br i1 %cmp.i.i.i63, label %ehcleanup11, label %if.then.i.i64

if.then.i.i64:                                    ; preds = %ehcleanup
  call void @_ZdlPv(i8* %16) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #27
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

ehcleanup11:                                      ; preds = %ehcleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #27
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

cleanup.action:                                   ; preds = %ehcleanup11, %if.then.i.i64, %ehcleanup11.thread
  %.pn.pn82 = phi { i8*, i32 } [ %12, %ehcleanup11.thread ], [ %.pn, %ehcleanup11 ], [ %.pn, %if.then.i.i64 ]
  call void @__cxa_free_exception(i8* %exception) #27
  br label %eh.resume

if.else:                                          ; preds = %for.body
  %cmp16 = icmp eq i32 %1, 0
  br i1 %cmp16, label %_ZN5adept5ArrayILi2EdLb1EE5clearEv.exit, label %for.cond

_ZN5adept5ArrayILi2EdLb1EE5clearEv.exit:          ; preds = %if.else
  %data_.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 1
  store double* null, double** %data_.i, align 8, !tbaa !34
  %arrayidx.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 3, i32 0, i64 0
  %value_.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 0, i32 0
  %18 = bitcast i32* %arrayidx.i.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  store i32 -9999, i32* %value_.i.i, align 4, !tbaa !18
  br label %return

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %dim, align 4, !tbaa !25
  %arrayidx3.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 3, i32 0, i64 0
  store i32 %19, i32* %arrayidx3.i, align 4, !tbaa !25
  %arrayidx.i.c = getelementptr inbounds i32, i32* %dim, i64 1
  %20 = load i32, i32* %arrayidx.i.c, align 4, !tbaa !25
  %arrayidx3.i.c = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 3, i32 0, i64 1
  store i32 %20, i32* %arrayidx3.i.c, align 4, !tbaa !25
  %21 = load i8, i8* @_ZN5adept8internal21array_row_major_orderE, align 1, !tbaa !151, !range !152
  %tobool.not.i66 = icmp eq i8 %21, 0
  br i1 %force_contiguous, label %if.then22, label %if.else23

if.then22:                                        ; preds = %for.end
  %22 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 4, i32 0, i64 0
  br i1 %tobool.not.i66, label %for.body.i77.preheader, label %if.end24

if.else23:                                        ; preds = %for.end
  br i1 %tobool.not.i66, label %if.end24.thread, label %if.then.i70

if.then.i70:                                      ; preds = %if.else23
  %arrayidx.i.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 4, i32 0, i64 1
  store i32 1, i32* %arrayidx.i.i.i, align 4, !tbaa !25
  %cmp.i.i = icmp sgt i32 %20, 3
  br i1 %cmp.i.i, label %if.then.i.i71, label %if.end24.thread84

if.then.i.i71:                                    ; preds = %if.then.i70
  %sub.i.i = add nuw nsw i32 %20, 1
  %div.i.i = sdiv i32 %sub.i.i, 2
  %mul.i.i = shl nuw nsw i32 %div.i.i, 1
  br label %if.end24.thread84

if.end24.thread84:                                ; preds = %if.then.i.i71, %if.then.i70
  %.sink.i.i = phi i32 [ %mul.i.i, %if.then.i.i71 ], [ %20, %if.then.i70 ]
  %23 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 4, i32 0, i64 0
  store i32 %.sink.i.i, i32* %23, align 4
  br label %if.then26

if.end24.thread:                                  ; preds = %if.else23
  %arrayidx.i.i2.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 4, i32 0, i64 0
  br label %for.body.i77.preheader

if.end24:                                         ; preds = %if.then22
  store i32 %20, i32* %22, align 4
  %24 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 4, i32 0, i64 1
  store i32 1, i32* %24, align 4
  br label %if.then26

for.body.i77.preheader:                           ; preds = %if.end24.thread, %if.then22
  %.sink = phi i32* [ %arrayidx.i.i2.i, %if.end24.thread ], [ %22, %if.then22 ]
  store i32 1, i32* %.sink, align 4
  %25 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 4, i32 0, i64 1
  store i32 %19, i32* %25, align 4
  br label %for.body.i77

if.then26:                                        ; preds = %if.end24, %if.end24.thread84
  %26 = phi i32 [ %.sink.i.i, %if.end24.thread84 ], [ %20, %if.end24 ]
  %mul = mul nsw i32 %19, %26
  br label %if.end31

for.body.i77:                                     ; preds = %for.body.i77, %for.body.i77.preheader
  %27 = phi i32 [ %19, %for.body.i77.preheader ], [ %20, %for.body.i77 ]
  %cmp.i74 = phi i1 [ true, %for.body.i77.preheader ], [ false, %for.body.i77 ]
  %s.08.i = phi i32 [ 1, %for.body.i77.preheader ], [ %mul.i, %for.body.i77 ]
  %mul.i = mul nsw i32 %27, %s.08.i
  br i1 %cmp.i74, label %for.body.i77, label %if.end31, !llvm.loop !153

if.end31:                                         ; preds = %for.body.i77, %if.then26
  %data_vol.0 = phi i32 [ %mul, %if.then26 ], [ %mul.i, %for.body.i77 ]
  %call32 = tail call noalias nonnull dereferenceable(24) i8* @_Znwm(i64 24) #28
  %28 = bitcast i8* %call32 to %"class.adept::Storage"*
  invoke void @_ZN5adept7StorageIdEC2Eib(%"class.adept::Storage"* nonnull dereferenceable(20) %28, i32 %data_vol.0, i1 zeroext true)
          to label %invoke.cont34 unwind label %lpad33

invoke.cont34:                                    ; preds = %if.end31
  %29 = bitcast %"class.adept::Storage"** %storage_ to i8**
  store i8* %call32, i8** %29, align 8, !tbaa !21
  %data_.i68 = bitcast i8* %call32 to double**
  %30 = load double*, double** %data_.i68, align 8, !tbaa !154
  %data_ = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 1
  store double* %30, double** %data_, align 8, !tbaa !34
  %gradient_index_.i.i = getelementptr inbounds i8, i8* %call32, i64 16
  %31 = bitcast i8* %gradient_index_.i.i to i32*
  %32 = load i32, i32* %31, align 8, !tbaa !156
  %value_.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 0, i32 0
  store i32 %32, i32* %value_.i, align 4, !tbaa !18
  br label %return

return:                                           ; preds = %invoke.cont34, %_ZN5adept5ArrayILi2EdLb1EE5clearEv.exit
  ret void

lpad33:                                           ; preds = %if.end31
  %33 = landingpad { i8*, i32 }
          cleanup
  tail call void @_ZdlPv(i8* nonnull %call32) #31
  br label %eh.resume

eh.resume:                                        ; preds = %lpad33, %cleanup.action, %ehcleanup11, %if.then.i.i64
  %.pn.pn.pn = phi { i8*, i32 } [ %33, %lpad33 ], [ %.pn.pn82, %cleanup.action ], [ %.pn, %ehcleanup11 ], [ %.pn, %if.then.i.i64 ]
  resume { i8*, i32 } %.pn.pn.pn

unreachable:                                      ; preds = %invoke.cont10
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %this) local_unnamed_addr #17 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp2 = alloca %"class.std::__cxx11::basic_string", align 8
  %n_links_ = getelementptr inbounds %"class.adept::Storage", %"class.adept::Storage"* %this, i64 0, i32 2
  %0 = load i32, i32* %n_links_, align 4, !tbaa !157
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #27
  %1 = bitcast i8* %exception to %"class.adept::invalid_operation"*
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #27
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #27
  invoke void @_ZN5adept8internal18exception_locationB5cxx11EPKci(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp2, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.4, i64 0, i64 0), i32 112)
          to label %invoke.cont unwind label %ehcleanup7.thread

invoke.cont:                                      ; preds = %if.then
  %call3.i.i.i17 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp2, i64 0, i64 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.3, i64 0, i64 0), i64 57)
          to label %call3.i.i.i.noexc unwind label %lpad3

call3.i.i.i.noexc:                                ; preds = %invoke.cont
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %5 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %4, %union.anon** %5, align 8, !tbaa !142, !alias.scope !158
  %_M_p.i.i25.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 0, i32 0
  %6 = load i8*, i8** %_M_p.i.i25.i.i, align 8, !tbaa !147
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 2
  %arraydecay.i.i.i.i = bitcast %union.anon* %7 to i8*
  %cmp.i.i.i = icmp eq i8* %6, %arraydecay.i.i.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %call3.i.i.i.noexc
  %arraydecay.i.i.i = bitcast %union.anon* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %arraydecay.i.i.i, i8* nonnull align 8 dereferenceable(16) %6, i64 16, i1 false) #27
  br label %invoke.cont4

if.else.i.i:                                      ; preds = %call3.i.i.i.noexc
  %_M_p.i23.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %6, i8** %_M_p.i23.i.i, align 8, !tbaa !147, !alias.scope !158
  %_M_allocated_capacity.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 2, i32 0
  %8 = load i64, i64* %_M_allocated_capacity.i.i, align 8, !tbaa !149
  %_M_allocated_capacity.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %8, i64* %_M_allocated_capacity.i.i.i, align 8, !tbaa !149, !alias.scope !158
  br label %invoke.cont4

invoke.cont4:                                     ; preds = %if.else.i.i, %if.then.i.i
  %_M_string_length.i22.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 1
  %9 = load i64, i64* %_M_string_length.i22.i.i, align 8, !tbaa !150
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %9, i64* %_M_string_length.i.i.i, align 8, !tbaa !150, !alias.scope !158
  %10 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i17 to %union.anon**
  store %union.anon* %7, %union.anon** %10, align 8, !tbaa !147
  store i64 0, i64* %_M_string_length.i22.i.i, align 8, !tbaa !150
  store i8 0, i8* %arraydecay.i.i.i.i, align 8, !tbaa !149
  invoke void @_ZN5adept17invalid_operationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %1, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont4
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_operationE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad5

ehcleanup7.thread:                                ; preds = %if.then
  %11 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #27
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
  %14 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !147
  %arraydecay.i.i.i.i18 = bitcast %union.anon* %4 to i8*
  %cmp.i.i.i19 = icmp eq i8* %14, %arraydecay.i.i.i.i18
  br i1 %cmp.i.i.i19, label %ehcleanup, label %if.then.i.i20

if.then.i.i20:                                    ; preds = %lpad5
  call void @_ZdlPv(i8* %14) #27
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i20, %lpad5, %lpad3
  %.pn = phi { i8*, i32 } [ %12, %lpad3 ], [ %13, %lpad5 ], [ %13, %if.then.i.i20 ]
  %cleanup.isactive.1 = phi i1 [ true, %lpad3 ], [ %cleanup.isactive.0, %lpad5 ], [ %cleanup.isactive.0, %if.then.i.i20 ]
  %_M_p.i.i.i.i21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp2, i64 0, i32 0, i32 0
  %15 = load i8*, i8** %_M_p.i.i.i.i21, align 8, !tbaa !147
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp2, i64 0, i32 2
  %arraydecay.i.i.i.i22 = bitcast %union.anon* %16 to i8*
  %cmp.i.i.i23 = icmp eq i8* %15, %arraydecay.i.i.i.i22
  br i1 %cmp.i.i.i23, label %ehcleanup7, label %if.then.i.i24

if.then.i.i24:                                    ; preds = %ehcleanup
  call void @_ZdlPv(i8* %15) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #27
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

ehcleanup7:                                       ; preds = %ehcleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #27
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

cleanup.action:                                   ; preds = %ehcleanup7, %if.then.i.i24, %ehcleanup7.thread
  %.pn.pn29 = phi { i8*, i32 } [ %11, %ehcleanup7.thread ], [ %.pn, %ehcleanup7 ], [ %.pn, %if.then.i.i24 ]
  call void @__cxa_free_exception(i8* %exception) #27
  br label %eh.resume

if.else:                                          ; preds = %entry
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %n_links_, align 4, !tbaa !157
  %cmp11.not = icmp eq i32 %dec, 0
  br i1 %cmp11.not, label %delete.notnull, label %if.end13

delete.notnull:                                   ; preds = %if.else
  %17 = bitcast %"class.adept::Storage"* %this to i8**
  %18 = load i8*, i8** %17, align 8, !tbaa !154
  tail call void @free(i8* %18) #27
  %gradient_index_.i = getelementptr inbounds %"class.adept::Storage", %"class.adept::Storage"* %this, i64 0, i32 3
  %19 = load i32, i32* %gradient_index_.i, align 8, !tbaa !156
  %cmp.i = icmp sgt i32 %19, -1
  br i1 %cmp.i, label %if.then.i, label %_ZN5adept7StorageIdED2Ev.exit

if.then.i:                                        ; preds = %delete.notnull
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %20, label %_ZTWN5adept21_stack_current_threadE.exit.i

20:                                               ; preds = %if.then.i
  tail call void @_ZTHN5adept21_stack_current_threadE() #27
  br label %_ZTWN5adept21_stack_current_threadE.exit.i

_ZTWN5adept21_stack_current_threadE.exit.i:       ; preds = %20, %if.then.i
  %21 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !38
  %n_.i = getelementptr inbounds %"class.adept::Storage", %"class.adept::Storage"* %this, i64 0, i32 1
  invoke void @_ZN5adept5Stack20unregister_gradientsERKiS2_(%"class.adept::Stack"* nonnull dereferenceable(149) %21, i32* nonnull align 4 dereferenceable(4) %gradient_index_.i, i32* nonnull align 4 dereferenceable(4) %n_.i)
          to label %_ZN5adept7StorageIdED2Ev.exit unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %_ZTWN5adept21_stack_current_threadE.exit.i
  %22 = landingpad { i8*, i32 }
          catch i8* null
  %23 = extractvalue { i8*, i32 } %22, 0
  tail call void @__clang_call_terminate(i8* %23) #29
  unreachable

_ZN5adept7StorageIdED2Ev.exit:                    ; preds = %_ZTWN5adept21_stack_current_threadE.exit.i, %delete.notnull
  %24 = load i32, i32* @_ZN5adept8internal26n_storage_objects_deleted_E, align 4, !tbaa !25
  %inc.i = add nsw i32 %24, 1
  store i32 %inc.i, i32* @_ZN5adept8internal26n_storage_objects_deleted_E, align 4, !tbaa !25
  %25 = bitcast %"class.adept::Storage"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %25) #31
  br label %if.end13

if.end13:                                         ; preds = %_ZN5adept7StorageIdED2Ev.exit, %if.else
  ret void

eh.resume:                                        ; preds = %cleanup.action, %ehcleanup7, %if.then.i.i24
  %.pn.pn28 = phi { i8*, i32 } [ %.pn, %ehcleanup7 ], [ %.pn.pn29, %cleanup.action ], [ %.pn, %if.then.i.i24 ]
  resume { i8*, i32 } %.pn.pn28

unreachable:                                      ; preds = %invoke.cont6
  unreachable
}

declare dso_local i8* @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN5adept8internal18exception_locationB5cxx11EPKci(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result, i8* %file, i32 %line) local_unnamed_addr #18 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %s = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %0 = bitcast %"class.std::__cxx11::basic_stringstream"* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 392, i8* nonnull %0) #27
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull dereferenceable(128) %s)
  %add.ptr = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1
  %1 = bitcast %"class.std::basic_ostream.base"* %add.ptr to %"class.std::basic_ostream"*
  %call1.i11 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i64 5)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %tobool.not.i = icmp eq i8* %file, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %invoke.cont
  %2 = bitcast %"class.std::basic_ostream.base"* %add.ptr to i8**
  %vtable.i = load i8*, i8** %2, align 8, !tbaa !161
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i64 -24
  %3 = bitcast i8* %vbase.offset.ptr.i to i64*
  %vbase.offset.i = load i64, i64* %3, align 8
  %4 = bitcast %"class.std::basic_ostream.base"* %add.ptr to i8*
  %add.ptr.i = getelementptr inbounds i8, i8* %4, i64 %vbase.offset.i
  %5 = bitcast i8* %add.ptr.i to %"class.std::basic_ios"*
  %_M_streambuf_state.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 32
  %6 = bitcast i8* %_M_streambuf_state.i.i.i to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !163
  %or.i.i.i = or i32 %7, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull dereferenceable(264) %5, i32 %or.i.i.i)
          to label %invoke.cont1 unwind label %lpad

if.else.i:                                        ; preds = %invoke.cont
  %call.i.i12 = call i64 @strlen(i8* nonnull dereferenceable(1) %file) #27
  %call1.i13 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull %file, i64 %call.i.i12)
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %if.else.i, %if.then.i
  %call1.i18 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i64 0, i64 0), i64 1)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont1
  %call6 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %1, i32 %line)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont3
  %call1.i23 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call6, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0), i64 1)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont5
  %_M_stringbuf.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %agg.result, %"class.std::__cxx11::basic_stringbuf"* nonnull dereferenceable(104) %_M_stringbuf.i)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %invoke.cont7
  %8 = load i32 (...)**, i32 (...)*** bitcast ([10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE to i32 (...)***), align 8
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** %8, i32 (...)*** %9, align 8, !tbaa !161
  %10 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i32 (...)***), align 8
  %vbase.offset.ptr4.i.i = getelementptr i32 (...)*, i32 (...)** %8, i64 -3
  %11 = bitcast i32 (...)** %vbase.offset.ptr4.i.i to i64*
  %vbase.offset.i.i = load i64, i64* %11, align 8
  %add.ptr.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i
  %12 = bitcast i8* %add.ptr.i.i to i32 (...)***
  store i32 (...)** %10, i32 (...)*** %12, align 8, !tbaa !161
  %13 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i32 (...)***), align 8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** %13, i32 (...)*** %14, align 8, !tbaa !161
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %15, align 8, !tbaa !161
  %_M_p.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 0, i32 0
  %16 = load i8*, i8** %_M_p.i.i.i.i.i.i.i, align 8, !tbaa !147
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 2
  %arraydecay.i.i.i.i.i.i.i = bitcast %union.anon* %17 to i8*
  %cmp.i.i.i.i.i.i = icmp eq i8* %16, %arraydecay.i.i.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %invoke.cont9
  call void @_ZdlPv(i8* %16) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %if.then.i.i.i.i.i, %invoke.cont9
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %15, align 8, !tbaa !161
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i) #27
  %18 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)***), align 8
  store i32 (...)** %18, i32 (...)*** %9, align 8, !tbaa !161
  %19 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr3.i.i.i.i = getelementptr i32 (...)*, i32 (...)** %18, i64 -3
  %20 = bitcast i32 (...)** %vbase.offset.ptr3.i.i.i.i to i64*
  %vbase.offset.i.i.i.i = load i64, i64* %20, align 8
  %add.ptr.i.i.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i.i.i
  %21 = bitcast i8* %add.ptr.i.i.i.i to i32 (...)***
  store i32 (...)** %19, i32 (...)*** %21, align 8, !tbaa !161
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %22, align 8, !tbaa !169
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216) %23) #27
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %0) #27
  ret void

lpad:                                             ; preds = %invoke.cont7, %invoke.cont5, %invoke.cont3, %invoke.cont1, %if.else.i, %if.then.i, %entry
  %24 = landingpad { i8*, i32 }
          cleanup
  %25 = load i32 (...)**, i32 (...)*** bitcast ([10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE to i32 (...)***), align 8
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** %25, i32 (...)*** %26, align 8, !tbaa !161
  %27 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i32 (...)***), align 8
  %vbase.offset.ptr4.i.i26 = getelementptr i32 (...)*, i32 (...)** %25, i64 -3
  %28 = bitcast i32 (...)** %vbase.offset.ptr4.i.i26 to i64*
  %vbase.offset.i.i27 = load i64, i64* %28, align 8
  %add.ptr.i.i28 = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i27
  %29 = bitcast i8* %add.ptr.i.i28 to i32 (...)***
  store i32 (...)** %27, i32 (...)*** %29, align 8, !tbaa !161
  %30 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i32 (...)***), align 8
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** %30, i32 (...)*** %31, align 8, !tbaa !161
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %32, align 8, !tbaa !161
  %_M_p.i.i.i.i.i.i.i29 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 0, i32 0
  %33 = load i8*, i8** %_M_p.i.i.i.i.i.i.i29, align 8, !tbaa !147
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 2
  %arraydecay.i.i.i.i.i.i.i30 = bitcast %union.anon* %34 to i8*
  %cmp.i.i.i.i.i.i31 = icmp eq i8* %33, %arraydecay.i.i.i.i.i.i.i30
  br i1 %cmp.i.i.i.i.i.i31, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit37, label %if.then.i.i.i.i.i32

if.then.i.i.i.i.i32:                              ; preds = %lpad
  call void @_ZdlPv(i8* %33) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit37

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit37: ; preds = %if.then.i.i.i.i.i32, %lpad
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %32, align 8, !tbaa !161
  %_M_buf_locale.i.i.i.i33 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i33) #27
  %35 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)***), align 8
  store i32 (...)** %35, i32 (...)*** %26, align 8, !tbaa !161
  %36 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr3.i.i.i.i34 = getelementptr i32 (...)*, i32 (...)** %35, i64 -3
  %37 = bitcast i32 (...)** %vbase.offset.ptr3.i.i.i.i34 to i64*
  %vbase.offset.i.i.i.i35 = load i64, i64* %37, align 8
  %add.ptr.i.i.i.i36 = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i.i.i35
  %38 = bitcast i8* %add.ptr.i.i.i.i36 to i32 (...)***
  store i32 (...)** %36, i32 (...)*** %38, align 8, !tbaa !161
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %39, align 8, !tbaa !169
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216) %40) #27
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %0) #27
  resume { i8*, i32 } %24
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept17invalid_dimensionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_dimension"* nonnull dereferenceable(40) %this, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %message) unnamed_addr #11 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #27
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !142
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #27
  store i64 27, i64* %__dnew.i.i.i.i, align 8, !tbaa !171
  %call5.i.i.i10.i15 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %lpad

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i18.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i15, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !171
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !149
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(27) %call5.i.i.i10.i15, i8* nonnull align 1 dereferenceable(27) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 27, i1 false) #27
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !150
  %6 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #27
  %7 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %message_.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1
  %8 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %message_.i.i to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !142
  %_M_string_length.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i.i, align 8, !tbaa !150
  %.cast.i.i.i = bitcast %union.anon* %8 to i8*
  store i8 0, i8* %.cast.i.i.i, align 1, !tbaa !149
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept15array_exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !161
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %10 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !161
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %11 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i.i.i = icmp eq i8* %11, %.cast.i.i.i
  br i1 %cmp.i.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %11) #27
  br label %_ZN5adept9exceptionD2Ev.exit.i

_ZN5adept9exceptionD2Ev.exit.i:                   ; preds = %if.then.i.i.i.i, %lpad.i
  %12 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %12) #27
  %13 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i18 = icmp eq i8* %13, %3
  br i1 %cmp.i.i.i18, label %ehcleanup, label %if.then.i.i19

invoke.cont4:                                     ; preds = %call5.i.i.i10.i.noexc
  %14 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i = icmp eq i8* %14, %3
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont4
  call void @_ZdlPv(i8* %14) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %invoke.cont4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #27
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept17invalid_dimensionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !161
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %message)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

lpad:                                             ; preds = %entry
  %15 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

if.then.i.i19:                                    ; preds = %_ZN5adept9exceptionD2Ev.exit.i
  call void @_ZdlPv(i8* %13) #27
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i19, %lpad, %_ZN5adept9exceptionD2Ev.exit.i
  %.pn = phi { i8*, i32 } [ %15, %lpad ], [ %10, %_ZN5adept9exceptionD2Ev.exit.i ], [ %10, %if.then.i.i19 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #27
  br label %eh.resume

lpad7:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %16 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !161
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %17 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i.i = icmp eq i8* %17, %.cast.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lpad7
  call void @_ZdlPv(i8* %17) #27
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %lpad7
  %18 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %18) #27
  br label %eh.resume

eh.resume:                                        ; preds = %_ZN5adept9exceptionD2Ev.exit, %ehcleanup
  %.pn12 = phi { i8*, i32 } [ %16, %_ZN5adept9exceptionD2Ev.exit ], [ %.pn, %ehcleanup ]
  resume { i8*, i32 } %.pn12
}

declare dso_local void @__cxa_throw(i8*, i8*, i8*) local_unnamed_addr

declare dso_local void @__cxa_free_exception(i8*) local_unnamed_addr

; Function Attrs: nobuiltin nofree allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) local_unnamed_addr #9

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept7StorageIdEC2Eib(%"class.adept::Storage"* nonnull dereferenceable(20) %this, i32 %n, i1 zeroext %IsActive) unnamed_addr #17 comdat align 2 {
entry:
  %result.i = alloca double*, align 8
  %n.addr = alloca i32, align 4
  store i32 %n, i32* %n.addr, align 4, !tbaa !25
  %n_ = getelementptr inbounds %"class.adept::Storage", %"class.adept::Storage"* %this, i64 0, i32 1
  store i32 %n, i32* %n_, align 8, !tbaa !172
  %n_links_ = getelementptr inbounds %"class.adept::Storage", %"class.adept::Storage"* %this, i64 0, i32 2
  store i32 1, i32* %n_links_, align 4, !tbaa !157
  %gradient_index_ = getelementptr inbounds %"class.adept::Storage", %"class.adept::Storage"* %this, i64 0, i32 3
  store i32 -1, i32* %gradient_index_, align 8, !tbaa !156
  %0 = bitcast double** %result.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #27
  %1 = bitcast double** %result.i to i8**
  %conv1.i = sext i32 %n to i64
  %mul.i = shl nsw i64 %conv1.i, 3
  %call2.i = call i32 @posix_memalign(i8** nonnull %1, i64 16, i64 %mul.i) #27
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit, label %if.then4.i

if.then4.i:                                       ; preds = %entry
  %exception.i = call i8* @__cxa_allocate_exception(i64 8) #27
  %2 = bitcast i8* %exception.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt9bad_alloc, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %2, align 8, !tbaa !161
  call void @__cxa_throw(i8* %exception.i, i8* bitcast (i8** @_ZTISt9bad_alloc to i8*), i8* bitcast (void (%"class.std::bad_alloc"*)* @_ZNSt9bad_allocD1Ev to i8*)) #30
  unreachable

_ZN5adept8internal13alloc_alignedIdEEPT_i.exit:   ; preds = %entry
  %3 = load double*, double** %result.i, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #27
  %data_ = getelementptr inbounds %"class.adept::Storage", %"class.adept::Storage"* %this, i64 0, i32 0
  store double* %3, double** %data_, align 8, !tbaa !154
  %4 = load i32, i32* @_ZN5adept8internal26n_storage_objects_created_E, align 4, !tbaa !25
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @_ZN5adept8internal26n_storage_objects_created_E, align 4, !tbaa !25
  br i1 %IsActive, label %if.then, label %if.end

if.then:                                          ; preds = %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %5, label %_ZTWN5adept21_stack_current_threadE.exit

5:                                                ; preds = %if.then
  call void @_ZTHN5adept21_stack_current_threadE()
  br label %_ZTWN5adept21_stack_current_threadE.exit

_ZTWN5adept21_stack_current_threadE.exit:         ; preds = %5, %if.then
  %6 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !38
  %call.i = call i32 @_ZN5adept5Stack21do_register_gradientsERKi(%"class.adept::Stack"* nonnull dereferenceable(149) %6, i32* nonnull align 4 dereferenceable(4) %n.addr)
  store i32 %call.i, i32* %gradient_index_, align 8, !tbaa !156
  br label %if.end

if.end:                                           ; preds = %_ZTWN5adept21_stack_current_threadE.exit, %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept17invalid_operationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %this, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %message) unnamed_addr #11 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #27
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !142
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #27
  store i64 27, i64* %__dnew.i.i.i.i, align 8, !tbaa !171
  %call5.i.i.i10.i15 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %lpad

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i18.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i15, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !171
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !149
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(27) %call5.i.i.i10.i15, i8* nonnull align 1 dereferenceable(27) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 27, i1 false) #27
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !150
  %6 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #27
  %7 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %message_.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1
  %8 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %message_.i.i to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !142
  %_M_string_length.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i.i, align 8, !tbaa !150
  %.cast.i.i.i = bitcast %union.anon* %8 to i8*
  store i8 0, i8* %.cast.i.i.i, align 1, !tbaa !149
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept15array_exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !161
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %10 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !161
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %11 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i.i.i = icmp eq i8* %11, %.cast.i.i.i
  br i1 %cmp.i.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %11) #27
  br label %_ZN5adept9exceptionD2Ev.exit.i

_ZN5adept9exceptionD2Ev.exit.i:                   ; preds = %if.then.i.i.i.i, %lpad.i
  %12 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %12) #27
  %13 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i18 = icmp eq i8* %13, %3
  br i1 %cmp.i.i.i18, label %ehcleanup, label %if.then.i.i19

invoke.cont4:                                     ; preds = %call5.i.i.i10.i.noexc
  %14 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i = icmp eq i8* %14, %3
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont4
  call void @_ZdlPv(i8* %14) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %invoke.cont4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #27
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept17invalid_operationE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !161
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %message)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

lpad:                                             ; preds = %entry
  %15 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

if.then.i.i19:                                    ; preds = %_ZN5adept9exceptionD2Ev.exit.i
  call void @_ZdlPv(i8* %13) #27
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i19, %lpad, %_ZN5adept9exceptionD2Ev.exit.i
  %.pn = phi { i8*, i32 } [ %15, %lpad ], [ %10, %_ZN5adept9exceptionD2Ev.exit.i ], [ %10, %if.then.i.i19 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #27
  br label %eh.resume

lpad7:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %16 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !161
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %17 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i.i = icmp eq i8* %17, %.cast.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lpad7
  call void @_ZdlPv(i8* %17) #27
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %lpad7
  %18 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %18) #27
  br label %eh.resume

eh.resume:                                        ; preds = %_ZN5adept9exceptionD2Ev.exit, %ehcleanup
  %.pn12 = phi { i8*, i32 } [ %16, %_ZN5adept9exceptionD2Ev.exit ], [ %.pn, %ehcleanup ]
  resume { i8*, i32 } %.pn12
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept17invalid_operationD0Ev(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !161
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !147
  %2 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #27
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #27
  %4 = bitcast %"class.adept::invalid_operation"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #31
  ret void
}

; Function Attrs: nounwind uwtable willreturn mustprogress
define linkonce_odr dso_local i8* @_ZNK5adept9exception4whatEv(%"class.adept::exception"* nonnull dereferenceable(40) %this) unnamed_addr #20 comdat align 2 {
entry:
  %_M_p.i.i = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 0, i32 0
  %0 = load i8*, i8** %_M_p.i.i, align 8, !tbaa !147
  ret i8* %0
}

declare dso_local i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32), i64* nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #21

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept15array_exceptionD0Ev(%"class.adept::array_exception"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::array_exception", %"class.adept::array_exception"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !161
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::array_exception", %"class.adept::array_exception"* %this, i64 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !147
  %2 = getelementptr inbounds %"class.adept::array_exception", %"class.adept::array_exception"* %this, i64 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #27
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::array_exception", %"class.adept::array_exception"* %this, i64 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #27
  %4 = bitcast %"class.adept::array_exception"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #31
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept9exceptionD0Ev(%"class.adept::exception"* nonnull dereferenceable(40) %this) unnamed_addr #22 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !161
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !147
  %2 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #27
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #27
  %4 = bitcast %"class.adept::exception"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #31
  ret void
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8)) unnamed_addr #2

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32), %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

declare dso_local void @_ZN5adept5Stack20unregister_gradientsERKiS2_(%"class.adept::Stack"* nonnull dereferenceable(149), i32* nonnull align 4 dereferenceable(4), i32* nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare dso_local nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32), i64, i64, i8*, i64) local_unnamed_addr #1

; Function Attrs: uwtable
declare dso_local void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull dereferenceable(128)) unnamed_addr #11 align 2

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8), i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216)) unnamed_addr #2

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #1

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull dereferenceable(264), i32) local_unnamed_addr #1

; Function Attrs: uwtable
declare dso_local void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8, %"class.std::__cxx11::basic_stringbuf"* nonnull dereferenceable(104)) local_unnamed_addr #11 align 2

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept17invalid_dimensionD0Ev(%"class.adept::invalid_dimension"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !161
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !147
  %2 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #27
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #27
  %4 = bitcast %"class.adept::invalid_dimension"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #31
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local i32 @posix_memalign(i8**, i64, i64) local_unnamed_addr #12

; Function Attrs: nounwind
declare dso_local void @_ZNSt9bad_allocD1Ev(%"class.std::bad_alloc"* nonnull dereferenceable(8)) unnamed_addr #2

declare dso_local i32 @_ZN5adept5Stack21do_register_gradientsERKi(%"class.adept::Stack"* nonnull dereferenceable(149), i32* nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare dso_local void @_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40), i32) local_unnamed_addr #1

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept5ArrayILi1EdLb0EE6resizeEPKib(%"class.adept::Array.4"* nonnull dereferenceable(24) %this, i32* %dim, i1 zeroext %force_contiguous) local_unnamed_addr #17 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %result.i.i = alloca double*, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp6 = alloca %"class.std::__cxx11::basic_string", align 8
  %storage_ = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %this, i64 0, i32 1
  %0 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_, align 8, !tbaa !26
  %tobool.not = icmp eq %"class.adept::Storage"* %0, null
  br i1 %tobool.not, label %for.body.critedge, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %0)
  store %"class.adept::Storage"* null, %"class.adept::Storage"** %storage_, align 8, !tbaa !26
  br label %for.body.critedge

for.body.critedge:                                ; preds = %if.then, %entry
  %1 = load i32, i32* %dim, align 4, !tbaa !25
  %cmp4 = icmp slt i32 %1, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.body.critedge
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #27
  %2 = bitcast i8* %exception to %"class.adept::invalid_dimension"*
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #27
  %4 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #27
  invoke void @_ZN5adept8internal18exception_locationB5cxx11EPKci(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp6, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i32 1969)
          to label %invoke.cont unwind label %ehcleanup11.thread

invoke.cont:                                      ; preds = %if.then5
  %call3.i.i.i57 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp6, i64 0, i64 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 34)
          to label %call3.i.i.i.noexc unwind label %lpad7

call3.i.i.i.noexc:                                ; preds = %invoke.cont
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %6 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !142, !alias.scope !173
  %_M_p.i.i25.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %_M_p.i.i25.i.i, align 8, !tbaa !147
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 2
  %arraydecay.i.i.i.i = bitcast %union.anon* %8 to i8*
  %cmp.i.i.i = icmp eq i8* %7, %arraydecay.i.i.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %call3.i.i.i.noexc
  %arraydecay.i.i.i = bitcast %union.anon* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %arraydecay.i.i.i, i8* nonnull align 8 dereferenceable(16) %7, i64 16, i1 false) #27
  br label %invoke.cont8

if.else.i.i:                                      ; preds = %call3.i.i.i.noexc
  %_M_p.i23.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %7, i8** %_M_p.i23.i.i, align 8, !tbaa !147, !alias.scope !173
  %_M_allocated_capacity.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 2, i32 0
  %9 = load i64, i64* %_M_allocated_capacity.i.i, align 8, !tbaa !149
  %_M_allocated_capacity.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %9, i64* %_M_allocated_capacity.i.i.i, align 8, !tbaa !149, !alias.scope !173
  br label %invoke.cont8

invoke.cont8:                                     ; preds = %if.else.i.i, %if.then.i.i
  %_M_string_length.i22.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 1
  %10 = load i64, i64* %_M_string_length.i22.i.i, align 8, !tbaa !150
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %10, i64* %_M_string_length.i.i.i, align 8, !tbaa !150, !alias.scope !173
  %11 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i57 to %union.anon**
  store %union.anon* %8, %union.anon** %11, align 8, !tbaa !147
  store i64 0, i64* %_M_string_length.i22.i.i, align 8, !tbaa !150
  store i8 0, i8* %arraydecay.i.i.i.i, align 8, !tbaa !149
  invoke void @_ZN5adept17invalid_dimensionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_dimension"* nonnull dereferenceable(40) %2, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont8
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_dimensionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad9

ehcleanup11.thread:                               ; preds = %if.then5
  %12 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #27
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
  %15 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !147
  %arraydecay.i.i.i.i58 = bitcast %union.anon* %5 to i8*
  %cmp.i.i.i59 = icmp eq i8* %15, %arraydecay.i.i.i.i58
  br i1 %cmp.i.i.i59, label %ehcleanup, label %if.then.i.i60

if.then.i.i60:                                    ; preds = %lpad9
  call void @_ZdlPv(i8* %15) #27
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i60, %lpad9, %lpad7
  %.pn = phi { i8*, i32 } [ %13, %lpad7 ], [ %14, %lpad9 ], [ %14, %if.then.i.i60 ]
  %cleanup.isactive.1 = phi i1 [ true, %lpad7 ], [ %cleanup.isactive.0, %lpad9 ], [ %cleanup.isactive.0, %if.then.i.i60 ]
  %_M_p.i.i.i.i61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp6, i64 0, i32 0, i32 0
  %16 = load i8*, i8** %_M_p.i.i.i.i61, align 8, !tbaa !147
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp6, i64 0, i32 2
  %arraydecay.i.i.i.i62 = bitcast %union.anon* %17 to i8*
  %cmp.i.i.i63 = icmp eq i8* %16, %arraydecay.i.i.i.i62
  br i1 %cmp.i.i.i63, label %ehcleanup11, label %if.then.i.i64

if.then.i.i64:                                    ; preds = %ehcleanup
  call void @_ZdlPv(i8* %16) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #27
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

ehcleanup11:                                      ; preds = %ehcleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #27
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

cleanup.action:                                   ; preds = %ehcleanup11, %if.then.i.i64, %ehcleanup11.thread
  %.pn.pn73 = phi { i8*, i32 } [ %12, %ehcleanup11.thread ], [ %.pn, %ehcleanup11 ], [ %.pn, %if.then.i.i64 ]
  call void @__cxa_free_exception(i8* %exception) #27
  br label %eh.resume

if.else:                                          ; preds = %for.body.critedge
  %cmp16 = icmp eq i32 %1, 0
  br i1 %cmp16, label %_ZN5adept5ArrayILi1EdLb0EE5clearEv.exit, label %for.end, !llvm.loop !176

_ZN5adept5ArrayILi1EdLb0EE5clearEv.exit:          ; preds = %if.else
  %data_.i = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %this, i64 0, i32 0
  store double* null, double** %data_.i, align 8, !tbaa !29
  %arrayidx.i.i = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %this, i64 0, i32 2, i32 0, i64 0
  store i32 0, i32* %arrayidx.i.i, align 4, !tbaa !25
  %arrayidx.i4.i = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %this, i64 0, i32 3, i32 0, i64 0
  store i32 0, i32* %arrayidx.i4.i, align 4, !tbaa !25
  br label %return

for.end:                                          ; preds = %if.else
  %arrayidx3.i = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %this, i64 0, i32 2, i32 0, i64 0
  store i32 %1, i32* %arrayidx3.i, align 4, !tbaa !25
  %18 = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %this, i64 0, i32 3, i32 0, i64 0
  store i32 1, i32* %18, align 4
  %call32 = tail call noalias nonnull dereferenceable(24) i8* @_Znwm(i64 24) #28
  %n_.i = getelementptr inbounds i8, i8* %call32, i64 8
  %19 = bitcast i8* %n_.i to i32*
  store i32 %1, i32* %19, align 8, !tbaa !172
  %n_links_.i = getelementptr inbounds i8, i8* %call32, i64 12
  %20 = bitcast i8* %n_links_.i to i32*
  store i32 1, i32* %20, align 4, !tbaa !157
  %gradient_index_.i = getelementptr inbounds i8, i8* %call32, i64 16
  %21 = bitcast i8* %gradient_index_.i to i32*
  store i32 -1, i32* %21, align 8, !tbaa !156
  %22 = bitcast double** %result.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #27
  %23 = bitcast double** %result.i.i to i8**
  %conv1.i.i74 = zext i32 %1 to i64
  %mul.i.i = shl nuw nsw i64 %conv1.i.i74, 3
  %call2.i.i = call i32 @posix_memalign(i8** nonnull %23, i64 16, i64 %mul.i.i) #27
  %cmp3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %cmp3.not.i.i, label %invoke.cont34, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %for.end
  %exception.i.i = call i8* @__cxa_allocate_exception(i64 8) #27
  %24 = bitcast i8* %exception.i.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt9bad_alloc, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %24, align 8, !tbaa !161
  invoke void @__cxa_throw(i8* nonnull %exception.i.i, i8* bitcast (i8** @_ZTISt9bad_alloc to i8*), i8* bitcast (void (%"class.std::bad_alloc"*)* @_ZNSt9bad_allocD1Ev to i8*)) #30
          to label %.noexc unwind label %lpad33

.noexc:                                           ; preds = %if.then4.i.i
  unreachable

invoke.cont34:                                    ; preds = %for.end
  %25 = load double*, double** %result.i.i, align 8, !tbaa !38
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #27
  %data_.i67 = bitcast i8* %call32 to double**
  store double* %25, double** %data_.i67, align 8, !tbaa !154
  %26 = load i32, i32* @_ZN5adept8internal26n_storage_objects_created_E, align 4, !tbaa !25
  %inc.i = add nsw i32 %26, 1
  store i32 %inc.i, i32* @_ZN5adept8internal26n_storage_objects_created_E, align 4, !tbaa !25
  %27 = bitcast %"class.adept::Storage"** %storage_ to i8**
  store i8* %call32, i8** %27, align 8, !tbaa !26
  %data_ = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %this, i64 0, i32 0
  store double* %25, double** %data_, align 8, !tbaa !29
  br label %return

return:                                           ; preds = %invoke.cont34, %_ZN5adept5ArrayILi1EdLb0EE5clearEv.exit
  ret void

lpad33:                                           ; preds = %if.then4.i.i
  %28 = landingpad { i8*, i32 }
          cleanup
  call void @_ZdlPv(i8* nonnull %call32) #31
  br label %eh.resume

eh.resume:                                        ; preds = %lpad33, %cleanup.action, %ehcleanup11, %if.then.i.i64
  %.pn.pn.pn = phi { i8*, i32 } [ %28, %lpad33 ], [ %.pn.pn73, %cleanup.action ], [ %.pn, %ehcleanup11 ], [ %.pn, %if.then.i.i64 ]
  resume { i8*, i32 } %.pn.pn.pn

unreachable:                                      ; preds = %invoke.cont10
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept6ActiveIdEC2IiEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %this, i32* nonnull align 4 dereferenceable(4) %rhs, i8* %dummy) unnamed_addr #17 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %val_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 0
  %0 = load i32, i32* %rhs, align 4, !tbaa !25
  %conv = sitofp i32 %0 to double
  store double %conv, double* %val_, align 8, !tbaa !177
  %gradient_index_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 1
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %1, label %_ZTWN5adept21_stack_current_threadE.exit

1:                                                ; preds = %entry
  tail call void @_ZTHN5adept21_stack_current_threadE()
  br label %_ZTWN5adept21_stack_current_threadE.exit

_ZTWN5adept21_stack_current_threadE.exit:         ; preds = %1, %entry
  %2 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !38
  %n_gradients_registered_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %2, i64 0, i32 9
  %3 = load i32, i32* %n_gradients_registered_.i, align 4, !tbaa !132
  %inc.i4 = add nsw i32 %3, 1
  store i32 %inc.i4, i32* %n_gradients_registered_.i, align 4, !tbaa !132
  %gap_list_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %2, i64 0, i32 4
  %4 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %5 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i, align 8, !tbaa !107
  %cmp.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %5, %4
  br i1 %cmp.i.i, label %if.then.i6, label %if.else.i

if.then.i6:                                       ; preds = %_ZTWN5adept21_stack_current_threadE.exit
  %i_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %2, i64 0, i32 6
  %6 = load i32, i32* %i_gradient_.i, align 8, !tbaa !58
  %inc2.i = add nsw i32 %6, 1
  store i32 %inc2.i, i32* %i_gradient_.i, align 8, !tbaa !58
  %max_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %2, i64 0, i32 8
  %7 = load i32, i32* %max_gradient_.i, align 8, !tbaa !59
  %cmp.not.i5 = icmp slt i32 %6, %7
  br i1 %cmp.not.i5, label %_ZN5adept5Stack17register_gradientEv.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i6
  store i32 %inc2.i, i32* %max_gradient_.i, align 8, !tbaa !59
  br label %_ZN5adept5Stack17register_gradientEv.exit

if.else.i:                                        ; preds = %_ZTWN5adept21_stack_current_threadE.exit
  %8 = bitcast %"struct.std::__detail::_List_node_base"* %5 to %"struct.std::_List_node"*
  %_M_storage.i.i.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %5, i64 1
  %start.i = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i.i.i to i32*
  %9 = load i32, i32* %start.i, align 4, !tbaa !135
  %inc11.i = add nsw i32 %9, 1
  store i32 %inc11.i, i32* %start.i, align 4, !tbaa !135
  %end.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %8, i64 0, i32 1, i32 0, i64 4
  %10 = bitcast i8* %end.i to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !133
  %cmp13.not.i = icmp slt i32 %9, %11
  br i1 %cmp13.not.i, label %_ZN5adept5Stack17register_gradientEv.exit, label %if.then14.i

if.then14.i:                                      ; preds = %if.else.i
  %_M_node.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %2, i64 0, i32 5, i32 0
  %12 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa !136
  %cmp.i35.i = icmp eq %"struct.std::__detail::_List_node_base"* %12, %5
  br i1 %cmp.i35.i, label %if.then18.i, label %if.end24.i

if.then18.i:                                      ; preds = %if.then14.i
  store %"struct.std::__detail::_List_node_base"* %4, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa.struct !137
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then18.i, %if.then14.i
  %_M_size.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %2, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %13 = load i64, i64* %_M_size.i.i.i.i, align 8, !tbaa !138
  %sub.i.i.i.i = add i64 %13, -1
  store i64 %sub.i.i.i.i, i64* %_M_size.i.i.i.i, align 8, !tbaa !138
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %5) #27
  %14 = bitcast %"struct.std::__detail::_List_node_base"* %5 to i8*
  tail call void @_ZdlPv(i8* nonnull %14) #27
  br label %_ZN5adept5Stack17register_gradientEv.exit

_ZN5adept5Stack17register_gradientEv.exit:        ; preds = %if.end24.i, %if.else.i, %if.then4.i, %if.then.i6
  %return_val.0.i = phi i32 [ %9, %if.end24.i ], [ %9, %if.else.i ], [ %6, %if.then4.i ], [ %6, %if.then.i6 ]
  store i32 %return_val.0.i, i32* %gradient_index_, align 8, !tbaa !60
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %15, label %_ZTWN5adept21_stack_current_threadE.exit3

15:                                               ; preds = %_ZN5adept5Stack17register_gradientEv.exit
  tail call void @_ZTHN5adept21_stack_current_threadE()
  br label %_ZTWN5adept21_stack_current_threadE.exit3

_ZTWN5adept21_stack_current_threadE.exit3:        ; preds = %15, %_ZN5adept5Stack17register_gradientEv.exit
  %16 = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !38
  %n_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %16, i64 0, i32 3
  %17 = load i32, i32* %n_statements_.i, align 8, !tbaa !39
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %16, i64 0, i32 4
  %18 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !41
  %cmp.not.i = icmp slt i32 %17, %18
  br i1 %cmp.not.i, label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit, label %if.then.i

if.then.i:                                        ; preds = %_ZTWN5adept21_stack_current_threadE.exit3
  tail call void @_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %16, i32 0)
  %.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !39
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %if.then.i, %_ZTWN5adept21_stack_current_threadE.exit3
  %19 = phi i32 [ %.pre.i, %if.then.i ], [ %17, %_ZTWN5adept21_stack_current_threadE.exit3 ]
  %20 = load i32, i32* %gradient_index_, align 4, !tbaa !25
  %statement_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %16, i64 0, i32 0
  %21 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i, align 8, !tbaa !42
  %idxprom.i = sext i32 %19 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %21, i64 %idxprom.i, i32 0
  store i32 %20, i32* %index.i, align 4, !tbaa !43
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %16, i64 0, i32 5
  %22 = load i32, i32* %n_operations_.i, align 8, !tbaa !45
  %inc.i = add nsw i32 %19, 1
  store i32 %inc.i, i32* %n_statements_.i, align 8, !tbaa !39
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %21, i64 %idxprom.i, i32 1
  store i32 %22, i32* %end_plus_one.i, align 4, !tbaa !46
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN5adept6matmulIdNS_5ArrayILi2EdLb1EEEdNS1_ILi1EdLb0EEEEENS_8internal9enable_ifIXaaaaooeqsrT0_4rankLi1EeqsrS6_4rankLi2EooeqsrT2_4rankLi1EeqsrS7_4rankLi2EgtplsrS6_4ranksrS7_4rankLi2EENS1_IXmiplsrS6_4ranksrS7_4rankLi2EENS4_7promoteIT_T1_E4typeEXoosrS6_9is_activesrS7_9is_activeEEEE4typeERKNS_10ExpressionIS9_S6_EERKNSG_ISA_S7_EE(%"class.adept::Array.13"* noalias sret(%"class.adept::Array.13") align 8 %agg.result, %"struct.adept::Expression"* nonnull align 1 dereferenceable(1) %left, %"struct.adept::Expression.5"* nonnull align 1 dereferenceable(1) %right) local_unnamed_addr #18 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.adept::Array", align 8
  %ref.tmp1 = alloca %"class.adept::Array.4", align 8
  %0 = bitcast %"class.adept::Array"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %value_.i.i.i.i = bitcast %"struct.adept::Expression"* %left to i32*
  %1 = load i32, i32* %value_.i.i.i.i, align 8, !tbaa !18, !noalias !178
  %value_.i.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %ref.tmp, i64 0, i32 0, i32 0
  store i32 %1, i32* %value_.i.i.i, align 8, !tbaa !18, !alias.scope !178
  %data_.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %ref.tmp, i64 0, i32 1
  %data_.i.i.i = getelementptr inbounds %"struct.adept::Expression", %"struct.adept::Expression"* %left, i64 8
  %2 = bitcast %"struct.adept::Expression"* %data_.i.i.i to double**
  %3 = load double*, double** %2, align 8, !tbaa !34, !noalias !178
  store double* %3, double** %data_.i.i, align 8, !tbaa !34, !alias.scope !178
  %storage_.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %ref.tmp, i64 0, i32 2
  %storage_.i.i.i = getelementptr inbounds %"struct.adept::Expression", %"struct.adept::Expression"* %left, i64 16
  %4 = bitcast %"struct.adept::Expression"* %storage_.i.i.i to %"class.adept::Storage"**
  %5 = load %"class.adept::Storage"*, %"class.adept::Storage"** %4, align 8, !tbaa !21, !noalias !178
  store %"class.adept::Storage"* %5, %"class.adept::Storage"** %storage_.i.i, align 8, !tbaa !21, !alias.scope !178
  %dimensions_.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %ref.tmp, i64 0, i32 3
  %dimensions_.i.i.i = getelementptr inbounds %"struct.adept::Expression", %"struct.adept::Expression"* %left, i64 24
  %6 = bitcast %"struct.adept::Expression"* %dimensions_.i.i.i to <2 x i64>*
  %7 = load <2 x i64>, <2 x i64>* %6, align 8, !tbaa !149, !noalias !178
  %8 = bitcast %"class.adept::ExpressionSize"* %dimensions_.i.i to <2 x i64>*
  store <2 x i64> %7, <2 x i64>* %8, align 8, !tbaa !149, !alias.scope !178
  %tobool.not.i.i = icmp eq %"class.adept::Storage"* %5, null
  br i1 %tobool.not.i.i, label %_ZN5adept8internal13promote_arrayIdLi2EdLb1EEENS_5ArrayIXT0_ET_XT2_EEERKNS2_IXT0_ET1_XT2_EEE.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %n_links_.i.i.i = getelementptr inbounds %"class.adept::Storage", %"class.adept::Storage"* %5, i64 0, i32 2
  %9 = load i32, i32* %n_links_.i.i.i, align 4, !tbaa !157, !noalias !178
  %inc.i.i.i = add nsw i32 %9, 1
  store i32 %inc.i.i.i, i32* %n_links_.i.i.i, align 4, !tbaa !157, !noalias !178
  br label %_ZN5adept8internal13promote_arrayIdLi2EdLb1EEENS_5ArrayIXT0_ET_XT2_EEERKNS2_IXT0_ET1_XT2_EEE.exit

_ZN5adept8internal13promote_arrayIdLi2EdLb1EEENS_5ArrayIXT0_ET_XT2_EEERKNS2_IXT0_ET1_XT2_EEE.exit: ; preds = %if.then.i.i, %entry
  %10 = bitcast %"class.adept::Array.4"* %ref.tmp1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !181)
  %data_.i.i14 = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %ref.tmp1, i64 0, i32 0
  %data_.i.i.i15 = bitcast %"struct.adept::Expression.5"* %right to double**
  %11 = load double*, double** %data_.i.i.i15, align 8, !tbaa !29, !noalias !181
  store double* %11, double** %data_.i.i14, align 8, !tbaa !29, !alias.scope !181
  %storage_.i.i16 = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %ref.tmp1, i64 0, i32 1
  %storage_.i.i.i17 = getelementptr inbounds %"struct.adept::Expression.5", %"struct.adept::Expression.5"* %right, i64 8
  %12 = bitcast %"struct.adept::Expression.5"* %storage_.i.i.i17 to %"class.adept::Storage"**
  %13 = load %"class.adept::Storage"*, %"class.adept::Storage"** %12, align 8, !tbaa !26, !noalias !181
  store %"class.adept::Storage"* %13, %"class.adept::Storage"** %storage_.i.i16, align 8, !tbaa !26, !alias.scope !181
  %14 = getelementptr inbounds %"struct.adept::Expression.5", %"struct.adept::Expression.5"* %right, i64 16
  %15 = bitcast %"struct.adept::Expression.5"* %14 to i32*
  %16 = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %ref.tmp1, i64 0, i32 2, i32 0, i64 0
  %17 = load i32, i32* %15, align 8, !tbaa !149, !noalias !181
  store i32 %17, i32* %16, align 8, !tbaa !149, !alias.scope !181
  %18 = getelementptr inbounds %"struct.adept::Expression.5", %"struct.adept::Expression.5"* %right, i64 20
  %19 = bitcast %"struct.adept::Expression.5"* %18 to i32*
  %20 = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %ref.tmp1, i64 0, i32 3, i32 0, i64 0
  %21 = load i32, i32* %19, align 4, !tbaa !149, !noalias !181
  store i32 %21, i32* %20, align 4, !tbaa !149, !alias.scope !181
  %tobool.not.i.i18 = icmp eq %"class.adept::Storage"* %13, null
  br i1 %tobool.not.i.i18, label %invoke.cont3, label %if.then.i.i21

if.then.i.i21:                                    ; preds = %_ZN5adept8internal13promote_arrayIdLi2EdLb1EEENS_5ArrayIXT0_ET_XT2_EEERKNS2_IXT0_ET1_XT2_EEE.exit
  %n_links_.i.i.i19 = getelementptr inbounds %"class.adept::Storage", %"class.adept::Storage"* %13, i64 0, i32 2
  %22 = load i32, i32* %n_links_.i.i.i19, align 4, !tbaa !157, !noalias !181
  %inc.i.i.i20 = add nsw i32 %22, 1
  store i32 %inc.i.i.i20, i32* %n_links_.i.i.i19, align 4, !tbaa !157, !noalias !181
  br label %invoke.cont3

invoke.cont3:                                     ; preds = %if.then.i.i21, %_ZN5adept8internal13promote_arrayIdLi2EdLb1EEENS_5ArrayIXT0_ET_XT2_EEERKNS2_IXT0_ET1_XT2_EEE.exit
  invoke void @_ZN5adept8internal7matmul_IdLb1ELb0EEENS_5ArrayILi1ET_XooT0_T1_EEERKNS2_ILi2ES3_XT0_EEERKNS2_ILi1ES3_XT1_EEE(%"class.adept::Array.13"* sret(%"class.adept::Array.13") align 8 %agg.result, %"class.adept::Array"* nonnull align 8 dereferenceable(40) %ref.tmp, %"class.adept::Array.4"* nonnull align 8 dereferenceable(24) %ref.tmp1)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont3
  %23 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i.i16, align 8, !tbaa !26
  %tobool.not.i23 = icmp eq %"class.adept::Storage"* %23, null
  br i1 %tobool.not.i23, label %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit26, label %if.then.i24

if.then.i24:                                      ; preds = %invoke.cont5
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %23)
          to label %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit26 unwind label %terminate.lpad.i25

terminate.lpad.i25:                               ; preds = %if.then.i24
  %24 = landingpad { i8*, i32 }
          catch i8* null
  %25 = extractvalue { i8*, i32 } %24, 0
  call void @__clang_call_terminate(i8* %25) #29
  unreachable

_ZN5adept5ArrayILi1EdLb0EED2Ev.exit26:            ; preds = %if.then.i24, %invoke.cont5
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #27
  %26 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i.i, align 8, !tbaa !21
  %tobool.not.i28 = icmp eq %"class.adept::Storage"* %26, null
  br i1 %tobool.not.i28, label %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit31, label %if.then.i29

if.then.i29:                                      ; preds = %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit26
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %26)
          to label %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit31 unwind label %terminate.lpad.i30

terminate.lpad.i30:                               ; preds = %if.then.i29
  %27 = landingpad { i8*, i32 }
          catch i8* null
  %28 = extractvalue { i8*, i32 } %27, 0
  call void @__clang_call_terminate(i8* %28) #29
  unreachable

_ZN5adept5ArrayILi2EdLb1EED2Ev.exit31:            ; preds = %if.then.i29, %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit26
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #27
  ret void

lpad4:                                            ; preds = %invoke.cont3
  %29 = landingpad { i8*, i32 }
          cleanup
  %30 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i.i16, align 8, !tbaa !26
  %tobool.not.i11 = icmp eq %"class.adept::Storage"* %30, null
  br i1 %tobool.not.i11, label %ehcleanup, label %if.then.i12

if.then.i12:                                      ; preds = %lpad4
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %30)
          to label %ehcleanup unwind label %terminate.lpad.i13

terminate.lpad.i13:                               ; preds = %if.then.i12
  %31 = landingpad { i8*, i32 }
          catch i8* null
  %32 = extractvalue { i8*, i32 } %31, 0
  call void @__clang_call_terminate(i8* %32) #29
  unreachable

ehcleanup:                                        ; preds = %if.then.i12, %lpad4
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %10) #27
  %33 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i.i, align 8, !tbaa !21
  %tobool.not.i = icmp eq %"class.adept::Storage"* %33, null
  br i1 %tobool.not.i, label %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit, label %if.then.i

if.then.i:                                        ; preds = %ehcleanup
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %33)
          to label %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %if.then.i
  %34 = landingpad { i8*, i32 }
          catch i8* null
  %35 = extractvalue { i8*, i32 } %34, 0
  call void @__clang_call_terminate(i8* %35) #29
  unreachable

_ZN5adept5ArrayILi2EdLb1EED2Ev.exit:              ; preds = %if.then.i, %ehcleanup
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %0) #27
  resume { i8*, i32 } %29
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN5adept8internal7matmul_IdLb1ELb0EEENS_5ArrayILi1ET_XooT0_T1_EEERKNS2_ILi2ES3_XT0_EEERKNS2_ILi1ES3_XT1_EEE(%"class.adept::Array.13"* noalias sret(%"class.adept::Array.13") align 8 %agg.result, %"class.adept::Array"* nonnull align 8 dereferenceable(40) %left, %"class.adept::Array.4"* nonnull align 8 dereferenceable(24) %right) local_unnamed_addr #23 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %dim.i.i = alloca [7 x i32], align 16
  %ans = alloca %"class.adept::Array.13", align 8
  %left_ = alloca %"class.adept::Array", align 8
  tail call void @_ZN5adept8internal22check_inner_dimensionsINS_5ArrayILi2EdLb1EEENS2_ILi1EdLb0EEEEEvRKT_RKT0_(%"class.adept::Array"* nonnull align 8 dereferenceable(40) %left, %"class.adept::Array.4"* nonnull align 8 dereferenceable(24) %right)
  %0 = bitcast %"class.adept::Array.13"* %ans to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #27
  %arrayidx.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %left, i64 0, i32 3, i32 0, i64 0
  %1 = load i32, i32* %arrayidx.i.i, align 8, !tbaa !25
  %value_.i.i = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %ans, i64 0, i32 0, i32 0
  store i32 -9999, i32* %value_.i.i, align 8, !tbaa !18
  %storage_.i = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %ans, i64 0, i32 2
  store %"class.adept::Storage"* null, %"class.adept::Storage"** %storage_.i, align 8, !tbaa !131
  %2 = bitcast [7 x i32]* %dim.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %2) #27
  %arrayinit.begin.i.i = getelementptr inbounds [7 x i32], [7 x i32]* %dim.i.i, i64 0, i64 0
  store i32 %1, i32* %arrayinit.begin.i.i, align 16, !tbaa !25
  %arrayinit.element.i.i = getelementptr inbounds [7 x i32], [7 x i32]* %dim.i.i, i64 0, i64 1
  %3 = bitcast i32* %arrayinit.element.i.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(24) %3, i8 -1, i64 24, i1 false)
  call void @_ZN5adept5ArrayILi1EdLb1EE6resizeEPKib(%"class.adept::Array.13"* nonnull dereferenceable(32) %ans, i32* nonnull %arrayinit.begin.i.i, i1 zeroext false)
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %2) #27
  %arrayidx.i.i133 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %left, i64 0, i32 4, i32 0, i64 1
  %4 = load i32, i32* %arrayidx.i.i133, align 4, !tbaa !25
  %cmp.i = icmp eq i32 %4, 1
  %arrayidx.i7.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %left, i64 0, i32 4, i32 0, i64 0
  %5 = load i32, i32* %arrayidx.i7.i, align 8, !tbaa !25
  br i1 %cmp.i, label %_ZNK5adept5ArrayILi2EdLb1EE17is_row_contiguousEv.exit, label %land.lhs.true.thread

_ZNK5adept5ArrayILi2EdLb1EE17is_row_contiguousEv.exit: ; preds = %entry
  %arrayidx.i6.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %left, i64 0, i32 3, i32 0, i64 1
  %6 = load i32, i32* %arrayidx.i6.i, align 4, !tbaa !25
  %cmp5.i.not = icmp slt i32 %5, %6
  br i1 %cmp5.i.not, label %land.lhs.true, label %if.end18

land.lhs.true:                                    ; preds = %_ZNK5adept5ArrayILi2EdLb1EE17is_row_contiguousEv.exit
  %cmp.i136 = icmp eq i32 %5, 1
  br i1 %cmp.i136, label %if.end18, label %invoke.cont5

land.lhs.true.thread:                             ; preds = %entry
  %cmp.i136194 = icmp eq i32 %5, 1
  br i1 %cmp.i136194, label %land.lhs.true.thread.if.end18_crit_edge, label %invoke.cont5

land.lhs.true.thread.if.end18_crit_edge:          ; preds = %land.lhs.true.thread
  %arrayidx.i.i166.phi.trans.insert = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %left, i64 0, i32 3, i32 0, i64 1
  %.pre = load i32, i32* %arrayidx.i.i166.phi.trans.insert, align 4, !tbaa !25
  br label %if.end18

invoke.cont5:                                     ; preds = %land.lhs.true.thread, %land.lhs.true
  %7 = bitcast %"class.adept::Array"* %left_ to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #27
  %value_.i.i137 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %left_, i64 0, i32 0, i32 0
  store i32 -9999, i32* %value_.i.i137, align 8, !tbaa !18
  %data_.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %left_, i64 0, i32 1
  %8 = bitcast double** %data_.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %8, i8 0, i64 24, i1 false)
  %9 = bitcast %"class.adept::Array"* %left to %"struct.adept::Expression"*
  %call.i139 = invoke nonnull align 8 dereferenceable(40) %"class.adept::Array"* @_ZN5adept5ArrayILi2EdLb1EEaSIdS1_EENS_8internal9enable_ifIXeqsrT0_4rankLi2EERS1_E4typeERKNS_10ExpressionIT_S5_EE(%"class.adept::Array"* nonnull dereferenceable(40) %left_, %"struct.adept::Expression"* nonnull align 1 dereferenceable(1) %9)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %invoke.cont5
  invoke void @_ZN5adept8internal7matmul_IdLb1ELb0EEENS_5ArrayILi1ET_XooT0_T1_EEERKNS2_ILi2ES3_XT0_EEERKNS2_ILi1ES3_XT1_EEE(%"class.adept::Array.13"* sret(%"class.adept::Array.13") align 8 %agg.result, %"class.adept::Array"* nonnull align 8 dereferenceable(40) %left_, %"class.adept::Array.4"* nonnull align 8 dereferenceable(24) %right)
          to label %invoke.cont9 unwind label %lpad6

invoke.cont9:                                     ; preds = %invoke.cont7
  %storage_.i145 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %left_, i64 0, i32 2
  %10 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i145, align 8, !tbaa !21
  %tobool.not.i146 = icmp eq %"class.adept::Storage"* %10, null
  br i1 %tobool.not.i146, label %cleanup, label %if.then.i147

if.then.i147:                                     ; preds = %invoke.cont9
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %10)
          to label %cleanup unwind label %terminate.lpad.i148

terminate.lpad.i148:                              ; preds = %if.then.i147
  %11 = landingpad { i8*, i32 }
          catch i8* null
  %12 = extractvalue { i8*, i32 } %11, 0
  call void @__clang_call_terminate(i8* %12) #29
  unreachable

lpad:                                             ; preds = %if.end18
  %13 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup80

lpad6:                                            ; preds = %invoke.cont7, %invoke.cont5
  %14 = landingpad { i8*, i32 }
          cleanup
  %storage_.i149 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %left_, i64 0, i32 2
  %15 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i149, align 8, !tbaa !21
  %tobool.not.i150 = icmp eq %"class.adept::Storage"* %15, null
  br i1 %tobool.not.i150, label %ehcleanup, label %if.then.i151

if.then.i151:                                     ; preds = %lpad6
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %15)
          to label %ehcleanup unwind label %terminate.lpad.i152

terminate.lpad.i152:                              ; preds = %if.then.i151
  %16 = landingpad { i8*, i32 }
          catch i8* null
  %17 = extractvalue { i8*, i32 } %16, 0
  call void @__clang_call_terminate(i8* %17) #29
  unreachable

ehcleanup:                                        ; preds = %if.then.i151, %lpad6
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #27
  br label %ehcleanup80

if.end18:                                         ; preds = %land.lhs.true.thread.if.end18_crit_edge, %land.lhs.true, %_ZNK5adept5ArrayILi2EdLb1EE17is_row_contiguousEv.exit
  %18 = phi i32 [ %.pre, %land.lhs.true.thread.if.end18_crit_edge ], [ %6, %_ZNK5adept5ArrayILi2EdLb1EE17is_row_contiguousEv.exit ], [ %6, %land.lhs.true ]
  %19 = phi i1 [ true, %land.lhs.true.thread.if.end18_crit_edge ], [ false, %_ZNK5adept5ArrayILi2EdLb1EE17is_row_contiguousEv.exit ], [ true, %land.lhs.true ]
  %stride.0 = phi i32 [ %4, %land.lhs.true.thread.if.end18_crit_edge ], [ %5, %_ZNK5adept5ArrayILi2EdLb1EE17is_row_contiguousEv.exit ], [ 1, %land.lhs.true ]
  %20 = load i32, i32* %arrayidx.i.i, align 8, !tbaa !25
  %data_.i170 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %left, i64 0, i32 1
  %21 = load double*, double** %data_.i170, align 8, !tbaa !34
  %data_.i176 = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %right, i64 0, i32 0
  %22 = load double*, double** %data_.i176, align 8, !tbaa !29
  %arrayidx.i.i190 = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %right, i64 0, i32 3, i32 0, i64 0
  %23 = load i32, i32* %arrayidx.i.i190, align 4, !tbaa !25
  %data_.i189 = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %ans, i64 0, i32 1
  %24 = load double*, double** %data_.i189, align 8, !tbaa !120
  %arrayidx.i.i188 = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %ans, i64 0, i32 4, i32 0, i64 0
  %25 = load i32, i32* %arrayidx.i.i188, align 4, !tbaa !25
  invoke void @_ZN5adept8internal12cppblas_gemvEbciidPKdiS2_idPdi(i1 zeroext %19, i8 signext 78, i32 %20, i32 %18, double 1.000000e+00, double* %21, i32 %stride.0, double* %22, i32 %23, double 0.000000e+00, double* %24, i32 %25)
          to label %invoke.cont38 unwind label %lpad

invoke.cont38:                                    ; preds = %if.end18
  %value_.i.i187 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %left, i64 0, i32 0, i32 0
  %26 = load i32, i32* %value_.i.i187, align 8, !tbaa !18
  %27 = load i32, i32* %value_.i.i, align 8, !tbaa !18
  %arrayidx.i.i185 = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %right, i64 0, i32 2, i32 0, i64 0
  %28 = load i32, i32* %arrayidx.i.i185, align 8, !tbaa !25
  %arrayidx.i.i183 = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %ans, i64 0, i32 3, i32 0, i64 0
  %29 = load i32, i32* %arrayidx.i.i183, align 8, !tbaa !25
  %cmp198 = icmp sgt i32 %29, 0
  br i1 %cmp198, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %invoke.cont38
  %cmp8.i = icmp sgt i32 %28, 0
  br label %for.body

for.cond.cleanup.loopexit:                        ; preds = %invoke.cont70
  %.pre201 = load i32, i32* %value_.i.i, align 8, !tbaa !18
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %invoke.cont38
  %30 = phi i32 [ %27, %invoke.cont38 ], [ %.pre201, %for.cond.cleanup.loopexit ]
  %.lcssa = phi i32 [ %29, %invoke.cont38 ], [ %60, %for.cond.cleanup.loopexit ]
  %value_.i.i177 = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %agg.result, i64 0, i32 0, i32 0
  store i32 %30, i32* %value_.i.i177, align 8, !tbaa !18
  %data_.i178 = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %agg.result, i64 0, i32 1
  %31 = load double*, double** %data_.i189, align 8, !tbaa !120
  store double* %31, double** %data_.i178, align 8, !tbaa !120
  %storage_.i179 = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %agg.result, i64 0, i32 2
  %32 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i, align 8, !tbaa !131
  store %"class.adept::Storage"* %32, %"class.adept::Storage"** %storage_.i179, align 8, !tbaa !131
  %33 = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %agg.result, i64 0, i32 3, i32 0, i64 0
  store i32 %.lcssa, i32* %33, align 8, !tbaa !149
  %34 = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %agg.result, i64 0, i32 4, i32 0, i64 0
  %35 = load i32, i32* %arrayidx.i.i188, align 4, !tbaa !149
  store i32 %35, i32* %34, align 4, !tbaa !149
  %tobool.not.i180 = icmp eq %"class.adept::Storage"* %32, null
  br i1 %tobool.not.i180, label %_ZN5adept5ArrayILi1EdLb1EED2Ev.exit, label %cleanup.thread204

cleanup.thread204:                                ; preds = %for.cond.cleanup
  %n_links_.i.i = getelementptr inbounds %"class.adept::Storage", %"class.adept::Storage"* %32, i64 0, i32 2
  %36 = load i32, i32* %n_links_.i.i, align 4, !tbaa !157
  %inc.i.i181 = add nsw i32 %36, 1
  store i32 %inc.i.i181, i32* %n_links_.i.i, align 4, !tbaa !157
  br label %if.then.i

lpad52:                                           ; preds = %51, %if.then.i.i, %38
  %37 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup80

for.body:                                         ; preds = %invoke.cont70, %for.body.lr.ph
  %i.0199 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %invoke.cont70 ]
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %38, label %invoke.cont55

38:                                               ; preds = %for.body
  invoke void @_ZTHN5adept21_stack_current_threadE()
          to label %invoke.cont55 unwind label %lpad52

invoke.cont55:                                    ; preds = %38, %for.body
  %39 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !38
  %40 = load i32, i32* %arrayidx.i7.i, align 8, !tbaa !25
  %mul = mul nsw i32 %40, %i.0199
  %add = add nsw i32 %mul, %26
  %41 = load double*, double** %data_.i176, align 8, !tbaa !29
  %42 = load i32, i32* %arrayidx.i.i133, align 4, !tbaa !25
  %43 = load i32, i32* %arrayidx.i.i190, align 4, !tbaa !25
  %n_allocated_operations_.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %39, i64 0, i32 0, i32 6
  %44 = load i32, i32* %n_allocated_operations_.i.i, align 4, !tbaa !115
  %n_operations_.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %39, i64 0, i32 0, i32 5
  %45 = load i32, i32* %n_operations_.i.i, align 8, !tbaa !45
  %add.i.i = add nsw i32 %45, %28
  %cmp.not.i.i = icmp sgt i32 %44, %add.i.i
  br i1 %cmp.not.i.i, label %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont55
  %46 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %39, i64 0, i32 0
  invoke void @_ZN5adept8internal16StackStorageOrig20grow_operation_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %46, i32 %28)
          to label %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit.i unwind label %lpad52

_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit.i: ; preds = %if.then.i.i, %invoke.cont55
  br i1 %cmp8.i, label %for.body.lr.ph.i, label %invoke.cont62

for.body.lr.ph.i:                                 ; preds = %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit.i
  %multiplier_.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %39, i64 0, i32 0, i32 1
  %47 = load double*, double** %multiplier_.i.i, align 8, !tbaa !113
  %index_.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %39, i64 0, i32 0, i32 2
  %48 = load i32*, i32** %index_.i.i, align 8, !tbaa !114
  %idx.ext.i = sext i32 %43 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i168, %for.body.i ]
  %multiplier.addr.010.i = phi double* [ %41, %for.body.lr.ph.i ], [ %add.ptr.i, %for.body.i ]
  %rhs_index.addr.09.i = phi i32 [ %add, %for.body.lr.ph.i ], [ %add.i, %for.body.i ]
  %49 = load double, double* %multiplier.addr.010.i, align 8, !tbaa !8
  %50 = load i32, i32* %n_operations_.i.i, align 8, !tbaa !45
  %idxprom.i.i = sext i32 %50 to i64
  %arrayidx.i.i167 = getelementptr inbounds double, double* %47, i64 %idxprom.i.i
  store double %49, double* %arrayidx.i.i167, align 8, !tbaa !8
  %inc.i.i = add nsw i32 %50, 1
  store i32 %inc.i.i, i32* %n_operations_.i.i, align 8, !tbaa !45
  %arrayidx4.i.i = getelementptr inbounds i32, i32* %48, i64 %idxprom.i.i
  store i32 %rhs_index.addr.09.i, i32* %arrayidx4.i.i, align 4, !tbaa !25
  %inc.i168 = add nuw nsw i32 %i.011.i, 1
  %add.i = add nsw i32 %rhs_index.addr.09.i, %42
  %add.ptr.i = getelementptr inbounds double, double* %multiplier.addr.010.i, i64 %idx.ext.i
  %exitcond.not.i = icmp eq i32 %inc.i168, %28
  br i1 %exitcond.not.i, label %invoke.cont62, label %for.body.i, !llvm.loop !184

invoke.cont62:                                    ; preds = %for.body.i, %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit.i
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %51, label %invoke.cont63

51:                                               ; preds = %invoke.cont62
  invoke void @_ZTHN5adept21_stack_current_threadE()
          to label %invoke.cont63 unwind label %lpad52

invoke.cont63:                                    ; preds = %51, %invoke.cont62
  %52 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !38
  %53 = load i32, i32* %arrayidx.i.i188, align 4, !tbaa !25
  %mul68 = mul nsw i32 %53, %i.0199
  %add69 = add nsw i32 %mul68, %27
  %n_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %52, i64 0, i32 0, i32 3
  %54 = load i32, i32* %n_statements_.i, align 8, !tbaa !39
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %52, i64 0, i32 0, i32 4
  %55 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !41
  %cmp.not.i = icmp slt i32 %54, %55
  br i1 %cmp.not.i, label %invoke.cont70, label %if.then.i138

if.then.i138:                                     ; preds = %invoke.cont63
  %56 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %52, i64 0, i32 0
  invoke void @_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %56, i32 0)
          to label %.noexc unwind label %lpad65

.noexc:                                           ; preds = %if.then.i138
  %.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !39
  br label %invoke.cont70

invoke.cont70:                                    ; preds = %.noexc, %invoke.cont63
  %57 = phi i32 [ %.pre.i, %.noexc ], [ %54, %invoke.cont63 ]
  %statement_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %52, i64 0, i32 0, i32 0
  %58 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i, align 8, !tbaa !42
  %idxprom.i = sext i32 %57 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %58, i64 %idxprom.i, i32 0
  store i32 %add69, i32* %index.i, align 4, !tbaa !43
  %n_operations_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %52, i64 0, i32 0, i32 5
  %59 = load i32, i32* %n_operations_.i, align 8, !tbaa !45
  %inc.i = add nsw i32 %57, 1
  store i32 %inc.i, i32* %n_statements_.i, align 8, !tbaa !39
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %58, i64 %idxprom.i, i32 1
  store i32 %59, i32* %end_plus_one.i, align 4, !tbaa !46
  %inc = add nuw nsw i32 %i.0199, 1
  %60 = load i32, i32* %arrayidx.i.i183, align 8, !tbaa !25
  %cmp = icmp slt i32 %inc, %60
  br i1 %cmp, label %for.body, label %for.cond.cleanup.loopexit, !llvm.loop !185

lpad65:                                           ; preds = %if.then.i138
  %61 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup80

cleanup:                                          ; preds = %if.then.i147, %invoke.cont9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #27
  %.pre202 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i, align 8, !tbaa !131
  %tobool.not.i = icmp eq %"class.adept::Storage"* %.pre202, null
  br i1 %tobool.not.i, label %_ZN5adept5ArrayILi1EdLb1EED2Ev.exit, label %if.then.i

if.then.i:                                        ; preds = %cleanup, %cleanup.thread204
  %62 = phi %"class.adept::Storage"* [ %32, %cleanup.thread204 ], [ %.pre202, %cleanup ]
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %62)
          to label %_ZN5adept5ArrayILi1EdLb1EED2Ev.exit unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %if.then.i
  %63 = landingpad { i8*, i32 }
          catch i8* null
  %64 = extractvalue { i8*, i32 } %63, 0
  call void @__clang_call_terminate(i8* %64) #29
  unreachable

_ZN5adept5ArrayILi1EdLb1EED2Ev.exit:              ; preds = %if.then.i, %cleanup, %for.cond.cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #27
  ret void

ehcleanup80:                                      ; preds = %lpad65, %lpad52, %ehcleanup, %lpad
  %.pn128.pn.pn.pn = phi { i8*, i32 } [ %13, %lpad ], [ %14, %ehcleanup ], [ %61, %lpad65 ], [ %37, %lpad52 ]
  %65 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i, align 8, !tbaa !131
  %tobool.not.i141 = icmp eq %"class.adept::Storage"* %65, null
  br i1 %tobool.not.i141, label %_ZN5adept5ArrayILi1EdLb1EED2Ev.exit144, label %if.then.i142

if.then.i142:                                     ; preds = %ehcleanup80
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %65)
          to label %_ZN5adept5ArrayILi1EdLb1EED2Ev.exit144 unwind label %terminate.lpad.i143

terminate.lpad.i143:                              ; preds = %if.then.i142
  %66 = landingpad { i8*, i32 }
          catch i8* null
  %67 = extractvalue { i8*, i32 } %66, 0
  call void @__clang_call_terminate(i8* %67) #29
  unreachable

_ZN5adept5ArrayILi1EdLb1EED2Ev.exit144:           ; preds = %if.then.i142, %ehcleanup80
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #27
  resume { i8*, i32 } %.pn128.pn.pn.pn
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN5adept8internal22check_inner_dimensionsINS_5ArrayILi2EdLb1EEENS2_ILi1EdLb0EEEEEvRKT_RKT0_(%"class.adept::Array"* nonnull align 8 dereferenceable(40) %left, %"class.adept::Array.4"* nonnull align 8 dereferenceable(24) %right) local_unnamed_addr #18 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp2 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp14 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp15 = alloca %"class.std::__cxx11::basic_string", align 8
  %arrayidx.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %left, i64 0, i32 3, i32 0, i64 0
  %0 = load i32, i32* %arrayidx.i.i, align 8, !tbaa !25
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arrayidx.i.i41 = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %right, i64 0, i32 2, i32 0, i64 0
  %1 = load i32, i32* %arrayidx.i.i41, align 8, !tbaa !25
  %cmp.i42 = icmp eq i32 %1, 0
  br i1 %cmp.i42, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #27
  %2 = bitcast i8* %exception to %"class.adept::empty_array"*
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #27
  %4 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #27
  invoke void @_ZN5adept8internal18exception_locationB5cxx11EPKci(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp2, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.13, i64 0, i64 0), i32 32)
          to label %invoke.cont unwind label %ehcleanup7.thread

invoke.cont:                                      ; preds = %if.then
  %call3.i.i.i51 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp2, i64 0, i64 0, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.12, i64 0, i64 0), i64 60)
          to label %call3.i.i.i.noexc unwind label %lpad3

call3.i.i.i.noexc:                                ; preds = %invoke.cont
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %6 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !142, !alias.scope !186
  %_M_p.i.i25.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i51, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %_M_p.i.i25.i.i, align 8, !tbaa !147
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i51, i64 0, i32 2
  %arraydecay.i.i.i.i48 = bitcast %union.anon* %8 to i8*
  %cmp.i.i.i49 = icmp eq i8* %7, %arraydecay.i.i.i.i48
  br i1 %cmp.i.i.i49, label %if.then.i.i50, label %if.else.i.i

if.then.i.i50:                                    ; preds = %call3.i.i.i.noexc
  %arraydecay.i.i.i = bitcast %union.anon* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %arraydecay.i.i.i, i8* nonnull align 8 dereferenceable(16) %7, i64 16, i1 false) #27
  br label %invoke.cont4

if.else.i.i:                                      ; preds = %call3.i.i.i.noexc
  %_M_p.i23.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %7, i8** %_M_p.i23.i.i, align 8, !tbaa !147, !alias.scope !186
  %_M_allocated_capacity.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i51, i64 0, i32 2, i32 0
  %9 = load i64, i64* %_M_allocated_capacity.i.i, align 8, !tbaa !149
  %_M_allocated_capacity.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %9, i64* %_M_allocated_capacity.i.i.i, align 8, !tbaa !149, !alias.scope !186
  br label %invoke.cont4

invoke.cont4:                                     ; preds = %if.else.i.i, %if.then.i.i50
  %_M_string_length.i22.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i51, i64 0, i32 1
  %10 = load i64, i64* %_M_string_length.i22.i.i, align 8, !tbaa !150
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %10, i64* %_M_string_length.i.i.i, align 8, !tbaa !150, !alias.scope !186
  %11 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i51 to %union.anon**
  store %union.anon* %8, %union.anon** %11, align 8, !tbaa !147
  store i64 0, i64* %_M_string_length.i22.i.i, align 8, !tbaa !150
  store i8 0, i8* %arraydecay.i.i.i.i48, align 8, !tbaa !149
  invoke void @_ZN5adept11empty_arrayC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::empty_array"* nonnull dereferenceable(40) %2, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont4
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept11empty_arrayE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad5

ehcleanup7.thread:                                ; preds = %if.then
  %12 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #27
  br label %cleanup.action

lpad3:                                            ; preds = %invoke.cont
  %13 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad5:                                            ; preds = %invoke.cont6, %invoke.cont4
  %cleanup.isactive.0 = phi i1 [ false, %invoke.cont6 ], [ true, %invoke.cont4 ]
  %14 = landingpad { i8*, i32 }
          cleanup
  %_M_p.i.i.i.i52 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  %15 = load i8*, i8** %_M_p.i.i.i.i52, align 8, !tbaa !147
  %arraydecay.i.i.i.i53 = bitcast %union.anon* %5 to i8*
  %cmp.i.i.i54 = icmp eq i8* %15, %arraydecay.i.i.i.i53
  br i1 %cmp.i.i.i54, label %ehcleanup, label %if.then.i.i55

if.then.i.i55:                                    ; preds = %lpad5
  call void @_ZdlPv(i8* %15) #27
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i55, %lpad5, %lpad3
  %.pn37 = phi { i8*, i32 } [ %13, %lpad3 ], [ %14, %lpad5 ], [ %14, %if.then.i.i55 ]
  %cleanup.isactive.1 = phi i1 [ true, %lpad3 ], [ %cleanup.isactive.0, %lpad5 ], [ %cleanup.isactive.0, %if.then.i.i55 ]
  %_M_p.i.i.i.i57 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp2, i64 0, i32 0, i32 0
  %16 = load i8*, i8** %_M_p.i.i.i.i57, align 8, !tbaa !147
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp2, i64 0, i32 2
  %arraydecay.i.i.i.i58 = bitcast %union.anon* %17 to i8*
  %cmp.i.i.i59 = icmp eq i8* %16, %arraydecay.i.i.i.i58
  br i1 %cmp.i.i.i59, label %ehcleanup7, label %if.then.i.i60

if.then.i.i60:                                    ; preds = %ehcleanup
  call void @_ZdlPv(i8* %16) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #27
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

ehcleanup7:                                       ; preds = %ehcleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #27
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

cleanup.action:                                   ; preds = %ehcleanup7, %if.then.i.i60, %ehcleanup7.thread
  %.pn37.pn81 = phi { i8*, i32 } [ %12, %ehcleanup7.thread ], [ %.pn37, %ehcleanup7 ], [ %.pn37, %if.then.i.i60 ]
  call void @__cxa_free_exception(i8* %exception) #27
  br label %eh.resume

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx.i.i62 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %left, i64 0, i32 3, i32 0, i64 1
  %18 = load i32, i32* %arrayidx.i.i62, align 4, !tbaa !25
  %cmp.not = icmp eq i32 %18, %1
  br i1 %cmp.not, label %if.end31, label %if.then12

if.then12:                                        ; preds = %if.end
  %exception13 = tail call i8* @__cxa_allocate_exception(i64 40) #27
  %19 = bitcast i8* %exception13 to %"class.adept::inner_dimension_mismatch"*
  %20 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp14 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %20) #27
  %21 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp15 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %21) #27
  invoke void @_ZN5adept8internal18exception_locationB5cxx11EPKci(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp15, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.13, i64 0, i64 0), i32 36)
          to label %invoke.cont17 unwind label %ehcleanup25.thread

invoke.cont17:                                    ; preds = %if.then12
  %call3.i.i.i77 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp15, i64 0, i64 0, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0), i64 48)
          to label %call3.i.i.i.noexc76 unwind label %lpad18

call3.i.i.i.noexc76:                              ; preds = %invoke.cont17
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp14, i64 0, i32 2
  %23 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp14 to %union.anon**
  store %union.anon* %22, %union.anon** %23, align 8, !tbaa !142, !alias.scope !189
  %_M_p.i.i25.i.i65 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i77, i64 0, i32 0, i32 0
  %24 = load i8*, i8** %_M_p.i.i25.i.i65, align 8, !tbaa !147
  %25 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i77, i64 0, i32 2
  %arraydecay.i.i.i.i66 = bitcast %union.anon* %25 to i8*
  %cmp.i.i.i67 = icmp eq i8* %24, %arraydecay.i.i.i.i66
  br i1 %cmp.i.i.i67, label %if.then.i.i69, label %if.else.i.i73

if.then.i.i69:                                    ; preds = %call3.i.i.i.noexc76
  %arraydecay.i.i.i68 = bitcast %union.anon* %22 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %arraydecay.i.i.i68, i8* nonnull align 8 dereferenceable(16) %24, i64 16, i1 false) #27
  br label %invoke.cont19

if.else.i.i73:                                    ; preds = %call3.i.i.i.noexc76
  %_M_p.i23.i.i70 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp14, i64 0, i32 0, i32 0
  store i8* %24, i8** %_M_p.i23.i.i70, align 8, !tbaa !147, !alias.scope !189
  %_M_allocated_capacity.i.i71 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i77, i64 0, i32 2, i32 0
  %26 = load i64, i64* %_M_allocated_capacity.i.i71, align 8, !tbaa !149
  %_M_allocated_capacity.i.i.i72 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp14, i64 0, i32 2, i32 0
  store i64 %26, i64* %_M_allocated_capacity.i.i.i72, align 8, !tbaa !149, !alias.scope !189
  br label %invoke.cont19

invoke.cont19:                                    ; preds = %if.else.i.i73, %if.then.i.i69
  %_M_string_length.i22.i.i74 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i77, i64 0, i32 1
  %27 = load i64, i64* %_M_string_length.i22.i.i74, align 8, !tbaa !150
  %_M_string_length.i.i.i75 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp14, i64 0, i32 1
  store i64 %27, i64* %_M_string_length.i.i.i75, align 8, !tbaa !150, !alias.scope !189
  %28 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i77 to %union.anon**
  store %union.anon* %25, %union.anon** %28, align 8, !tbaa !147
  store i64 0, i64* %_M_string_length.i22.i.i74, align 8, !tbaa !150
  store i8 0, i8* %arraydecay.i.i.i.i66, align 8, !tbaa !149
  invoke void @_ZN5adept24inner_dimension_mismatchC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::inner_dimension_mismatch"* nonnull dereferenceable(40) %19, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp14)
          to label %invoke.cont21 unwind label %lpad20

invoke.cont21:                                    ; preds = %invoke.cont19
  invoke void @__cxa_throw(i8* %exception13, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept24inner_dimension_mismatchE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad20

ehcleanup25.thread:                               ; preds = %if.then12
  %29 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %21) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %20) #27
  br label %cleanup.action29

lpad18:                                           ; preds = %invoke.cont17
  %30 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup24

lpad20:                                           ; preds = %invoke.cont21, %invoke.cont19
  %cleanup.isactive22.0 = phi i1 [ false, %invoke.cont21 ], [ true, %invoke.cont19 ]
  %31 = landingpad { i8*, i32 }
          cleanup
  %_M_p.i.i.i.i43 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp14, i64 0, i32 0, i32 0
  %32 = load i8*, i8** %_M_p.i.i.i.i43, align 8, !tbaa !147
  %arraydecay.i.i.i.i44 = bitcast %union.anon* %22 to i8*
  %cmp.i.i.i45 = icmp eq i8* %32, %arraydecay.i.i.i.i44
  br i1 %cmp.i.i.i45, label %ehcleanup24, label %if.then.i.i46

if.then.i.i46:                                    ; preds = %lpad20
  call void @_ZdlPv(i8* %32) #27
  br label %ehcleanup24

ehcleanup24:                                      ; preds = %if.then.i.i46, %lpad20, %lpad18
  %.pn = phi { i8*, i32 } [ %30, %lpad18 ], [ %31, %lpad20 ], [ %31, %if.then.i.i46 ]
  %cleanup.isactive22.1 = phi i1 [ true, %lpad18 ], [ %cleanup.isactive22.0, %lpad20 ], [ %cleanup.isactive22.0, %if.then.i.i46 ]
  %_M_p.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp15, i64 0, i32 0, i32 0
  %33 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !147
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp15, i64 0, i32 2
  %arraydecay.i.i.i.i = bitcast %union.anon* %34 to i8*
  %cmp.i.i.i = icmp eq i8* %33, %arraydecay.i.i.i.i
  br i1 %cmp.i.i.i, label %ehcleanup25, label %if.then.i.i

if.then.i.i:                                      ; preds = %ehcleanup24
  call void @_ZdlPv(i8* %33) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %21) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %20) #27
  br i1 %cleanup.isactive22.1, label %cleanup.action29, label %eh.resume

ehcleanup25:                                      ; preds = %ehcleanup24
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %21) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %20) #27
  br i1 %cleanup.isactive22.1, label %cleanup.action29, label %eh.resume

cleanup.action29:                                 ; preds = %ehcleanup25, %if.then.i.i, %ehcleanup25.thread
  %.pn.pn84 = phi { i8*, i32 } [ %29, %ehcleanup25.thread ], [ %.pn, %ehcleanup25 ], [ %.pn, %if.then.i.i ]
  call void @__cxa_free_exception(i8* %exception13) #27
  br label %eh.resume

if.end31:                                         ; preds = %if.end
  ret void

eh.resume:                                        ; preds = %cleanup.action29, %ehcleanup25, %if.then.i.i, %cleanup.action, %ehcleanup7, %if.then.i.i60
  %.pn37.pn.pn = phi { i8*, i32 } [ %.pn37.pn81, %cleanup.action ], [ %.pn37, %ehcleanup7 ], [ %.pn.pn84, %cleanup.action29 ], [ %.pn, %ehcleanup25 ], [ %.pn37, %if.then.i.i60 ], [ %.pn, %if.then.i.i ]
  resume { i8*, i32 } %.pn37.pn.pn

unreachable:                                      ; preds = %invoke.cont21, %invoke.cont6
  unreachable
}

declare dso_local void @_ZN5adept8internal12cppblas_gemvEbciidPKdiS2_idPdi(i1 zeroext, i8 signext, i32, i32, double, double*, i32, double*, i32, double, double*, i32) local_unnamed_addr #1

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept11empty_arrayC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::empty_array"* nonnull dereferenceable(40) %this, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %message) unnamed_addr #11 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #27
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !142
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #27
  store i64 27, i64* %__dnew.i.i.i.i, align 8, !tbaa !171
  %call5.i.i.i10.i15 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %lpad

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i18.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i15, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !171
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !149
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(27) %call5.i.i.i10.i15, i8* nonnull align 1 dereferenceable(27) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 27, i1 false) #27
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !150
  %6 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #27
  %7 = getelementptr inbounds %"class.adept::empty_array", %"class.adept::empty_array"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %message_.i.i = getelementptr inbounds %"class.adept::empty_array", %"class.adept::empty_array"* %this, i64 0, i32 0, i32 0, i32 1
  %8 = getelementptr inbounds %"class.adept::empty_array", %"class.adept::empty_array"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %message_.i.i to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !142
  %_M_string_length.i.i.i.i.i = getelementptr inbounds %"class.adept::empty_array", %"class.adept::empty_array"* %this, i64 0, i32 0, i32 0, i32 1, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i.i, align 8, !tbaa !150
  %.cast.i.i.i = bitcast %union.anon* %8 to i8*
  store i8 0, i8* %.cast.i.i.i, align 1, !tbaa !149
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept15array_exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !161
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %10 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !161
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.adept::empty_array", %"class.adept::empty_array"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %11 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i.i.i = icmp eq i8* %11, %.cast.i.i.i
  br i1 %cmp.i.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %11) #27
  br label %_ZN5adept9exceptionD2Ev.exit.i

_ZN5adept9exceptionD2Ev.exit.i:                   ; preds = %if.then.i.i.i.i, %lpad.i
  %12 = getelementptr inbounds %"class.adept::empty_array", %"class.adept::empty_array"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %12) #27
  %13 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i18 = icmp eq i8* %13, %3
  br i1 %cmp.i.i.i18, label %ehcleanup, label %if.then.i.i19

invoke.cont4:                                     ; preds = %call5.i.i.i10.i.noexc
  %14 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i = icmp eq i8* %14, %3
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont4
  call void @_ZdlPv(i8* %14) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %invoke.cont4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #27
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept11empty_arrayE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !161
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %message)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

lpad:                                             ; preds = %entry
  %15 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

if.then.i.i19:                                    ; preds = %_ZN5adept9exceptionD2Ev.exit.i
  call void @_ZdlPv(i8* %13) #27
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i19, %lpad, %_ZN5adept9exceptionD2Ev.exit.i
  %.pn = phi { i8*, i32 } [ %15, %lpad ], [ %10, %_ZN5adept9exceptionD2Ev.exit.i ], [ %10, %if.then.i.i19 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #27
  br label %eh.resume

lpad7:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %16 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !161
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::empty_array", %"class.adept::empty_array"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %17 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i.i = icmp eq i8* %17, %.cast.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lpad7
  call void @_ZdlPv(i8* %17) #27
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %lpad7
  %18 = getelementptr inbounds %"class.adept::empty_array", %"class.adept::empty_array"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %18) #27
  br label %eh.resume

eh.resume:                                        ; preds = %_ZN5adept9exceptionD2Ev.exit, %ehcleanup
  %.pn12 = phi { i8*, i32 } [ %16, %_ZN5adept9exceptionD2Ev.exit ], [ %.pn, %ehcleanup ]
  resume { i8*, i32 } %.pn12
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept24inner_dimension_mismatchC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::inner_dimension_mismatch"* nonnull dereferenceable(40) %this, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %message) unnamed_addr #11 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #27
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !142
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #27
  store i64 27, i64* %__dnew.i.i.i.i, align 8, !tbaa !171
  %call5.i.i.i10.i15 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %lpad

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i18.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i15, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !171
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !149
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(27) %call5.i.i.i10.i15, i8* nonnull align 1 dereferenceable(27) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 27, i1 false) #27
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !150
  %6 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #27
  %7 = getelementptr inbounds %"class.adept::inner_dimension_mismatch", %"class.adept::inner_dimension_mismatch"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %message_.i.i = getelementptr inbounds %"class.adept::inner_dimension_mismatch", %"class.adept::inner_dimension_mismatch"* %this, i64 0, i32 0, i32 0, i32 1
  %8 = getelementptr inbounds %"class.adept::inner_dimension_mismatch", %"class.adept::inner_dimension_mismatch"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %message_.i.i to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !142
  %_M_string_length.i.i.i.i.i = getelementptr inbounds %"class.adept::inner_dimension_mismatch", %"class.adept::inner_dimension_mismatch"* %this, i64 0, i32 0, i32 0, i32 1, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i.i, align 8, !tbaa !150
  %.cast.i.i.i = bitcast %union.anon* %8 to i8*
  store i8 0, i8* %.cast.i.i.i, align 1, !tbaa !149
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept15array_exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !161
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %10 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !161
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.adept::inner_dimension_mismatch", %"class.adept::inner_dimension_mismatch"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %11 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i.i.i = icmp eq i8* %11, %.cast.i.i.i
  br i1 %cmp.i.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %11) #27
  br label %_ZN5adept9exceptionD2Ev.exit.i

_ZN5adept9exceptionD2Ev.exit.i:                   ; preds = %if.then.i.i.i.i, %lpad.i
  %12 = getelementptr inbounds %"class.adept::inner_dimension_mismatch", %"class.adept::inner_dimension_mismatch"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %12) #27
  %13 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i18 = icmp eq i8* %13, %3
  br i1 %cmp.i.i.i18, label %ehcleanup, label %if.then.i.i19

invoke.cont4:                                     ; preds = %call5.i.i.i10.i.noexc
  %14 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i = icmp eq i8* %14, %3
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont4
  call void @_ZdlPv(i8* %14) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %invoke.cont4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #27
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept24inner_dimension_mismatchE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !161
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %message)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

lpad:                                             ; preds = %entry
  %15 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

if.then.i.i19:                                    ; preds = %_ZN5adept9exceptionD2Ev.exit.i
  call void @_ZdlPv(i8* %13) #27
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i19, %lpad, %_ZN5adept9exceptionD2Ev.exit.i
  %.pn = phi { i8*, i32 } [ %15, %lpad ], [ %10, %_ZN5adept9exceptionD2Ev.exit.i ], [ %10, %if.then.i.i19 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #27
  br label %eh.resume

lpad7:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %16 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !161
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::inner_dimension_mismatch", %"class.adept::inner_dimension_mismatch"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %17 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i.i = icmp eq i8* %17, %.cast.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lpad7
  call void @_ZdlPv(i8* %17) #27
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %lpad7
  %18 = getelementptr inbounds %"class.adept::inner_dimension_mismatch", %"class.adept::inner_dimension_mismatch"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %18) #27
  br label %eh.resume

eh.resume:                                        ; preds = %_ZN5adept9exceptionD2Ev.exit, %ehcleanup
  %.pn12 = phi { i8*, i32 } [ %16, %_ZN5adept9exceptionD2Ev.exit ], [ %.pn, %ehcleanup ]
  resume { i8*, i32 } %.pn12
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept9exceptionD2Ev(%"class.adept::exception"* nonnull dereferenceable(40) %this) unnamed_addr #22 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !161
  %_M_p.i.i.i.i = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !147
  %2 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 2
  %arraydecay.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #27
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept11empty_arrayD0Ev(%"class.adept::empty_array"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::empty_array", %"class.adept::empty_array"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !161
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::empty_array", %"class.adept::empty_array"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !147
  %2 = getelementptr inbounds %"class.adept::empty_array", %"class.adept::empty_array"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #27
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::empty_array", %"class.adept::empty_array"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #27
  %4 = bitcast %"class.adept::empty_array"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #31
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept24inner_dimension_mismatchD0Ev(%"class.adept::inner_dimension_mismatch"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::inner_dimension_mismatch", %"class.adept::inner_dimension_mismatch"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !161
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::inner_dimension_mismatch", %"class.adept::inner_dimension_mismatch"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !147
  %2 = getelementptr inbounds %"class.adept::inner_dimension_mismatch", %"class.adept::inner_dimension_mismatch"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #27
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::inner_dimension_mismatch", %"class.adept::inner_dimension_mismatch"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #27
  %4 = bitcast %"class.adept::inner_dimension_mismatch"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #31
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept5ArrayILi1EdLb1EE6resizeEPKib(%"class.adept::Array.13"* nonnull dereferenceable(32) %this, i32* %dim, i1 zeroext %force_contiguous) local_unnamed_addr #11 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp6 = alloca %"class.std::__cxx11::basic_string", align 8
  %storage_ = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %this, i64 0, i32 2
  %0 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_, align 8, !tbaa !131
  %tobool.not = icmp eq %"class.adept::Storage"* %0, null
  br i1 %tobool.not, label %for.body.critedge, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %0)
  store %"class.adept::Storage"* null, %"class.adept::Storage"** %storage_, align 8, !tbaa !131
  br label %for.body.critedge

for.body.critedge:                                ; preds = %if.then, %entry
  %1 = load i32, i32* %dim, align 4, !tbaa !25
  %cmp4 = icmp slt i32 %1, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.body.critedge
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #27
  %2 = bitcast i8* %exception to %"class.adept::invalid_dimension"*
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #27
  %4 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #27
  invoke void @_ZN5adept8internal18exception_locationB5cxx11EPKci(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp6, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i32 1969)
          to label %invoke.cont unwind label %ehcleanup11.thread

invoke.cont:                                      ; preds = %if.then5
  %call3.i.i.i57 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp6, i64 0, i64 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i64 34)
          to label %call3.i.i.i.noexc unwind label %lpad7

call3.i.i.i.noexc:                                ; preds = %invoke.cont
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %6 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !142, !alias.scope !192
  %_M_p.i.i25.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %_M_p.i.i25.i.i, align 8, !tbaa !147
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 2
  %arraydecay.i.i.i.i = bitcast %union.anon* %8 to i8*
  %cmp.i.i.i = icmp eq i8* %7, %arraydecay.i.i.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %call3.i.i.i.noexc
  %arraydecay.i.i.i = bitcast %union.anon* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %arraydecay.i.i.i, i8* nonnull align 8 dereferenceable(16) %7, i64 16, i1 false) #27
  br label %invoke.cont8

if.else.i.i:                                      ; preds = %call3.i.i.i.noexc
  %_M_p.i23.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %7, i8** %_M_p.i23.i.i, align 8, !tbaa !147, !alias.scope !192
  %_M_allocated_capacity.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 2, i32 0
  %9 = load i64, i64* %_M_allocated_capacity.i.i, align 8, !tbaa !149
  %_M_allocated_capacity.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %9, i64* %_M_allocated_capacity.i.i.i, align 8, !tbaa !149, !alias.scope !192
  br label %invoke.cont8

invoke.cont8:                                     ; preds = %if.else.i.i, %if.then.i.i
  %_M_string_length.i22.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 1
  %10 = load i64, i64* %_M_string_length.i22.i.i, align 8, !tbaa !150
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %10, i64* %_M_string_length.i.i.i, align 8, !tbaa !150, !alias.scope !192
  %11 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i57 to %union.anon**
  store %union.anon* %8, %union.anon** %11, align 8, !tbaa !147
  store i64 0, i64* %_M_string_length.i22.i.i, align 8, !tbaa !150
  store i8 0, i8* %arraydecay.i.i.i.i, align 8, !tbaa !149
  invoke void @_ZN5adept17invalid_dimensionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_dimension"* nonnull dereferenceable(40) %2, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont8
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_dimensionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad9

ehcleanup11.thread:                               ; preds = %if.then5
  %12 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #27
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
  %15 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !147
  %arraydecay.i.i.i.i58 = bitcast %union.anon* %5 to i8*
  %cmp.i.i.i59 = icmp eq i8* %15, %arraydecay.i.i.i.i58
  br i1 %cmp.i.i.i59, label %ehcleanup, label %if.then.i.i60

if.then.i.i60:                                    ; preds = %lpad9
  call void @_ZdlPv(i8* %15) #27
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i60, %lpad9, %lpad7
  %.pn = phi { i8*, i32 } [ %13, %lpad7 ], [ %14, %lpad9 ], [ %14, %if.then.i.i60 ]
  %cleanup.isactive.1 = phi i1 [ true, %lpad7 ], [ %cleanup.isactive.0, %lpad9 ], [ %cleanup.isactive.0, %if.then.i.i60 ]
  %_M_p.i.i.i.i61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp6, i64 0, i32 0, i32 0
  %16 = load i8*, i8** %_M_p.i.i.i.i61, align 8, !tbaa !147
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp6, i64 0, i32 2
  %arraydecay.i.i.i.i62 = bitcast %union.anon* %17 to i8*
  %cmp.i.i.i63 = icmp eq i8* %16, %arraydecay.i.i.i.i62
  br i1 %cmp.i.i.i63, label %ehcleanup11, label %if.then.i.i64

if.then.i.i64:                                    ; preds = %ehcleanup
  call void @_ZdlPv(i8* %16) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #27
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

ehcleanup11:                                      ; preds = %ehcleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #27
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

cleanup.action:                                   ; preds = %ehcleanup11, %if.then.i.i64, %ehcleanup11.thread
  %.pn.pn71 = phi { i8*, i32 } [ %12, %ehcleanup11.thread ], [ %.pn, %ehcleanup11 ], [ %.pn, %if.then.i.i64 ]
  call void @__cxa_free_exception(i8* %exception) #27
  br label %eh.resume

if.else:                                          ; preds = %for.body.critedge
  %cmp16 = icmp eq i32 %1, 0
  br i1 %cmp16, label %_ZN5adept5ArrayILi1EdLb1EE5clearEv.exit, label %for.end, !llvm.loop !195

_ZN5adept5ArrayILi1EdLb1EE5clearEv.exit:          ; preds = %if.else
  %data_.i = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %this, i64 0, i32 1
  store double* null, double** %data_.i, align 8, !tbaa !120
  %arrayidx.i.i = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %this, i64 0, i32 3, i32 0, i64 0
  store i32 0, i32* %arrayidx.i.i, align 4, !tbaa !25
  %arrayidx.i4.i = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %this, i64 0, i32 4, i32 0, i64 0
  store i32 0, i32* %arrayidx.i4.i, align 4, !tbaa !25
  br label %return

for.end:                                          ; preds = %if.else
  %arrayidx3.i = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %this, i64 0, i32 3, i32 0, i64 0
  store i32 %1, i32* %arrayidx3.i, align 4, !tbaa !25
  %18 = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %this, i64 0, i32 4, i32 0, i64 0
  store i32 1, i32* %18, align 4
  %call32 = tail call noalias nonnull dereferenceable(24) i8* @_Znwm(i64 24) #28
  %19 = bitcast i8* %call32 to %"class.adept::Storage"*
  invoke void @_ZN5adept7StorageIdEC2Eib(%"class.adept::Storage"* nonnull dereferenceable(20) %19, i32 %1, i1 zeroext true)
          to label %invoke.cont34 unwind label %lpad33

invoke.cont34:                                    ; preds = %for.end
  %20 = bitcast %"class.adept::Storage"** %storage_ to i8**
  store i8* %call32, i8** %20, align 8, !tbaa !131
  %data_.i66 = bitcast i8* %call32 to double**
  %21 = load double*, double** %data_.i66, align 8, !tbaa !154
  %data_ = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %this, i64 0, i32 1
  store double* %21, double** %data_, align 8, !tbaa !120
  %gradient_index_.i.i = getelementptr inbounds i8, i8* %call32, i64 16
  %22 = bitcast i8* %gradient_index_.i.i to i32*
  %23 = load i32, i32* %22, align 8, !tbaa !156
  br label %return

return:                                           ; preds = %invoke.cont34, %_ZN5adept5ArrayILi1EdLb1EE5clearEv.exit
  %.sink = phi i32 [ -9999, %_ZN5adept5ArrayILi1EdLb1EE5clearEv.exit ], [ %23, %invoke.cont34 ]
  %value_.i.i = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %this, i64 0, i32 0, i32 0
  store i32 %.sink, i32* %value_.i.i, align 4, !tbaa !18
  ret void

lpad33:                                           ; preds = %for.end
  %24 = landingpad { i8*, i32 }
          cleanup
  tail call void @_ZdlPv(i8* nonnull %call32) #31
  br label %eh.resume

eh.resume:                                        ; preds = %lpad33, %cleanup.action, %ehcleanup11, %if.then.i.i64
  %.pn.pn.pn = phi { i8*, i32 } [ %24, %lpad33 ], [ %.pn.pn71, %cleanup.action ], [ %.pn, %ehcleanup11 ], [ %.pn, %if.then.i.i64 ]
  resume { i8*, i32 } %.pn.pn.pn

unreachable:                                      ; preds = %invoke.cont10
  unreachable
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(40) %"class.adept::Array"* @_ZN5adept5ArrayILi2EdLb1EEaSIdS1_EENS_8internal9enable_ifIXeqsrT0_4rankLi2EERS1_E4typeERKNS_10ExpressionIT_S5_EE(%"class.adept::Array"* nonnull dereferenceable(40) %this, %"struct.adept::Expression"* noalias nonnull align 1 dereferenceable(1) %rhs) local_unnamed_addr #18 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
if.else:
  %dims = alloca i64, align 8
  %tmpcast = bitcast i64* %dims to %"class.adept::ExpressionSize"*
  %str27 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp33 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp34 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp35 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp40 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp57 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp58 = alloca %"class.std::__cxx11::basic_string", align 8
  %copy = alloca %"class.adept::Array", align 8
  %agg.tmp = alloca %"class.adept::Array", align 8
  %agg.tmp92 = alloca %"class.adept::Array", align 8
  %0 = bitcast i64* %dims to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #27
  %dimensions_.i.i = getelementptr inbounds %"struct.adept::Expression", %"struct.adept::Expression"* %rhs, i64 24
  %1 = bitcast %"struct.adept::Expression"* %dimensions_.i.i to i64*
  %2 = load i64, i64* %1, align 8, !tbaa !149
  store i64 %2, i64* %dims, align 8, !tbaa !149
  %arrayidx.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 3, i32 0, i64 0
  %3 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !25
  %cmp.i = icmp eq i32 %3, 0
  br i1 %cmp.i, label %if.end77, label %if.else24

if.else24:                                        ; preds = %if.else
  %4 = lshr i64 %2, 32
  %5 = trunc i64 %4 to i32
  %6 = trunc i64 %2 to i32
  %cmp.i188 = icmp eq i32 %3, %6
  %arrayidx.i15.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 3, i32 0, i64 1
  %7 = load i32, i32* %arrayidx.i15.i, align 4
  %cmp5.i = icmp eq i32 %7, %5
  %8 = and i1 %cmp.i188, %cmp5.i
  br i1 %8, label %if.then79, label %if.then26

if.then26:                                        ; preds = %if.else24
  %9 = bitcast %"class.std::__cxx11::basic_string"* %str27 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #27
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %str27, i64 0, i32 2
  %11 = bitcast %"class.std::__cxx11::basic_string"* %str27 to %union.anon**
  store %union.anon* %10, %union.anon** %11, align 8, !tbaa !142
  %12 = bitcast %union.anon* %10 to i8*
  %13 = bitcast %union.anon* %10 to i32*
  store i32 1919973445, i32* %13, align 8
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %str27, i64 0, i32 0, i32 0
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %str27, i64 0, i32 1
  store i64 4, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !150
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %12, i64 4
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 4, !tbaa !149
  %14 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #27
  %15 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #27
  %16 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #27
  invoke void @_ZNK5adept14ExpressionSizeILi2EE3strB5cxx11Ev(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp35, %"class.adept::ExpressionSize"* nonnull dereferenceable(8) %tmpcast)
          to label %invoke.cont37 unwind label %lpad36

invoke.cont37:                                    ; preds = %if.then26
  call void @llvm.experimental.noalias.scope.decl(metadata !196)
  %_M_string_length.i.i.i.i191 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp35, i64 0, i32 1
  %17 = load i64, i64* %_M_string_length.i.i.i.i191, align 8, !tbaa !150, !noalias !196
  %sub3.i.i.i192 = sub i64 4611686018427387903, %17
  %cmp.i.i.i193 = icmp ult i64 %sub3.i.i.i192, 20
  br i1 %cmp.i.i.i193, label %if.then.i.i.i194, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i198

if.then.i.i.i194:                                 ; preds = %invoke.cont37
  invoke void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.19, i64 0, i64 0)) #30
          to label %.noexc207 unwind label %lpad38

.noexc207:                                        ; preds = %if.then.i.i.i194
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i198: ; preds = %invoke.cont37
  %call2.i.i209 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp35, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.18, i64 0, i64 0), i64 20)
          to label %call2.i.i.noexc208 unwind label %lpad38

call2.i.i.noexc208:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i198
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp34, i64 0, i32 2
  %19 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp34 to %union.anon**
  store %union.anon* %18, %union.anon** %19, align 8, !tbaa !142, !alias.scope !196
  %_M_p.i.i25.i.i195 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call2.i.i209, i64 0, i32 0, i32 0
  %20 = load i8*, i8** %_M_p.i.i25.i.i195, align 8, !tbaa !147
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call2.i.i209, i64 0, i32 2
  %arraydecay.i.i.i.i196 = bitcast %union.anon* %21 to i8*
  %cmp.i.i2.i197 = icmp eq i8* %20, %arraydecay.i.i.i.i196
  br i1 %cmp.i.i2.i197, label %if.then.i.i200, label %if.else.i.i204

if.then.i.i200:                                   ; preds = %call2.i.i.noexc208
  %arraydecay.i.i.i199 = bitcast %union.anon* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %arraydecay.i.i.i199, i8* nonnull align 8 dereferenceable(16) %20, i64 16, i1 false) #27
  br label %invoke.cont39

if.else.i.i204:                                   ; preds = %call2.i.i.noexc208
  %_M_p.i23.i.i201 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp34, i64 0, i32 0, i32 0
  store i8* %20, i8** %_M_p.i23.i.i201, align 8, !tbaa !147, !alias.scope !196
  %_M_allocated_capacity.i.i202 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call2.i.i209, i64 0, i32 2, i32 0
  %22 = load i64, i64* %_M_allocated_capacity.i.i202, align 8, !tbaa !149
  %_M_allocated_capacity.i.i.i203 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp34, i64 0, i32 2, i32 0
  store i64 %22, i64* %_M_allocated_capacity.i.i.i203, align 8, !tbaa !149, !alias.scope !196
  br label %invoke.cont39

invoke.cont39:                                    ; preds = %if.else.i.i204, %if.then.i.i200
  %_M_string_length.i22.i.i205 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call2.i.i209, i64 0, i32 1
  %23 = load i64, i64* %_M_string_length.i22.i.i205, align 8, !tbaa !150
  %_M_string_length.i.i.i206 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp34, i64 0, i32 1
  store i64 %23, i64* %_M_string_length.i.i.i206, align 8, !tbaa !150, !alias.scope !196
  %24 = bitcast %"class.std::__cxx11::basic_string"* %call2.i.i209 to %union.anon**
  store %union.anon* %21, %union.anon** %24, align 8, !tbaa !147
  store i64 0, i64* %_M_string_length.i22.i.i205, align 8, !tbaa !150
  store i8 0, i8* %arraydecay.i.i.i.i196, align 8, !tbaa !149
  %25 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp40 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %25) #27
  invoke void @_ZNK5adept5ArrayILi2EdLb1EE18expression_string_B5cxx11Ev(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp40, %"class.adept::Array"* nonnull dereferenceable(40) %this)
          to label %invoke.cont42 unwind label %lpad41

invoke.cont42:                                    ; preds = %invoke.cont39
  call void @llvm.experimental.noalias.scope.decl(metadata !199)
  %26 = load i64, i64* %_M_string_length.i.i.i206, align 8, !tbaa !150, !noalias !199
  %_M_string_length.i18.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp40, i64 0, i32 1
  %27 = load i64, i64* %_M_string_length.i18.i, align 8, !tbaa !150, !noalias !199
  %add.i = add i64 %27, %26
  %_M_p.i.i.i.i211 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp34, i64 0, i32 0, i32 0
  %28 = load i8*, i8** %_M_p.i.i.i.i211, align 8, !tbaa !147, !noalias !199
  %arraydecay.i.i.i21.i = bitcast %union.anon* %18 to i8*
  %cmp.i.i22.i = icmp eq i8* %28, %arraydecay.i.i.i21.i
  %_M_allocated_capacity.i23.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp34, i64 0, i32 2, i32 0
  %29 = load i64, i64* %_M_allocated_capacity.i23.i, align 8, !noalias !199
  %cond.i.i = select i1 %cmp.i.i22.i, i64 15, i64 %29
  %cmp.i212 = icmp ugt i64 %add.i, %cond.i.i
  %_M_p.i.i.i24.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp40, i64 0, i32 0, i32 0
  %30 = load i8*, i8** %_M_p.i.i.i24.i, align 8, !tbaa !147
  br i1 %cmp.i212, label %land.rhs.i, label %cond.false.i

land.rhs.i:                                       ; preds = %invoke.cont42
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp40, i64 0, i32 2
  %arraydecay.i.i.i25.i = bitcast %union.anon* %31 to i8*
  %cmp.i.i26.i = icmp eq i8* %30, %arraydecay.i.i.i25.i
  %_M_allocated_capacity.i27.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp40, i64 0, i32 2, i32 0
  %32 = load i64, i64* %_M_allocated_capacity.i27.i, align 8, !noalias !199
  %cond.i29.i = select i1 %cmp.i.i26.i, i64 15, i64 %32
  %cmp4.not.i = icmp ugt i64 %add.i, %cond.i29.i
  br i1 %cmp4.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %land.rhs.i
  %call3.i.i.i225 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp40, i64 0, i64 0, i8* %28, i64 %26)
          to label %cond.end.i unwind label %lpad43

cond.false.i:                                     ; preds = %land.rhs.i, %invoke.cont42
  %call3.i.i226 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp34, i8* %30, i64 %27)
          to label %cond.end.i unwind label %lpad43

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %cond-lvalue.i = phi %"class.std::__cxx11::basic_string"* [ %call3.i.i.i225, %cond.true.i ], [ %call3.i.i226, %cond.false.i ]
  %33 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp33, i64 0, i32 2
  %34 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp33 to %union.anon**
  store %union.anon* %33, %union.anon** %34, align 8, !tbaa !142, !alias.scope !199
  %_M_p.i.i25.i.i213 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %cond-lvalue.i, i64 0, i32 0, i32 0
  %35 = load i8*, i8** %_M_p.i.i25.i.i213, align 8, !tbaa !147
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %cond-lvalue.i, i64 0, i32 2
  %arraydecay.i.i.i.i214 = bitcast %union.anon* %36 to i8*
  %cmp.i.i.i215 = icmp eq i8* %35, %arraydecay.i.i.i.i214
  br i1 %cmp.i.i.i215, label %if.then.i.i217, label %if.else.i.i221

if.then.i.i217:                                   ; preds = %cond.end.i
  %arraydecay.i.i.i216 = bitcast %union.anon* %33 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %arraydecay.i.i.i216, i8* nonnull align 8 dereferenceable(16) %35, i64 16, i1 false) #27
  br label %invoke.cont44

if.else.i.i221:                                   ; preds = %cond.end.i
  %_M_p.i23.i.i218 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp33, i64 0, i32 0, i32 0
  store i8* %35, i8** %_M_p.i23.i.i218, align 8, !tbaa !147, !alias.scope !199
  %_M_allocated_capacity.i.i219 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %cond-lvalue.i, i64 0, i32 2, i32 0
  %37 = load i64, i64* %_M_allocated_capacity.i.i219, align 8, !tbaa !149
  %_M_allocated_capacity.i.i.i220 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp33, i64 0, i32 2, i32 0
  store i64 %37, i64* %_M_allocated_capacity.i.i.i220, align 8, !tbaa !149, !alias.scope !199
  br label %invoke.cont44

invoke.cont44:                                    ; preds = %if.else.i.i221, %if.then.i.i217
  %_M_string_length.i22.i.i222 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %cond-lvalue.i, i64 0, i32 1
  %38 = load i64, i64* %_M_string_length.i22.i.i222, align 8, !tbaa !150
  %_M_string_length.i.i.i223 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp33, i64 0, i32 1
  store i64 %38, i64* %_M_string_length.i.i.i223, align 8, !tbaa !150, !alias.scope !199
  %39 = bitcast %"class.std::__cxx11::basic_string"* %cond-lvalue.i to %union.anon**
  store %union.anon* %36, %union.anon** %39, align 8, !tbaa !147
  store i64 0, i64* %_M_string_length.i22.i.i222, align 8, !tbaa !150
  store i8 0, i8* %arraydecay.i.i.i.i214, align 8, !tbaa !149
  %_M_p.i.i.i227 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp33, i64 0, i32 0, i32 0
  %40 = load i8*, i8** %_M_p.i.i.i227, align 8, !tbaa !147
  %41 = load i64, i64* %_M_string_length.i.i.i223, align 8, !tbaa !150
  %call3.i.i230 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %str27, i8* %40, i64 %41)
          to label %invoke.cont46 unwind label %lpad45

invoke.cont46:                                    ; preds = %invoke.cont44
  %42 = load i8*, i8** %_M_p.i.i.i227, align 8, !tbaa !147
  %arraydecay.i.i.i.i232 = bitcast %union.anon* %33 to i8*
  %cmp.i.i.i233 = icmp eq i8* %42, %arraydecay.i.i.i.i232
  br i1 %cmp.i.i.i233, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %if.then.i.i234

if.then.i.i234:                                   ; preds = %invoke.cont46
  call void @_ZdlPv(i8* %42) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %if.then.i.i234, %invoke.cont46
  %43 = load i8*, i8** %_M_p.i.i.i24.i, align 8, !tbaa !147
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp40, i64 0, i32 2
  %arraydecay.i.i.i.i237 = bitcast %union.anon* %44 to i8*
  %cmp.i.i.i238 = icmp eq i8* %43, %arraydecay.i.i.i.i237
  br i1 %cmp.i.i.i238, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %if.then.i.i239

if.then.i.i239:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  call void @_ZdlPv(i8* %43) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %if.then.i.i239, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %25) #27
  %45 = load i8*, i8** %_M_p.i.i.i.i211, align 8, !tbaa !147
  %cmp.i.i.i243 = icmp eq i8* %45, %arraydecay.i.i.i21.i
  br i1 %cmp.i.i.i243, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %if.then.i.i244

if.then.i.i244:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  call void @_ZdlPv(i8* %45) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %if.then.i.i244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  %_M_p.i.i.i.i246 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp35, i64 0, i32 0, i32 0
  %46 = load i8*, i8** %_M_p.i.i.i.i246, align 8, !tbaa !147
  %47 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp35, i64 0, i32 2
  %arraydecay.i.i.i.i247 = bitcast %union.anon* %47 to i8*
  %cmp.i.i.i248 = icmp eq i8* %46, %arraydecay.i.i.i.i247
  br i1 %cmp.i.i.i248, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %if.then.i.i249

if.then.i.i249:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245
  call void @_ZdlPv(i8* %46) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250: ; preds = %if.then.i.i249, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #27
  %exception56 = call i8* @__cxa_allocate_exception(i64 40) #27
  %48 = bitcast i8* %exception56 to %"class.adept::size_mismatch"*
  %49 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp57 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %49) #27
  %50 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp58 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %50) #27
  invoke void @_ZN5adept8internal18exception_locationB5cxx11EPKci(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp58, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.2, i64 0, i64 0), i32 480)
          to label %invoke.cont60 unwind label %ehcleanup68.thread

invoke.cont60:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
  call void @llvm.experimental.noalias.scope.decl(metadata !202)
  %51 = load i64, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !150, !noalias !202
  %52 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !147, !noalias !202
  %call3.i.i.i265 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp58, i64 0, i64 0, i8* %52, i64 %51)
          to label %call3.i.i.i.noexc264 unwind label %lpad61

call3.i.i.i.noexc264:                             ; preds = %invoke.cont60
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp57, i64 0, i32 2
  %54 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp57 to %union.anon**
  store %union.anon* %53, %union.anon** %54, align 8, !tbaa !142, !alias.scope !202
  %_M_p.i.i25.i.i253 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i265, i64 0, i32 0, i32 0
  %55 = load i8*, i8** %_M_p.i.i25.i.i253, align 8, !tbaa !147
  %56 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i265, i64 0, i32 2
  %arraydecay.i.i.i.i254 = bitcast %union.anon* %56 to i8*
  %cmp.i.i.i255 = icmp eq i8* %55, %arraydecay.i.i.i.i254
  br i1 %cmp.i.i.i255, label %if.then.i.i257, label %if.else.i.i261

if.then.i.i257:                                   ; preds = %call3.i.i.i.noexc264
  %arraydecay.i.i.i256 = bitcast %union.anon* %53 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %arraydecay.i.i.i256, i8* nonnull align 8 dereferenceable(16) %55, i64 16, i1 false) #27
  br label %invoke.cont62

if.else.i.i261:                                   ; preds = %call3.i.i.i.noexc264
  %_M_p.i23.i.i258 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp57, i64 0, i32 0, i32 0
  store i8* %55, i8** %_M_p.i23.i.i258, align 8, !tbaa !147, !alias.scope !202
  %_M_allocated_capacity.i.i259 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i265, i64 0, i32 2, i32 0
  %57 = load i64, i64* %_M_allocated_capacity.i.i259, align 8, !tbaa !149
  %_M_allocated_capacity.i.i.i260 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp57, i64 0, i32 2, i32 0
  store i64 %57, i64* %_M_allocated_capacity.i.i.i260, align 8, !tbaa !149, !alias.scope !202
  br label %invoke.cont62

invoke.cont62:                                    ; preds = %if.else.i.i261, %if.then.i.i257
  %_M_string_length.i22.i.i262 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i265, i64 0, i32 1
  %58 = load i64, i64* %_M_string_length.i22.i.i262, align 8, !tbaa !150
  %_M_string_length.i.i2.i263 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp57, i64 0, i32 1
  store i64 %58, i64* %_M_string_length.i.i2.i263, align 8, !tbaa !150, !alias.scope !202
  %59 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i265 to %union.anon**
  store %union.anon* %56, %union.anon** %59, align 8, !tbaa !147
  store i64 0, i64* %_M_string_length.i22.i.i262, align 8, !tbaa !150
  store i8 0, i8* %arraydecay.i.i.i.i254, align 8, !tbaa !149
  invoke void @_ZN5adept13size_mismatchC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::size_mismatch"* nonnull dereferenceable(40) %48, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp57)
          to label %invoke.cont64 unwind label %lpad63

invoke.cont64:                                    ; preds = %invoke.cont62
  invoke void @__cxa_throw(i8* %exception56, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept13size_mismatchE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad63

lpad36:                                           ; preds = %if.then26
  %60 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup53

lpad38:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i198, %if.then.i.i.i194
  %61 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup52

lpad41:                                           ; preds = %invoke.cont39
  %62 = landingpad { i8*, i32 }
          cleanup
  %.pre360 = bitcast %union.anon* %18 to i8*
  br label %ehcleanup50

lpad43:                                           ; preds = %cond.false.i, %cond.true.i
  %63 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup49

lpad45:                                           ; preds = %invoke.cont44
  %64 = landingpad { i8*, i32 }
          cleanup
  %65 = load i8*, i8** %_M_p.i.i.i227, align 8, !tbaa !147
  %arraydecay.i.i.i.i268 = bitcast %union.anon* %33 to i8*
  %cmp.i.i.i269 = icmp eq i8* %65, %arraydecay.i.i.i.i268
  br i1 %cmp.i.i.i269, label %ehcleanup49, label %if.then.i.i270

if.then.i.i270:                                   ; preds = %lpad45
  call void @_ZdlPv(i8* %65) #27
  br label %ehcleanup49

ehcleanup49:                                      ; preds = %if.then.i.i270, %lpad45, %lpad43
  %.pn112 = phi { i8*, i32 } [ %63, %lpad43 ], [ %64, %lpad45 ], [ %64, %if.then.i.i270 ]
  %66 = load i8*, i8** %_M_p.i.i.i24.i, align 8, !tbaa !147
  %67 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp40, i64 0, i32 2
  %arraydecay.i.i.i.i273 = bitcast %union.anon* %67 to i8*
  %cmp.i.i.i274 = icmp eq i8* %66, %arraydecay.i.i.i.i273
  br i1 %cmp.i.i.i274, label %ehcleanup50, label %if.then.i.i275

if.then.i.i275:                                   ; preds = %ehcleanup49
  call void @_ZdlPv(i8* %66) #27
  br label %ehcleanup50

ehcleanup50:                                      ; preds = %if.then.i.i275, %ehcleanup49, %lpad41
  %arraydecay.i.i.i.i278.pre-phi = phi i8* [ %arraydecay.i.i.i21.i, %if.then.i.i275 ], [ %arraydecay.i.i.i21.i, %ehcleanup49 ], [ %.pre360, %lpad41 ]
  %.pn112.pn = phi { i8*, i32 } [ %.pn112, %if.then.i.i275 ], [ %.pn112, %ehcleanup49 ], [ %62, %lpad41 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %25) #27
  %_M_p.i.i.i.i277 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp34, i64 0, i32 0, i32 0
  %68 = load i8*, i8** %_M_p.i.i.i.i277, align 8, !tbaa !147
  %cmp.i.i.i279 = icmp eq i8* %68, %arraydecay.i.i.i.i278.pre-phi
  br i1 %cmp.i.i.i279, label %ehcleanup52, label %if.then.i.i280

if.then.i.i280:                                   ; preds = %ehcleanup50
  call void @_ZdlPv(i8* %68) #27
  br label %ehcleanup52

ehcleanup52:                                      ; preds = %if.then.i.i280, %ehcleanup50, %lpad38
  %.pn112.pn.pn = phi { i8*, i32 } [ %61, %lpad38 ], [ %.pn112.pn, %ehcleanup50 ], [ %.pn112.pn, %if.then.i.i280 ]
  %_M_p.i.i.i.i282 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp35, i64 0, i32 0, i32 0
  %69 = load i8*, i8** %_M_p.i.i.i.i282, align 8, !tbaa !147
  %70 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp35, i64 0, i32 2
  %arraydecay.i.i.i.i283 = bitcast %union.anon* %70 to i8*
  %cmp.i.i.i284 = icmp eq i8* %69, %arraydecay.i.i.i.i283
  br i1 %cmp.i.i.i284, label %ehcleanup53, label %if.then.i.i285

if.then.i.i285:                                   ; preds = %ehcleanup52
  call void @_ZdlPv(i8* %69) #27
  br label %ehcleanup53

ehcleanup53:                                      ; preds = %if.then.i.i285, %ehcleanup52, %lpad36
  %.pn112.pn.pn.pn = phi { i8*, i32 } [ %60, %lpad36 ], [ %.pn112.pn.pn, %ehcleanup52 ], [ %.pn112.pn.pn, %if.then.i.i285 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #27
  br label %ehcleanup74

ehcleanup68.thread:                               ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
  %71 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %50) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %49) #27
  br label %cleanup.action72

lpad61:                                           ; preds = %invoke.cont60
  %72 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup67

lpad63:                                           ; preds = %invoke.cont64, %invoke.cont62
  %cleanup.isactive65.0 = phi i1 [ false, %invoke.cont64 ], [ true, %invoke.cont62 ]
  %73 = landingpad { i8*, i32 }
          cleanup
  %_M_p.i.i.i.i287 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp57, i64 0, i32 0, i32 0
  %74 = load i8*, i8** %_M_p.i.i.i.i287, align 8, !tbaa !147
  %arraydecay.i.i.i.i288 = bitcast %union.anon* %53 to i8*
  %cmp.i.i.i289 = icmp eq i8* %74, %arraydecay.i.i.i.i288
  br i1 %cmp.i.i.i289, label %ehcleanup67, label %if.then.i.i290

if.then.i.i290:                                   ; preds = %lpad63
  call void @_ZdlPv(i8* %74) #27
  br label %ehcleanup67

ehcleanup67:                                      ; preds = %if.then.i.i290, %lpad63, %lpad61
  %.pn117 = phi { i8*, i32 } [ %72, %lpad61 ], [ %73, %lpad63 ], [ %73, %if.then.i.i290 ]
  %cleanup.isactive65.1 = phi i1 [ true, %lpad61 ], [ %cleanup.isactive65.0, %lpad63 ], [ %cleanup.isactive65.0, %if.then.i.i290 ]
  %_M_p.i.i.i.i292 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp58, i64 0, i32 0, i32 0
  %75 = load i8*, i8** %_M_p.i.i.i.i292, align 8, !tbaa !147
  %76 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp58, i64 0, i32 2
  %arraydecay.i.i.i.i293 = bitcast %union.anon* %76 to i8*
  %cmp.i.i.i294 = icmp eq i8* %75, %arraydecay.i.i.i.i293
  br i1 %cmp.i.i.i294, label %ehcleanup68, label %if.then.i.i295

if.then.i.i295:                                   ; preds = %ehcleanup67
  call void @_ZdlPv(i8* %75) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %50) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %49) #27
  br i1 %cleanup.isactive65.1, label %cleanup.action72, label %ehcleanup74

ehcleanup68:                                      ; preds = %ehcleanup67
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %50) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %49) #27
  br i1 %cleanup.isactive65.1, label %cleanup.action72, label %ehcleanup74

cleanup.action72:                                 ; preds = %ehcleanup68, %if.then.i.i295, %ehcleanup68.thread
  %.pn117.pn359 = phi { i8*, i32 } [ %71, %ehcleanup68.thread ], [ %.pn117, %ehcleanup68 ], [ %.pn117, %if.then.i.i295 ]
  call void @__cxa_free_exception(i8* %exception56) #27
  br label %ehcleanup74

ehcleanup74:                                      ; preds = %cleanup.action72, %ehcleanup68, %if.then.i.i295, %ehcleanup53
  %.pn117.pn.pn = phi { i8*, i32 } [ %.pn117.pn359, %cleanup.action72 ], [ %.pn117, %ehcleanup68 ], [ %.pn112.pn.pn.pn, %ehcleanup53 ], [ %.pn117, %if.then.i.i295 ]
  %77 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i299 = icmp eq i8* %77, %12
  br i1 %cmp.i.i.i299, label %ehcleanup75, label %if.then.i.i300

if.then.i.i300:                                   ; preds = %ehcleanup74
  call void @_ZdlPv(i8* %77) #27
  br label %ehcleanup75

ehcleanup75:                                      ; preds = %if.then.i.i300, %ehcleanup74
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #27
  br label %ehcleanup101

if.end77:                                         ; preds = %if.else
  %arrayidx.i.i186 = bitcast i64* %dims to i32*
  call void @_ZN5adept5ArrayILi2EdLb1EE6resizeEPKib(%"class.adept::Array"* nonnull dereferenceable(40) %this, i32* nonnull %arrayidx.i.i186, i1 zeroext false)
  %.pre = load i32, i32* %arrayidx.i.i, align 4, !tbaa !25
  %cmp.i303 = icmp eq i32 %.pre, 0
  br i1 %cmp.i303, label %if.end100, label %if.then79

if.then79:                                        ; preds = %if.end77, %if.else24
  %data_.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 1
  %78 = load double*, double** %data_.i, align 8, !tbaa !34
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %if.then79
  %ptr_begin.0 = phi double* [ %78, %if.then79 ], [ %ptr_begin.1, %for.body.i ]
  %ptr_end.0 = phi double* [ %78, %if.then79 ], [ %ptr_end.1, %for.body.i ]
  %cmp.i304 = phi i1 [ true, %if.then79 ], [ false, %for.body.i ]
  %indvars.iv.i = phi i64 [ 0, %if.then79 ], [ 1, %for.body.i ]
  %arrayidx.i.i305 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 4, i32 0, i64 %indvars.iv.i
  %79 = load i32, i32* %arrayidx.i.i305, align 4, !tbaa !25
  %cmp3.i = icmp sgt i32 %79, -1
  %arrayidx.i31.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 3, i32 0, i64 %indvars.iv.i
  %80 = load i32, i32* %arrayidx.i31.i, align 4, !tbaa !25
  %sub.i = add nsw i32 %80, -1
  %mul.i = mul nsw i32 %sub.i, %79
  %idx.ext.i = sext i32 %mul.i to i64
  %add.ptr.i = getelementptr inbounds double, double* %ptr_end.0, i64 %idx.ext.i
  %add.ptr14.i = getelementptr inbounds double, double* %ptr_begin.0, i64 %idx.ext.i
  %ptr_begin.1 = select i1 %cmp3.i, double* %ptr_begin.0, double* %add.ptr14.i
  %ptr_end.1 = select i1 %cmp3.i, double* %add.ptr.i, double* %ptr_end.0
  br i1 %cmp.i304, label %for.body.i, label %_ZNK5adept5ArrayILi2EdLb1EE10data_rangeERPKdS4_.exit, !llvm.loop !205

_ZNK5adept5ArrayILi2EdLb1EE10data_rangeERPKdS4_.exit: ; preds = %for.body.i
  %81 = bitcast %"struct.adept::Expression"* %rhs to %"class.adept::Array"*
  %data_.i.i.i = getelementptr inbounds %"struct.adept::Expression", %"struct.adept::Expression"* %rhs, i64 8
  %82 = bitcast %"struct.adept::Expression"* %data_.i.i.i to double**
  %83 = load double*, double** %82, align 8, !tbaa !34
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i, %_ZNK5adept5ArrayILi2EdLb1EE10data_rangeERPKdS4_.exit
  %ptr_begin.0.i.i = phi double* [ %83, %_ZNK5adept5ArrayILi2EdLb1EE10data_rangeERPKdS4_.exit ], [ %ptr_begin.1.i.i, %for.body.i.i.i ]
  %ptr_end.0.i.i = phi double* [ %83, %_ZNK5adept5ArrayILi2EdLb1EE10data_rangeERPKdS4_.exit ], [ %ptr_end.1.i.i, %for.body.i.i.i ]
  %cmp.i.i.i307 = phi i1 [ true, %_ZNK5adept5ArrayILi2EdLb1EE10data_rangeERPKdS4_.exit ], [ false, %for.body.i.i.i ]
  %indvars.iv.i.i.i = phi i64 [ 0, %_ZNK5adept5ArrayILi2EdLb1EE10data_rangeERPKdS4_.exit ], [ 1, %for.body.i.i.i ]
  %arrayidx.i.i.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %81, i64 0, i32 4, i32 0, i64 %indvars.iv.i.i.i
  %84 = load i32, i32* %arrayidx.i.i.i.i, align 4, !tbaa !25
  %cmp3.i.i.i = icmp sgt i32 %84, -1
  %arrayidx.i31.i.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %81, i64 0, i32 3, i32 0, i64 %indvars.iv.i.i.i
  %85 = load i32, i32* %arrayidx.i31.i.i.i, align 4, !tbaa !25
  %sub.i.i.i = add nsw i32 %85, -1
  %mul.i.i.i = mul nsw i32 %sub.i.i.i, %84
  %idx.ext.i.i.i = sext i32 %mul.i.i.i to i64
  %add.ptr.i.i.i = getelementptr inbounds double, double* %ptr_end.0.i.i, i64 %idx.ext.i.i.i
  %add.ptr14.i.i.i = getelementptr inbounds double, double* %ptr_begin.0.i.i, i64 %idx.ext.i.i.i
  %ptr_begin.1.i.i = select i1 %cmp3.i.i.i, double* %ptr_begin.0.i.i, double* %add.ptr14.i.i.i
  %ptr_end.1.i.i = select i1 %cmp3.i.i.i, double* %add.ptr.i.i.i, double* %ptr_end.0.i.i
  br i1 %cmp.i.i.i307, label %for.body.i.i.i, label %_ZNK5adept10ExpressionIdNS_5ArrayILi2EdLb1EEEE10is_aliasedEPKdS5_.exit, !llvm.loop !205

_ZNK5adept10ExpressionIdNS_5ArrayILi2EdLb1EEEE10is_aliasedEPKdS5_.exit: ; preds = %for.body.i.i.i
  %cmp.not.i.i = icmp ule double* %ptr_begin.1.i.i, %ptr_end.1
  %cmp2.not.i.i = icmp uge double* %ptr_end.1.i.i, %ptr_begin.1
  %not.or.cond.i.i = and i1 %cmp.not.i.i, %cmp2.not.i.i
  br i1 %not.or.cond.i.i, label %if.then81, label %if.else91

if.then81:                                        ; preds = %_ZNK5adept10ExpressionIdNS_5ArrayILi2EdLb1EEEE10is_aliasedEPKdS5_.exit
  %86 = bitcast %"class.adept::Array"* %copy to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %86) #27
  %value_.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %copy, i64 0, i32 0, i32 0
  store i32 -9999, i32* %value_.i.i, align 8, !tbaa !18
  %data_.i309 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %copy, i64 0, i32 1
  %87 = bitcast double** %data_.i309 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %87, i8 0, i64 24, i1 false)
  %call84 = invoke nonnull align 8 dereferenceable(40) %"class.adept::Array"* @_ZN5adept5ArrayILi2EdLb1EEaSIdS1_EENS_8internal9enable_ifIXeqsrT0_4rankLi2EERS1_E4typeERKNS_10ExpressionIT_S5_EE(%"class.adept::Array"* nonnull dereferenceable(40) %copy, %"struct.adept::Expression"* nonnull align 1 dereferenceable(1) %rhs)
          to label %invoke.cont83 unwind label %lpad82

invoke.cont83:                                    ; preds = %if.then81
  %88 = load i32, i32* %value_.i.i, align 8, !tbaa !18
  %value_.i.i315 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %agg.tmp, i64 0, i32 0, i32 0
  store i32 %88, i32* %value_.i.i315, align 8, !tbaa !18
  %data_.i316 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %agg.tmp, i64 0, i32 1
  %89 = load double*, double** %data_.i309, align 8, !tbaa !34
  store double* %89, double** %data_.i316, align 8, !tbaa !34
  %storage_.i317 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %agg.tmp, i64 0, i32 2
  %storage_.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %copy, i64 0, i32 2
  %90 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i.i, align 8, !tbaa !21
  store %"class.adept::Storage"* %90, %"class.adept::Storage"** %storage_.i317, align 8, !tbaa !21
  %dimensions_.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %agg.tmp, i64 0, i32 3
  %dimensions_.i.i318 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %copy, i64 0, i32 3
  %91 = bitcast %"class.adept::ExpressionSize"* %dimensions_.i.i318 to <2 x i64>*
  %92 = load <2 x i64>, <2 x i64>* %91, align 8, !tbaa !149
  %93 = bitcast %"class.adept::ExpressionSize"* %dimensions_.i to <2 x i64>*
  store <2 x i64> %92, <2 x i64>* %93, align 8, !tbaa !149
  %tobool.not.i319 = icmp eq %"class.adept::Storage"* %90, null
  br i1 %tobool.not.i319, label %invoke.cont85, label %if.then.i320

if.then.i320:                                     ; preds = %invoke.cont83
  %n_links_.i.i = getelementptr inbounds %"class.adept::Storage", %"class.adept::Storage"* %90, i64 0, i32 2
  %94 = load i32, i32* %n_links_.i.i, align 4, !tbaa !157
  %inc.i.i = add nsw i32 %94, 1
  store i32 %inc.i.i, i32* %n_links_.i.i, align 4, !tbaa !157
  br label %invoke.cont85

invoke.cont85:                                    ; preds = %if.then.i320, %invoke.cont83
  invoke void @_ZN5adept5ArrayILi2EdLb1EE18assign_expression_ILi2ELb1ELb1ES1_EENS_8internal9enable_ifIXaaT0_T1_EvE4typeET2_(%"class.adept::Array"* nonnull dereferenceable(40) %this, %"class.adept::Array"* nonnull %agg.tmp)
          to label %invoke.cont87 unwind label %lpad86

invoke.cont87:                                    ; preds = %invoke.cont85
  %95 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i317, align 8, !tbaa !21
  %tobool.not.i322 = icmp eq %"class.adept::Storage"* %95, null
  br i1 %tobool.not.i322, label %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit325, label %if.then.i323

if.then.i323:                                     ; preds = %invoke.cont87
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %95)
          to label %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit325 unwind label %terminate.lpad.i324

terminate.lpad.i324:                              ; preds = %if.then.i323
  %96 = landingpad { i8*, i32 }
          catch i8* null
  %97 = extractvalue { i8*, i32 } %96, 0
  call void @__clang_call_terminate(i8* %97) #29
  unreachable

_ZN5adept5ArrayILi2EdLb1EED2Ev.exit325:           ; preds = %if.then.i323, %invoke.cont87
  %98 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i.i, align 8, !tbaa !21
  %tobool.not.i327 = icmp eq %"class.adept::Storage"* %98, null
  br i1 %tobool.not.i327, label %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit330, label %if.then.i328

if.then.i328:                                     ; preds = %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit325
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %98)
          to label %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit330 unwind label %terminate.lpad.i329

terminate.lpad.i329:                              ; preds = %if.then.i328
  %99 = landingpad { i8*, i32 }
          catch i8* null
  %100 = extractvalue { i8*, i32 } %99, 0
  call void @__clang_call_terminate(i8* %100) #29
  unreachable

_ZN5adept5ArrayILi2EdLb1EED2Ev.exit330:           ; preds = %if.then.i328, %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit325
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %86) #27
  br label %if.end100

lpad82:                                           ; preds = %if.then81
  %101 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup89

lpad86:                                           ; preds = %invoke.cont85
  %102 = landingpad { i8*, i32 }
          cleanup
  %103 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i317, align 8, !tbaa !21
  %tobool.not.i332 = icmp eq %"class.adept::Storage"* %103, null
  br i1 %tobool.not.i332, label %ehcleanup89, label %if.then.i333

if.then.i333:                                     ; preds = %lpad86
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %103)
          to label %ehcleanup89 unwind label %terminate.lpad.i334

terminate.lpad.i334:                              ; preds = %if.then.i333
  %104 = landingpad { i8*, i32 }
          catch i8* null
  %105 = extractvalue { i8*, i32 } %104, 0
  call void @__clang_call_terminate(i8* %105) #29
  unreachable

ehcleanup89:                                      ; preds = %if.then.i333, %lpad86, %lpad82
  %.pn122 = phi { i8*, i32 } [ %101, %lpad82 ], [ %102, %lpad86 ], [ %102, %if.then.i333 ]
  %storage_.i336 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %copy, i64 0, i32 2
  %106 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i336, align 8, !tbaa !21
  %tobool.not.i337 = icmp eq %"class.adept::Storage"* %106, null
  br i1 %tobool.not.i337, label %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit340, label %if.then.i338

if.then.i338:                                     ; preds = %ehcleanup89
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %106)
          to label %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit340 unwind label %terminate.lpad.i339

terminate.lpad.i339:                              ; preds = %if.then.i338
  %107 = landingpad { i8*, i32 }
          catch i8* null
  %108 = extractvalue { i8*, i32 } %107, 0
  call void @__clang_call_terminate(i8* %108) #29
  unreachable

_ZN5adept5ArrayILi2EdLb1EED2Ev.exit340:           ; preds = %if.then.i338, %ehcleanup89
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %86) #27
  br label %ehcleanup101

if.else91:                                        ; preds = %_ZNK5adept10ExpressionIdNS_5ArrayILi2EdLb1EEEE10is_aliasedEPKdS5_.exit
  %value_.i.i.i341 = bitcast %"struct.adept::Expression"* %rhs to i32*
  %109 = load i32, i32* %value_.i.i.i341, align 8, !tbaa !18
  %value_.i.i342 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %agg.tmp92, i64 0, i32 0, i32 0
  store i32 %109, i32* %value_.i.i342, align 8, !tbaa !18
  %dimensions_.i343 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %agg.tmp92, i64 0, i32 3
  %110 = bitcast %"struct.adept::Expression"* %dimensions_.i.i to <2 x i64>*
  %111 = load <2 x i64>, <2 x i64>* %110, align 8, !tbaa !149
  %112 = bitcast %"class.adept::ExpressionSize"* %dimensions_.i343 to <2 x i64>*
  store <2 x i64> %111, <2 x i64>* %112, align 8, !tbaa !149
  %data_.i.i348 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %agg.tmp92, i64 0, i32 1
  store double* %83, double** %data_.i.i348, align 8, !tbaa !34
  %storage_.i.i.i = getelementptr inbounds %"struct.adept::Expression", %"struct.adept::Expression"* %rhs, i64 16
  %113 = bitcast %"struct.adept::Expression"* %storage_.i.i.i to %"class.adept::Storage"**
  %114 = load %"class.adept::Storage"*, %"class.adept::Storage"** %113, align 8, !tbaa !21
  %storage_.i.i349 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %agg.tmp92, i64 0, i32 2
  store %"class.adept::Storage"* %114, %"class.adept::Storage"** %storage_.i.i349, align 8, !tbaa !21
  %tobool.not.i.i = icmp eq %"class.adept::Storage"* %114, null
  br i1 %tobool.not.i.i, label %_ZN5adept5ArrayILi2EdLb1EEC2ERKS1_.exit, label %if.then.i.i350

if.then.i.i350:                                   ; preds = %if.else91
  %n_links_.i.i.i = getelementptr inbounds %"class.adept::Storage", %"class.adept::Storage"* %114, i64 0, i32 2
  %115 = load i32, i32* %n_links_.i.i.i, align 4, !tbaa !157
  %inc.i.i.i = add nsw i32 %115, 1
  store i32 %inc.i.i.i, i32* %n_links_.i.i.i, align 4, !tbaa !157
  br label %_ZN5adept5ArrayILi2EdLb1EEC2ERKS1_.exit

_ZN5adept5ArrayILi2EdLb1EEC2ERKS1_.exit:          ; preds = %if.then.i.i350, %if.else91
  invoke void @_ZN5adept5ArrayILi2EdLb1EE18assign_expression_ILi2ELb1ELb1ES1_EENS_8internal9enable_ifIXaaT0_T1_EvE4typeET2_(%"class.adept::Array"* nonnull dereferenceable(40) %this, %"class.adept::Array"* nonnull %agg.tmp92)
          to label %invoke.cont95 unwind label %lpad94

invoke.cont95:                                    ; preds = %_ZN5adept5ArrayILi2EdLb1EEC2ERKS1_.exit
  %116 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i.i349, align 8, !tbaa !21
  %tobool.not.i = icmp eq %"class.adept::Storage"* %116, null
  br i1 %tobool.not.i, label %if.end100, label %if.then.i

if.then.i:                                        ; preds = %invoke.cont95
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %116)
          to label %if.end100 unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %if.then.i
  %117 = landingpad { i8*, i32 }
          catch i8* null
  %118 = extractvalue { i8*, i32 } %117, 0
  call void @__clang_call_terminate(i8* %118) #29
  unreachable

lpad94:                                           ; preds = %_ZN5adept5ArrayILi2EdLb1EEC2ERKS1_.exit
  %119 = landingpad { i8*, i32 }
          cleanup
  %120 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i.i349, align 8, !tbaa !21
  %tobool.not.i311 = icmp eq %"class.adept::Storage"* %120, null
  br i1 %tobool.not.i311, label %ehcleanup101, label %if.then.i312

if.then.i312:                                     ; preds = %lpad94
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %120)
          to label %ehcleanup101 unwind label %terminate.lpad.i313

terminate.lpad.i313:                              ; preds = %if.then.i312
  %121 = landingpad { i8*, i32 }
          catch i8* null
  %122 = extractvalue { i8*, i32 } %121, 0
  call void @__clang_call_terminate(i8* %122) #29
  unreachable

if.end100:                                        ; preds = %if.then.i, %invoke.cont95, %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit330, %if.end77
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #27
  ret %"class.adept::Array"* %this

ehcleanup101:                                     ; preds = %if.then.i312, %lpad94, %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit340, %ehcleanup75
  %.pn122.pn.pn = phi { i8*, i32 } [ %.pn117.pn.pn, %ehcleanup75 ], [ %.pn122, %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit340 ], [ %119, %lpad94 ], [ %119, %if.then.i312 ]
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #27
  resume { i8*, i32 } %.pn122.pn.pn

unreachable:                                      ; preds = %invoke.cont64
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept13size_mismatchC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::size_mismatch"* nonnull dereferenceable(40) %this, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %message) unnamed_addr #11 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #27
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !142
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #27
  store i64 27, i64* %__dnew.i.i.i.i, align 8, !tbaa !171
  %call5.i.i.i10.i15 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %lpad

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i18.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i15, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !171
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !149
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(27) %call5.i.i.i10.i15, i8* nonnull align 1 dereferenceable(27) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 27, i1 false) #27
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !150
  %6 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #27
  %7 = getelementptr inbounds %"class.adept::size_mismatch", %"class.adept::size_mismatch"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %message_.i.i = getelementptr inbounds %"class.adept::size_mismatch", %"class.adept::size_mismatch"* %this, i64 0, i32 0, i32 0, i32 1
  %8 = getelementptr inbounds %"class.adept::size_mismatch", %"class.adept::size_mismatch"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %message_.i.i to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !142
  %_M_string_length.i.i.i.i.i = getelementptr inbounds %"class.adept::size_mismatch", %"class.adept::size_mismatch"* %this, i64 0, i32 0, i32 0, i32 1, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i.i, align 8, !tbaa !150
  %.cast.i.i.i = bitcast %union.anon* %8 to i8*
  store i8 0, i8* %.cast.i.i.i, align 1, !tbaa !149
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept15array_exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !161
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %10 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !161
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.adept::size_mismatch", %"class.adept::size_mismatch"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %11 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i.i.i = icmp eq i8* %11, %.cast.i.i.i
  br i1 %cmp.i.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %11) #27
  br label %_ZN5adept9exceptionD2Ev.exit.i

_ZN5adept9exceptionD2Ev.exit.i:                   ; preds = %if.then.i.i.i.i, %lpad.i
  %12 = getelementptr inbounds %"class.adept::size_mismatch", %"class.adept::size_mismatch"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %12) #27
  %13 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i18 = icmp eq i8* %13, %3
  br i1 %cmp.i.i.i18, label %ehcleanup, label %if.then.i.i19

invoke.cont4:                                     ; preds = %call5.i.i.i10.i.noexc
  %14 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i = icmp eq i8* %14, %3
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont4
  call void @_ZdlPv(i8* %14) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %invoke.cont4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #27
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept13size_mismatchE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !161
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %message)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

lpad:                                             ; preds = %entry
  %15 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

if.then.i.i19:                                    ; preds = %_ZN5adept9exceptionD2Ev.exit.i
  call void @_ZdlPv(i8* %13) #27
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i19, %lpad, %_ZN5adept9exceptionD2Ev.exit.i
  %.pn = phi { i8*, i32 } [ %15, %lpad ], [ %10, %_ZN5adept9exceptionD2Ev.exit.i ], [ %10, %if.then.i.i19 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #27
  br label %eh.resume

lpad7:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %16 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !161
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::size_mismatch", %"class.adept::size_mismatch"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %17 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i.i = icmp eq i8* %17, %.cast.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lpad7
  call void @_ZdlPv(i8* %17) #27
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %lpad7
  %18 = getelementptr inbounds %"class.adept::size_mismatch", %"class.adept::size_mismatch"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %18) #27
  br label %eh.resume

eh.resume:                                        ; preds = %_ZN5adept9exceptionD2Ev.exit, %ehcleanup
  %.pn12 = phi { i8*, i32 } [ %16, %_ZN5adept9exceptionD2Ev.exit ], [ %.pn, %ehcleanup ]
  resume { i8*, i32 } %.pn12
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK5adept14ExpressionSizeILi2EE3strB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result, %"class.adept::ExpressionSize"* nonnull dereferenceable(8) %this) local_unnamed_addr #11 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %s = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %0 = bitcast %"class.std::__cxx11::basic_stringstream"* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 392, i8* nonnull %0) #27
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull dereferenceable(128) %s)
  %add.ptr = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1
  %1 = bitcast %"class.std::basic_ostream.base"* %add.ptr to %"class.std::basic_ostream"*
  %call1.i23 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %arrayidx = getelementptr inbounds %"class.adept::ExpressionSize", %"class.adept::ExpressionSize"* %this, i64 0, i32 0, i64 0
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !25
  %call3 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %1, i32 %2)
          to label %for.body unwind label %lpad

for.cond.cleanup.critedge:                        ; preds = %invoke.cont6
  %call1.i25 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1)
          to label %invoke.cont13 unwind label %lpad

lpad:                                             ; preds = %invoke.cont13, %for.cond.cleanup.critedge, %invoke.cont, %entry
  %3 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

for.body:                                         ; preds = %invoke.cont
  %call1.i28 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i64 0, i64 0), i64 1)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %for.body
  %arrayidx9 = getelementptr inbounds %"class.adept::ExpressionSize", %"class.adept::ExpressionSize"* %this, i64 0, i32 0, i64 1
  %4 = load i32, i32* %arrayidx9, align 4, !tbaa !25
  %call11 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %1, i32 %4)
          to label %for.cond.cleanup.critedge unwind label %lpad5

lpad5:                                            ; preds = %invoke.cont6, %for.body
  %5 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

invoke.cont13:                                    ; preds = %for.cond.cleanup.critedge
  %_M_stringbuf.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %agg.result, %"class.std::__cxx11::basic_stringbuf"* nonnull dereferenceable(104) %_M_stringbuf.i)
          to label %invoke.cont15 unwind label %lpad

invoke.cont15:                                    ; preds = %invoke.cont13
  %6 = load i32 (...)**, i32 (...)*** bitcast ([10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE to i32 (...)***), align 8
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** %6, i32 (...)*** %7, align 8, !tbaa !161
  %8 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i32 (...)***), align 8
  %vbase.offset.ptr4.i.i = getelementptr i32 (...)*, i32 (...)** %6, i64 -3
  %9 = bitcast i32 (...)** %vbase.offset.ptr4.i.i to i64*
  %vbase.offset.i.i = load i64, i64* %9, align 8
  %add.ptr.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i
  %10 = bitcast i8* %add.ptr.i.i to i32 (...)***
  store i32 (...)** %8, i32 (...)*** %10, align 8, !tbaa !161
  %11 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i32 (...)***), align 8
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** %11, i32 (...)*** %12, align 8, !tbaa !161
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %13, align 8, !tbaa !161
  %_M_p.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 0, i32 0
  %14 = load i8*, i8** %_M_p.i.i.i.i.i.i.i, align 8, !tbaa !147
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 2
  %arraydecay.i.i.i.i.i.i.i = bitcast %union.anon* %15 to i8*
  %cmp.i.i.i.i.i.i = icmp eq i8* %14, %arraydecay.i.i.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %invoke.cont15
  call void @_ZdlPv(i8* %14) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %if.then.i.i.i.i.i, %invoke.cont15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %13, align 8, !tbaa !161
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i) #27
  %16 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)***), align 8
  store i32 (...)** %16, i32 (...)*** %7, align 8, !tbaa !161
  %17 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr3.i.i.i.i = getelementptr i32 (...)*, i32 (...)** %16, i64 -3
  %18 = bitcast i32 (...)** %vbase.offset.ptr3.i.i.i.i to i64*
  %vbase.offset.i.i.i.i = load i64, i64* %18, align 8
  %add.ptr.i.i.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i.i.i
  %19 = bitcast i8* %add.ptr.i.i.i.i to i32 (...)***
  store i32 (...)** %17, i32 (...)*** %19, align 8, !tbaa !161
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %20, align 8, !tbaa !169
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216) %21) #27
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %0) #27
  ret void

ehcleanup:                                        ; preds = %lpad5, %lpad
  %.pn = phi { i8*, i32 } [ %5, %lpad5 ], [ %3, %lpad ]
  %22 = load i32 (...)**, i32 (...)*** bitcast ([10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE to i32 (...)***), align 8
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** %22, i32 (...)*** %23, align 8, !tbaa !161
  %24 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i32 (...)***), align 8
  %vbase.offset.ptr4.i.i30 = getelementptr i32 (...)*, i32 (...)** %22, i64 -3
  %25 = bitcast i32 (...)** %vbase.offset.ptr4.i.i30 to i64*
  %vbase.offset.i.i31 = load i64, i64* %25, align 8
  %add.ptr.i.i32 = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i31
  %26 = bitcast i8* %add.ptr.i.i32 to i32 (...)***
  store i32 (...)** %24, i32 (...)*** %26, align 8, !tbaa !161
  %27 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i32 (...)***), align 8
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** %27, i32 (...)*** %28, align 8, !tbaa !161
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %29, align 8, !tbaa !161
  %_M_p.i.i.i.i.i.i.i33 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 0, i32 0
  %30 = load i8*, i8** %_M_p.i.i.i.i.i.i.i33, align 8, !tbaa !147
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 2
  %arraydecay.i.i.i.i.i.i.i34 = bitcast %union.anon* %31 to i8*
  %cmp.i.i.i.i.i.i35 = icmp eq i8* %30, %arraydecay.i.i.i.i.i.i.i34
  br i1 %cmp.i.i.i.i.i.i35, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit41, label %if.then.i.i.i.i.i36

if.then.i.i.i.i.i36:                              ; preds = %ehcleanup
  call void @_ZdlPv(i8* %30) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit41

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit41: ; preds = %if.then.i.i.i.i.i36, %ehcleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %29, align 8, !tbaa !161
  %_M_buf_locale.i.i.i.i37 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i37) #27
  %32 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)***), align 8
  store i32 (...)** %32, i32 (...)*** %23, align 8, !tbaa !161
  %33 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr3.i.i.i.i38 = getelementptr i32 (...)*, i32 (...)** %32, i64 -3
  %34 = bitcast i32 (...)** %vbase.offset.ptr3.i.i.i.i38 to i64*
  %vbase.offset.i.i.i.i39 = load i64, i64* %34, align 8
  %add.ptr.i.i.i.i40 = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i.i.i39
  %35 = bitcast i8* %add.ptr.i.i.i.i40 to i32 (...)***
  store i32 (...)** %33, i32 (...)*** %35, align 8, !tbaa !161
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %36, align 8, !tbaa !169
  %37 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216) %37) #27
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %0) #27
  resume { i8*, i32 } %.pn
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK5adept5ArrayILi2EdLb1EE18expression_string_B5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result, %"class.adept::Array"* nonnull dereferenceable(40) %this) local_unnamed_addr #11 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp3 = alloca %"class.std::__cxx11::basic_string", align 8
  %0 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2
  %1 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to %union.anon**
  store %union.anon* %0, %union.anon** %1, align 8, !tbaa !142
  %2 = bitcast %union.anon* %0 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(7) %2, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i64 7, i1 false) #27
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 0, i32 0
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1
  store i64 7, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !150
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %2, i64 7
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !149
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #27
  %dimensions_ = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 3
  invoke void @_ZNK5adept14ExpressionSizeILi2EE3strB5cxx11Ev(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp3, %"class.adept::ExpressionSize"* nonnull dereferenceable(8) %dimensions_)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %entry
  %_M_p.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp3, i64 0, i32 0, i32 0
  %4 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !147
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp3, i64 0, i32 1
  %5 = load i64, i64* %_M_string_length.i.i.i, align 8, !tbaa !150
  %call3.i.i19 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %agg.result, i8* %4, i64 %5)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %invoke.cont5
  %6 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !147
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp3, i64 0, i32 2
  %arraydecay.i.i.i.i21 = bitcast %union.anon* %7 to i8*
  %cmp.i.i.i22 = icmp eq i8* %6, %arraydecay.i.i.i.i21
  br i1 %cmp.i.i.i22, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %if.then.i.i23

if.then.i.i23:                                    ; preds = %invoke.cont7
  call void @_ZdlPv(i8* %6) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %if.then.i.i23, %invoke.cont7
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #27
  ret void

lpad4:                                            ; preds = %entry
  %8 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad6:                                            ; preds = %invoke.cont5
  %9 = landingpad { i8*, i32 }
          cleanup
  %10 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !147
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp3, i64 0, i32 2
  %arraydecay.i.i.i.i14 = bitcast %union.anon* %11 to i8*
  %cmp.i.i.i15 = icmp eq i8* %10, %arraydecay.i.i.i.i14
  br i1 %cmp.i.i.i15, label %ehcleanup, label %if.then.i.i16

if.then.i.i16:                                    ; preds = %lpad6
  call void @_ZdlPv(i8* %10) #27
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i16, %lpad6, %lpad4
  %.pn = phi { i8*, i32 } [ %8, %lpad4 ], [ %9, %lpad6 ], [ %9, %if.then.i.i16 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #27
  %12 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i = icmp eq i8* %12, %2
  br i1 %cmp.i.i.i, label %eh.resume, label %if.then.i.i

if.then.i.i:                                      ; preds = %ehcleanup
  call void @_ZdlPv(i8* %12) #27
  br label %eh.resume

eh.resume:                                        ; preds = %if.then.i.i, %ehcleanup
  resume { i8*, i32 } %.pn
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN5adept5ArrayILi2EdLb1EE18assign_expression_ILi2ELb1ELb1ES1_EENS_8internal9enable_ifIXaaT0_T1_EvE4typeET2_(%"class.adept::Array"* nonnull dereferenceable(40) %this, %"class.adept::Array"* %rhs) local_unnamed_addr #23 comdat align 2 {
entry:
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %0, label %_ZTWN5adept21_stack_current_threadE.exit43

0:                                                ; preds = %entry
  tail call void @_ZTHN5adept21_stack_current_threadE()
  br label %_ZTWN5adept21_stack_current_threadE.exit43

_ZTWN5adept21_stack_current_threadE.exit43:       ; preds = %0, %entry
  %1 = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !38
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %_ZTWN5adept21_stack_current_threadE.exit43
  %cmp.i44 = phi i1 [ true, %_ZTWN5adept21_stack_current_threadE.exit43 ], [ false, %for.body.i ]
  %indvars.iv.i = phi i64 [ 0, %_ZTWN5adept21_stack_current_threadE.exit43 ], [ 1, %for.body.i ]
  %s.08.i = phi i32 [ 1, %_ZTWN5adept21_stack_current_threadE.exit43 ], [ %mul.i46, %for.body.i ]
  %arrayidx.i.i45 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 3, i32 0, i64 %indvars.iv.i
  %2 = load i32, i32* %arrayidx.i.i45, align 4, !tbaa !25
  %mul.i46 = mul nsw i32 %2, %s.08.i
  br i1 %cmp.i44, label %for.body.i, label %_ZNK5adept5ArrayILi2EdLb1EE4sizeEv.exit, !llvm.loop !153

_ZNK5adept5ArrayILi2EdLb1EE4sizeEv.exit:          ; preds = %for.body.i
  %n_allocated_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %1, i64 0, i32 6
  %3 = load i32, i32* %n_allocated_operations_.i, align 4, !tbaa !115
  %n_operations_.i49 = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %1, i64 0, i32 5
  %4 = load i32, i32* %n_operations_.i49, align 8, !tbaa !45
  %add.i50 = add nsw i32 %4, %mul.i46
  %cmp.not.i51 = icmp sgt i32 %3, %add.i50
  br i1 %cmp.not.i51, label %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit, label %if.then.i52

if.then.i52:                                      ; preds = %_ZNK5adept5ArrayILi2EdLb1EE4sizeEv.exit
  tail call void @_ZN5adept8internal16StackStorageOrig20grow_operation_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %1, i32 %mul.i46)
  br label %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit

_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit: ; preds = %if.then.i52, %_ZNK5adept5ArrayILi2EdLb1EE4sizeEv.exit
  %arrayidx.i.i.i53 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %rhs, i64 0, i32 4, i32 0, i64 1
  %5 = load i32, i32* %arrayidx.i.i.i53, align 4, !tbaa !25
  %cmp.i.i = icmp eq i32 %5, 1
  br i1 %cmp.i.i, label %_ZNK5adept10ExpressionIdNS_5ArrayILi2EdLb1EEEE21all_arrays_contiguousEv.exit, label %if.else

_ZNK5adept10ExpressionIdNS_5ArrayILi2EdLb1EEEE21all_arrays_contiguousEv.exit: ; preds = %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit
  %6 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %rhs, i64 0, i32 4, i32 0, i64 0
  %7 = load i32, i32* %6, align 4, !tbaa !25
  %8 = and i32 %7, 1
  %cmp.i.i.i = icmp eq i32 %8, 0
  br i1 %cmp.i.i.i, label %if.then, label %if.else

if.then:                                          ; preds = %_ZNK5adept10ExpressionIdNS_5ArrayILi2EdLb1EEEE21all_arrays_contiguousEv.exit
  %data_ = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 1
  %9 = load double*, double** %data_, align 8, !tbaa !34
  %arrayidx.i128 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 3, i32 0, i64 1
  %data_.i.i115 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %rhs, i64 0, i32 1
  %value_.i.i.i.i117 = getelementptr %"class.adept::Array", %"class.adept::Array"* %rhs, i64 0, i32 0, i32 0
  %value_.i.i103 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 0, i32 0
  %arrayidx.i88 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 4, i32 0, i64 1
  %arrayidx.i35.i69.phi.trans.insert = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 3, i32 0, i64 0
  %arrayidx.i27.i84 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 4, i32 0, i64 0
  br label %do.body

do.body:                                          ; preds = %_ZNK5adept5ArrayILi2EdLb1EE13advance_indexERiS2_RNS_14ExpressionSizeILi2EEE.exit87, %if.then
  %10 = phi i32 [ 0, %if.then ], [ %inc.i67, %_ZNK5adept5ArrayILi2EdLb1EE13advance_indexERiS2_RNS_14ExpressionSizeILi2EEE.exit87 ]
  %index.0 = phi i32 [ 0, %if.then ], [ %add.i85, %_ZNK5adept5ArrayILi2EdLb1EE13advance_indexERiS2_RNS_14ExpressionSizeILi2EEE.exit87 ]
  br label %for.body.i.i.i112

for.body.i.i.i112:                                ; preds = %for.body.i.i.i112, %do.body
  %11 = phi i32 [ %10, %do.body ], [ 0, %for.body.i.i.i112 ]
  %cmp.i.i.i105 = phi i1 [ true, %do.body ], [ false, %for.body.i.i.i112 ]
  %indvars.iv.i.i.i106 = phi i64 [ 0, %do.body ], [ 1, %for.body.i.i.i112 ]
  %o.012.i.i.i107 = phi i32 [ 0, %do.body ], [ %add.i.i.i111, %for.body.i.i.i112 ]
  %arrayidx.i10.i.i.i109 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %rhs, i64 0, i32 4, i32 0, i64 %indvars.iv.i.i.i106
  %12 = load i32, i32* %arrayidx.i10.i.i.i109, align 4, !tbaa !25
  %mul.i.i.i110 = mul nsw i32 %12, %11
  %add.i.i.i111 = add nsw i32 %mul.i.i.i110, %o.012.i.i.i107
  br i1 %cmp.i.i.i105, label %for.body.i.i.i112, label %for.cond.preheader, !llvm.loop !206

for.cond.preheader:                               ; preds = %for.body.i.i.i112
  %13 = load i32, i32* %arrayidx.i128, align 4, !tbaa !25
  %cmp162 = icmp sgt i32 %13, 0
  br i1 %cmp162, label %for.body.preheader, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  %.pre182 = load i32, i32* %arrayidx.i88, align 4, !tbaa !25
  br label %while.body.i71

for.body.preheader:                               ; preds = %for.cond.preheader
  %14 = sext i32 %add.i.i.i111 to i64
  br label %for.body

for.body:                                         ; preds = %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit101, %for.body.preheader
  %indvars.iv = phi i64 [ %14, %for.body.preheader ], [ %indvars.iv.next, %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit101 ]
  %15 = phi i32 [ 0, %for.body.preheader ], [ %inc, %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit101 ]
  %index.1163 = phi i32 [ %index.0, %for.body.preheader ], [ %add10, %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit101 ]
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %16, label %_ZTWN5adept21_stack_current_threadE.exit126

16:                                               ; preds = %for.body
  tail call void @_ZTHN5adept21_stack_current_threadE()
  br label %_ZTWN5adept21_stack_current_threadE.exit126

_ZTWN5adept21_stack_current_threadE.exit126:      ; preds = %16, %for.body
  %17 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !38
  %18 = load double*, double** %data_.i.i115, align 8, !tbaa !34
  %arrayidx.i9.i = getelementptr inbounds double, double* %18, i64 %indvars.iv
  %19 = load double, double* %arrayidx.i9.i, align 8, !tbaa !8
  %20 = load i32, i32* %value_.i.i.i.i117, align 4, !tbaa !18
  %21 = trunc i64 %indvars.iv to i32
  %add.i.i118 = add nsw i32 %20, %21
  %multiplier_.i.i.i119 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %17, i64 0, i32 0, i32 1
  %22 = load double*, double** %multiplier_.i.i.i119, align 8, !tbaa !113
  %n_operations_.i.i.i120 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %17, i64 0, i32 0, i32 5
  %23 = load i32, i32* %n_operations_.i.i.i120, align 8, !tbaa !45
  %idxprom.i.i.i121 = sext i32 %23 to i64
  %arrayidx.i.i.i122 = getelementptr inbounds double, double* %22, i64 %idxprom.i.i.i121
  store double 1.000000e+00, double* %arrayidx.i.i.i122, align 8, !tbaa !8
  %index_.i.i.i123 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %17, i64 0, i32 0, i32 2
  %24 = load i32*, i32** %index_.i.i.i123, align 8, !tbaa !114
  %inc.i.i.i124 = add nsw i32 %23, 1
  store i32 %inc.i.i.i124, i32* %n_operations_.i.i.i120, align 8, !tbaa !45
  %arrayidx4.i.i.i125 = getelementptr inbounds i32, i32* %24, i64 %idxprom.i.i.i121
  store i32 %add.i.i118, i32* %arrayidx4.i.i.i125, align 4, !tbaa !25
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %idxprom = sext i32 %index.1163 to i64
  %arrayidx = getelementptr inbounds double, double* %9, i64 %idxprom
  store double %19, double* %arrayidx, align 8, !tbaa !8
  %25 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %17, i64 0, i32 0
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %26, label %_ZTWN5adept21_stack_current_threadE.exit104

26:                                               ; preds = %_ZTWN5adept21_stack_current_threadE.exit126
  tail call void @_ZTHN5adept21_stack_current_threadE()
  %.pre181 = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !38
  br label %_ZTWN5adept21_stack_current_threadE.exit104

_ZTWN5adept21_stack_current_threadE.exit104:      ; preds = %26, %_ZTWN5adept21_stack_current_threadE.exit126
  %27 = phi %"class.adept::internal::StackStorageOrig"* [ %25, %_ZTWN5adept21_stack_current_threadE.exit126 ], [ %.pre181, %26 ]
  %28 = load i32, i32* %value_.i.i103, align 4, !tbaa !18
  %add = add nsw i32 %28, %index.1163
  %n_statements_.i90 = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %27, i64 0, i32 3
  %29 = load i32, i32* %n_statements_.i90, align 8, !tbaa !39
  %n_allocated_statements_.i91 = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %27, i64 0, i32 4
  %30 = load i32, i32* %n_allocated_statements_.i91, align 4, !tbaa !41
  %cmp.not.i92 = icmp slt i32 %29, %30
  br i1 %cmp.not.i92, label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit101, label %if.then.i94

if.then.i94:                                      ; preds = %_ZTWN5adept21_stack_current_threadE.exit104
  tail call void @_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %27, i32 0)
  %.pre.i93 = load i32, i32* %n_statements_.i90, align 8, !tbaa !39
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit101

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit101: ; preds = %if.then.i94, %_ZTWN5adept21_stack_current_threadE.exit104
  %31 = phi i32 [ %.pre.i93, %if.then.i94 ], [ %29, %_ZTWN5adept21_stack_current_threadE.exit104 ]
  %statement_.i95 = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %27, i64 0, i32 0
  %32 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i95, align 8, !tbaa !42
  %idxprom.i96 = sext i32 %31 to i64
  %index.i97 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %32, i64 %idxprom.i96, i32 0
  store i32 %add, i32* %index.i97, align 4, !tbaa !43
  %n_operations_.i98 = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %27, i64 0, i32 5
  %33 = load i32, i32* %n_operations_.i98, align 8, !tbaa !45
  %inc.i99 = add nsw i32 %31, 1
  store i32 %inc.i99, i32* %n_statements_.i90, align 8, !tbaa !39
  %end_plus_one.i100 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %32, i64 %idxprom.i96, i32 1
  store i32 %33, i32* %end_plus_one.i100, align 4, !tbaa !46
  %inc = add nuw nsw i32 %15, 1
  %34 = load i32, i32* %arrayidx.i88, align 4, !tbaa !25
  %add10 = add nsw i32 %34, %index.1163
  %35 = load i32, i32* %arrayidx.i128, align 4, !tbaa !25
  %cmp = icmp slt i32 %inc, %35
  br i1 %cmp, label %for.body, label %while.body.i71, !llvm.loop !207

while.body.i71:                                   ; preds = %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit101, %for.cond.preheader.for.end_crit_edge
  %36 = phi i32 [ %13, %for.cond.preheader.for.end_crit_edge ], [ %35, %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit101 ]
  %37 = phi i32 [ %.pre182, %for.cond.preheader.for.end_crit_edge ], [ %34, %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit101 ]
  %index.1.lcssa = phi i32 [ %index.0, %for.cond.preheader.for.end_crit_edge ], [ %add10, %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit101 ]
  %.pre184 = load i32, i32* %arrayidx.i35.i69.phi.trans.insert, align 4, !tbaa !25
  %inc.i67 = add nuw nsw i32 %10, 1
  %cmp6.not.i70 = icmp slt i32 %inc.i67, %.pre184
  br i1 %cmp6.not.i70, label %_ZNK5adept5ArrayILi2EdLb1EE13advance_indexERiS2_RNS_14ExpressionSizeILi2EEE.exit87, label %if.end

_ZNK5adept5ArrayILi2EdLb1EE13advance_indexERiS2_RNS_14ExpressionSizeILi2EEE.exit87: ; preds = %while.body.i71
  %mul.i62 = mul nsw i32 %36, %37
  %sub.i63 = sub nsw i32 %index.1.lcssa, %mul.i62
  %38 = load i32, i32* %arrayidx.i27.i84, align 4, !tbaa !25
  %add.i85 = add nsw i32 %38, %sub.i63
  br label %do.body

if.else:                                          ; preds = %_ZNK5adept10ExpressionIdNS_5ArrayILi2EdLb1EEEE21all_arrays_contiguousEv.exit, %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit
  %data_13 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 1
  %39 = load double*, double** %data_13, align 8, !tbaa !34
  %arrayidx.i54 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 3, i32 0, i64 1
  %data_.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %rhs, i64 0, i32 1
  %value_.i.i.i.i = getelementptr %"class.adept::Array", %"class.adept::Array"* %rhs, i64 0, i32 0, i32 0
  %value_.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 0, i32 0
  %arrayidx.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 4, i32 0, i64 1
  %arrayidx.i35.i.phi.trans.insert = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 3, i32 0, i64 0
  %arrayidx.i27.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 4, i32 0, i64 0
  br label %do.body14

do.body14:                                        ; preds = %_ZNK5adept5ArrayILi2EdLb1EE13advance_indexERiS2_RNS_14ExpressionSizeILi2EEE.exit, %if.else
  %40 = phi i32 [ 0, %if.else ], [ %inc.i, %_ZNK5adept5ArrayILi2EdLb1EE13advance_indexERiS2_RNS_14ExpressionSizeILi2EEE.exit ]
  %index.4 = phi i32 [ 0, %if.else ], [ %add.i, %_ZNK5adept5ArrayILi2EdLb1EE13advance_indexERiS2_RNS_14ExpressionSizeILi2EEE.exit ]
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i, %do.body14
  %41 = phi i32 [ %40, %do.body14 ], [ 0, %for.body.i.i.i ]
  %cmp.i.i.i56 = phi i1 [ true, %do.body14 ], [ false, %for.body.i.i.i ]
  %indvars.iv.i.i.i = phi i64 [ 0, %do.body14 ], [ 1, %for.body.i.i.i ]
  %o.012.i.i.i = phi i32 [ 0, %do.body14 ], [ %add.i.i.i, %for.body.i.i.i ]
  %arrayidx.i10.i.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %rhs, i64 0, i32 4, i32 0, i64 %indvars.iv.i.i.i
  %42 = load i32, i32* %arrayidx.i10.i.i.i, align 4, !tbaa !25
  %mul.i.i.i = mul nsw i32 %42, %41
  %add.i.i.i = add nsw i32 %mul.i.i.i, %o.012.i.i.i
  br i1 %cmp.i.i.i56, label %for.body.i.i.i, label %for.cond16.preheader, !llvm.loop !206

for.cond16.preheader:                             ; preds = %for.body.i.i.i
  %43 = load i32, i32* %arrayidx.i54, align 4, !tbaa !25
  %cmp20165 = icmp sgt i32 %43, 0
  br i1 %cmp20165, label %for.body21, label %for.cond16.preheader.for.end34_crit_edge

for.cond16.preheader.for.end34_crit_edge:         ; preds = %for.cond16.preheader
  %.pre180 = load i32, i32* %arrayidx.i, align 4, !tbaa !25
  br label %while.body.i

for.body21:                                       ; preds = %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit, %for.cond16.preheader
  %44 = phi i32 [ %inc30, %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit ], [ 0, %for.cond16.preheader ]
  %ind.sroa.0.1167 = phi i32 [ %add.i.i, %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit ], [ %add.i.i.i, %for.cond16.preheader ]
  %index.5166 = phi i32 [ %add33, %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit ], [ %index.4, %for.cond16.preheader ]
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %45, label %_ZTWN5adept21_stack_current_threadE.exit48

45:                                               ; preds = %for.body21
  tail call void @_ZTHN5adept21_stack_current_threadE()
  br label %_ZTWN5adept21_stack_current_threadE.exit48

_ZTWN5adept21_stack_current_threadE.exit48:       ; preds = %45, %for.body21
  %46 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !38
  %47 = load double*, double** %data_.i.i, align 8, !tbaa !34
  %idxprom.i.i = sext i32 %ind.sroa.0.1167 to i64
  %arrayidx.i.i47 = getelementptr inbounds double, double* %47, i64 %idxprom.i.i
  %48 = load double, double* %arrayidx.i.i47, align 8, !tbaa !8
  %49 = load i32, i32* %value_.i.i.i.i, align 4, !tbaa !18
  %add.i8.i = add nsw i32 %49, %ind.sroa.0.1167
  %multiplier_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %46, i64 0, i32 0, i32 1
  %50 = load double*, double** %multiplier_.i.i.i, align 8, !tbaa !113
  %n_operations_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %46, i64 0, i32 0, i32 5
  %51 = load i32, i32* %n_operations_.i.i.i, align 8, !tbaa !45
  %idxprom.i.i.i = sext i32 %51 to i64
  %arrayidx.i.i9.i = getelementptr inbounds double, double* %50, i64 %idxprom.i.i.i
  store double 1.000000e+00, double* %arrayidx.i.i9.i, align 8, !tbaa !8
  %index_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %46, i64 0, i32 0, i32 2
  %52 = load i32*, i32** %index_.i.i.i, align 8, !tbaa !114
  %inc.i.i.i = add nsw i32 %51, 1
  store i32 %inc.i.i.i, i32* %n_operations_.i.i.i, align 8, !tbaa !45
  %arrayidx4.i.i.i = getelementptr inbounds i32, i32* %52, i64 %idxprom.i.i.i
  store i32 %add.i8.i, i32* %arrayidx4.i.i.i, align 4, !tbaa !25
  %53 = load i32, i32* %arrayidx.i.i.i53, align 4, !tbaa !25
  %add.i.i = add nsw i32 %53, %ind.sroa.0.1167
  %idxprom23 = sext i32 %index.5166 to i64
  %arrayidx24 = getelementptr inbounds double, double* %39, i64 %idxprom23
  store double %48, double* %arrayidx24, align 8, !tbaa !8
  %54 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %46, i64 0, i32 0
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %55, label %_ZTWN5adept21_stack_current_threadE.exit

55:                                               ; preds = %_ZTWN5adept21_stack_current_threadE.exit48
  tail call void @_ZTHN5adept21_stack_current_threadE()
  %.pre = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !38
  br label %_ZTWN5adept21_stack_current_threadE.exit

_ZTWN5adept21_stack_current_threadE.exit:         ; preds = %55, %_ZTWN5adept21_stack_current_threadE.exit48
  %56 = phi %"class.adept::internal::StackStorageOrig"* [ %54, %_ZTWN5adept21_stack_current_threadE.exit48 ], [ %.pre, %55 ]
  %57 = load i32, i32* %value_.i.i, align 4, !tbaa !18
  %add27 = add nsw i32 %57, %index.5166
  %n_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %56, i64 0, i32 3
  %58 = load i32, i32* %n_statements_.i, align 8, !tbaa !39
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %56, i64 0, i32 4
  %59 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !41
  %cmp.not.i = icmp slt i32 %58, %59
  br i1 %cmp.not.i, label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit, label %if.then.i41

if.then.i41:                                      ; preds = %_ZTWN5adept21_stack_current_threadE.exit
  tail call void @_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %56, i32 0)
  %.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !39
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %if.then.i41, %_ZTWN5adept21_stack_current_threadE.exit
  %60 = phi i32 [ %.pre.i, %if.then.i41 ], [ %58, %_ZTWN5adept21_stack_current_threadE.exit ]
  %statement_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %56, i64 0, i32 0
  %61 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i, align 8, !tbaa !42
  %idxprom.i = sext i32 %60 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %61, i64 %idxprom.i, i32 0
  store i32 %add27, i32* %index.i, align 4, !tbaa !43
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %56, i64 0, i32 5
  %62 = load i32, i32* %n_operations_.i, align 8, !tbaa !45
  %inc.i42 = add nsw i32 %60, 1
  store i32 %inc.i42, i32* %n_statements_.i, align 8, !tbaa !39
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %61, i64 %idxprom.i, i32 1
  store i32 %62, i32* %end_plus_one.i, align 4, !tbaa !46
  %inc30 = add nuw nsw i32 %44, 1
  %63 = load i32, i32* %arrayidx.i, align 4, !tbaa !25
  %add33 = add nsw i32 %63, %index.5166
  %64 = load i32, i32* %arrayidx.i54, align 4, !tbaa !25
  %cmp20 = icmp slt i32 %inc30, %64
  br i1 %cmp20, label %for.body21, label %while.body.i, !llvm.loop !208

while.body.i:                                     ; preds = %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit, %for.cond16.preheader.for.end34_crit_edge
  %65 = phi i32 [ %43, %for.cond16.preheader.for.end34_crit_edge ], [ %64, %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit ]
  %66 = phi i32 [ %.pre180, %for.cond16.preheader.for.end34_crit_edge ], [ %63, %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit ]
  %index.5.lcssa = phi i32 [ %index.4, %for.cond16.preheader.for.end34_crit_edge ], [ %add33, %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit ]
  %.pre183 = load i32, i32* %arrayidx.i35.i.phi.trans.insert, align 4, !tbaa !25
  %inc.i = add nuw nsw i32 %40, 1
  %cmp6.not.i = icmp slt i32 %inc.i, %.pre183
  br i1 %cmp6.not.i, label %_ZNK5adept5ArrayILi2EdLb1EE13advance_indexERiS2_RNS_14ExpressionSizeILi2EEE.exit, label %if.end

_ZNK5adept5ArrayILi2EdLb1EE13advance_indexERiS2_RNS_14ExpressionSizeILi2EEE.exit: ; preds = %while.body.i
  %mul.i = mul nsw i32 %65, %66
  %sub.i = sub nsw i32 %index.5.lcssa, %mul.i
  %67 = load i32, i32* %arrayidx.i27.i, align 4, !tbaa !25
  %add.i = add nsw i32 %67, %sub.i
  br label %do.body14

if.end:                                           ; preds = %while.body.i, %while.body.i71
  ret void
}

declare dso_local nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32), i8*, i64) local_unnamed_addr #1

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) local_unnamed_addr #24

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept13size_mismatchD0Ev(%"class.adept::size_mismatch"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::size_mismatch", %"class.adept::size_mismatch"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !161
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::size_mismatch", %"class.adept::size_mismatch"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !147
  %2 = getelementptr inbounds %"class.adept::size_mismatch", %"class.adept::size_mismatch"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #27
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::size_mismatch", %"class.adept::size_mismatch"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #27
  %4 = bitcast %"class.adept::size_mismatch"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #31
  ret void
}

declare dso_local void @_ZN5adept8internal16StackStorageOrig20grow_operation_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40), i32) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(12) %"class.adept::Active"* @_ZN5adept6ActiveIdEaSIdNS_8internal15BinaryOperationIdS1_NS3_3AddENS4_IdNS_15ActiveReferenceIdEENS3_8MultiplyES7_EEEEEENS3_9enable_ifIXaasrT0_9is_activeeqsrSC_4rankLi0EERS1_E4typeERKNS_10ExpressionIT_SC_EE(%"class.adept::Active"* nonnull dereferenceable(12) %this, %"struct.adept::Expression.17"* nonnull align 1 dereferenceable(1) %rhs) local_unnamed_addr #17 comdat align 2 {
entry:
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %0, label %_ZTWN5adept21_stack_current_threadE.exit

0:                                                ; preds = %entry
  tail call void @_ZTHN5adept21_stack_current_threadE()
  br label %_ZTWN5adept21_stack_current_threadE.exit

_ZTWN5adept21_stack_current_threadE.exit:         ; preds = %0, %entry
  %1 = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !38
  %n_allocated_operations_.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %1, i64 0, i32 6
  %2 = load i32, i32* %n_allocated_operations_.i.i, align 4, !tbaa !115
  %n_operations_.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %1, i64 0, i32 5
  %3 = load i32, i32* %n_operations_.i.i, align 8, !tbaa !45
  %add.i.i = add nsw i32 %3, 3
  %cmp.not.i.i = icmp sgt i32 %2, %add.i.i
  br i1 %cmp.not.i.i, label %_ZN5adept8internal16StackStorageOrig18check_space_staticILi3EEEvv.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %_ZTWN5adept21_stack_current_threadE.exit
  tail call void @_ZN5adept8internal16StackStorageOrig20grow_operation_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %1, i32 3)
  br label %_ZN5adept8internal16StackStorageOrig18check_space_staticILi3EEEvv.exit

_ZN5adept8internal16StackStorageOrig18check_space_staticILi3EEEvv.exit: ; preds = %if.then.i.i, %_ZTWN5adept21_stack_current_threadE.exit
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %4, label %_ZTWN5adept21_stack_current_threadE.exit2

4:                                                ; preds = %_ZN5adept8internal16StackStorageOrig18check_space_staticILi3EEEvv.exit
  tail call void @_ZTHN5adept21_stack_current_threadE()
  br label %_ZTWN5adept21_stack_current_threadE.exit2

_ZTWN5adept21_stack_current_threadE.exit2:        ; preds = %4, %_ZN5adept8internal16StackStorageOrig18check_space_staticILi3EEEvv.exit
  %left.i.i.i = bitcast %"struct.adept::Expression.17"* %rhs to %"class.adept::Active"**
  %5 = load %"class.adept::Active"*, %"class.adept::Active"** %left.i.i.i, align 8, !tbaa !209
  %val_.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %5, i64 0, i32 0
  %6 = load double, double* %val_.i.i.i.i, align 8, !tbaa !177
  %left.i.i.i.i5.i = getelementptr inbounds %"struct.adept::Expression.17", %"struct.adept::Expression.17"* %rhs, i64 8
  %7 = bitcast %"struct.adept::Expression.17"* %left.i.i.i.i5.i to %"class.adept::ActiveReference"**
  %8 = load %"class.adept::ActiveReference"*, %"class.adept::ActiveReference"** %7, align 8, !tbaa !212
  %val_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::ActiveReference", %"class.adept::ActiveReference"* %8, i64 0, i32 0
  %9 = load double*, double** %val_.i.i.i.i.i.i, align 8, !tbaa !213
  %10 = load double, double* %9, align 8, !tbaa !8
  %right.i.i.i.i.i = getelementptr inbounds %"struct.adept::Expression.17", %"struct.adept::Expression.17"* %rhs, i64 16
  %11 = bitcast %"struct.adept::Expression.17"* %right.i.i.i.i.i to %"class.adept::ActiveReference"**
  %12 = load %"class.adept::ActiveReference"*, %"class.adept::ActiveReference"** %11, align 8, !tbaa !214
  %val_.i9.i.i.i.i.i = getelementptr inbounds %"class.adept::ActiveReference", %"class.adept::ActiveReference"* %12, i64 0, i32 0
  %13 = load double*, double** %val_.i9.i.i.i.i.i, align 8, !tbaa !213
  %14 = load double, double* %13, align 8, !tbaa !8
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %15, label %_ZNK5adept10ExpressionIdNS_8internal15BinaryOperationIdNS_6ActiveIdEENS1_3AddENS2_IdNS_15ActiveReferenceIdEENS1_8MultiplyES7_EEEEE25scalar_value_and_gradientERNS_5StackE.exit

15:                                               ; preds = %_ZTWN5adept21_stack_current_threadE.exit2
  tail call void @_ZTHN5adept21_stack_current_threadE()
  %.pre.i = load %"class.adept::Active"*, %"class.adept::Active"** %left.i.i.i, align 8, !tbaa !209
  %.pre8.i = load %"class.adept::ActiveReference"*, %"class.adept::ActiveReference"** %7, align 8, !tbaa !212
  %.pre9.i = load %"class.adept::ActiveReference"*, %"class.adept::ActiveReference"** %11, align 8, !tbaa !214
  %val_.i.i.i.i.i.i.i.phi.trans.insert.i = getelementptr inbounds %"class.adept::ActiveReference", %"class.adept::ActiveReference"* %.pre9.i, i64 0, i32 0
  %.pre10.i = load double*, double** %val_.i.i.i.i.i.i.i.phi.trans.insert.i, align 8, !tbaa !213
  %val_.i.i.i5.i.i.i.i.phi.trans.insert.i = getelementptr inbounds %"class.adept::ActiveReference", %"class.adept::ActiveReference"* %.pre8.i, i64 0, i32 0
  %.pre11.i = load double*, double** %val_.i.i.i5.i.i.i.i.phi.trans.insert.i, align 8, !tbaa !213
  br label %_ZNK5adept10ExpressionIdNS_8internal15BinaryOperationIdNS_6ActiveIdEENS1_3AddENS2_IdNS_15ActiveReferenceIdEENS1_8MultiplyES7_EEEEE25scalar_value_and_gradientERNS_5StackE.exit

_ZNK5adept10ExpressionIdNS_8internal15BinaryOperationIdNS_6ActiveIdEENS1_3AddENS2_IdNS_15ActiveReferenceIdEENS1_8MultiplyES7_EEEEE25scalar_value_and_gradientERNS_5StackE.exit: ; preds = %15, %_ZTWN5adept21_stack_current_threadE.exit2
  %16 = phi double* [ %9, %_ZTWN5adept21_stack_current_threadE.exit2 ], [ %.pre11.i, %15 ]
  %17 = phi double* [ %13, %_ZTWN5adept21_stack_current_threadE.exit2 ], [ %.pre10.i, %15 ]
  %18 = phi %"class.adept::ActiveReference"* [ %12, %_ZTWN5adept21_stack_current_threadE.exit2 ], [ %.pre9.i, %15 ]
  %19 = phi %"class.adept::ActiveReference"* [ %8, %_ZTWN5adept21_stack_current_threadE.exit2 ], [ %.pre8.i, %15 ]
  %20 = phi %"class.adept::Active"* [ %5, %_ZTWN5adept21_stack_current_threadE.exit2 ], [ %.pre.i, %15 ]
  %mul.i.i.i.i.i.i = fmul fast double %14, %10
  %add.i.i.i.i = fadd fast double %mul.i.i.i.i.i.i, %6
  %21 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !38
  %gradient_index_.i.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %20, i64 0, i32 1
  %multiplier_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0, i32 1
  %22 = load double*, double** %multiplier_.i.i.i.i.i.i, align 8, !tbaa !113
  %n_operations_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0, i32 5
  %23 = load i32, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !45
  %idxprom.i.i.i.i.i.i = sext i32 %23 to i64
  %arrayidx.i.i.i.i.i.i = getelementptr inbounds double, double* %22, i64 %idxprom.i.i.i.i.i.i
  store double 1.000000e+00, double* %arrayidx.i.i.i.i.i.i, align 8, !tbaa !8
  %24 = load i32, i32* %gradient_index_.i.i.i.i.i, align 8, !tbaa !25
  %index_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0, i32 2
  %25 = load i32*, i32** %index_.i.i.i.i.i.i, align 8, !tbaa !114
  %inc.i.i.i.i.i.i = add nsw i32 %23, 1
  store i32 %inc.i.i.i.i.i.i, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !45
  %arrayidx4.i.i.i.i.i.i = getelementptr inbounds i32, i32* %25, i64 %idxprom.i.i.i.i.i.i
  store i32 %24, i32* %arrayidx4.i.i.i.i.i.i, align 4, !tbaa !25
  %26 = load double, double* %17, align 8, !tbaa !8
  %gradient_index_.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.adept::ActiveReference", %"class.adept::ActiveReference"* %19, i64 0, i32 1
  %27 = load i32, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !45
  %idxprom.i.i.i.i.i.i.i.i.i = sext i32 %27 to i64
  %arrayidx.i.i.i.i.i.i.i.i.i = getelementptr inbounds double, double* %22, i64 %idxprom.i.i.i.i.i.i.i.i.i
  store double %26, double* %arrayidx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !8
  %28 = load i32, i32* %gradient_index_.i.i.i.i.i.i.i.i, align 8, !tbaa !25
  %inc.i.i.i.i.i.i.i.i.i = add nsw i32 %27, 1
  store i32 %inc.i.i.i.i.i.i.i.i.i, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !45
  %arrayidx4.i.i.i.i.i.i.i.i.i = getelementptr inbounds i32, i32* %25, i64 %idxprom.i.i.i.i.i.i.i.i.i
  store i32 %28, i32* %arrayidx4.i.i.i.i.i.i.i.i.i, align 4, !tbaa !25
  %29 = load double, double* %16, align 8, !tbaa !8
  %gradient_index_.i.i.i6.i.i.i.i.i = getelementptr inbounds %"class.adept::ActiveReference", %"class.adept::ActiveReference"* %18, i64 0, i32 1
  %30 = load i32, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !45
  %idxprom.i.i.i.i9.i.i.i.i.i = sext i32 %30 to i64
  %arrayidx.i.i.i.i10.i.i.i.i.i = getelementptr inbounds double, double* %22, i64 %idxprom.i.i.i.i9.i.i.i.i.i
  store double %29, double* %arrayidx.i.i.i.i10.i.i.i.i.i, align 8, !tbaa !8
  %31 = load i32, i32* %gradient_index_.i.i.i6.i.i.i.i.i, align 8, !tbaa !25
  %inc.i.i.i.i12.i.i.i.i.i = add nsw i32 %30, 1
  store i32 %inc.i.i.i.i12.i.i.i.i.i, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !45
  %arrayidx4.i.i.i.i13.i.i.i.i.i = getelementptr inbounds i32, i32* %25, i64 %idxprom.i.i.i.i9.i.i.i.i.i
  store i32 %31, i32* %arrayidx4.i.i.i.i13.i.i.i.i.i, align 4, !tbaa !25
  %val_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 0
  store double %add.i.i.i.i, double* %val_, align 8, !tbaa !177
  %32 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %33, label %_ZTWN5adept21_stack_current_threadE.exit3

33:                                               ; preds = %_ZNK5adept10ExpressionIdNS_8internal15BinaryOperationIdNS_6ActiveIdEENS1_3AddENS2_IdNS_15ActiveReferenceIdEENS1_8MultiplyES7_EEEEE25scalar_value_and_gradientERNS_5StackE.exit
  tail call void @_ZTHN5adept21_stack_current_threadE()
  %.pre = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !38
  br label %_ZTWN5adept21_stack_current_threadE.exit3

_ZTWN5adept21_stack_current_threadE.exit3:        ; preds = %33, %_ZNK5adept10ExpressionIdNS_8internal15BinaryOperationIdNS_6ActiveIdEENS1_3AddENS2_IdNS_15ActiveReferenceIdEENS1_8MultiplyES7_EEEEE25scalar_value_and_gradientERNS_5StackE.exit
  %34 = phi %"class.adept::internal::StackStorageOrig"* [ %32, %_ZNK5adept10ExpressionIdNS_8internal15BinaryOperationIdNS_6ActiveIdEENS1_3AddENS2_IdNS_15ActiveReferenceIdEENS1_8MultiplyES7_EEEEE25scalar_value_and_gradientERNS_5StackE.exit ], [ %.pre, %33 ]
  %n_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %34, i64 0, i32 3
  %35 = load i32, i32* %n_statements_.i, align 8, !tbaa !39
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %34, i64 0, i32 4
  %36 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !41
  %cmp.not.i = icmp slt i32 %35, %36
  br i1 %cmp.not.i, label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit, label %if.then.i

if.then.i:                                        ; preds = %_ZTWN5adept21_stack_current_threadE.exit3
  tail call void @_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %34, i32 0)
  %.pre.i4 = load i32, i32* %n_statements_.i, align 8, !tbaa !39
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %if.then.i, %_ZTWN5adept21_stack_current_threadE.exit3
  %37 = phi i32 [ %.pre.i4, %if.then.i ], [ %35, %_ZTWN5adept21_stack_current_threadE.exit3 ]
  %gradient_index_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 1
  %38 = load i32, i32* %gradient_index_, align 4, !tbaa !25
  %statement_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %34, i64 0, i32 0
  %39 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i, align 8, !tbaa !42
  %idxprom.i = sext i32 %37 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %39, i64 %idxprom.i, i32 0
  store i32 %38, i32* %index.i, align 4, !tbaa !43
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %34, i64 0, i32 5
  %40 = load i32, i32* %n_operations_.i, align 8, !tbaa !45
  %inc.i = add nsw i32 %37, 1
  store i32 %inc.i, i32* %n_statements_.i, align 8, !tbaa !39
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %39, i64 %idxprom.i, i32 1
  store i32 %40, i32* %end_plus_one.i, align 4, !tbaa !46
  ret %"class.adept::Active"* %this
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept5Stack13set_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPKS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i32 %start, i32 %end_plus_one, double* %gradient) local_unnamed_addr #11 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %gradients_initialized_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 10
  %0 = load i8, i8* %gradients_initialized_.i, align 8, !tbaa !52, !range !152
  %tobool.i.not = icmp eq i8 %0, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_ZN5adept5Stack20initialize_gradientsEv(%"class.adept::Stack"* nonnull dereferenceable(149) %this)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %1 = load i32, i32* %max_gradient_, align 8, !tbaa !59
  %cmp = icmp slt i32 %1, %end_plus_one
  br i1 %cmp, label %if.then2, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cmp1028 = icmp sgt i32 %end_plus_one, %start
  br i1 %cmp1028, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
  %2 = load double*, double** %gradient_, align 8, !tbaa !215
  %3 = sext i32 %start to i64
  %4 = sub i32 %end_plus_one, %start
  %wide.trip.count = zext i32 %4 to i64
  br label %for.body

if.then2:                                         ; preds = %if.end
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #27
  %5 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %5) #27
  %6 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %7 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %6, %union.anon** %7, align 8, !tbaa !142
  %8 = bitcast %union.anon* %6 to i8*
  %9 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %9) #27
  store i64 98, i64* %__dnew.i.i.i.i, align 8, !tbaa !171
  %call5.i.i.i10.i23 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.then2
  %_M_p.i18.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i23, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %10 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !171
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %10, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !149
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(98) %call5.i.i.i10.i23, i8* nonnull align 1 dereferenceable(98) getelementptr inbounds ([99 x i8], [99 x i8]* @.str.24, i64 0, i64 0), i64 98, i1 false) #27
  %_M_string_length.i.i.i.i.i.i22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %10, i64* %_M_string_length.i.i.i.i.i.i22, align 8, !tbaa !150
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i23, i64 %10
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %9) #27
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %11 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %12 = getelementptr inbounds i8, i8* %exception, i64 24
  %13 = bitcast i8* %message_.i.i.i to i8**
  store i8* %12, i8** %13, align 8, !tbaa !142
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %14 = bitcast i8* %_M_string_length.i.i.i.i.i.i to i64*
  store i64 0, i64* %14, align 8, !tbaa !150
  store i8 0, i8* %12, align 1, !tbaa !149
  %15 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21gradient_out_of_rangeE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %15, align 8, !tbaa !161
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %11, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont5 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %16 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %15, align 8, !tbaa !161
  %17 = load i8*, i8** %13, align 8, !tbaa !147
  %cmp.i.i.i.i.i = icmp eq i8* %17, %12
  br i1 %cmp.i.i.i.i.i, label %lpad4.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %17) #27
  br label %lpad4.body

invoke.cont5:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21gradient_out_of_rangeE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad4.body.thread

ehcleanup.thread:                                 ; preds = %if.then2
  %18 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #27
  br label %cleanup.action

lpad4.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %19 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %19) #27
  %20 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i = icmp eq i8* %20, %8
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad4.body
  call void @_ZdlPv(i8* %20) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #27
  br label %cleanup.action

lpad4.body.thread:                                ; preds = %invoke.cont5
  %21 = landingpad { i8*, i32 }
          cleanup
  %22 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i36 = icmp eq i8* %22, %8
  br i1 %cmp.i.i.i36, label %ehcleanup.thread41, label %if.then.i.i

ehcleanup.thread41:                               ; preds = %lpad4.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #27
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad4.body.thread
  call void @_ZdlPv(i8* %22) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #27
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad4.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %5) #27
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn27 = phi { i8*, i32 } [ %18, %ehcleanup.thread ], [ %16, %ehcleanup ], [ %16, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #27
  br label %eh.resume

for.cond.cleanup:                                 ; preds = %for.body, %for.cond.preheader
  ret void

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv32 = phi i64 [ %3, %for.body.lr.ph ], [ %indvars.iv.next33, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double, double* %gradient, i64 %indvars.iv
  %23 = load double, double* %arrayidx, align 8, !tbaa !8
  %arrayidx12 = getelementptr inbounds double, double* %2, i64 %indvars.iv32
  store double %23, double* %arrayidx12, align 8, !tbaa !8
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !216

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread41
  %.pn26 = phi { i8*, i32 } [ %.pn27, %cleanup.action ], [ %21, %if.then.i.i ], [ %21, %ehcleanup.thread41 ]
  resume { i8*, i32 } %.pn26

unreachable:                                      ; preds = %invoke.cont5
  unreachable
}

declare dso_local void @_ZN5adept5Stack20initialize_gradientsEv(%"class.adept::Stack"* nonnull dereferenceable(149)) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept21gradient_out_of_rangeD0Ev(%"class.adept::gradient_out_of_range"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::gradient_out_of_range", %"class.adept::gradient_out_of_range"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !161
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::gradient_out_of_range", %"class.adept::gradient_out_of_range"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !147
  %2 = getelementptr inbounds %"class.adept::gradient_out_of_range", %"class.adept::gradient_out_of_range"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #27
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::gradient_out_of_range", %"class.adept::gradient_out_of_range"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #27
  %4 = bitcast %"class.adept::gradient_out_of_range"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #31
  ret void
}

declare dso_local void @_ZN5adept5Stack27unregister_gradient_not_topERKi(%"class.adept::Stack"* nonnull dereferenceable(149), i32* nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare dso_local void @_ZN5adept5Stack15compute_adjointEv(%"class.adept::Stack"* nonnull dereferenceable(149)) local_unnamed_addr #1

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK5adept5Stack13get_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i32 %start, i32 %end_plus_one, double* %gradient) local_unnamed_addr #11 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i57 = alloca i64, align 8
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp10 = alloca %"class.std::__cxx11::basic_string", align 8
  %gradients_initialized_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 10
  %0 = load i8, i8* %gradients_initialized_.i, align 8, !tbaa !52, !range !152
  %tobool.i.not = icmp eq i8 %0, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #27
  %1 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #27
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %2, %union.anon** %3, align 8, !tbaa !142
  %4 = bitcast %union.anon* %2 to i8*
  %5 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #27
  store i64 106, i64* %__dnew.i.i.i.i, align 8, !tbaa !171
  %call5.i.i.i10.i42 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.then
  %_M_p.i18.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i42, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %6 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !171
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %6, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !149
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(106) %call5.i.i.i10.i42, i8* nonnull align 1 dereferenceable(106) getelementptr inbounds ([107 x i8], [107 x i8]* @.str.25, i64 0, i64 0), i64 106, i1 false) #27
  %_M_string_length.i.i.i.i.i.i41 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %6, i64* %_M_string_length.i.i.i.i.i.i41, align 8, !tbaa !150
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i42, i64 %6
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #27
  %message_.i.i.i43 = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i.i43 to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i.i43 to i8**
  store i8* %8, i8** %9, align 8, !tbaa !142
  %_M_string_length.i.i.i.i.i.i44 = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i.i44 to i64*
  store i64 0, i64* %10, align 8, !tbaa !150
  store i8 0, i8* %8, align 1, !tbaa !149
  %11 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept25gradients_not_initializedE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %11, align 8, !tbaa !161
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad.i48

lpad.i48:                                         ; preds = %call5.i.i.i10.i.noexc
  %12 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %11, align 8, !tbaa !161
  %13 = load i8*, i8** %9, align 8, !tbaa !147
  %cmp.i.i.i.i.i47 = icmp eq i8* %13, %8
  br i1 %cmp.i.i.i.i.i47, label %lpad3.body, label %if.then.i.i.i.i49

if.then.i.i.i.i49:                                ; preds = %lpad.i48
  call void @_ZdlPv(i8* %13) #27
  br label %lpad3.body

invoke.cont4:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept25gradients_not_initializedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad3.body.thread

ehcleanup.thread:                                 ; preds = %if.then
  %14 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #27
  br label %cleanup.action

lpad3.body:                                       ; preds = %if.then.i.i.i.i49, %lpad.i48
  %15 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %15) #27
  %16 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i54 = icmp eq i8* %16, %4
  br i1 %cmp.i.i.i54, label %ehcleanup, label %if.then.i.i55.thread

if.then.i.i55.thread:                             ; preds = %lpad3.body
  call void @_ZdlPv(i8* %16) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #27
  br label %cleanup.action

lpad3.body.thread:                                ; preds = %invoke.cont4
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !147
  %cmp.i.i.i5486 = icmp eq i8* %18, %4
  br i1 %cmp.i.i.i5486, label %ehcleanup.thread91, label %if.then.i.i55

ehcleanup.thread91:                               ; preds = %lpad3.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #27
  br label %eh.resume

if.then.i.i55:                                    ; preds = %lpad3.body.thread
  call void @_ZdlPv(i8* %18) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #27
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad3.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #27
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i55.thread, %ehcleanup.thread
  %.pn74 = phi { i8*, i32 } [ %14, %ehcleanup.thread ], [ %12, %ehcleanup ], [ %12, %if.then.i.i55.thread ]
  call void @__cxa_free_exception(i8* %exception) #27
  br label %eh.resume

if.end:                                           ; preds = %entry
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %19 = load i32, i32* %max_gradient_, align 8, !tbaa !59
  %cmp = icmp slt i32 %19, %end_plus_one
  br i1 %cmp, label %if.then8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cmp2678 = icmp sgt i32 %end_plus_one, %start
  br i1 %cmp2678, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
  %20 = load double*, double** %gradient_, align 8, !tbaa !215
  %21 = sext i32 %start to i64
  %22 = sub i32 %end_plus_one, %start
  %wide.trip.count = zext i32 %22 to i64
  br label %for.body

if.then8:                                         ; preds = %if.end
  %exception9 = tail call i8* @__cxa_allocate_exception(i64 40) #27
  %23 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %23) #27
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp10, i64 0, i32 2
  %25 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp10 to %union.anon**
  store %union.anon* %24, %union.anon** %25, align 8, !tbaa !142
  %26 = bitcast %union.anon* %24 to i8*
  %27 = bitcast i64* %__dnew.i.i.i.i57 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #27
  store i64 98, i64* %__dnew.i.i.i.i57, align 8, !tbaa !171
  %call5.i.i.i10.i70 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp10, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i57, i64 0)
          to label %call5.i.i.i10.i.noexc69 unwind label %ehcleanup18.thread

call5.i.i.i10.i.noexc69:                          ; preds = %if.then8
  %_M_p.i18.i.i.i.i60 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp10, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i70, i8** %_M_p.i18.i.i.i.i60, align 8, !tbaa !147
  %28 = load i64, i64* %__dnew.i.i.i.i57, align 8, !tbaa !171
  %_M_allocated_capacity.i.i.i.i.i61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp10, i64 0, i32 2, i32 0
  store i64 %28, i64* %_M_allocated_capacity.i.i.i.i.i61, align 8, !tbaa !149
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(98) %call5.i.i.i10.i70, i8* nonnull align 1 dereferenceable(98) getelementptr inbounds ([99 x i8], [99 x i8]* @.str.24, i64 0, i64 0), i64 98, i1 false) #27
  %_M_string_length.i.i.i.i.i.i67 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp10, i64 0, i32 1
  store i64 %28, i64* %_M_string_length.i.i.i.i.i.i67, align 8, !tbaa !150
  %arrayidx.i.i.i.i.i68 = getelementptr inbounds i8, i8* %call5.i.i.i10.i70, i64 %28
  store i8 0, i8* %arrayidx.i.i.i.i.i68, align 1, !tbaa !149
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #27
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception9, i64 8
  %29 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %30 = getelementptr inbounds i8, i8* %exception9, i64 24
  %31 = bitcast i8* %message_.i.i.i to i8**
  store i8* %30, i8** %31, align 8, !tbaa !142
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds i8, i8* %exception9, i64 16
  %32 = bitcast i8* %_M_string_length.i.i.i.i.i.i to i64*
  store i64 0, i64* %32, align 8, !tbaa !150
  store i8 0, i8* %30, align 1, !tbaa !149
  %33 = bitcast i8* %exception9 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21gradient_out_of_rangeE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %33, align 8, !tbaa !161
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %29, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp10)
          to label %invoke.cont15 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc69
  %34 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %33, align 8, !tbaa !161
  %35 = load i8*, i8** %31, align 8, !tbaa !147
  %cmp.i.i.i.i.i = icmp eq i8* %35, %30
  br i1 %cmp.i.i.i.i.i, label %lpad14.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %35) #27
  br label %lpad14.body

invoke.cont15:                                    ; preds = %call5.i.i.i10.i.noexc69
  invoke void @__cxa_throw(i8* nonnull %exception9, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21gradient_out_of_rangeE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad14.body.thread

ehcleanup18.thread:                               ; preds = %if.then8
  %36 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %23) #27
  br label %cleanup.action23

lpad14.body:                                      ; preds = %if.then.i.i.i.i, %lpad.i
  %37 = bitcast i8* %exception9 to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %37) #27
  %38 = load i8*, i8** %_M_p.i18.i.i.i.i60, align 8, !tbaa !147
  %cmp.i.i.i = icmp eq i8* %38, %26
  br i1 %cmp.i.i.i, label %ehcleanup18, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad14.body
  call void @_ZdlPv(i8* %38) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %23) #27
  br label %cleanup.action23

lpad14.body.thread:                               ; preds = %invoke.cont15
  %39 = landingpad { i8*, i32 }
          cleanup
  %40 = load i8*, i8** %_M_p.i18.i.i.i.i60, align 8, !tbaa !147
  %cmp.i.i.i96 = icmp eq i8* %40, %26
  br i1 %cmp.i.i.i96, label %ehcleanup18.thread101, label %if.then.i.i

ehcleanup18.thread101:                            ; preds = %lpad14.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %23) #27
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad14.body.thread
  call void @_ZdlPv(i8* %40) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %23) #27
  br label %eh.resume

ehcleanup18:                                      ; preds = %lpad14.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %23) #27
  br label %cleanup.action23

cleanup.action23:                                 ; preds = %ehcleanup18, %if.then.i.i.thread, %ehcleanup18.thread
  %.pn3877 = phi { i8*, i32 } [ %36, %ehcleanup18.thread ], [ %34, %ehcleanup18 ], [ %34, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception9) #27
  br label %eh.resume

for.cond.cleanup:                                 ; preds = %for.body, %for.cond.preheader
  ret void

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv82 = phi i64 [ %21, %for.body.lr.ph ], [ %indvars.iv.next83, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double, double* %20, i64 %indvars.iv82
  %41 = load double, double* %arrayidx, align 8, !tbaa !8
  %arrayidx28 = getelementptr inbounds double, double* %gradient, i64 %indvars.iv
  store double %41, double* %arrayidx28, align 8, !tbaa !8
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !217

eh.resume:                                        ; preds = %cleanup.action23, %if.then.i.i, %ehcleanup18.thread101, %cleanup.action, %if.then.i.i55, %ehcleanup.thread91
  %.pn38.pn = phi { i8*, i32 } [ %.pn3877, %cleanup.action23 ], [ %.pn74, %cleanup.action ], [ %17, %if.then.i.i55 ], [ %39, %if.then.i.i ], [ %17, %ehcleanup.thread91 ], [ %39, %ehcleanup18.thread101 ]
  resume { i8*, i32 } %.pn38.pn

unreachable:                                      ; preds = %invoke.cont15, %invoke.cont4
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept25gradients_not_initializedD0Ev(%"class.adept::gradients_not_initialized"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::gradients_not_initialized", %"class.adept::gradients_not_initialized"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !161
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::gradients_not_initialized", %"class.adept::gradients_not_initialized"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !147
  %2 = getelementptr inbounds %"class.adept::gradients_not_initialized", %"class.adept::gradients_not_initialized"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #27
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::gradients_not_initialized", %"class.adept::gradients_not_initialized"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #27
  %4 = bitcast %"class.adept::gradients_not_initialized"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #31
  ret void
}

; Function Attrs: inlinehint nounwind uwtable mustprogress
define linkonce_odr dso_local double @_Z11matvec_realPdS_(double* %mat, double* %vec) #25 comdat {
entry:
  %call = tail call noalias dereferenceable_or_null(16000) i8* @malloc(i64 16000) #27
  %0 = bitcast i8* %call to double*
  br label %for.body

for.body:                                         ; preds = %for.cond.cleanup3, %entry
  %indvars.iv58 = phi i64 [ 0, %entry ], [ %indvars.iv.next59, %for.cond.cleanup3 ]
  %arrayidx = getelementptr inbounds double, double* %0, i64 %indvars.iv58
  store double 0.000000e+00, double* %arrayidx, align 8, !tbaa !8
  %1 = mul nuw nsw i64 %indvars.iv58, 2000
  br label %for.body4

for.cond.cleanup3:                                ; preds = %for.body4
  store double %add12, double* %arrayidx, align 8, !tbaa !8
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %exitcond61.not = icmp eq i64 %indvars.iv.next59, 2000
  br i1 %exitcond61.not, label %for.body20, label %for.body, !llvm.loop !95

for.body4:                                        ; preds = %for.body4, %for.body
  %indvars.iv54 = phi i64 [ 0, %for.body ], [ %indvars.iv.next55, %for.body4 ]
  %2 = phi double [ 0.000000e+00, %for.body ], [ %add12, %for.body4 ]
  %3 = add nuw nsw i64 %indvars.iv54, %1
  %arrayidx6 = getelementptr inbounds double, double* %mat, i64 %3
  %4 = load double, double* %arrayidx6, align 8, !tbaa !8
  %arrayidx8 = getelementptr inbounds double, double* %vec, i64 %indvars.iv54
  %5 = load double, double* %arrayidx8, align 8, !tbaa !8
  %mul9 = fmul fast double %5, %4
  %add12 = fadd fast double %2, %mul9
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %exitcond57.not = icmp eq i64 %indvars.iv.next55, 2000
  br i1 %exitcond57.not, label %for.cond.cleanup3, label %for.body4, !llvm.loop !96

for.cond.cleanup19:                               ; preds = %for.body20
  tail call void @free(i8* nonnull %call) #27
  ret double %add26

for.body20:                                       ; preds = %for.body20, %for.cond.cleanup3
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body20 ], [ 0, %for.cond.cleanup3 ]
  %sum.050 = phi double [ %add26, %for.body20 ], [ 0.000000e+00, %for.cond.cleanup3 ]
  %arrayidx22 = getelementptr inbounds double, double* %0, i64 %indvars.iv
  %6 = load double, double* %arrayidx22, align 8, !tbaa !8
  %mul25 = fmul fast double %6, %6
  %add26 = fadd fast double %mul25, %sum.050
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2000
  br i1 %exitcond.not, label %for.cond.cleanup19, label %for.body20, !llvm.loop !97
}

declare dso_local double @_Z17__enzyme_autodiffIdJPFdPdS0_ES0_S0_iS0_EET_DpT0_(double (double*, double*)*, double*, double*, i32, double*) local_unnamed_addr #1

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_matdescent.cpp() #11 section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1) @_ZStL8__ioinit)
  %0 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #27
  ret void
}

declare extern_weak void @_ZTHN5adept21_stack_current_threadE() #1

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: inlinehint nounwind uwtable mustprogress
define linkonce_odr dso_local double @preprocess__Z11matvec_realPdS_(double* %mat, double* %vec) #25 {
entry:
  %call = tail call noalias dereferenceable_or_null(16000) i8* @malloc(i64 16000) #27
  %0 = bitcast i8* %call to double*
  br label %for.body

for.body:                                         ; preds = %for.cond.cleanup3, %entry
  %tiv1 = phi i64 [ %tiv.next2, %for.cond.cleanup3 ], [ 0, %entry ]
  %tiv.next2 = add nuw nsw i64 %tiv1, 1
  %arrayidx = getelementptr inbounds double, double* %0, i64 %tiv1
  store double 0.000000e+00, double* %arrayidx, align 8, !tbaa !8
  %1 = mul nuw nsw i64 %tiv1, 2000
  br label %for.body4

for.cond.cleanup3:                                ; preds = %for.body4
  store double %add12, double* %arrayidx, align 8, !tbaa !8
  %exitcond61.not = icmp eq i64 %tiv.next2, 2000
  br i1 %exitcond61.not, label %for.body20, label %for.body, !llvm.loop !95

for.body4:                                        ; preds = %for.body4, %for.body
  %indvars.iv54 = phi i64 [ 0, %for.body ], [ %indvars.iv.next55, %for.body4 ]
  %2 = phi double [ 0.000000e+00, %for.body ], [ %add12, %for.body4 ]
  %3 = add nuw nsw i64 %indvars.iv54, %1
  %arrayidx6 = getelementptr inbounds double, double* %mat, i64 %3
  %4 = load double, double* %arrayidx6, align 8, !tbaa !8
  %arrayidx8 = getelementptr inbounds double, double* %vec, i64 %indvars.iv54
  %5 = load double, double* %arrayidx8, align 8, !tbaa !8
  %mul9 = fmul fast double %5, %4
  %add12 = fadd fast double %2, %mul9
  %indvars.iv.next55 = add nuw nsw i64 %indvars.iv54, 1
  %exitcond57.not = icmp eq i64 %indvars.iv.next55, 2000
  br i1 %exitcond57.not, label %for.cond.cleanup3, label %for.body4, !llvm.loop !96

for.cond.cleanup19:                               ; preds = %for.body20
  tail call void @free(i8* nonnull %call) #27
  ret double %add26

for.body20:                                       ; preds = %for.cond.cleanup3, %for.body20
  %tiv = phi i64 [ %tiv.next, %for.body20 ], [ 0, %for.cond.cleanup3 ]
  %sum.050 = phi double [ %add26, %for.body20 ], [ 0.000000e+00, %for.cond.cleanup3 ]
  %tiv.next = add nuw nsw i64 %tiv, 1
  %arrayidx22 = getelementptr inbounds double, double* %0, i64 %tiv
  %6 = load double, double* %arrayidx22, align 8, !tbaa !8
  %mul25 = fmul fast double %6, %6
  %add26 = fadd fast double %mul25, %sum.050
  %exitcond.not = icmp eq i64 %tiv.next, 2000
  br i1 %exitcond.not, label %for.cond.cleanup19, label %for.body20, !llvm.loop !97
}

; Function Attrs: inlinehint nounwind uwtable mustprogress
define internal void @diffe_Z11matvec_realPdS_(double* %mat, double* %"mat'", double* %vec, double %differeturn) #25 {
entry:
  %call = tail call noalias nonnull dereferenceable(16000) dereferenceable_or_null(16000) i8* @malloc(i64 16000) #27
  %"call'mi" = tail call noalias nonnull dereferenceable(16000) dereferenceable_or_null(16000) i8* @malloc(i64 16000) #27
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(16000) dereferenceable_or_null(16000) %"call'mi", i8 0, i64 16000, i1 false)
  %"'ipc" = bitcast i8* %"call'mi" to double*
  %0 = bitcast i8* %call to double*
  br label %for.body

for.body:                                         ; preds = %for.cond.cleanup3, %entry
  %iv = phi i64 [ %iv.next, %for.cond.cleanup3 ], [ 0, %entry ]
  %iv.next = add nuw nsw i64 %iv, 1
  %arrayidx = getelementptr inbounds double, double* %0, i64 %iv, !node !218
  store double 0.000000e+00, double* %arrayidx, align 8, !tbaa !8
  %1 = mul nuw nsw i64 %iv, 2000
  br label %for.body4

for.cond.cleanup3:                                ; preds = %for.body4
  store double %add12, double* %arrayidx, align 8, !tbaa !8
  %exitcond61.not = icmp eq i64 %iv.next, 2000
  br i1 %exitcond61.not, label %for.body20, label %for.body, !llvm.loop !95

for.body4:                                        ; preds = %for.body4, %for.body
  %iv1 = phi i64 [ %iv.next2, %for.body4 ], [ 0, %for.body ]
  %2 = phi double [ %add12, %for.body4 ], [ 0.000000e+00, %for.body ], !node !218
  %iv.next2 = add nuw nsw i64 %iv1, 1
  %3 = add nuw nsw i64 %iv1, %1
  %arrayidx6 = getelementptr inbounds double, double* %mat, i64 %3, !node !218
  %4 = load double, double* %arrayidx6, align 8, !tbaa !8, !node !218
  %arrayidx8 = getelementptr inbounds double, double* %vec, i64 %iv1, !node !218
  %5 = load double, double* %arrayidx8, align 8, !tbaa !8, !invariant.group !219, !node !218
  %mul9 = fmul fast double %5, %4, !node !218
  %add12 = fadd fast double %2, %mul9, !node !218
  %exitcond57.not = icmp eq i64 %iv.next2, 2000
  br i1 %exitcond57.not, label %for.cond.cleanup3, label %for.body4, !llvm.loop !96

for.body20:                                       ; preds = %for.cond.cleanup3, %for.body20
  %iv3 = phi i64 [ %iv.next4, %for.body20 ], [ 0, %for.cond.cleanup3 ]
  %iv.next4 = add nuw nsw i64 %iv3, 1
  %exitcond.not = icmp eq i64 %iv.next4, 2000
  br i1 %exitcond.not, label %invertfor.body20, label %for.body20, !llvm.loop !97

invertentry:                                      ; preds = %invertfor.body
  tail call void @free(i8* nonnull %"call'mi")
  tail call void @free(i8* nonnull %call)
  ret void

invertfor.body:                                   ; preds = %invertfor.body4
  store double 0.000000e+00, double* %"arrayidx'ipg_unwrap5", align 8
  %6 = icmp eq i64 %"iv'ac.0", 0
  br i1 %6, label %invertentry, label %incinvertfor.body

incinvertfor.body:                                ; preds = %invertfor.body
  %7 = add nsw i64 %"iv'ac.0", -1
  br label %invertfor.cond.cleanup3

invertfor.cond.cleanup3:                          ; preds = %invertfor.body20, %incinvertfor.body
  %"iv'ac.0" = phi i64 [ %7, %incinvertfor.body ], [ 1999, %invertfor.body20 ]
  %"arrayidx'ipg_unwrap5" = getelementptr inbounds double, double* %"'ipc", i64 %"iv'ac.0"
  %8 = load double, double* %"arrayidx'ipg_unwrap5", align 8
  store double 0.000000e+00, double* %"arrayidx'ipg_unwrap5", align 8
  br label %invertfor.body4

invertfor.body4:                                  ; preds = %incinvertfor.body4, %invertfor.cond.cleanup3
  %"iv1'ac.0" = phi i64 [ 1999, %invertfor.cond.cleanup3 ], [ %12, %incinvertfor.body4 ]
  %arrayidx8_unwrap = getelementptr inbounds double, double* %vec, i64 %"iv1'ac.0", !node !218
  %_unwrap = load double, double* %arrayidx8_unwrap, align 8, !tbaa !8, !invariant.group !219, !node !218
  %m1diffe = fmul fast double %8, %_unwrap, !node !218
  %_unwrap7 = mul nuw nsw i64 %"iv'ac.0", 2000
  %_unwrap8 = add nuw nsw i64 %"iv1'ac.0", %_unwrap7
  %"arrayidx6'ipg_unwrap" = getelementptr inbounds double, double* %"mat'", i64 %_unwrap8, !node !218
  %9 = load double, double* %"arrayidx6'ipg_unwrap", align 8, !node !218
  %10 = fadd fast double %9, %m1diffe, !node !218
  store double %10, double* %"arrayidx6'ipg_unwrap", align 8
  %11 = icmp eq i64 %"iv1'ac.0", 0
  br i1 %11, label %invertfor.body, label %incinvertfor.body4

incinvertfor.body4:                               ; preds = %invertfor.body4
  %12 = add nsw i64 %"iv1'ac.0", -1
  br label %invertfor.body4

invertfor.body20:                                 ; preds = %for.body20, %incinvertfor.body20
  %"iv3'ac.0" = phi i64 [ %17, %incinvertfor.body20 ], [ 1999, %for.body20 ]
  %arrayidx22_unwrap = getelementptr inbounds double, double* %0, i64 %"iv3'ac.0"
  %_unwrap9 = load double, double* %arrayidx22_unwrap, align 8, !tbaa !8, !invariant.group !220
  %m0diffe = fmul fast double %_unwrap9, %differeturn, !node !218
  %13 = fadd fast double %m0diffe, %m0diffe, !node !218
  %"arrayidx22'ipg_unwrap" = getelementptr inbounds double, double* %"'ipc", i64 %"iv3'ac.0", !node !218
  %14 = load double, double* %"arrayidx22'ipg_unwrap", align 8, !node !218
  %15 = fadd fast double %14, %13, !node !218
  store double %15, double* %"arrayidx22'ipg_unwrap", align 8
  %16 = icmp eq i64 %"iv3'ac.0", 0
  br i1 %16, label %invertfor.cond.cleanup3, label %incinvertfor.body20

incinvertfor.body20:                              ; preds = %invertfor.body20
  %17 = add nsw i64 %"iv3'ac.0", -1
  br label %invertfor.body20
}

attributes #0 = { norecurse nounwind readonly uwtable willreturn mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nofree nounwind }
attributes #4 = { nounwind uwtable mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { inaccessiblememonly nofree nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #7 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #8 = { norecurse uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #9 = { nobuiltin nofree allocsize(0) "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #10 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #11 = { uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #12 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #13 = { norecurse uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #14 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #15 = { noinline noreturn nounwind }
attributes #16 = { nobuiltin nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #17 = { uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #18 = { inlinehint uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #19 = { inlinehint nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #20 = { nounwind uwtable willreturn mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #21 = { argmemonly nofree nounwind readonly willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #22 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #23 = { inlinehint uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #24 = { noreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #25 = { inlinehint nounwind uwtable mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #26 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #27 = { nounwind }
attributes #28 = { builtin allocsize(0) }
attributes #29 = { noreturn nounwind }
attributes #30 = { noreturn }
attributes #31 = { builtin nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)"}
!2 = !{!3, !4, i64 0}
!3 = !{!"_ZTS7timeval", !4, i64 0, !4, i64 8}
!4 = !{!"long", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!3, !4, i64 8}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !5, i64 0}
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = distinct !{!13, !11, !12}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12}
!16 = distinct !{!16, !11, !12}
!17 = distinct !{!17, !11, !12}
!18 = !{!19, !20, i64 0}
!19 = !{!"_ZTSN5adept8internal13GradientIndexILb1EEE", !20, i64 0}
!20 = !{!"int", !5, i64 0}
!21 = !{!22, !23, i64 16}
!22 = !{!"_ZTSN5adept5ArrayILi2EdLb1EEE", !23, i64 8, !23, i64 16, !24, i64 24, !24, i64 32}
!23 = !{!"any pointer", !5, i64 0}
!24 = !{!"_ZTSN5adept14ExpressionSizeILi2EEE", !5, i64 0}
!25 = !{!20, !20, i64 0}
!26 = !{!27, !23, i64 8}
!27 = !{!"_ZTSN5adept5ArrayILi1EdLb0EEE", !23, i64 0, !23, i64 8, !28, i64 16, !28, i64 20}
!28 = !{!"_ZTSN5adept14ExpressionSizeILi1EEE", !5, i64 0}
!29 = !{!27, !23, i64 0}
!30 = distinct !{!30, !11, !12}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZN5adept5ArrayILi2EdLb1EEclIiiEENS_8internal9enable_ifIXaaeqLi2ELi2Esr15all_scalar_intsILi2ET_T0_EE5valueENS_15ActiveReferenceIdEEE4typeES5_S6_: %agg.result"}
!33 = distinct !{!33, !"_ZN5adept5ArrayILi2EdLb1EEclIiiEENS_8internal9enable_ifIXaaeqLi2ELi2Esr15all_scalar_intsILi2ET_T0_EE5valueENS_15ActiveReferenceIdEEE4typeES5_S6_"}
!34 = !{!22, !23, i64 8}
!35 = !{!36, !32}
!36 = distinct !{!36, !37, !"_ZN5adept5ArrayILi2EdLb1EE20get_scalar_referenceILb1EEENS_8internal9enable_ifIXT_ENS_15ActiveReferenceIdEEE4typeERKi: %agg.result"}
!37 = distinct !{!37, !"_ZN5adept5ArrayILi2EdLb1EE20get_scalar_referenceILb1EEENS_8internal9enable_ifIXT_ENS_15ActiveReferenceIdEEE4typeERKi"}
!38 = !{!23, !23, i64 0}
!39 = !{!40, !20, i64 24}
!40 = !{!"_ZTSN5adept8internal16StackStorageOrigE", !23, i64 0, !23, i64 8, !23, i64 16, !20, i64 24, !20, i64 28, !20, i64 32, !20, i64 36}
!41 = !{!40, !20, i64 28}
!42 = !{!40, !23, i64 0}
!43 = !{!44, !20, i64 0}
!44 = !{!"_ZTSN5adept8internal9StatementE", !20, i64 0, !20, i64 4}
!45 = !{!40, !20, i64 32}
!46 = !{!44, !20, i64 4}
!47 = distinct !{!47, !11, !12}
!48 = distinct !{!48, !11, !12}
!49 = !{!50, !23, i64 0}
!50 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !23, i64 0, !23, i64 8, !23, i64 16}
!51 = !{!50, !23, i64 8}
!52 = !{!53, !57, i64 144}
!53 = !{!"_ZTSN5adept5StackE", !23, i64 40, !54, i64 48, !54, i64 72, !55, i64 96, !56, i64 120, !20, i64 128, !20, i64 132, !20, i64 136, !20, i64 140, !57, i64 144, !57, i64 145, !57, i64 146, !57, i64 147, !57, i64 148}
!54 = !{!"_ZTSSt6vectorIiSaIiEE"}
!55 = !{!"_ZTSNSt7__cxx114listIN5adept3GapESaIS2_EEE"}
!56 = !{!"_ZTSSt14_List_iteratorIN5adept3GapEE", !23, i64 0}
!57 = !{!"bool", !5, i64 0}
!58 = !{!53, !20, i64 128}
!59 = !{!53, !20, i64 136}
!60 = !{!61, !20, i64 8}
!61 = !{!"_ZTSN5adept6ActiveIdEE", !9, i64 0, !20, i64 8}
!62 = distinct !{!62, !11, !12}
!63 = distinct !{!63, !11, !12}
!64 = !{!65}
!65 = distinct !{!65, !66, !"_ZN5adept5ArrayILi2EdLb1EEclIiiEENS_8internal9enable_ifIXaaeqLi2ELi2Esr15all_scalar_intsILi2ET_T0_EE5valueENS_15ActiveReferenceIdEEE4typeES5_S6_: %agg.result"}
!66 = distinct !{!66, !"_ZN5adept5ArrayILi2EdLb1EEclIiiEENS_8internal9enable_ifIXaaeqLi2ELi2Esr15all_scalar_intsILi2ET_T0_EE5valueENS_15ActiveReferenceIdEEE4typeES5_S6_"}
!67 = !{!68, !65}
!68 = distinct !{!68, !69, !"_ZN5adept5ArrayILi2EdLb1EE20get_scalar_referenceILb1EEENS_8internal9enable_ifIXT_ENS_15ActiveReferenceIdEEE4typeERKi: %agg.result"}
!69 = distinct !{!69, !"_ZN5adept5ArrayILi2EdLb1EE20get_scalar_referenceILb1EEENS_8internal9enable_ifIXT_ENS_15ActiveReferenceIdEEE4typeERKi"}
!70 = distinct !{!70, !11, !12}
!71 = distinct !{!71, !11, !12}
!72 = !{!73}
!73 = distinct !{!73, !74, !"_ZN5adept5ArrayILi2EdLb1EEclIiiEENS_8internal9enable_ifIXaaeqLi2ELi2Esr15all_scalar_intsILi2ET_T0_EE5valueENS_15ActiveReferenceIdEEE4typeES5_S6_: %agg.result"}
!74 = distinct !{!74, !"_ZN5adept5ArrayILi2EdLb1EEclIiiEENS_8internal9enable_ifIXaaeqLi2ELi2Esr15all_scalar_intsILi2ET_T0_EE5valueENS_15ActiveReferenceIdEEE4typeES5_S6_"}
!75 = distinct !{!75, !11, !12}
!76 = distinct !{!76, !11, !12}
!77 = !{!78, !73}
!78 = distinct !{!78, !79, !"_ZN5adept5ArrayILi2EdLb1EE20get_scalar_referenceILb1EEENS_8internal9enable_ifIXT_ENS_15ActiveReferenceIdEEE4typeERKi: %agg.result"}
!79 = distinct !{!79, !"_ZN5adept5ArrayILi2EdLb1EE20get_scalar_referenceILb1EEENS_8internal9enable_ifIXT_ENS_15ActiveReferenceIdEEE4typeERKi"}
!80 = !{!81}
!81 = distinct !{!81, !82, !"_ZN5adept5ArrayILi2EdLb1EEclIiiEENS_8internal9enable_ifIXaaeqLi2ELi2Esr15all_scalar_intsILi2ET_T0_EE5valueENS_15ActiveReferenceIdEEE4typeES5_S6_: %agg.result"}
!82 = distinct !{!82, !"_ZN5adept5ArrayILi2EdLb1EEclIiiEENS_8internal9enable_ifIXaaeqLi2ELi2Esr15all_scalar_intsILi2ET_T0_EE5valueENS_15ActiveReferenceIdEEE4typeES5_S6_"}
!83 = !{!84, !81}
!84 = distinct !{!84, !85, !"_ZN5adept5ArrayILi2EdLb1EE20get_scalar_referenceILb1EEENS_8internal9enable_ifIXT_ENS_15ActiveReferenceIdEEE4typeERKi: %agg.result"}
!85 = distinct !{!85, !"_ZN5adept5ArrayILi2EdLb1EE20get_scalar_referenceILb1EEENS_8internal9enable_ifIXT_ENS_15ActiveReferenceIdEEE4typeERKi"}
!86 = distinct !{!86, !11, !12}
!87 = distinct !{!87, !11, !12}
!88 = !{!89}
!89 = distinct !{!89, !90, !"_ZN5adept5ArrayILi2EdLb1EEclIiiEENS_8internal9enable_ifIXaaeqLi2ELi2Esr15all_scalar_intsILi2ET_T0_EE5valueENS_15ActiveReferenceIdEEE4typeES5_S6_: %agg.result"}
!90 = distinct !{!90, !"_ZN5adept5ArrayILi2EdLb1EEclIiiEENS_8internal9enable_ifIXaaeqLi2ELi2Esr15all_scalar_intsILi2ET_T0_EE5valueENS_15ActiveReferenceIdEEE4typeES5_S6_"}
!91 = !{!92, !89}
!92 = distinct !{!92, !93, !"_ZN5adept5ArrayILi2EdLb1EE20get_scalar_referenceILb1EEENS_8internal9enable_ifIXT_ENS_15ActiveReferenceIdEEE4typeERKi: %agg.result"}
!93 = distinct !{!93, !"_ZN5adept5ArrayILi2EdLb1EE20get_scalar_referenceILb1EEENS_8internal9enable_ifIXT_ENS_15ActiveReferenceIdEEE4typeERKi"}
!94 = distinct !{!94, !11, !12}
!95 = distinct !{!95, !11, !12}
!96 = distinct !{!96, !11, !12}
!97 = distinct !{!97, !11, !12}
!98 = distinct !{!98, !11, !12}
!99 = distinct !{!99, !11, !12}
!100 = distinct !{!100, !11, !12}
!101 = distinct !{!101, !11, !12}
!102 = distinct !{!102, !11, !12}
!103 = distinct !{!103, !11, !12}
!104 = distinct !{!104, !11, !12}
!105 = !{!106, !23, i64 8}
!106 = !{!"_ZTSNSt8__detail15_List_node_baseE", !23, i64 0, !23, i64 8}
!107 = !{!106, !23, i64 0}
!108 = !{!109, !4, i64 16}
!109 = !{!"_ZTSNSt8__detail17_List_node_headerE", !4, i64 16}
!110 = !{!53, !57, i64 146}
!111 = !{!53, !57, i64 147}
!112 = !{!53, !57, i64 148}
!113 = !{!40, !23, i64 8}
!114 = !{!40, !23, i64 16}
!115 = !{!40, !20, i64 36}
!116 = distinct !{!116, !11, !12}
!117 = !{!118}
!118 = distinct !{!118, !119, !"_ZN5adept5ArrayILi1EdLb1EEclIiEENS_8internal9enable_ifIXaaaaeqLi1ELi1Esr15all_scalar_intsILi1ET_EE5valueLb1EENS_15ActiveReferenceIdEEE4typeES5_: %agg.result"}
!119 = distinct !{!119, !"_ZN5adept5ArrayILi1EdLb1EEclIiEENS_8internal9enable_ifIXaaaaeqLi1ELi1Esr15all_scalar_intsILi1ET_EE5valueLb1EENS_15ActiveReferenceIdEEE4typeES5_"}
!120 = !{!121, !23, i64 8}
!121 = !{!"_ZTSN5adept5ArrayILi1EdLb1EEE", !23, i64 8, !23, i64 16, !28, i64 24, !28, i64 28}
!122 = !{!123, !20, i64 8}
!123 = !{!"_ZTSN5adept15ActiveReferenceIdEE", !23, i64 0, !20, i64 8}
!124 = !{!125}
!125 = distinct !{!125, !126, !"_ZN5adept5ArrayILi1EdLb1EEclIiEENS_8internal9enable_ifIXaaaaeqLi1ELi1Esr15all_scalar_intsILi1ET_EE5valueLb1EENS_15ActiveReferenceIdEEE4typeES5_: %agg.result"}
!126 = distinct !{!126, !"_ZN5adept5ArrayILi1EdLb1EEclIiEENS_8internal9enable_ifIXaaaaeqLi1ELi1Esr15all_scalar_intsILi1ET_EE5valueLb1EENS_15ActiveReferenceIdEEE4typeES5_"}
!127 = !{!128}
!128 = distinct !{!128, !129, !"_ZN5adeptplINS_6ActiveIdEENS_8internal15BinaryOperationIdNS_15ActiveReferenceIdEENS3_8MultiplyES6_EEEENS3_9enable_ifIXsr8internal15rank_compatibleIXsrT_4rankEXsrT0_4rankEEE5valueENS4_INS3_7promoteINSA_4typeENSB_4typeEE4typeESA_NS3_3AddESB_EEE4typeERKNS_10ExpressionISD_SA_EERKNSL_ISE_SB_EE: %agg.result"}
!129 = distinct !{!129, !"_ZN5adeptplINS_6ActiveIdEENS_8internal15BinaryOperationIdNS_15ActiveReferenceIdEENS3_8MultiplyES6_EEEENS3_9enable_ifIXsr8internal15rank_compatibleIXsrT_4rankEXsrT0_4rankEEE5valueENS4_INS3_7promoteINSA_4typeENSB_4typeEE4typeESA_NS3_3AddESB_EEE4typeERKNS_10ExpressionISD_SA_EERKNSL_ISE_SB_EE"}
!130 = distinct !{!130, !11, !12}
!131 = !{!121, !23, i64 16}
!132 = !{!53, !20, i64 140}
!133 = !{!134, !20, i64 4}
!134 = !{!"_ZTSN5adept3GapE", !20, i64 0, !20, i64 4}
!135 = !{!134, !20, i64 0}
!136 = !{!56, !23, i64 0}
!137 = !{i64 0, i64 8, !38}
!138 = !{!139, !4, i64 16}
!139 = !{!"_ZTSNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EEE", !140, i64 0}
!140 = !{!"_ZTSNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EE10_List_implE", !109, i64 0}
!141 = distinct !{!141, !11, !12}
!142 = !{!143, !23, i64 0}
!143 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!144 = !{!145}
!145 = distinct !{!145, !146, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: %agg.result"}
!146 = distinct !{!146, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!147 = !{!148, !23, i64 0}
!148 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !143, i64 0, !4, i64 8, !5, i64 16}
!149 = !{!5, !5, i64 0}
!150 = !{!148, !4, i64 8}
!151 = !{!57, !57, i64 0}
!152 = !{i8 0, i8 2}
!153 = distinct !{!153, !11, !12}
!154 = !{!155, !23, i64 0}
!155 = !{!"_ZTSN5adept7StorageIdEE", !23, i64 0, !20, i64 8, !20, i64 12, !20, i64 16}
!156 = !{!155, !20, i64 16}
!157 = !{!155, !20, i64 12}
!158 = !{!159}
!159 = distinct !{!159, !160, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: %agg.result"}
!160 = distinct !{!160, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!161 = !{!162, !162, i64 0}
!162 = !{!"vtable pointer", !6, i64 0}
!163 = !{!164, !166, i64 32}
!164 = !{!"_ZTSSt8ios_base", !4, i64 8, !4, i64 16, !165, i64 24, !166, i64 28, !166, i64 32, !23, i64 40, !167, i64 48, !5, i64 64, !20, i64 192, !23, i64 200, !168, i64 208}
!165 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!166 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!167 = !{!"_ZTSNSt8ios_base6_WordsE", !23, i64 0, !4, i64 8}
!168 = !{!"_ZTSSt6locale", !23, i64 0}
!169 = !{!170, !4, i64 8}
!170 = !{!"_ZTSSi", !4, i64 8}
!171 = !{!4, !4, i64 0}
!172 = !{!155, !20, i64 8}
!173 = !{!174}
!174 = distinct !{!174, !175, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: %agg.result"}
!175 = distinct !{!175, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!176 = distinct !{!176, !11, !12}
!177 = !{!61, !9, i64 0}
!178 = !{!179}
!179 = distinct !{!179, !180, !"_ZN5adept8internal13promote_arrayIdLi2EdLb1EEENS_5ArrayIXT0_ET_XT2_EEERKNS2_IXT0_ET1_XT2_EEE: %agg.result"}
!180 = distinct !{!180, !"_ZN5adept8internal13promote_arrayIdLi2EdLb1EEENS_5ArrayIXT0_ET_XT2_EEERKNS2_IXT0_ET1_XT2_EEE"}
!181 = !{!182}
!182 = distinct !{!182, !183, !"_ZN5adept8internal13promote_arrayIdLi1EdLb0EEENS_5ArrayIXT0_ET_XT2_EEERKNS2_IXT0_ET1_XT2_EEE: %agg.result"}
!183 = distinct !{!183, !"_ZN5adept8internal13promote_arrayIdLi1EdLb0EEENS_5ArrayIXT0_ET_XT2_EEERKNS2_IXT0_ET1_XT2_EEE"}
!184 = distinct !{!184, !11, !12}
!185 = distinct !{!185, !11, !12}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: %agg.result"}
!188 = distinct !{!188, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: %agg.result"}
!191 = distinct !{!191, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: %agg.result"}
!194 = distinct !{!194, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!195 = distinct !{!195, !11, !12}
!196 = !{!197}
!197 = distinct !{!197, !198, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: %agg.result"}
!198 = distinct !{!198, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!199 = !{!200}
!200 = distinct !{!200, !201, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: %agg.result"}
!201 = distinct !{!201, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!202 = !{!203}
!203 = distinct !{!203, !204, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_: %agg.result"}
!204 = distinct !{!204, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_"}
!205 = distinct !{!205, !11, !12}
!206 = distinct !{!206, !11, !12}
!207 = distinct !{!207, !11, !12}
!208 = distinct !{!208, !11, !12}
!209 = !{!210, !23, i64 0}
!210 = !{!"_ZTSN5adept8internal15BinaryOperationIdNS_6ActiveIdEENS0_3AddENS1_IdNS_15ActiveReferenceIdEENS0_8MultiplyES6_EEEE", !23, i64 0, !211, i64 8}
!211 = !{!"_ZTSN5adept8internal15BinaryOperationIdNS_15ActiveReferenceIdEENS0_8MultiplyES3_EE", !23, i64 0, !23, i64 8}
!212 = !{!211, !23, i64 0}
!213 = !{!123, !23, i64 0}
!214 = !{!211, !23, i64 8}
!215 = !{!53, !23, i64 40}
!216 = distinct !{!216, !11, !12}
!217 = distinct !{!217, !11, !12}
!218 = !{!"true"}
!219 = distinct !{}
!220 = distinct !{}
