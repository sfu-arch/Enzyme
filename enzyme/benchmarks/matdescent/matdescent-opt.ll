; ModuleID = 'matdescent-raw.ll'
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
define dso_local double @_Z11matvec_realPdS_(double* nocapture readonly %mat, double* nocapture readonly %vec) local_unnamed_addr #4 {
entry:
  %call = tail call noalias dereferenceable_or_null(16000) i8* @malloc(i64 16000) #27
  %0 = bitcast i8* %call to double*
  br label %for.body

for.body:                                         ; preds = %middle.block, %entry
  %indvars.iv58 = phi i64 [ 0, %entry ], [ %indvars.iv.next59, %middle.block ]
  %arrayidx = getelementptr inbounds double, double* %0, i64 %indvars.iv58
  store double 0.000000e+00, double* %arrayidx, align 8, !tbaa !8
  %1 = mul nuw nsw i64 %indvars.iv58, 2000
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %for.body
  %index = phi i64 [ 0, %for.body ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x double> [ zeroinitializer, %for.body ], [ %13, %vector.body ]
  %vec.phi1 = phi <2 x double> [ zeroinitializer, %for.body ], [ %14, %vector.body ]
  %2 = add nuw nsw i64 %index, %1
  %3 = getelementptr inbounds double, double* %mat, i64 %2
  %4 = bitcast double* %3 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %4, align 8, !tbaa !8
  %5 = getelementptr inbounds double, double* %3, i64 2
  %6 = bitcast double* %5 to <2 x double>*
  %wide.load2 = load <2 x double>, <2 x double>* %6, align 8, !tbaa !8
  %7 = getelementptr inbounds double, double* %vec, i64 %index
  %8 = bitcast double* %7 to <2 x double>*
  %wide.load3 = load <2 x double>, <2 x double>* %8, align 8, !tbaa !8
  %9 = getelementptr inbounds double, double* %7, i64 2
  %10 = bitcast double* %9 to <2 x double>*
  %wide.load4 = load <2 x double>, <2 x double>* %10, align 8, !tbaa !8
  %11 = fmul fast <2 x double> %wide.load3, %wide.load
  %12 = fmul fast <2 x double> %wide.load4, %wide.load2
  %13 = fadd fast <2 x double> %11, %vec.phi
  %14 = fadd fast <2 x double> %12, %vec.phi1
  %index.next = add i64 %index, 4
  %15 = icmp eq i64 %index.next, 2000
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <2 x double> %14, %13
  %16 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx)
  store double %16, double* %arrayidx, align 8, !tbaa !8
  %indvars.iv.next59 = add nuw nsw i64 %indvars.iv58, 1
  %exitcond61.not = icmp eq i64 %indvars.iv.next59, 2000
  br i1 %exitcond61.not, label %vector.body7, label %for.body, !llvm.loop !14

vector.body7:                                     ; preds = %middle.block, %vector.body7
  %index9 = phi i64 [ %index.next10, %vector.body7 ], [ 0, %middle.block ]
  %vec.phi13 = phi <2 x double> [ %23, %vector.body7 ], [ zeroinitializer, %middle.block ]
  %vec.phi14 = phi <2 x double> [ %24, %vector.body7 ], [ zeroinitializer, %middle.block ]
  %17 = getelementptr inbounds double, double* %0, i64 %index9
  %18 = bitcast double* %17 to <2 x double>*
  %wide.load15 = load <2 x double>, <2 x double>* %18, align 8, !tbaa !8
  %19 = getelementptr inbounds double, double* %17, i64 2
  %20 = bitcast double* %19 to <2 x double>*
  %wide.load16 = load <2 x double>, <2 x double>* %20, align 8, !tbaa !8
  %21 = fmul fast <2 x double> %wide.load15, %wide.load15
  %22 = fmul fast <2 x double> %wide.load16, %wide.load16
  %23 = fadd fast <2 x double> %21, %vec.phi13
  %24 = fadd fast <2 x double> %22, %vec.phi14
  %index.next10 = add i64 %index9, 4
  %25 = icmp eq i64 %index.next10, 2000
  br i1 %25, label %middle.block5, label %vector.body7, !llvm.loop !15

middle.block5:                                    ; preds = %vector.body7
  %bin.rdx17 = fadd fast <2 x double> %24, %23
  %26 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx17)
  tail call void @free(i8* nonnull %call) #27
  ret double %26
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: inaccessiblememonly nofree nounwind willreturn
declare dso_local noalias noundef i8* @malloc(i64) local_unnamed_addr #6

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable mustprogress
define dso_local void @_Z13matvec_real_bPdS_S_d(double* nocapture readonly %mat, double* nocapture %matb, double* nocapture readonly %vec, double %matvec_realb) local_unnamed_addr #4 {
entry:
  %call = tail call noalias dereferenceable_or_null(16000) i8* @malloc(i64 16000) #27
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16000) %call, i8 0, i64 16000, i1 false)
  %call1 = tail call noalias dereferenceable_or_null(16000) i8* @malloc(i64 16000) #27
  %0 = bitcast i8* %call1 to double*
  br label %for.body4

for.cond28.preheader:                             ; preds = %middle.block
  %1 = bitcast i8* %call to double*
  %mul36 = fmul fast double %matvec_realb, 2.000000e+00
  %broadcast.splatinsert = insertelement <2 x double> poison, double %mul36, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert20 = insertelement <2 x double> poison, double %mul36, i32 0
  %broadcast.splat21 = shufflevector <2 x double> %broadcast.splatinsert20, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body7

vector.body7:                                     ; preds = %vector.body7, %for.cond28.preheader
  %index9 = phi i64 [ 0, %for.cond28.preheader ], [ %index.next10, %vector.body7 ]
  %offset.idx = sub i64 2000, %index9
  %2 = getelementptr inbounds double, double* %1, i64 %offset.idx
  %3 = getelementptr inbounds double, double* %2, i64 -1
  %4 = bitcast double* %3 to <2 x double>*
  %wide.load13 = load <2 x double>, <2 x double>* %4, align 8, !tbaa !8
  %reverse = shufflevector <2 x double> %wide.load13, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %5 = getelementptr inbounds double, double* %2, i64 -2
  %6 = getelementptr inbounds double, double* %5, i64 -1
  %7 = bitcast double* %6 to <2 x double>*
  %wide.load14 = load <2 x double>, <2 x double>* %7, align 8, !tbaa !8
  %reverse15 = shufflevector <2 x double> %wide.load14, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %8 = getelementptr inbounds double, double* %0, i64 %offset.idx
  %9 = getelementptr inbounds double, double* %8, i64 -1
  %10 = bitcast double* %9 to <2 x double>*
  %wide.load16 = load <2 x double>, <2 x double>* %10, align 8, !tbaa !8
  %reverse17 = shufflevector <2 x double> %wide.load16, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %11 = getelementptr inbounds double, double* %8, i64 -2
  %12 = getelementptr inbounds double, double* %11, i64 -1
  %13 = bitcast double* %12 to <2 x double>*
  %wide.load18 = load <2 x double>, <2 x double>* %13, align 8, !tbaa !8
  %reverse19 = shufflevector <2 x double> %wide.load18, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %14 = fmul fast <2 x double> %broadcast.splat, %reverse17
  %15 = fmul fast <2 x double> %broadcast.splat21, %reverse19
  %16 = fadd fast <2 x double> %14, %reverse
  %17 = fadd fast <2 x double> %15, %reverse15
  %reverse22 = shufflevector <2 x double> %16, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %18 = bitcast double* %3 to <2 x double>*
  store <2 x double> %reverse22, <2 x double>* %18, align 8, !tbaa !8
  %reverse23 = shufflevector <2 x double> %17, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %19 = bitcast double* %6 to <2 x double>*
  store <2 x double> %reverse23, <2 x double>* %19, align 8, !tbaa !8
  %index.next10 = add i64 %index9, 4
  %20 = icmp eq i64 %index.next10, 2000
  br i1 %20, label %for.body31, label %vector.body7, !llvm.loop !16

for.body4:                                        ; preds = %middle.block, %entry
  %indvars.iv138 = phi i64 [ 0, %entry ], [ %indvars.iv.next139, %middle.block ]
  %arrayidx6 = getelementptr inbounds double, double* %0, i64 %indvars.iv138
  store double 0.000000e+00, double* %arrayidx6, align 8, !tbaa !8
  %21 = mul nuw nsw i64 %indvars.iv138, 2000
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %for.body4
  %index = phi i64 [ 0, %for.body4 ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x double> [ zeroinitializer, %for.body4 ], [ %33, %vector.body ]
  %vec.phi1 = phi <2 x double> [ zeroinitializer, %for.body4 ], [ %34, %vector.body ]
  %22 = add nuw nsw i64 %index, %21
  %23 = getelementptr inbounds double, double* %mat, i64 %22
  %24 = bitcast double* %23 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %24, align 8, !tbaa !8
  %25 = getelementptr inbounds double, double* %23, i64 2
  %26 = bitcast double* %25 to <2 x double>*
  %wide.load2 = load <2 x double>, <2 x double>* %26, align 8, !tbaa !8
  %27 = getelementptr inbounds double, double* %vec, i64 %index
  %28 = bitcast double* %27 to <2 x double>*
  %wide.load3 = load <2 x double>, <2 x double>* %28, align 8, !tbaa !8
  %29 = getelementptr inbounds double, double* %27, i64 2
  %30 = bitcast double* %29 to <2 x double>*
  %wide.load4 = load <2 x double>, <2 x double>* %30, align 8, !tbaa !8
  %31 = fmul fast <2 x double> %wide.load3, %wide.load
  %32 = fmul fast <2 x double> %wide.load4, %wide.load2
  %33 = fadd fast <2 x double> %31, %vec.phi
  %34 = fadd fast <2 x double> %32, %vec.phi1
  %index.next = add i64 %index, 4
  %35 = icmp eq i64 %index.next, 2000
  br i1 %35, label %middle.block, label %vector.body, !llvm.loop !17

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <2 x double> %34, %33
  %36 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx)
  store double %36, double* %arrayidx6, align 8, !tbaa !8
  %indvars.iv.next139 = add nuw nsw i64 %indvars.iv138, 1
  %exitcond141.not = icmp eq i64 %indvars.iv.next139, 2000
  br i1 %exitcond141.not, label %for.cond28.preheader, label %for.body4, !llvm.loop !18

for.body31:                                       ; preds = %vector.body7, %for.body31
  %indvars.iv133 = phi i64 [ %indvars.iv.next134, %for.body31 ], [ 0, %vector.body7 ]
  %arrayidx33 = getelementptr inbounds double, double* %1, i64 %indvars.iv133
  %37 = load double, double* %arrayidx33, align 8, !tbaa !8
  %arrayidx35 = getelementptr inbounds double, double* %0, i64 %indvars.iv133
  %38 = load double, double* %arrayidx35, align 8, !tbaa !8
  %mul37 = fmul fast double %mul36, %38
  %add38 = fadd fast double %mul37, %37
  store double %add38, double* %arrayidx33, align 8, !tbaa !8
  %indvars.iv.next134 = add nsw i64 %indvars.iv133, -1
  %cmp29.not = icmp eq i64 %indvars.iv133, 0
  br i1 %cmp29.not, label %for.cond49.preheader.preheader, label %for.body31, !llvm.loop !19

for.cond49.preheader.preheader:                   ; preds = %for.body31
  %scevgep33 = getelementptr double, double* %vec, i64 2001
  br label %for.cond49.preheader

for.cond49.preheader:                             ; preds = %for.cond49.preheader.preheader, %for.cond.cleanup51
  %indvar = phi i64 [ 0, %for.cond49.preheader.preheader ], [ %indvar.next, %for.cond.cleanup51 ]
  %indvars.iv130 = phi i64 [ 2000, %for.cond49.preheader.preheader ], [ %indvars.iv.next131, %for.cond.cleanup51 ]
  %39 = mul nsw i64 %indvar, -2000
  %40 = mul nuw nsw i64 %indvars.iv130, 2000
  %arrayidx60 = getelementptr inbounds double, double* %1, i64 %indvars.iv130
  %41 = load double, double* %arrayidx60, align 8, !tbaa !8
  %42 = add i64 %39, 4002001
  %scevgep30 = getelementptr double, double* %matb, i64 %42
  %43 = add i64 %39, 4000000
  %scevgep = getelementptr double, double* %matb, i64 %43
  %bound0 = icmp ult double* %scevgep, %scevgep33
  %bound1 = icmp ugt double* %scevgep30, %vec
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body52.preheader, label %vector.ph28

for.body52.preheader:                             ; preds = %vector.body26, %for.cond49.preheader
  %indvars.iv.ph = phi i64 [ 2000, %for.cond49.preheader ], [ 0, %vector.body26 ]
  br label %for.body52

vector.ph28:                                      ; preds = %for.cond49.preheader
  %broadcast.splatinsert48 = insertelement <2 x double> poison, double %41, i32 0
  %broadcast.splat49 = shufflevector <2 x double> %broadcast.splatinsert48, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert50 = insertelement <2 x double> poison, double %41, i32 0
  %broadcast.splat51 = shufflevector <2 x double> %broadcast.splatinsert50, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body26

vector.body26:                                    ; preds = %vector.body26, %vector.ph28
  %index35 = phi i64 [ 0, %vector.ph28 ], [ %index.next36, %vector.body26 ]
  %offset.idx39 = sub i64 2000, %index35
  %44 = add nuw nsw i64 %offset.idx39, %40
  %45 = getelementptr inbounds double, double* %matb, i64 %44
  %46 = getelementptr inbounds double, double* %45, i64 -1
  %47 = bitcast double* %46 to <2 x double>*
  %wide.load40 = load <2 x double>, <2 x double>* %47, align 8, !tbaa !8, !alias.scope !20, !noalias !23
  %reverse41 = shufflevector <2 x double> %wide.load40, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %48 = getelementptr inbounds double, double* %45, i64 -2
  %49 = getelementptr inbounds double, double* %48, i64 -1
  %50 = bitcast double* %49 to <2 x double>*
  %wide.load42 = load <2 x double>, <2 x double>* %50, align 8, !tbaa !8, !alias.scope !20, !noalias !23
  %reverse43 = shufflevector <2 x double> %wide.load42, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %51 = getelementptr inbounds double, double* %vec, i64 %offset.idx39
  %52 = getelementptr inbounds double, double* %51, i64 -1
  %53 = bitcast double* %52 to <2 x double>*
  %wide.load44 = load <2 x double>, <2 x double>* %53, align 8, !tbaa !8, !alias.scope !23
  %reverse45 = shufflevector <2 x double> %wide.load44, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %54 = getelementptr inbounds double, double* %51, i64 -2
  %55 = getelementptr inbounds double, double* %54, i64 -1
  %56 = bitcast double* %55 to <2 x double>*
  %wide.load46 = load <2 x double>, <2 x double>* %56, align 8, !tbaa !8, !alias.scope !23
  %reverse47 = shufflevector <2 x double> %wide.load46, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %57 = fmul fast <2 x double> %reverse45, %broadcast.splat49
  %58 = fmul fast <2 x double> %reverse47, %broadcast.splat51
  %59 = fadd fast <2 x double> %57, %reverse41
  %60 = fadd fast <2 x double> %58, %reverse43
  %reverse52 = shufflevector <2 x double> %59, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %61 = bitcast double* %46 to <2 x double>*
  store <2 x double> %reverse52, <2 x double>* %61, align 8, !tbaa !8, !alias.scope !20, !noalias !23
  %reverse53 = shufflevector <2 x double> %60, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %62 = bitcast double* %49 to <2 x double>*
  store <2 x double> %reverse53, <2 x double>* %62, align 8, !tbaa !8, !alias.scope !20, !noalias !23
  %index.next36 = add i64 %index35, 4
  %63 = icmp eq i64 %index.next36, 2000
  br i1 %63, label %for.body52.preheader, label %vector.body26, !llvm.loop !25

for.cond.cleanup46:                               ; preds = %for.cond.cleanup51
  tail call void @free(i8* %call1) #27
  tail call void @free(i8* %call) #27
  ret void

for.cond.cleanup51:                               ; preds = %for.body52
  %indvars.iv.next131 = add nsw i64 %indvars.iv130, -1
  %cmp45.not = icmp eq i64 %indvars.iv130, 0
  %indvar.next = add i64 %indvar, 1
  br i1 %cmp45.not, label %for.cond.cleanup46, label %for.cond49.preheader, !llvm.loop !26

for.body52:                                       ; preds = %for.body52.preheader, %for.body52
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body52 ], [ %indvars.iv.ph, %for.body52.preheader ]
  %64 = add nuw nsw i64 %indvars.iv, %40
  %arrayidx56 = getelementptr inbounds double, double* %matb, i64 %64
  %65 = load double, double* %arrayidx56, align 8, !tbaa !8
  %arrayidx58 = getelementptr inbounds double, double* %vec, i64 %indvars.iv
  %66 = load double, double* %arrayidx58, align 8, !tbaa !8
  %mul61 = fmul fast double %66, %41
  %add62 = fadd fast double %mul61, %65
  store double %add62, double* %arrayidx56, align 8, !tbaa !8
  %indvars.iv.next = add nsw i64 %indvars.iv, -1
  %cmp50.not = icmp eq i64 %indvars.iv, 0
  br i1 %cmp50.not, label %for.cond.cleanup51, label %for.body52, !llvm.loop !27
}

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
  br i1 %exitcond153.not, label %for.body8.preheader, label %for.body, !llvm.loop !28

for.body8.preheader:                              ; preds = %for.body
  %3 = bitcast i8* %call2 to double*
  br label %for.body8

for.cond.cleanup7:                                ; preds = %for.body8
  %4 = bitcast i8* %call1 to double*
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
  store i32 -9999, i32* %value_.i.i.i, align 8, !tbaa !29
  %storage_.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %mat.i, i64 0, i32 2
  store %"class.adept::Storage"* null, %"class.adept::Storage"** %storage_.i.i, align 8, !tbaa !32
  %9 = bitcast [7 x i32]* %dim.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %9) #27
  %arrayinit.begin.i.i.i = getelementptr inbounds [7 x i32], [7 x i32]* %dim.i.i.i, i64 0, i64 0
  store i32 2000, i32* %arrayinit.begin.i.i.i, align 16, !tbaa !36
  %arrayinit.element.i.i.i = getelementptr inbounds [7 x i32], [7 x i32]* %dim.i.i.i, i64 0, i64 1
  store i32 2000, i32* %arrayinit.element.i.i.i, align 4, !tbaa !36
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
  store %"class.adept::Storage"* null, %"class.adept::Storage"** %storage_.i24.i, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %9) #27
  store i32 2000, i32* %arrayinit.begin.i.i.i, align 16, !tbaa !36
  %14 = bitcast i32* %arrayinit.element.i.i.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(24) %14, i8 -1, i64 24, i1 false)
  invoke void @_ZN5adept5ArrayILi1EdLb0EE6resizeEPKib(%"class.adept::Array.4"* nonnull dereferenceable(24) %vec.i, i32* nonnull %arrayinit.begin.i.i.i, i1 zeroext false)
          to label %_ZN5adept5ArrayILi1EdLb0EEC2Ei.exit.i unwind label %lpad14.i

_ZN5adept5ArrayILi1EdLb0EEC2Ei.exit.i:            ; preds = %for.cond.cleanup.i
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %9) #27
  %data_.i.i = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %vec.i, i64 0, i32 0
  %15 = load double*, double** %data_.i.i, align 8, !tbaa !40
  %arrayidx.i4.i.i = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %vec.i, i64 0, i32 3, i32 0, i64 0
  %16 = load i32, i32* %arrayidx.i4.i.i, align 4, !tbaa !36
  %17 = sext i32 %16 to i64
  %ident.check.not = icmp eq i32 %16, 1
  br i1 %ident.check.not, label %vector.body, label %for.body20.i

vector.body:                                      ; preds = %_ZN5adept5ArrayILi1EdLb0EEC2Ei.exit.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %_ZN5adept5ArrayILi1EdLb0EEC2Ei.exit.i ]
  %18 = getelementptr inbounds double, double* %3, i64 %index
  %19 = bitcast double* %18 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %19, align 8, !tbaa !8
  %20 = getelementptr inbounds double, double* %18, i64 2
  %21 = bitcast double* %20 to <2 x double>*
  %wide.load18 = load <2 x double>, <2 x double>* %21, align 8, !tbaa !8
  %22 = mul nsw i64 %index, %17
  %23 = getelementptr inbounds double, double* %15, i64 %22
  %24 = bitcast double* %23 to <2 x double>*
  store <2 x double> %wide.load, <2 x double>* %24, align 8, !tbaa !8
  %25 = getelementptr inbounds double, double* %23, i64 2
  %26 = bitcast double* %25 to <2 x double>*
  store <2 x double> %wide.load18, <2 x double>* %26, align 8, !tbaa !8
  %index.next = add i64 %index, 4
  %27 = icmp eq i64 %index.next, 2000
  br i1 %27, label %for.cond.cleanup19.i, label %vector.body, !llvm.loop !41

lpad.i:                                           ; preds = %for.cond.cleanup7
  %28 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup63.i

for.cond.cleanup3.i:                              ; preds = %invoke.cont8.i
  %indvars.iv.next312.i = add nuw nsw i64 %indvars.iv311.i, 1
  %exitcond314.not.i = icmp eq i64 %indvars.iv.next312.i, 2000
  br i1 %exitcond314.not.i, label %for.cond.cleanup.i, label %for.cond1.preheader.i, !llvm.loop !42

invoke.cont6.i:                                   ; preds = %invoke.cont8.i, %for.cond1.preheader.i
  %indvars.iv307.i = phi i64 [ 0, %for.cond1.preheader.i ], [ %indvars.iv.next308.i, %invoke.cont8.i ]
  %29 = load i32, i32* %arrayidx.i13.i.i, align 8, !tbaa !36, !noalias !43
  %mul.i.i = mul nsw i32 %29, %12
  %30 = load i32, i32* %arrayidx.i11.i.i, align 4, !tbaa !36, !noalias !43
  %31 = trunc i64 %indvars.iv307.i to i32
  %mul9.i.i = mul nsw i32 %30, %31
  %add.i.i = add nsw i32 %mul9.i.i, %mul.i.i
  %32 = load double*, double** %data_.i.i.i, align 8, !tbaa !46, !noalias !47
  %idxprom.i.i.i = sext i32 %add.i.i to i64
  %arrayidx.i10.i.i = getelementptr inbounds double, double* %32, i64 %idxprom.i.i.i
  %33 = load i32, i32* %value_.i.i.i, align 8, !tbaa !29, !noalias !47
  %add.i.i.i = add nsw i32 %33, %add.i.i
  %34 = add nuw nsw i64 %indvars.iv307.i, %11
  %arrayidx.i = getelementptr inbounds double, double* %0, i64 %34
  %35 = load double, double* %arrayidx.i, align 8, !tbaa !8
  store double %35, double* %arrayidx.i10.i.i, align 8, !tbaa !8
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %36, label %_ZTWN5adept21_stack_current_threadE.exit.i.i

36:                                               ; preds = %invoke.cont6.i
  invoke void @_ZTHN5adept21_stack_current_threadE()
          to label %_ZTWN5adept21_stack_current_threadE.exit.i.i unwind label %lpad7.i

_ZTWN5adept21_stack_current_threadE.exit.i.i:     ; preds = %36, %invoke.cont6.i
  %37 = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !50
  %n_statements_.i.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %37, i64 0, i32 3
  %38 = load i32, i32* %n_statements_.i.i.i, align 8, !tbaa !51
  %n_allocated_statements_.i.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %37, i64 0, i32 4
  %39 = load i32, i32* %n_allocated_statements_.i.i.i, align 4, !tbaa !53
  %cmp.not.i.i.i = icmp slt i32 %38, %39
  br i1 %cmp.not.i.i.i, label %invoke.cont8.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %_ZTWN5adept21_stack_current_threadE.exit.i.i
  invoke void @_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %37, i32 0)
          to label %.noexc29.i unwind label %lpad7.i

.noexc29.i:                                       ; preds = %if.then.i.i.i
  %.pre.i.i.i = load i32, i32* %n_statements_.i.i.i, align 8, !tbaa !51
  br label %invoke.cont8.i

invoke.cont8.i:                                   ; preds = %.noexc29.i, %_ZTWN5adept21_stack_current_threadE.exit.i.i
  %40 = phi i32 [ %.pre.i.i.i, %.noexc29.i ], [ %38, %_ZTWN5adept21_stack_current_threadE.exit.i.i ]
  %statement_.i.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %37, i64 0, i32 0
  %41 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i.i.i, align 8, !tbaa !54
  %idxprom.i.i28.i = sext i32 %40 to i64
  %index.i.i.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %41, i64 %idxprom.i.i28.i, i32 0
  store i32 %add.i.i.i, i32* %index.i.i.i, align 4, !tbaa !55
  %n_operations_.i.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %37, i64 0, i32 5
  %42 = load i32, i32* %n_operations_.i.i.i, align 8, !tbaa !57
  %inc.i.i.i = add nsw i32 %40, 1
  store i32 %inc.i.i.i, i32* %n_statements_.i.i.i, align 8, !tbaa !51
  %end_plus_one.i.i.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %41, i64 %idxprom.i.i28.i, i32 1
  store i32 %42, i32* %end_plus_one.i.i.i, align 4, !tbaa !58
  %indvars.iv.next308.i = add nuw nsw i64 %indvars.iv307.i, 1
  %exitcond310.not.i = icmp eq i64 %indvars.iv.next308.i, 2000
  br i1 %exitcond310.not.i, label %for.cond.cleanup3.i, label %invoke.cont6.i, !llvm.loop !59

lpad7.i:                                          ; preds = %if.then.i.i.i, %36
  %43 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup62.i

for.cond.cleanup19.i:                             ; preds = %for.body20.i, %vector.body
  %call30.i = call i32 @gettimeofday(%struct.timeval* nonnull %start.i, i8* null) #27
  %44 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 0
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
  %45 = bitcast %"class.adept::Active"* %resa.i to i8*
  %46 = bitcast double* %ref.tmp39.i to i8*
  %gradient_index_.i68.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %resa.i, i64 0, i32 1
  br label %for.body34.i

lpad14.i:                                         ; preds = %for.cond.cleanup.i
  %47 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup61.i

for.body20.i:                                     ; preds = %_ZN5adept5ArrayILi1EdLb0EEC2Ei.exit.i, %for.body20.i
  %indvars.iv303.i = phi i64 [ %indvars.iv.next304.i, %for.body20.i ], [ 0, %_ZN5adept5ArrayILi1EdLb0EEC2Ei.exit.i ]
  %arrayidx22.i = getelementptr inbounds double, double* %3, i64 %indvars.iv303.i
  %48 = load double, double* %arrayidx22.i, align 8, !tbaa !8
  %49 = mul nsw i64 %indvars.iv303.i, %17
  %arrayidx.i.i = getelementptr inbounds double, double* %15, i64 %49
  store double %48, double* %arrayidx.i.i, align 8, !tbaa !8
  %indvars.iv.next304.i = add nuw nsw i64 %indvars.iv303.i, 1
  %exitcond306.not.i = icmp eq i64 %indvars.iv.next304.i, 2000
  br i1 %exitcond306.not.i, label %for.cond.cleanup19.i, label %for.body20.i, !llvm.loop !60

for.cond.cleanup33.i:                             ; preds = %invoke.cont41.i
  %call52.i = call i32 @gettimeofday(%struct.timeval* nonnull %end.i, i8* null) #27
  %tv_sec.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i, i64 0, i32 0
  %50 = load i64, i64* %tv_sec.i.i, align 8, !tbaa !2
  %tv_sec1.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i, i64 0, i32 0
  %51 = load i64, i64* %tv_sec1.i.i, align 8, !tbaa !2
  %sub.i.i = sub nsw i64 %50, %51
  %conv.i.i = sitofp i64 %sub.i.i to double
  %tv_usec.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i, i64 0, i32 1
  %52 = load i64, i64* %tv_usec.i.i, align 8, !tbaa !7
  %tv_usec2.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i, i64 0, i32 1
  %53 = load i64, i64* %tv_usec2.i.i, align 8, !tbaa !7
  %sub3.i.i = sub nsw i64 %52, %53
  %conv4.i.i = sitofp i64 %sub3.i.i to double
  %mul.i35.i = fmul fast double %conv4.i.i, 0x3EB0C6F7A0B5ED8D
  %add.i36.i = fadd fast double %mul.i35.i, %conv.i.i
  %conv5.i.i = fptrunc double %add.i36.i to float
  %conv.i = fpext float %conv5.i.i to double
  %arrayidx54.i = getelementptr inbounds i8, i8* %call1, i64 8
  %54 = bitcast i8* %arrayidx54.i to double*
  %arrayidx55.i = getelementptr inbounds i8, i8* %call1, i64 16
  %55 = bitcast i8* %arrayidx55.i to double*
  %arrayidx56.i = getelementptr inbounds i8, i8* %call1, i64 24
  %56 = bitcast i8* %arrayidx56.i to double*
  %call59.i = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), double %conv.i, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00)
  %57 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i24.i, align 8, !tbaa !37
  %tobool.not.i38.i = icmp eq %"class.adept::Storage"* %57, null
  br i1 %tobool.not.i38.i, label %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit41.i, label %if.then.i39.i

if.then.i39.i:                                    ; preds = %for.cond.cleanup33.i
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %57)
          to label %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit41.i unwind label %terminate.lpad.i40.i

terminate.lpad.i40.i:                             ; preds = %if.then.i39.i
  %58 = landingpad { i8*, i32 }
          catch i8* null
  %59 = extractvalue { i8*, i32 } %58, 0
  call void @__clang_call_terminate(i8* %59) #29
  unreachable

_ZN5adept5ArrayILi1EdLb0EED2Ev.exit41.i:          ; preds = %if.then.i39.i, %for.cond.cleanup33.i
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #27
  %60 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i.i, align 8, !tbaa !32
  %tobool.not.i43.i = icmp eq %"class.adept::Storage"* %60, null
  br i1 %tobool.not.i43.i, label %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit46.i, label %if.then.i44.i

if.then.i44.i:                                    ; preds = %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit41.i
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %60)
          to label %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit46.i unwind label %terminate.lpad.i45.i

terminate.lpad.i45.i:                             ; preds = %if.then.i44.i
  %61 = landingpad { i8*, i32 }
          catch i8* null
  %62 = extractvalue { i8*, i32 } %61, 0
  call void @__clang_call_terminate(i8* %62) #29
  unreachable

_ZN5adept5ArrayILi2EdLb1EED2Ev.exit46.i:          ; preds = %if.then.i44.i, %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit41.i
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #27
  call void @_ZN5adept5StackD1Ev(%"class.adept::Stack"* nonnull dereferenceable(149) %stack.i) #27
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %7) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #27
  %63 = bitcast %struct.timeval* %start69.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %63) #27
  %64 = bitcast %struct.timeval* %end70.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %64) #27
  %65 = bitcast %"class.adept::Stack"* %stack72.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %65) #27
  call void @_ZN5adept5StackC2Eb(%"class.adept::Stack"* nonnull dereferenceable(149) %stack72.i, i1 zeroext true)
  %66 = bitcast %"class.adept::Array"* %mat73.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %66) #27
  %value_.i.i48.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %mat73.i, i64 0, i32 0, i32 0
  store i32 -9999, i32* %value_.i.i48.i, align 8, !tbaa !29
  %storage_.i49.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %mat73.i, i64 0, i32 2
  store %"class.adept::Storage"* null, %"class.adept::Storage"** %storage_.i49.i, align 8, !tbaa !32
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %9) #27
  store i32 2000, i32* %arrayinit.begin.i.i.i, align 16, !tbaa !36
  store i32 2000, i32* %arrayinit.element.i.i.i, align 4, !tbaa !36
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
  store i32 0, i32* %n_operations_.i.i55.i, align 8, !tbaa !57
  store i32 0, i32* %n_statements_.i.i56.i, align 8, !tbaa !51
  %67 = load i32*, i32** %_M_start.i.i.i.i, align 8, !tbaa !61
  %68 = load i32*, i32** %_M_finish.i.i.i.i.i, align 8, !tbaa !63
  %tobool.not.i.i.i.i.i = icmp eq i32* %68, %67
  br i1 %tobool.not.i.i.i.i.i, label %_ZN5adept5Stack18clear_independentsEv.exit.i.i, label %invoke.cont.i.i.i.i.i

invoke.cont.i.i.i.i.i:                            ; preds = %for.body34.i
  store i32* %67, i32** %_M_finish.i.i.i.i.i, align 8, !tbaa !63
  br label %_ZN5adept5Stack18clear_independentsEv.exit.i.i

_ZN5adept5Stack18clear_independentsEv.exit.i.i:   ; preds = %invoke.cont.i.i.i.i.i, %for.body34.i
  %69 = load i32*, i32** %_M_start.i.i4.i.i, align 8, !tbaa !61
  %70 = load i32*, i32** %_M_finish.i.i.i5.i.i, align 8, !tbaa !63
  %tobool.not.i.i.i6.i.i = icmp eq i32* %70, %69
  br i1 %tobool.not.i.i.i6.i.i, label %_ZN5adept5Stack16clear_dependentsEv.exit.i.i, label %invoke.cont.i.i.i7.i.i

invoke.cont.i.i.i7.i.i:                           ; preds = %_ZN5adept5Stack18clear_independentsEv.exit.i.i
  store i32* %69, i32** %_M_finish.i.i.i5.i.i, align 8, !tbaa !63
  br label %_ZN5adept5Stack16clear_dependentsEv.exit.i.i

_ZN5adept5Stack16clear_dependentsEv.exit.i.i:     ; preds = %invoke.cont.i.i.i7.i.i, %_ZN5adept5Stack18clear_independentsEv.exit.i.i
  store i8 0, i8* %gradients_initialized_.i.i.i, align 8, !tbaa !64
  %71 = load i32, i32* %i_gradient_.i.i, align 8, !tbaa !70
  %add.i57.i = add nsw i32 %71, 1
  store i32 %add.i57.i, i32* %max_gradient_.i.i, align 8, !tbaa !71
  %72 = load i32, i32* %n_allocated_statements_.i.i58.i, align 4, !tbaa !53
  %cmp.not.i.i59.i = icmp sgt i32 %72, 0
  br i1 %cmp.not.i.i59.i, label %invoke.cont36.i, label %if.then.i.i61.i

if.then.i.i61.i:                                  ; preds = %_ZN5adept5Stack16clear_dependentsEv.exit.i.i
  invoke void @_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %44, i32 0)
          to label %.noexc67.i unwind label %lpad35.i

.noexc67.i:                                       ; preds = %if.then.i.i61.i
  %.pre.i.i60.i = load i32, i32* %n_statements_.i.i56.i, align 8, !tbaa !51
  %.pre.i.i = load i32, i32* %n_operations_.i.i55.i, align 8, !tbaa !57
  br label %invoke.cont36.i

invoke.cont36.i:                                  ; preds = %.noexc67.i, %_ZN5adept5Stack16clear_dependentsEv.exit.i.i
  %73 = phi i32 [ %.pre.i.i, %.noexc67.i ], [ 0, %_ZN5adept5Stack16clear_dependentsEv.exit.i.i ]
  %74 = phi i32 [ %.pre.i.i60.i, %.noexc67.i ], [ 0, %_ZN5adept5Stack16clear_dependentsEv.exit.i.i ]
  %75 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i.i62.i, align 8, !tbaa !54
  %idxprom.i.i63.i = sext i32 %74 to i64
  %index.i.i64.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %75, i64 %idxprom.i.i63.i, i32 0
  store i32 -1, i32* %index.i.i64.i, align 4, !tbaa !55
  %inc.i.i65.i = add nsw i32 %74, 1
  store i32 %inc.i.i65.i, i32* %n_statements_.i.i56.i, align 8, !tbaa !51
  %end_plus_one.i.i66.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %75, i64 %idxprom.i.i63.i, i32 1
  store i32 %73, i32* %end_plus_one.i.i66.i, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %45) #27
  invoke fastcc void @_ZL6matvecRN5adept5ArrayILi2EdLb1EEERNS0_ILi1EdLb0EEE(%"class.adept::Active"* nonnull sret(%"class.adept::Active") align 8 %resa.i, %"class.adept::Array"* nonnull align 8 dereferenceable(40) %mat.i, %"class.adept::Array.4"* nonnull align 8 dereferenceable(24) %vec.i)
          to label %invoke.cont38.i unwind label %lpad37.i

invoke.cont38.i:                                  ; preds = %invoke.cont36.i
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %46) #27
  store double 1.000000e+00, double* %ref.tmp39.i, align 8, !tbaa !8
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %76, label %_ZTWN5adept21_stack_current_threadE.exit.i70.i

76:                                               ; preds = %invoke.cont38.i
  invoke void @_ZTHN5adept21_stack_current_threadE()
          to label %_ZTWN5adept21_stack_current_threadE.exit.i70.i unwind label %lpad40.i

_ZTWN5adept21_stack_current_threadE.exit.i70.i:   ; preds = %76, %invoke.cont38.i
  %77 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !50
  %78 = load i32, i32* %gradient_index_.i68.i, align 8, !tbaa !72
  %add.i69.i = add nsw i32 %78, 1
  invoke void @_ZN5adept5Stack13set_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPKS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %77, i32 %78, i32 %add.i69.i, double* nonnull %ref.tmp39.i)
          to label %invoke.cont41.i unwind label %lpad40.i

invoke.cont41.i:                                  ; preds = %_ZTWN5adept21_stack_current_threadE.exit.i70.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46) #27
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %resa.i) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %45) #27
  %inc49.i = add nuw nsw i32 %iter.0278.i, 1
  %exitcond302.not.i = icmp eq i32 %inc49.i, 1000
  br i1 %exitcond302.not.i, label %for.cond.cleanup33.i, label %for.body34.i, !llvm.loop !74

lpad35.i:                                         ; preds = %if.then.i.i61.i
  %79 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup60.i

lpad37.i:                                         ; preds = %invoke.cont36.i
  %80 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup47.i

lpad40.i:                                         ; preds = %_ZTWN5adept21_stack_current_threadE.exit.i70.i, %76
  %81 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %46) #27
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %resa.i) #27
  br label %ehcleanup47.i

ehcleanup47.i:                                    ; preds = %lpad40.i, %lpad37.i
  %.pn14.i = phi { i8*, i32 } [ %81, %lpad40.i ], [ %80, %lpad37.i ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %45) #27
  br label %ehcleanup60.i

for.cond82.preheader.i:                           ; preds = %for.cond.cleanup84.i, %_ZN5adept5ArrayILi2EdLb1EEC2Eii.exit54.i
  %indvars.iv298.i = phi i64 [ 0, %_ZN5adept5ArrayILi2EdLb1EEC2Eii.exit54.i ], [ %indvars.iv.next299.i, %for.cond.cleanup84.i ]
  %82 = mul nuw nsw i64 %indvars.iv298.i, 2000
  %83 = trunc i64 %indvars.iv298.i to i32
  br label %invoke.cont92.i

for.cond.cleanup79.i:                             ; preds = %for.cond.cleanup84.i
  %84 = bitcast %"class.adept::Array.4"* %vec106.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %84) #27
  %storage_.i74.i = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %vec106.i, i64 0, i32 1
  store %"class.adept::Storage"* null, %"class.adept::Storage"** %storage_.i74.i, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %9) #27
  store i32 2000, i32* %arrayinit.begin.i.i.i, align 16, !tbaa !36
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(24) %14, i8 -1, i64 24, i1 false)
  invoke void @_ZN5adept5ArrayILi1EdLb0EE6resizeEPKib(%"class.adept::Array.4"* nonnull dereferenceable(24) %vec106.i, i32* nonnull %arrayinit.begin.i.i.i, i1 zeroext false)
          to label %_ZN5adept5ArrayILi1EdLb0EEC2Ei.exit78.i unwind label %lpad107.i

_ZN5adept5ArrayILi1EdLb0EEC2Ei.exit78.i:          ; preds = %for.cond.cleanup79.i
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %9) #27
  %data_.i118.i = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %vec106.i, i64 0, i32 0
  %85 = load double*, double** %data_.i118.i, align 8, !tbaa !40
  %arrayidx.i4.i119.i = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %vec106.i, i64 0, i32 3, i32 0, i64 0
  %86 = load i32, i32* %arrayidx.i4.i119.i, align 4, !tbaa !36
  %87 = sext i32 %86 to i64
  %ident.check23.not = icmp eq i32 %86, 1
  br i1 %ident.check23.not, label %vector.body21, label %for.body113.i

vector.body21:                                    ; preds = %_ZN5adept5ArrayILi1EdLb0EEC2Ei.exit78.i, %vector.body21
  %index26 = phi i64 [ %index.next27, %vector.body21 ], [ 0, %_ZN5adept5ArrayILi1EdLb0EEC2Ei.exit78.i ]
  %88 = getelementptr inbounds double, double* %3, i64 %index26
  %89 = bitcast double* %88 to <2 x double>*
  %wide.load30 = load <2 x double>, <2 x double>* %89, align 8, !tbaa !8
  %90 = getelementptr inbounds double, double* %88, i64 2
  %91 = bitcast double* %90 to <2 x double>*
  %wide.load31 = load <2 x double>, <2 x double>* %91, align 8, !tbaa !8
  %92 = mul nsw i64 %index26, %87
  %93 = getelementptr inbounds double, double* %85, i64 %92
  %94 = bitcast double* %93 to <2 x double>*
  store <2 x double> %wide.load30, <2 x double>* %94, align 8, !tbaa !8
  %95 = getelementptr inbounds double, double* %93, i64 2
  %96 = bitcast double* %95 to <2 x double>*
  store <2 x double> %wide.load31, <2 x double>* %96, align 8, !tbaa !8
  %index.next27 = add i64 %index26, 4
  %97 = icmp eq i64 %index.next27, 2000
  br i1 %97, label %for.cond.cleanup112.i, label %vector.body21, !llvm.loop !75

ehcleanup60.i:                                    ; preds = %ehcleanup47.i, %lpad35.i
  %.pn14.pn.i = phi { i8*, i32 } [ %.pn14.i, %ehcleanup47.i ], [ %79, %lpad35.i ]
  %98 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i24.i, align 8, !tbaa !37
  %tobool.not.i80.i = icmp eq %"class.adept::Storage"* %98, null
  br i1 %tobool.not.i80.i, label %ehcleanup61.i, label %if.then.i81.i

if.then.i81.i:                                    ; preds = %ehcleanup60.i
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %98)
          to label %ehcleanup61.i unwind label %terminate.lpad.i82.i

terminate.lpad.i82.i:                             ; preds = %if.then.i81.i
  %99 = landingpad { i8*, i32 }
          catch i8* null
  %100 = extractvalue { i8*, i32 } %99, 0
  call void @__clang_call_terminate(i8* %100) #29
  unreachable

ehcleanup61.i:                                    ; preds = %if.then.i81.i, %ehcleanup60.i, %lpad14.i
  %.pn14.pn.pn.i = phi { i8*, i32 } [ %47, %lpad14.i ], [ %.pn14.pn.i, %ehcleanup60.i ], [ %.pn14.pn.i, %if.then.i81.i ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %13) #27
  br label %ehcleanup62.i

ehcleanup62.i:                                    ; preds = %ehcleanup61.i, %lpad7.i
  %.pn18.pn.i = phi { i8*, i32 } [ %.pn14.pn.pn.i, %ehcleanup61.i ], [ %43, %lpad7.i ]
  %101 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i.i, align 8, !tbaa !32
  %tobool.not.i85.i = icmp eq %"class.adept::Storage"* %101, null
  br i1 %tobool.not.i85.i, label %ehcleanup63.i, label %if.then.i86.i

if.then.i86.i:                                    ; preds = %ehcleanup62.i
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %101)
          to label %ehcleanup63.i unwind label %terminate.lpad.i87.i

terminate.lpad.i87.i:                             ; preds = %if.then.i86.i
  %102 = landingpad { i8*, i32 }
          catch i8* null
  %103 = extractvalue { i8*, i32 } %102, 0
  call void @__clang_call_terminate(i8* %103) #29
  unreachable

ehcleanup63.i:                                    ; preds = %if.then.i86.i, %ehcleanup62.i, %lpad.i
  %.pn18.pn.pn.i = phi { i8*, i32 } [ %28, %lpad.i ], [ %.pn18.pn.i, %ehcleanup62.i ], [ %.pn18.pn.i, %if.then.i86.i ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %8) #27
  call void @_ZN5adept5StackD1Ev(%"class.adept::Stack"* nonnull dereferenceable(149) %stack.i) #27
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %7) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #27
  br label %eh.resume.i

lpad74.i:                                         ; preds = %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit46.i
  %104 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup224.i

for.cond.cleanup84.i:                             ; preds = %invoke.cont94.i
  %indvars.iv.next299.i = add nuw nsw i64 %indvars.iv298.i, 1
  %exitcond301.not.i = icmp eq i64 %indvars.iv.next299.i, 2000
  br i1 %exitcond301.not.i, label %for.cond.cleanup79.i, label %for.cond82.preheader.i, !llvm.loop !76

invoke.cont92.i:                                  ; preds = %invoke.cont94.i, %for.cond82.preheader.i
  %indvars.iv294.i = phi i64 [ 0, %for.cond82.preheader.i ], [ %indvars.iv.next295.i, %invoke.cont94.i ]
  %105 = load i32, i32* %arrayidx.i13.i89.i, align 8, !tbaa !36, !noalias !77
  %mul.i90.i = mul nsw i32 %105, %83
  %106 = load i32, i32* %arrayidx.i11.i91.i, align 4, !tbaa !36, !noalias !77
  %107 = trunc i64 %indvars.iv294.i to i32
  %mul9.i92.i = mul nsw i32 %106, %107
  %add.i93.i = add nsw i32 %mul9.i92.i, %mul.i90.i
  %108 = load double*, double** %data_.i.i94.i, align 8, !tbaa !46, !noalias !80
  %idxprom.i.i95.i = sext i32 %add.i93.i to i64
  %arrayidx.i10.i96.i = getelementptr inbounds double, double* %108, i64 %idxprom.i.i95.i
  %109 = load i32, i32* %value_.i.i48.i, align 8, !tbaa !29, !noalias !80
  %add.i.i98.i = add nsw i32 %109, %add.i93.i
  %110 = add nuw nsw i64 %indvars.iv294.i, %82
  %arrayidx89.i = getelementptr inbounds double, double* %0, i64 %110
  %111 = load double, double* %arrayidx89.i, align 8, !tbaa !8
  store double %111, double* %arrayidx.i10.i96.i, align 8, !tbaa !8
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %112, label %_ZTWN5adept21_stack_current_threadE.exit.i105.i

112:                                              ; preds = %invoke.cont92.i
  invoke void @_ZTHN5adept21_stack_current_threadE()
          to label %_ZTWN5adept21_stack_current_threadE.exit.i105.i unwind label %lpad93.i

_ZTWN5adept21_stack_current_threadE.exit.i105.i:  ; preds = %112, %invoke.cont92.i
  %113 = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !50
  %n_statements_.i.i102.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %113, i64 0, i32 3
  %114 = load i32, i32* %n_statements_.i.i102.i, align 8, !tbaa !51
  %n_allocated_statements_.i.i103.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %113, i64 0, i32 4
  %115 = load i32, i32* %n_allocated_statements_.i.i103.i, align 4, !tbaa !53
  %cmp.not.i.i104.i = icmp slt i32 %114, %115
  br i1 %cmp.not.i.i104.i, label %invoke.cont94.i, label %if.then.i.i107.i

if.then.i.i107.i:                                 ; preds = %_ZTWN5adept21_stack_current_threadE.exit.i105.i
  invoke void @_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %113, i32 0)
          to label %.noexc116.i unwind label %lpad93.i

.noexc116.i:                                      ; preds = %if.then.i.i107.i
  %.pre.i.i106.i = load i32, i32* %n_statements_.i.i102.i, align 8, !tbaa !51
  br label %invoke.cont94.i

invoke.cont94.i:                                  ; preds = %.noexc116.i, %_ZTWN5adept21_stack_current_threadE.exit.i105.i
  %116 = phi i32 [ %.pre.i.i106.i, %.noexc116.i ], [ %114, %_ZTWN5adept21_stack_current_threadE.exit.i105.i ]
  %statement_.i.i109.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %113, i64 0, i32 0
  %117 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i.i109.i, align 8, !tbaa !54
  %idxprom.i.i110.i = sext i32 %116 to i64
  %index.i.i111.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %117, i64 %idxprom.i.i110.i, i32 0
  store i32 %add.i.i98.i, i32* %index.i.i111.i, align 4, !tbaa !55
  %n_operations_.i.i112.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %113, i64 0, i32 5
  %118 = load i32, i32* %n_operations_.i.i112.i, align 8, !tbaa !57
  %inc.i.i113.i = add nsw i32 %116, 1
  store i32 %inc.i.i113.i, i32* %n_statements_.i.i102.i, align 8, !tbaa !51
  %end_plus_one.i.i114.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %117, i64 %idxprom.i.i110.i, i32 1
  store i32 %118, i32* %end_plus_one.i.i114.i, align 4, !tbaa !58
  %indvars.iv.next295.i = add nuw nsw i64 %indvars.iv294.i, 1
  %exitcond297.not.i = icmp eq i64 %indvars.iv.next295.i, 2000
  br i1 %exitcond297.not.i, label %for.cond.cleanup84.i, label %invoke.cont92.i, !llvm.loop !83

lpad93.i:                                         ; preds = %if.then.i.i107.i, %112
  %119 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup223.i

for.cond.cleanup112.i:                            ; preds = %for.body113.i, %vector.body21
  %call123.i = call i32 @gettimeofday(%struct.timeval* nonnull %start69.i, i8* null) #27
  %120 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack72.i, i64 0, i32 0
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
  %121 = bitcast %"class.adept::Active"* %resa131.i to i8*
  %122 = bitcast double* %ref.tmp134.i to i8*
  %gradient_index_.i151.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %resa131.i, i64 0, i32 1
  %123 = bitcast double* %gradient.i175.i to i8*
  br label %for.body128.i

lpad107.i:                                        ; preds = %for.cond.cleanup79.i
  %124 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup222.i

for.body113.i:                                    ; preds = %_ZN5adept5ArrayILi1EdLb0EEC2Ei.exit78.i, %for.body113.i
  %indvars.iv290.i = phi i64 [ %indvars.iv.next291.i, %for.body113.i ], [ 0, %_ZN5adept5ArrayILi1EdLb0EEC2Ei.exit78.i ]
  %arrayidx115.i = getelementptr inbounds double, double* %3, i64 %indvars.iv290.i
  %125 = load double, double* %arrayidx115.i, align 8, !tbaa !8
  %126 = mul nsw i64 %indvars.iv290.i, %87
  %arrayidx.i122.i = getelementptr inbounds double, double* %85, i64 %126
  store double %125, double* %arrayidx.i122.i, align 8, !tbaa !8
  %indvars.iv.next291.i = add nuw nsw i64 %indvars.iv290.i, 1
  %exitcond293.not.i = icmp eq i64 %indvars.iv.next291.i, 2000
  br i1 %exitcond293.not.i, label %for.cond.cleanup112.i, label %for.body113.i, !llvm.loop !84

for.cond.cleanup127.i:                            ; preds = %for.cond.cleanup145.i
  %call187.i = call i32 @gettimeofday(%struct.timeval* nonnull %end70.i, i8* null) #27
  %127 = bitcast double* %gradient.i.i to i8*
  br label %for.cond197.preheader.i

for.body128.i:                                    ; preds = %for.cond.cleanup145.i, %for.cond.cleanup112.i
  %iter124.0274.i = phi i32 [ 0, %for.cond.cleanup112.i ], [ %inc184.i, %for.cond.cleanup145.i ]
  store i32 0, i32* %n_operations_.i.i123.i, align 8, !tbaa !57
  store i32 0, i32* %n_statements_.i.i124.i, align 8, !tbaa !51
  %128 = load i32*, i32** %_M_start.i.i.i125.i, align 8, !tbaa !61
  %129 = load i32*, i32** %_M_finish.i.i.i.i126.i, align 8, !tbaa !63
  %tobool.not.i.i.i.i127.i = icmp eq i32* %129, %128
  br i1 %tobool.not.i.i.i.i127.i, label %_ZN5adept5Stack18clear_independentsEv.exit.i132.i, label %invoke.cont.i.i.i.i128.i

invoke.cont.i.i.i.i128.i:                         ; preds = %for.body128.i
  store i32* %128, i32** %_M_finish.i.i.i.i126.i, align 8, !tbaa !63
  br label %_ZN5adept5Stack18clear_independentsEv.exit.i132.i

_ZN5adept5Stack18clear_independentsEv.exit.i132.i: ; preds = %invoke.cont.i.i.i.i128.i, %for.body128.i
  %130 = load i32*, i32** %_M_start.i.i4.i129.i, align 8, !tbaa !61
  %131 = load i32*, i32** %_M_finish.i.i.i5.i130.i, align 8, !tbaa !63
  %tobool.not.i.i.i6.i131.i = icmp eq i32* %131, %130
  br i1 %tobool.not.i.i.i6.i131.i, label %_ZN5adept5Stack16clear_dependentsEv.exit.i140.i, label %invoke.cont.i.i.i7.i133.i

invoke.cont.i.i.i7.i133.i:                        ; preds = %_ZN5adept5Stack18clear_independentsEv.exit.i132.i
  store i32* %130, i32** %_M_finish.i.i.i5.i130.i, align 8, !tbaa !63
  br label %_ZN5adept5Stack16clear_dependentsEv.exit.i140.i

_ZN5adept5Stack16clear_dependentsEv.exit.i140.i:  ; preds = %invoke.cont.i.i.i7.i133.i, %_ZN5adept5Stack18clear_independentsEv.exit.i132.i
  store i8 0, i8* %gradients_initialized_.i.i134.i, align 8, !tbaa !64
  %132 = load i32, i32* %i_gradient_.i135.i, align 8, !tbaa !70
  %add.i136.i = add nsw i32 %132, 1
  store i32 %add.i136.i, i32* %max_gradient_.i137.i, align 8, !tbaa !71
  %133 = load i32, i32* %n_allocated_statements_.i.i138.i, align 4, !tbaa !53
  %cmp.not.i.i139.i = icmp sgt i32 %133, 0
  br i1 %cmp.not.i.i139.i, label %invoke.cont130.i, label %if.then.i.i143.i

if.then.i.i143.i:                                 ; preds = %_ZN5adept5Stack16clear_dependentsEv.exit.i140.i
  invoke void @_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %120, i32 0)
          to label %.noexc149.i unwind label %lpad129.i

.noexc149.i:                                      ; preds = %if.then.i.i143.i
  %.pre.i.i141.i = load i32, i32* %n_statements_.i.i124.i, align 8, !tbaa !51
  %.pre.i142.i = load i32, i32* %n_operations_.i.i123.i, align 8, !tbaa !57
  br label %invoke.cont130.i

invoke.cont130.i:                                 ; preds = %.noexc149.i, %_ZN5adept5Stack16clear_dependentsEv.exit.i140.i
  %134 = phi i32 [ %.pre.i142.i, %.noexc149.i ], [ 0, %_ZN5adept5Stack16clear_dependentsEv.exit.i140.i ]
  %135 = phi i32 [ %.pre.i.i141.i, %.noexc149.i ], [ 0, %_ZN5adept5Stack16clear_dependentsEv.exit.i140.i ]
  %136 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i.i144.i, align 8, !tbaa !54
  %idxprom.i.i145.i = sext i32 %135 to i64
  %index.i.i146.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %136, i64 %idxprom.i.i145.i, i32 0
  store i32 -1, i32* %index.i.i146.i, align 4, !tbaa !55
  %inc.i.i147.i = add nsw i32 %135, 1
  store i32 %inc.i.i147.i, i32* %n_statements_.i.i124.i, align 8, !tbaa !51
  %end_plus_one.i.i148.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %136, i64 %idxprom.i.i145.i, i32 1
  store i32 %134, i32* %end_plus_one.i.i148.i, align 4, !tbaa !58
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %121) #27
  invoke fastcc void @_ZL6matvecRN5adept5ArrayILi2EdLb1EEERNS0_ILi1EdLb0EEE(%"class.adept::Active"* nonnull sret(%"class.adept::Active") align 8 %resa131.i, %"class.adept::Array"* nonnull align 8 dereferenceable(40) %mat73.i, %"class.adept::Array.4"* nonnull align 8 dereferenceable(24) %vec106.i)
          to label %invoke.cont133.i unwind label %lpad132.i

invoke.cont133.i:                                 ; preds = %invoke.cont130.i
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %122) #27
  store double 1.000000e+00, double* %ref.tmp134.i, align 8, !tbaa !8
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %137, label %_ZTWN5adept21_stack_current_threadE.exit.i153.i

137:                                              ; preds = %invoke.cont133.i
  invoke void @_ZTHN5adept21_stack_current_threadE()
          to label %_ZTWN5adept21_stack_current_threadE.exit.i153.i unwind label %lpad135.i

_ZTWN5adept21_stack_current_threadE.exit.i153.i:  ; preds = %137, %invoke.cont133.i
  %138 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !50
  %139 = load i32, i32* %gradient_index_.i151.i, align 8, !tbaa !72
  %add.i152.i = add nsw i32 %139, 1
  invoke void @_ZN5adept5Stack13set_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPKS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %138, i32 %139, i32 %add.i152.i, double* nonnull %ref.tmp134.i)
          to label %invoke.cont136.i unwind label %lpad135.i

invoke.cont136.i:                                 ; preds = %_ZTWN5adept21_stack_current_threadE.exit.i153.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %122) #27
  invoke void @_ZN5adept5Stack15compute_adjointEv(%"class.adept::Stack"* nonnull dereferenceable(149) %stack72.i)
          to label %for.cond148.preheader.i unwind label %lpad138.i

for.cond148.preheader.i:                          ; preds = %invoke.cont136.i, %for.cond.cleanup150.i
  %i142.0273.i = phi i32 [ %inc176.i, %for.cond.cleanup150.i ], [ 0, %invoke.cont136.i ]
  %.pre.i = load i32, i32* %arrayidx.i13.i89.i, align 8, !tbaa !36, !noalias !85
  %.pre315.i = load i32, i32* %arrayidx.i11.i91.i, align 4, !tbaa !36, !noalias !85
  br label %invoke.cont155.i

for.cond.cleanup145.i:                            ; preds = %for.cond.cleanup150.i
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %resa131.i) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %121) #27
  %inc184.i = add nuw nsw i32 %iter124.0274.i, 1
  %exitcond289.not.i = icmp eq i32 %inc184.i, 1000
  br i1 %exitcond289.not.i, label %for.cond.cleanup127.i, label %for.body128.i, !llvm.loop !88

lpad129.i:                                        ; preds = %if.then.i.i143.i
  %140 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup221.i

lpad132.i:                                        ; preds = %invoke.cont130.i
  %141 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup182.i

lpad135.i:                                        ; preds = %_ZTWN5adept21_stack_current_threadE.exit.i153.i, %137
  %142 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %122) #27
  br label %ehcleanup181.i

lpad138.i:                                        ; preds = %invoke.cont136.i
  %143 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup181.i

for.cond.cleanup150.i:                            ; preds = %invoke.cont162.i
  %inc176.i = add nuw nsw i32 %i142.0273.i, 1
  %exitcond288.not.i = icmp eq i32 %inc176.i, 2000
  br i1 %exitcond288.not.i, label %for.cond.cleanup145.i, label %for.cond148.preheader.i, !llvm.loop !89

invoke.cont155.i:                                 ; preds = %invoke.cont162.i, %for.cond148.preheader.i
  %144 = phi i32 [ %.pre315.i, %for.cond148.preheader.i ], [ %151, %invoke.cont162.i ]
  %145 = phi i32 [ %.pre.i, %for.cond148.preheader.i ], [ %150, %invoke.cont162.i ]
  %j147.0272.i = phi i32 [ 0, %for.cond148.preheader.i ], [ %inc172.i, %invoke.cont162.i ]
  %mul.i164.i = mul nsw i32 %145, %i142.0273.i
  %mul9.i166.i = mul nsw i32 %j147.0272.i, %144
  %add.i167.i = add nsw i32 %mul9.i166.i, %mul.i164.i
  %146 = load i32, i32* %value_.i.i48.i, align 8, !tbaa !29, !noalias !90
  %add.i.i172.i = add nsw i32 %add.i167.i, %146
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %123) #27
  store double 0.000000e+00, double* %gradient.i175.i, align 8, !tbaa !8
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %147, label %_ZTWN5adept21_stack_current_threadE.exit.i178.i

147:                                              ; preds = %invoke.cont155.i
  invoke void @_ZTHN5adept21_stack_current_threadE()
          to label %_ZTWN5adept21_stack_current_threadE.exit.i178.i unwind label %lpad156.i

_ZTWN5adept21_stack_current_threadE.exit.i178.i:  ; preds = %147, %invoke.cont155.i
  %148 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !50
  %add.i177.i = add nsw i32 %add.i.i172.i, 1
  invoke void @_ZNK5adept5Stack13get_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %148, i32 %add.i.i172.i, i32 %add.i177.i, double* nonnull %gradient.i175.i)
          to label %invoke.cont162.i unwind label %lpad156.i

invoke.cont162.i:                                 ; preds = %_ZTWN5adept21_stack_current_threadE.exit.i178.i
  %149 = load double, double* %gradient.i175.i, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %123) #27
  %mul159.i = fmul fast double %149, 1.000000e-08
  %150 = load i32, i32* %arrayidx.i13.i89.i, align 8, !tbaa !36, !noalias !93
  %mul.i183.i = mul nsw i32 %150, %i142.0273.i
  %151 = load i32, i32* %arrayidx.i11.i91.i, align 4, !tbaa !36, !noalias !93
  %mul9.i185.i = mul nsw i32 %151, %j147.0272.i
  %add.i186.i = add nsw i32 %mul9.i185.i, %mul.i183.i
  %152 = load double*, double** %data_.i.i94.i, align 8, !tbaa !46, !noalias !96
  %idxprom.i.i188.i = sext i32 %add.i186.i to i64
  %arrayidx.i10.i189.i = getelementptr inbounds double, double* %152, i64 %idxprom.i.i188.i
  %153 = load double, double* %arrayidx.i10.i189.i, align 8, !tbaa !8
  %sub.i195.i = fsub fast double %153, %mul159.i
  store double %sub.i195.i, double* %arrayidx.i10.i189.i, align 8, !tbaa !8
  %inc172.i = add nuw nsw i32 %j147.0272.i, 1
  %exitcond287.not.i = icmp eq i32 %inc172.i, 2000
  br i1 %exitcond287.not.i, label %for.cond.cleanup150.i, label %invoke.cont155.i, !llvm.loop !99

lpad156.i:                                        ; preds = %_ZTWN5adept21_stack_current_threadE.exit.i178.i, %147
  %154 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup181.i

ehcleanup181.i:                                   ; preds = %lpad156.i, %lpad138.i, %lpad135.i
  %.pn2.pn.pn.i = phi { i8*, i32 } [ %143, %lpad138.i ], [ %142, %lpad135.i ], [ %154, %lpad156.i ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %resa131.i) #27
  br label %ehcleanup182.i

ehcleanup182.i:                                   ; preds = %ehcleanup181.i, %lpad132.i
  %.pn2.pn.pn.pn.i = phi { i8*, i32 } [ %.pn2.pn.pn.i, %ehcleanup181.i ], [ %141, %lpad132.i ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %121) #27
  br label %ehcleanup221.i

for.cond197.preheader.i:                          ; preds = %for.cond.cleanup199.i, %for.cond.cleanup127.i
  %indvars.iv283.i = phi i64 [ 0, %for.cond.cleanup127.i ], [ %indvars.iv.next284.i, %for.cond.cleanup199.i ]
  %155 = mul nuw nsw i64 %indvars.iv283.i, 2000
  %156 = trunc i64 %indvars.iv283.i to i32
  br label %invoke.cont203.i

for.cond.cleanup194.i:                            ; preds = %for.cond.cleanup199.i
  %157 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i74.i, align 8, !tbaa !37
  %tobool.not.i225.i = icmp eq %"class.adept::Storage"* %157, null
  br i1 %tobool.not.i225.i, label %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit228.i, label %if.then.i226.i

if.then.i226.i:                                   ; preds = %for.cond.cleanup194.i
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %157)
          to label %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit228.i unwind label %terminate.lpad.i227.i

terminate.lpad.i227.i:                            ; preds = %if.then.i226.i
  %158 = landingpad { i8*, i32 }
          catch i8* null
  %159 = extractvalue { i8*, i32 } %158, 0
  call void @__clang_call_terminate(i8* %159) #29
  unreachable

_ZN5adept5ArrayILi1EdLb0EED2Ev.exit228.i:         ; preds = %if.then.i226.i, %for.cond.cleanup194.i
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %84) #27
  %160 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i49.i, align 8, !tbaa !32
  %tobool.not.i220.i = icmp eq %"class.adept::Storage"* %160, null
  br i1 %tobool.not.i220.i, label %_ZL12adept_sincosPdS_S_S_.exit, label %if.then.i221.i

if.then.i221.i:                                   ; preds = %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit228.i
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %160)
          to label %_ZL12adept_sincosPdS_S_S_.exit unwind label %terminate.lpad.i222.i

terminate.lpad.i222.i:                            ; preds = %if.then.i221.i
  %161 = landingpad { i8*, i32 }
          catch i8* null
  %162 = extractvalue { i8*, i32 } %161, 0
  call void @__clang_call_terminate(i8* %162) #29
  unreachable

for.cond.cleanup199.i:                            ; preds = %invoke.cont205.i
  %indvars.iv.next284.i = add nuw nsw i64 %indvars.iv283.i, 1
  %exitcond286.not.i = icmp eq i64 %indvars.iv.next284.i, 2000
  br i1 %exitcond286.not.i, label %for.cond.cleanup194.i, label %for.cond197.preheader.i, !llvm.loop !100

invoke.cont203.i:                                 ; preds = %invoke.cont205.i, %for.cond197.preheader.i
  %indvars.iv.i = phi i64 [ 0, %for.cond197.preheader.i ], [ %indvars.iv.next.i, %invoke.cont205.i ]
  %163 = load i32, i32* %arrayidx.i13.i89.i, align 8, !tbaa !36, !noalias !101
  %mul.i197.i = mul nsw i32 %163, %156
  %164 = load i32, i32* %arrayidx.i11.i91.i, align 4, !tbaa !36, !noalias !101
  %165 = trunc i64 %indvars.iv.i to i32
  %mul9.i199.i = mul nsw i32 %164, %165
  %add.i200.i = add nsw i32 %mul9.i199.i, %mul.i197.i
  %166 = load i32, i32* %value_.i.i48.i, align 8, !tbaa !29, !noalias !104
  %add.i.i205.i = add nsw i32 %add.i200.i, %166
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %127) #27
  store double 0.000000e+00, double* %gradient.i.i, align 8, !tbaa !8
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %167, label %_ZTWN5adept21_stack_current_threadE.exit.i160.i

167:                                              ; preds = %invoke.cont203.i
  invoke void @_ZTHN5adept21_stack_current_threadE()
          to label %_ZTWN5adept21_stack_current_threadE.exit.i160.i unwind label %lpad204.i

_ZTWN5adept21_stack_current_threadE.exit.i160.i:  ; preds = %167, %invoke.cont203.i
  %168 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !50
  %add.i159.i = add nsw i32 %add.i.i205.i, 1
  invoke void @_ZNK5adept5Stack13get_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %168, i32 %add.i.i205.i, i32 %add.i159.i, double* nonnull %gradient.i.i)
          to label %invoke.cont205.i unwind label %lpad204.i

invoke.cont205.i:                                 ; preds = %_ZTWN5adept21_stack_current_threadE.exit.i160.i
  %169 = load double, double* %gradient.i.i, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %127) #27
  %170 = add nuw nsw i64 %indvars.iv.i, %155
  %arrayidx210.i = getelementptr inbounds double, double* %4, i64 %170
  store double %169, double* %arrayidx210.i, align 8, !tbaa !8
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 2000
  br i1 %exitcond.not.i, label %for.cond.cleanup199.i, label %invoke.cont203.i, !llvm.loop !107

lpad204.i:                                        ; preds = %_ZTWN5adept21_stack_current_threadE.exit.i160.i, %167
  %171 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup221.i

ehcleanup221.i:                                   ; preds = %lpad204.i, %ehcleanup182.i, %lpad129.i
  %.pn2.pn.pn.pn.pn.pn.i = phi { i8*, i32 } [ %.pn2.pn.pn.pn.i, %ehcleanup182.i ], [ %140, %lpad129.i ], [ %171, %lpad204.i ]
  %172 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i74.i, align 8, !tbaa !37
  %tobool.not.i32.i = icmp eq %"class.adept::Storage"* %172, null
  br i1 %tobool.not.i32.i, label %ehcleanup222.i, label %if.then.i33.i

if.then.i33.i:                                    ; preds = %ehcleanup221.i
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %172)
          to label %ehcleanup222.i unwind label %terminate.lpad.i34.i

terminate.lpad.i34.i:                             ; preds = %if.then.i33.i
  %173 = landingpad { i8*, i32 }
          catch i8* null
  %174 = extractvalue { i8*, i32 } %173, 0
  call void @__clang_call_terminate(i8* %174) #29
  unreachable

ehcleanup222.i:                                   ; preds = %if.then.i33.i, %ehcleanup221.i, %lpad107.i
  %.pn2.pn.pn.pn.pn.pn.pn.i = phi { i8*, i32 } [ %124, %lpad107.i ], [ %.pn2.pn.pn.pn.pn.pn.i, %ehcleanup221.i ], [ %.pn2.pn.pn.pn.pn.pn.i, %if.then.i33.i ]
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %84) #27
  br label %ehcleanup223.i

ehcleanup223.i:                                   ; preds = %ehcleanup222.i, %lpad93.i
  %.pn10.pn.i = phi { i8*, i32 } [ %.pn2.pn.pn.pn.pn.pn.pn.i, %ehcleanup222.i ], [ %119, %lpad93.i ]
  %175 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i49.i, align 8, !tbaa !32
  %tobool.not.i.i = icmp eq %"class.adept::Storage"* %175, null
  br i1 %tobool.not.i.i, label %ehcleanup224.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %ehcleanup223.i
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %175)
          to label %ehcleanup224.i unwind label %terminate.lpad.i.i

terminate.lpad.i.i:                               ; preds = %if.then.i.i
  %176 = landingpad { i8*, i32 }
          catch i8* null
  %177 = extractvalue { i8*, i32 } %176, 0
  call void @__clang_call_terminate(i8* %177) #29
  unreachable

ehcleanup224.i:                                   ; preds = %if.then.i.i, %ehcleanup223.i, %lpad74.i
  %.pn10.pn.pn.i = phi { i8*, i32 } [ %104, %lpad74.i ], [ %.pn10.pn.i, %ehcleanup223.i ], [ %.pn10.pn.i, %if.then.i.i ]
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %66) #27
  call void @_ZN5adept5StackD1Ev(%"class.adept::Stack"* nonnull dereferenceable(149) %stack72.i) #27
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %65) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %64) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %63) #27
  br label %eh.resume.i

eh.resume.i:                                      ; preds = %ehcleanup224.i, %ehcleanup63.i
  %.pn18.pn.pn.pn.i = phi { i8*, i32 } [ %.pn18.pn.pn.i, %ehcleanup63.i ], [ %.pn10.pn.pn.i, %ehcleanup224.i ]
  resume { i8*, i32 } %.pn18.pn.pn.pn.i

_ZL12adept_sincosPdS_S_S_.exit:                   ; preds = %if.then.i221.i, %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit228.i
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %66) #27
  call void @_ZN5adept5StackD1Ev(%"class.adept::Stack"* nonnull dereferenceable(149) %stack72.i) #27
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %65) #27
  %tv_sec.i208.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end70.i, i64 0, i32 0
  %178 = load i64, i64* %tv_sec.i208.i, align 8, !tbaa !2
  %tv_sec1.i209.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start69.i, i64 0, i32 0
  %179 = load i64, i64* %tv_sec1.i209.i, align 8, !tbaa !2
  %sub.i210.i = sub nsw i64 %178, %179
  %conv.i211.i = sitofp i64 %sub.i210.i to double
  %tv_usec.i212.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end70.i, i64 0, i32 1
  %180 = load i64, i64* %tv_usec.i212.i, align 8, !tbaa !7
  %tv_usec2.i213.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start69.i, i64 0, i32 1
  %181 = load i64, i64* %tv_usec2.i213.i, align 8, !tbaa !7
  %sub3.i214.i = sub nsw i64 %180, %181
  %conv4.i215.i = sitofp i64 %sub3.i214.i to double
  %mul.i216.i = fmul fast double %conv4.i215.i, 0x3EB0C6F7A0B5ED8D
  %add.i217.i = fadd fast double %mul.i216.i, %conv.i211.i
  %conv5.i218.i = fptrunc double %add.i217.i to float
  %conv228.i = fpext float %conv5.i218.i to double
  %182 = load double, double* %54, align 8, !tbaa !8
  %183 = load double, double* %55, align 8, !tbaa !8
  %184 = load double, double* %56, align 8, !tbaa !8
  %call232.i = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), double %conv228.i, double %182, double %183, double %184)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %64) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %63) #27
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(32000000) %call1, i8 0, i64 32000000, i1 false)
  %185 = bitcast %struct.timeval* %start.i44 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %185) #27
  %186 = bitcast %struct.timeval* %end.i45 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %186) #27
  %call.i = call i32 @gettimeofday(%struct.timeval* nonnull %start.i44, i8* null) #27
  %call.i.i = call noalias dereferenceable_or_null(16000) i8* @malloc(i64 16000) #27
  %187 = bitcast i8* %call.i.i to double*
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %middle.block32, %_ZL12adept_sincosPdS_S_S_.exit
  %indvars.iv58.i.i = phi i64 [ 0, %_ZL12adept_sincosPdS_S_S_.exit ], [ %indvars.iv.next59.i.i, %middle.block32 ]
  %arrayidx.i.i46 = getelementptr inbounds double, double* %187, i64 %indvars.iv58.i.i
  store double 0.000000e+00, double* %arrayidx.i.i46, align 8, !tbaa !8
  %188 = mul nuw nsw i64 %indvars.iv58.i.i, 2000
  br label %vector.body34

vector.body34:                                    ; preds = %vector.body34, %for.body.i.i
  %index36 = phi i64 [ 0, %for.body.i.i ], [ %index.next37, %vector.body34 ]
  %vec.phi = phi <2 x double> [ zeroinitializer, %for.body.i.i ], [ %200, %vector.body34 ]
  %vec.phi40 = phi <2 x double> [ zeroinitializer, %for.body.i.i ], [ %201, %vector.body34 ]
  %189 = add nuw nsw i64 %index36, %188
  %190 = getelementptr inbounds double, double* %0, i64 %189
  %191 = bitcast double* %190 to <2 x double>*
  %wide.load41 = load <2 x double>, <2 x double>* %191, align 8, !tbaa !8
  %192 = getelementptr inbounds double, double* %190, i64 2
  %193 = bitcast double* %192 to <2 x double>*
  %wide.load42 = load <2 x double>, <2 x double>* %193, align 8, !tbaa !8
  %194 = getelementptr inbounds double, double* %3, i64 %index36
  %195 = bitcast double* %194 to <2 x double>*
  %wide.load43 = load <2 x double>, <2 x double>* %195, align 8, !tbaa !8
  %196 = getelementptr inbounds double, double* %194, i64 2
  %197 = bitcast double* %196 to <2 x double>*
  %wide.load44 = load <2 x double>, <2 x double>* %197, align 8, !tbaa !8
  %198 = fmul fast <2 x double> %wide.load43, %wide.load41
  %199 = fmul fast <2 x double> %wide.load44, %wide.load42
  %200 = fadd fast <2 x double> %198, %vec.phi
  %201 = fadd fast <2 x double> %199, %vec.phi40
  %index.next37 = add i64 %index36, 4
  %202 = icmp eq i64 %index.next37, 2000
  br i1 %202, label %middle.block32, label %vector.body34, !llvm.loop !108

middle.block32:                                   ; preds = %vector.body34
  %bin.rdx = fadd fast <2 x double> %201, %200
  %203 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx)
  store double %203, double* %arrayidx.i.i46, align 8, !tbaa !8
  %indvars.iv.next59.i.i = add nuw nsw i64 %indvars.iv58.i.i, 1
  %exitcond61.not.i.i = icmp eq i64 %indvars.iv.next59.i.i, 2000
  br i1 %exitcond61.not.i.i, label %vector.body47, label %for.body.i.i, !llvm.loop !14

vector.body47:                                    ; preds = %middle.block32, %vector.body47
  %index49 = phi i64 [ %index.next50, %vector.body47 ], [ 0, %middle.block32 ]
  %vec.phi53 = phi <2 x double> [ %210, %vector.body47 ], [ zeroinitializer, %middle.block32 ]
  %vec.phi54 = phi <2 x double> [ %211, %vector.body47 ], [ zeroinitializer, %middle.block32 ]
  %204 = getelementptr inbounds double, double* %187, i64 %index49
  %205 = bitcast double* %204 to <2 x double>*
  %wide.load55 = load <2 x double>, <2 x double>* %205, align 8, !tbaa !8
  %206 = getelementptr inbounds double, double* %204, i64 2
  %207 = bitcast double* %206 to <2 x double>*
  %wide.load56 = load <2 x double>, <2 x double>* %207, align 8, !tbaa !8
  %208 = fmul fast <2 x double> %wide.load55, %wide.load55
  %209 = fmul fast <2 x double> %wide.load56, %wide.load56
  %210 = fadd fast <2 x double> %208, %vec.phi53
  %211 = fadd fast <2 x double> %209, %vec.phi54
  %index.next50 = add i64 %index49, 4
  %212 = icmp eq i64 %index.next50, 2000
  br i1 %212, label %middle.block45, label %vector.body47, !llvm.loop !109

middle.block45:                                   ; preds = %vector.body47
  %bin.rdx57 = fadd fast <2 x double> %211, %210
  %213 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx57)
  call void @free(i8* nonnull %call.i.i) #27
  %call2.i = call i32 @gettimeofday(%struct.timeval* nonnull %end.i45, i8* null) #27
  %tv_sec.i.i48 = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i45, i64 0, i32 0
  %214 = load i64, i64* %tv_sec.i.i48, align 8, !tbaa !2
  %tv_sec1.i.i49 = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i44, i64 0, i32 0
  %215 = load i64, i64* %tv_sec1.i.i49, align 8, !tbaa !2
  %sub.i.i50 = sub nsw i64 %214, %215
  %conv.i.i51 = sitofp i64 %sub.i.i50 to double
  %tv_usec.i.i52 = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i45, i64 0, i32 1
  %216 = load i64, i64* %tv_usec.i.i52, align 8, !tbaa !7
  %tv_usec2.i.i53 = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i44, i64 0, i32 1
  %217 = load i64, i64* %tv_usec2.i.i53, align 8, !tbaa !7
  %sub3.i.i54 = sub nsw i64 %216, %217
  %conv4.i.i55 = sitofp i64 %sub3.i.i54 to double
  %mul.i.i56 = fmul fast double %conv4.i.i55, 0x3EB0C6F7A0B5ED8D
  %add.i.i57 = fadd fast double %mul.i.i56, %conv.i.i51
  %conv5.i.i58 = fptrunc double %add.i.i57 to float
  %conv.i59 = fpext float %conv5.i.i58 to double
  %call4.i = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.26, i64 0, i64 0), double %conv.i59, double %213) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %186) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %185) #27
  %218 = bitcast %struct.timeval* %start5.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %218) #27
  %219 = bitcast %struct.timeval* %end6.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %219) #27
  %220 = load double, double* %0, align 8, !tbaa !8
  %call7.i = call i32 @gettimeofday(%struct.timeval* nonnull %start5.i, i8* null) #27
  br label %for.body.i

for.cond.cleanup.i60:                             ; preds = %middle.block59
  %call12.i = call i32 @gettimeofday(%struct.timeval* nonnull %end6.i, i8* null) #27
  %tv_sec.i1.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end6.i, i64 0, i32 0
  %221 = load i64, i64* %tv_sec.i1.i, align 8, !tbaa !2
  %tv_sec1.i2.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start5.i, i64 0, i32 0
  %222 = load i64, i64* %tv_sec1.i2.i, align 8, !tbaa !2
  %sub.i3.i = sub nsw i64 %221, %222
  %conv.i4.i = sitofp i64 %sub.i3.i to double
  %tv_usec.i5.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end6.i, i64 0, i32 1
  %223 = load i64, i64* %tv_usec.i5.i, align 8, !tbaa !7
  %tv_usec2.i6.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start5.i, i64 0, i32 1
  %224 = load i64, i64* %tv_usec2.i6.i, align 8, !tbaa !7
  %sub3.i7.i = sub nsw i64 %223, %224
  %conv4.i8.i = sitofp i64 %sub3.i7.i to double
  %mul.i9.i = fmul fast double %conv4.i8.i, 0x3EB0C6F7A0B5ED8D
  %add.i10.i = fadd fast double %mul.i9.i, %conv.i4.i
  %conv5.i11.i = fptrunc double %add.i10.i to float
  %conv14.i = fpext float %conv5.i11.i to double
  %call15.i = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i64 0, i64 0), double %conv14.i, double %add11.i) #27
  store double %220, double* %0, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %219) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %218) #27
  %225 = bitcast %struct.timeval* %start17.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %225) #27
  %226 = bitcast %struct.timeval* %end18.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %226) #27
  %call19.i = call i32 @gettimeofday(%struct.timeval* nonnull %start17.i, i8* null) #27
  br label %for.cond26.preheader.i

for.body.i:                                       ; preds = %middle.block59, %middle.block45
  %sum.051.i = phi double [ 0.000000e+00, %middle.block45 ], [ %add11.i, %middle.block59 ]
  %i.050.i = phi i32 [ 0, %middle.block45 ], [ %inc.i, %middle.block59 ]
  %conv8.i = sitofp i32 %i.050.i to double
  %div.i = fmul fast double %conv8.i, 1.000000e-08
  %add.i = fadd fast double %div.i, %220
  store double %add.i, double* %0, align 8, !tbaa !8
  %call.i12.i = call noalias dereferenceable_or_null(16000) i8* @malloc(i64 16000) #27
  %227 = bitcast i8* %call.i12.i to double*
  br label %for.body.i15.i

for.body.i15.i:                                   ; preds = %middle.block73, %for.body.i
  %indvars.iv58.i13.i = phi i64 [ 0, %for.body.i ], [ %indvars.iv.next59.i16.i, %middle.block73 ]
  %arrayidx.i14.i = getelementptr inbounds double, double* %227, i64 %indvars.iv58.i13.i
  store double 0.000000e+00, double* %arrayidx.i14.i, align 8, !tbaa !8
  %228 = mul nuw nsw i64 %indvars.iv58.i13.i, 2000
  br label %vector.body75

vector.body75:                                    ; preds = %vector.body75, %for.body.i15.i
  %index77 = phi i64 [ 0, %for.body.i15.i ], [ %index.next78, %vector.body75 ]
  %vec.phi81 = phi <2 x double> [ zeroinitializer, %for.body.i15.i ], [ %240, %vector.body75 ]
  %vec.phi82 = phi <2 x double> [ zeroinitializer, %for.body.i15.i ], [ %241, %vector.body75 ]
  %229 = add nuw nsw i64 %index77, %228
  %230 = getelementptr inbounds double, double* %0, i64 %229
  %231 = bitcast double* %230 to <2 x double>*
  %wide.load83 = load <2 x double>, <2 x double>* %231, align 8, !tbaa !8
  %232 = getelementptr inbounds double, double* %230, i64 2
  %233 = bitcast double* %232 to <2 x double>*
  %wide.load84 = load <2 x double>, <2 x double>* %233, align 8, !tbaa !8
  %234 = getelementptr inbounds double, double* %3, i64 %index77
  %235 = bitcast double* %234 to <2 x double>*
  %wide.load85 = load <2 x double>, <2 x double>* %235, align 8, !tbaa !8
  %236 = getelementptr inbounds double, double* %234, i64 2
  %237 = bitcast double* %236 to <2 x double>*
  %wide.load86 = load <2 x double>, <2 x double>* %237, align 8, !tbaa !8
  %238 = fmul fast <2 x double> %wide.load85, %wide.load83
  %239 = fmul fast <2 x double> %wide.load86, %wide.load84
  %240 = fadd fast <2 x double> %238, %vec.phi81
  %241 = fadd fast <2 x double> %239, %vec.phi82
  %index.next78 = add i64 %index77, 4
  %242 = icmp eq i64 %index.next78, 2000
  br i1 %242, label %middle.block73, label %vector.body75, !llvm.loop !110

middle.block73:                                   ; preds = %vector.body75
  %bin.rdx87 = fadd fast <2 x double> %241, %240
  %243 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx87)
  store double %243, double* %arrayidx.i14.i, align 8, !tbaa !8
  %indvars.iv.next59.i16.i = add nuw nsw i64 %indvars.iv58.i13.i, 1
  %exitcond61.not.i17.i = icmp eq i64 %indvars.iv.next59.i16.i, 2000
  br i1 %exitcond61.not.i17.i, label %vector.body61, label %for.body.i15.i, !llvm.loop !14

vector.body61:                                    ; preds = %middle.block73, %vector.body61
  %index63 = phi i64 [ %index.next64, %vector.body61 ], [ 0, %middle.block73 ]
  %vec.phi67 = phi <2 x double> [ %250, %vector.body61 ], [ zeroinitializer, %middle.block73 ]
  %vec.phi68 = phi <2 x double> [ %251, %vector.body61 ], [ zeroinitializer, %middle.block73 ]
  %244 = getelementptr inbounds double, double* %227, i64 %index63
  %245 = bitcast double* %244 to <2 x double>*
  %wide.load69 = load <2 x double>, <2 x double>* %245, align 8, !tbaa !8
  %246 = getelementptr inbounds double, double* %244, i64 2
  %247 = bitcast double* %246 to <2 x double>*
  %wide.load70 = load <2 x double>, <2 x double>* %247, align 8, !tbaa !8
  %248 = fmul fast <2 x double> %wide.load69, %wide.load69
  %249 = fmul fast <2 x double> %wide.load70, %wide.load70
  %250 = fadd fast <2 x double> %248, %vec.phi67
  %251 = fadd fast <2 x double> %249, %vec.phi68
  %index.next64 = add i64 %index63, 4
  %252 = icmp eq i64 %index.next64, 2000
  br i1 %252, label %middle.block59, label %vector.body61, !llvm.loop !111

middle.block59:                                   ; preds = %vector.body61
  %bin.rdx71 = fadd fast <2 x double> %251, %250
  %253 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx71)
  call void @free(i8* nonnull %call.i12.i) #27
  %add11.i = fadd fast double %253, %sum.051.i
  %inc.i = add nuw nsw i32 %i.050.i, 1
  %exitcond54.not.i = icmp eq i32 %inc.i, 1000
  br i1 %exitcond54.not.i, label %for.cond.cleanup.i60, label %for.body.i, !llvm.loop !112

for.cond26.preheader.i:                           ; preds = %for.cond.cleanup37.i, %for.cond.cleanup.i60
  %i20.049.i = phi i32 [ 0, %for.cond.cleanup.i60 ], [ %inc47.i, %for.cond.cleanup37.i ]
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(32000000) %call1, i8 0, i64 32000000, i1 false) #27
  call void @_Z13matvec_real_bPdS_S_d(double* nonnull %0, double* nonnull %4, double* nonnull %3, double 1.000000e+00) #27
  br label %vector.body91

vector.body91:                                    ; preds = %vector.body91, %for.cond26.preheader.i
  %index93 = phi i64 [ 0, %for.cond26.preheader.i ], [ %index.next94, %vector.body91 ]
  %254 = getelementptr inbounds double, double* %4, i64 %index93
  %255 = bitcast double* %254 to <2 x double>*
  %wide.load97 = load <2 x double>, <2 x double>* %255, align 8, !tbaa !8
  %256 = getelementptr inbounds double, double* %254, i64 2
  %257 = bitcast double* %256 to <2 x double>*
  %wide.load98 = load <2 x double>, <2 x double>* %257, align 8, !tbaa !8
  %258 = fmul fast <2 x double> %wide.load97, <double 1.000000e-08, double 1.000000e-08>
  %259 = fmul fast <2 x double> %wide.load98, <double 1.000000e-08, double 1.000000e-08>
  %260 = getelementptr inbounds double, double* %0, i64 %index93
  %261 = bitcast double* %260 to <2 x double>*
  %wide.load99 = load <2 x double>, <2 x double>* %261, align 8, !tbaa !8
  %262 = getelementptr inbounds double, double* %260, i64 2
  %263 = bitcast double* %262 to <2 x double>*
  %wide.load100 = load <2 x double>, <2 x double>* %263, align 8, !tbaa !8
  %264 = fsub fast <2 x double> %wide.load99, %258
  %265 = fsub fast <2 x double> %wide.load100, %259
  %266 = bitcast double* %260 to <2 x double>*
  store <2 x double> %264, <2 x double>* %266, align 8, !tbaa !8
  %267 = bitcast double* %262 to <2 x double>*
  store <2 x double> %265, <2 x double>* %267, align 8, !tbaa !8
  %index.next94 = add i64 %index93, 4
  %268 = icmp eq i64 %index.next94, 4000000
  br i1 %268, label %for.cond.cleanup37.i, label %vector.body91, !llvm.loop !113

for.cond.cleanup37.i:                             ; preds = %vector.body91
  %inc47.i = add nuw nsw i32 %i20.049.i, 1
  %exitcond53.not.i = icmp eq i32 %inc47.i, 1000
  br i1 %exitcond53.not.i, label %_ZL15tapenade_sincosPdS_S_S_.exit, label %for.cond26.preheader.i, !llvm.loop !114

_ZL15tapenade_sincosPdS_S_S_.exit:                ; preds = %for.cond.cleanup37.i
  %call49.i = call i32 @gettimeofday(%struct.timeval* nonnull %end18.i, i8* null) #27
  %tv_sec.i36.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end18.i, i64 0, i32 0
  %269 = load i64, i64* %tv_sec.i36.i, align 8, !tbaa !2
  %tv_sec1.i37.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start17.i, i64 0, i32 0
  %270 = load i64, i64* %tv_sec1.i37.i, align 8, !tbaa !2
  %sub.i38.i = sub nsw i64 %269, %270
  %conv.i39.i = sitofp i64 %sub.i38.i to double
  %tv_usec.i40.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end18.i, i64 0, i32 1
  %271 = load i64, i64* %tv_usec.i40.i, align 8, !tbaa !7
  %tv_usec2.i41.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start17.i, i64 0, i32 1
  %272 = load i64, i64* %tv_usec2.i41.i, align 8, !tbaa !7
  %sub3.i42.i = sub nsw i64 %271, %272
  %conv4.i43.i = sitofp i64 %sub3.i42.i to double
  %mul.i44.i = fmul fast double %conv4.i43.i, 0x3EB0C6F7A0B5ED8D
  %add.i45.i = fadd fast double %mul.i44.i, %conv.i39.i
  %conv5.i46.i = fptrunc double %add.i45.i to float
  %conv51.i = fpext float %conv5.i46.i to double
  %273 = load double, double* %54, align 8, !tbaa !8
  %274 = load double, double* %55, align 8, !tbaa !8
  %275 = load double, double* %56, align 8, !tbaa !8
  %call55.i = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.28, i64 0, i64 0), double %conv51.i, double %273, double %274, double %275) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %226) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %225) #27
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(32000000) %call1, i8 0, i64 32000000, i1 false)
  %276 = bitcast %struct.timeval* %start.i65 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %276) #27
  %277 = bitcast %struct.timeval* %end.i66 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %277) #27
  %call.i71 = call i32 @gettimeofday(%struct.timeval* nonnull %start.i65, i8* null) #27
  %call.i.i72 = call noalias dereferenceable_or_null(16000) i8* @malloc(i64 16000) #27
  %278 = bitcast i8* %call.i.i72 to double*
  br label %for.body.i.i75

for.body.i.i75:                                   ; preds = %middle.block101, %_ZL15tapenade_sincosPdS_S_S_.exit
  %indvars.iv58.i.i73 = phi i64 [ 0, %_ZL15tapenade_sincosPdS_S_S_.exit ], [ %indvars.iv.next59.i.i76, %middle.block101 ]
  %arrayidx.i.i74 = getelementptr inbounds double, double* %278, i64 %indvars.iv58.i.i73
  store double 0.000000e+00, double* %arrayidx.i.i74, align 8, !tbaa !8
  %279 = mul nuw nsw i64 %indvars.iv58.i.i73, 2000
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %for.body.i.i75
  %index105 = phi i64 [ 0, %for.body.i.i75 ], [ %index.next106, %vector.body103 ]
  %vec.phi109 = phi <2 x double> [ zeroinitializer, %for.body.i.i75 ], [ %291, %vector.body103 ]
  %vec.phi110 = phi <2 x double> [ zeroinitializer, %for.body.i.i75 ], [ %292, %vector.body103 ]
  %280 = add nuw nsw i64 %index105, %279
  %281 = getelementptr inbounds double, double* %0, i64 %280
  %282 = bitcast double* %281 to <2 x double>*
  %wide.load111 = load <2 x double>, <2 x double>* %282, align 8, !tbaa !8
  %283 = getelementptr inbounds double, double* %281, i64 2
  %284 = bitcast double* %283 to <2 x double>*
  %wide.load112 = load <2 x double>, <2 x double>* %284, align 8, !tbaa !8
  %285 = getelementptr inbounds double, double* %3, i64 %index105
  %286 = bitcast double* %285 to <2 x double>*
  %wide.load113 = load <2 x double>, <2 x double>* %286, align 8, !tbaa !8
  %287 = getelementptr inbounds double, double* %285, i64 2
  %288 = bitcast double* %287 to <2 x double>*
  %wide.load114 = load <2 x double>, <2 x double>* %288, align 8, !tbaa !8
  %289 = fmul fast <2 x double> %wide.load113, %wide.load111
  %290 = fmul fast <2 x double> %wide.load114, %wide.load112
  %291 = fadd fast <2 x double> %289, %vec.phi109
  %292 = fadd fast <2 x double> %290, %vec.phi110
  %index.next106 = add i64 %index105, 4
  %293 = icmp eq i64 %index.next106, 2000
  br i1 %293, label %middle.block101, label %vector.body103, !llvm.loop !115

middle.block101:                                  ; preds = %vector.body103
  %bin.rdx115 = fadd fast <2 x double> %292, %291
  %294 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx115)
  store double %294, double* %arrayidx.i.i74, align 8, !tbaa !8
  %indvars.iv.next59.i.i76 = add nuw nsw i64 %indvars.iv58.i.i73, 1
  %exitcond61.not.i.i77 = icmp eq i64 %indvars.iv.next59.i.i76, 2000
  br i1 %exitcond61.not.i.i77, label %vector.body119, label %for.body.i.i75, !llvm.loop !14

vector.body119:                                   ; preds = %middle.block101, %vector.body119
  %index121 = phi i64 [ %index.next122, %vector.body119 ], [ 0, %middle.block101 ]
  %vec.phi125 = phi <2 x double> [ %301, %vector.body119 ], [ zeroinitializer, %middle.block101 ]
  %vec.phi126 = phi <2 x double> [ %302, %vector.body119 ], [ zeroinitializer, %middle.block101 ]
  %295 = getelementptr inbounds double, double* %278, i64 %index121
  %296 = bitcast double* %295 to <2 x double>*
  %wide.load127 = load <2 x double>, <2 x double>* %296, align 8, !tbaa !8
  %297 = getelementptr inbounds double, double* %295, i64 2
  %298 = bitcast double* %297 to <2 x double>*
  %wide.load128 = load <2 x double>, <2 x double>* %298, align 8, !tbaa !8
  %299 = fmul fast <2 x double> %wide.load127, %wide.load127
  %300 = fmul fast <2 x double> %wide.load128, %wide.load128
  %301 = fadd fast <2 x double> %299, %vec.phi125
  %302 = fadd fast <2 x double> %300, %vec.phi126
  %index.next122 = add i64 %index121, 4
  %303 = icmp eq i64 %index.next122, 2000
  br i1 %303, label %middle.block117, label %vector.body119, !llvm.loop !116

middle.block117:                                  ; preds = %vector.body119
  %bin.rdx129 = fadd fast <2 x double> %302, %301
  %304 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx129)
  call void @free(i8* nonnull %call.i.i72) #27
  %call2.i96 = call i32 @gettimeofday(%struct.timeval* nonnull %end.i66, i8* null) #27
  %tv_sec.i.i97 = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i66, i64 0, i32 0
  %305 = load i64, i64* %tv_sec.i.i97, align 8, !tbaa !2
  %tv_sec1.i.i98 = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i65, i64 0, i32 0
  %306 = load i64, i64* %tv_sec1.i.i98, align 8, !tbaa !2
  %sub.i.i99 = sub nsw i64 %305, %306
  %conv.i.i100 = sitofp i64 %sub.i.i99 to double
  %tv_usec.i.i101 = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i66, i64 0, i32 1
  %307 = load i64, i64* %tv_usec.i.i101, align 8, !tbaa !7
  %tv_usec2.i.i102 = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i65, i64 0, i32 1
  %308 = load i64, i64* %tv_usec2.i.i102, align 8, !tbaa !7
  %sub3.i.i103 = sub nsw i64 %307, %308
  %conv4.i.i104 = sitofp i64 %sub3.i.i103 to double
  %mul.i.i105 = fmul fast double %conv4.i.i104, 0x3EB0C6F7A0B5ED8D
  %add.i.i106 = fadd fast double %mul.i.i105, %conv.i.i100
  %conv5.i.i107 = fptrunc double %add.i.i106 to float
  %conv.i108 = fpext float %conv5.i.i107 to double
  %call4.i109 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.29, i64 0, i64 0), double %conv.i108, double %304)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %277) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %276) #27
  %309 = bitcast %struct.timeval* %start5.i67 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %309) #27
  %310 = bitcast %struct.timeval* %end6.i68 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %310) #27
  %311 = load double, double* %0, align 8, !tbaa !8
  %call7.i110 = call i32 @gettimeofday(%struct.timeval* nonnull %start5.i67, i8* null) #27
  br label %for.body.i133

for.cond.cleanup.i127:                            ; preds = %middle.block131
  %call12.i112 = call i32 @gettimeofday(%struct.timeval* nonnull %end6.i68, i8* null) #27
  %tv_sec.i1.i113 = getelementptr inbounds %struct.timeval, %struct.timeval* %end6.i68, i64 0, i32 0
  %312 = load i64, i64* %tv_sec.i1.i113, align 8, !tbaa !2
  %tv_sec1.i2.i114 = getelementptr inbounds %struct.timeval, %struct.timeval* %start5.i67, i64 0, i32 0
  %313 = load i64, i64* %tv_sec1.i2.i114, align 8, !tbaa !2
  %sub.i3.i115 = sub nsw i64 %312, %313
  %conv.i4.i116 = sitofp i64 %sub.i3.i115 to double
  %tv_usec.i5.i117 = getelementptr inbounds %struct.timeval, %struct.timeval* %end6.i68, i64 0, i32 1
  %314 = load i64, i64* %tv_usec.i5.i117, align 8, !tbaa !7
  %tv_usec2.i6.i118 = getelementptr inbounds %struct.timeval, %struct.timeval* %start5.i67, i64 0, i32 1
  %315 = load i64, i64* %tv_usec2.i6.i118, align 8, !tbaa !7
  %sub3.i7.i119 = sub nsw i64 %314, %315
  %conv4.i8.i120 = sitofp i64 %sub3.i7.i119 to double
  %mul.i9.i121 = fmul fast double %conv4.i8.i120, 0x3EB0C6F7A0B5ED8D
  %add.i10.i122 = fadd fast double %mul.i9.i121, %conv.i4.i116
  %conv5.i11.i123 = fptrunc double %add.i10.i122 to float
  %conv14.i124 = fpext float %conv5.i11.i123 to double
  %call15.i125 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i64 0, i64 0), double %conv14.i124, double %add11.i134)
  store double %311, double* %0, align 8, !tbaa !8
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %310) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %309) #27
  %316 = bitcast %struct.timeval* %start17.i69 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %316) #27
  %317 = bitcast %struct.timeval* %end18.i70 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %317) #27
  %call19.i126 = call i32 @gettimeofday(%struct.timeval* nonnull %start17.i69, i8* null) #27
  br label %for.cond26.preheader.i138

for.body.i133:                                    ; preds = %middle.block131, %middle.block117
  %sum.051.i128 = phi double [ 0.000000e+00, %middle.block117 ], [ %add11.i134, %middle.block131 ]
  %i.050.i129 = phi i32 [ 0, %middle.block117 ], [ %inc.i135, %middle.block131 ]
  %conv8.i130 = sitofp i32 %i.050.i129 to double
  %div.i131 = fmul fast double %conv8.i130, 1.000000e-08
  %add.i132 = fadd fast double %div.i131, %311
  store double %add.i132, double* %0, align 8, !tbaa !8
  %call.i23.i = call noalias dereferenceable_or_null(16000) i8* @malloc(i64 16000) #27
  %318 = bitcast i8* %call.i23.i to double*
  br label %for.body.i26.i

for.body.i26.i:                                   ; preds = %middle.block145, %for.body.i133
  %indvars.iv58.i24.i = phi i64 [ 0, %for.body.i133 ], [ %indvars.iv.next59.i27.i, %middle.block145 ]
  %arrayidx.i25.i = getelementptr inbounds double, double* %318, i64 %indvars.iv58.i24.i
  store double 0.000000e+00, double* %arrayidx.i25.i, align 8, !tbaa !8
  %319 = mul nuw nsw i64 %indvars.iv58.i24.i, 2000
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %for.body.i26.i
  %index149 = phi i64 [ 0, %for.body.i26.i ], [ %index.next150, %vector.body147 ]
  %vec.phi153 = phi <2 x double> [ zeroinitializer, %for.body.i26.i ], [ %331, %vector.body147 ]
  %vec.phi154 = phi <2 x double> [ zeroinitializer, %for.body.i26.i ], [ %332, %vector.body147 ]
  %320 = add nuw nsw i64 %index149, %319
  %321 = getelementptr inbounds double, double* %0, i64 %320
  %322 = bitcast double* %321 to <2 x double>*
  %wide.load155 = load <2 x double>, <2 x double>* %322, align 8, !tbaa !8
  %323 = getelementptr inbounds double, double* %321, i64 2
  %324 = bitcast double* %323 to <2 x double>*
  %wide.load156 = load <2 x double>, <2 x double>* %324, align 8, !tbaa !8
  %325 = getelementptr inbounds double, double* %3, i64 %index149
  %326 = bitcast double* %325 to <2 x double>*
  %wide.load157 = load <2 x double>, <2 x double>* %326, align 8, !tbaa !8
  %327 = getelementptr inbounds double, double* %325, i64 2
  %328 = bitcast double* %327 to <2 x double>*
  %wide.load158 = load <2 x double>, <2 x double>* %328, align 8, !tbaa !8
  %329 = fmul fast <2 x double> %wide.load157, %wide.load155
  %330 = fmul fast <2 x double> %wide.load158, %wide.load156
  %331 = fadd fast <2 x double> %329, %vec.phi153
  %332 = fadd fast <2 x double> %330, %vec.phi154
  %index.next150 = add i64 %index149, 4
  %333 = icmp eq i64 %index.next150, 2000
  br i1 %333, label %middle.block145, label %vector.body147, !llvm.loop !117

middle.block145:                                  ; preds = %vector.body147
  %bin.rdx159 = fadd fast <2 x double> %332, %331
  %334 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx159)
  store double %334, double* %arrayidx.i25.i, align 8, !tbaa !8
  %indvars.iv.next59.i27.i = add nuw nsw i64 %indvars.iv58.i24.i, 1
  %exitcond61.not.i28.i = icmp eq i64 %indvars.iv.next59.i27.i, 2000
  br i1 %exitcond61.not.i28.i, label %vector.body133, label %for.body.i26.i, !llvm.loop !14

vector.body133:                                   ; preds = %middle.block145, %vector.body133
  %index135 = phi i64 [ %index.next136, %vector.body133 ], [ 0, %middle.block145 ]
  %vec.phi139 = phi <2 x double> [ %341, %vector.body133 ], [ zeroinitializer, %middle.block145 ]
  %vec.phi140 = phi <2 x double> [ %342, %vector.body133 ], [ zeroinitializer, %middle.block145 ]
  %335 = getelementptr inbounds double, double* %318, i64 %index135
  %336 = bitcast double* %335 to <2 x double>*
  %wide.load141 = load <2 x double>, <2 x double>* %336, align 8, !tbaa !8
  %337 = getelementptr inbounds double, double* %335, i64 2
  %338 = bitcast double* %337 to <2 x double>*
  %wide.load142 = load <2 x double>, <2 x double>* %338, align 8, !tbaa !8
  %339 = fmul fast <2 x double> %wide.load141, %wide.load141
  %340 = fmul fast <2 x double> %wide.load142, %wide.load142
  %341 = fadd fast <2 x double> %339, %vec.phi139
  %342 = fadd fast <2 x double> %340, %vec.phi140
  %index.next136 = add i64 %index135, 4
  %343 = icmp eq i64 %index.next136, 2000
  br i1 %343, label %middle.block131, label %vector.body133, !llvm.loop !118

middle.block131:                                  ; preds = %vector.body133
  %bin.rdx143 = fadd fast <2 x double> %342, %341
  %344 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx143)
  call void @free(i8* nonnull %call.i23.i) #27
  %add11.i134 = fadd fast double %344, %sum.051.i128
  %inc.i135 = add nuw nsw i32 %i.050.i129, 1
  %exitcond54.not.i136 = icmp eq i32 %inc.i135, 1000
  br i1 %exitcond54.not.i136, label %for.cond.cleanup.i127, label %for.body.i133, !llvm.loop !119

for.cond26.preheader.i138:                        ; preds = %for.cond.cleanup38.i, %for.cond.cleanup.i127
  %i20.049.i137 = phi i32 [ 0, %for.cond.cleanup.i127 ], [ %inc48.i, %for.cond.cleanup38.i ]
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(32000000) %call1, i8 0, i64 32000000, i1 false)
  %call.i14 = call noalias nonnull dereferenceable(16000) dereferenceable_or_null(16000) i8* @malloc(i64 16000) #27
  %"call'mi.i" = call noalias nonnull dereferenceable(16000) dereferenceable_or_null(16000) i8* @malloc(i64 16000) #27
  call void @llvm.memset.p0i8.i64(i8* nonnull align 1 dereferenceable(16000) dereferenceable_or_null(16000) %"call'mi.i", i8 0, i64 16000, i1 false) #27
  %345 = bitcast i8* %call.i14 to double*
  br label %for.body.i16

for.body.i16:                                     ; preds = %middle.block211, %for.cond26.preheader.i138
  %iv.i = phi i64 [ %iv.next.i, %middle.block211 ], [ 0, %for.cond26.preheader.i138 ]
  %arrayidx.i15 = getelementptr inbounds double, double* %345, i64 %iv.i, !node !120
  store double 0.000000e+00, double* %arrayidx.i15, align 8, !tbaa !8
  %346 = mul nuw nsw i64 %iv.i, 2000
  br label %vector.body213

vector.body213:                                   ; preds = %vector.body213, %for.body.i16
  %index215 = phi i64 [ 0, %for.body.i16 ], [ %index.next216, %vector.body213 ]
  %vec.phi219 = phi <2 x double> [ zeroinitializer, %for.body.i16 ], [ %358, %vector.body213 ]
  %vec.phi220 = phi <2 x double> [ zeroinitializer, %for.body.i16 ], [ %359, %vector.body213 ]
  %347 = add nuw nsw i64 %index215, %346
  %348 = getelementptr inbounds double, double* %0, i64 %347, !node !120
  %349 = bitcast double* %348 to <2 x double>*
  %wide.load221 = load <2 x double>, <2 x double>* %349, align 8, !tbaa !8
  %350 = getelementptr inbounds double, double* %348, i64 2
  %351 = bitcast double* %350 to <2 x double>*
  %wide.load222 = load <2 x double>, <2 x double>* %351, align 8, !tbaa !8
  %352 = getelementptr inbounds double, double* %3, i64 %index215, !node !120
  %353 = bitcast double* %352 to <2 x double>*
  %wide.load223 = load <2 x double>, <2 x double>* %353, align 8, !tbaa !8
  %354 = getelementptr inbounds double, double* %352, i64 2
  %355 = bitcast double* %354 to <2 x double>*
  %wide.load224 = load <2 x double>, <2 x double>* %355, align 8, !tbaa !8
  %356 = fmul fast <2 x double> %wide.load223, %wide.load221
  %357 = fmul fast <2 x double> %wide.load224, %wide.load222
  %358 = fadd fast <2 x double> %356, %vec.phi219
  %359 = fadd fast <2 x double> %357, %vec.phi220
  %index.next216 = add i64 %index215, 4
  %360 = icmp eq i64 %index.next216, 2000
  br i1 %360, label %middle.block211, label %vector.body213, !llvm.loop !121

middle.block211:                                  ; preds = %vector.body213
  %bin.rdx225 = fadd fast <2 x double> %359, %358
  %361 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx225)
  %iv.next.i = add nuw nsw i64 %iv.i, 1
  store double %361, double* %arrayidx.i15, align 8, !tbaa !8
  %exitcond61.not.i = icmp eq i64 %iv.next.i, 2000
  br i1 %exitcond61.not.i, label %for.body20.preheader.i, label %for.body.i16, !llvm.loop !14

for.body20.preheader.i:                           ; preds = %middle.block211
  %"'ipc.i" = bitcast i8* %"call'mi.i" to double*
  br label %vector.body194

vector.body194:                                   ; preds = %vector.body194, %for.body20.preheader.i
  %index196 = phi i64 [ 0, %for.body20.preheader.i ], [ %index.next197.1, %vector.body194 ]
  %offset.idx200 = sub nuw nsw i64 1999, %index196
  %362 = getelementptr inbounds double, double* %345, i64 %offset.idx200
  %363 = getelementptr inbounds double, double* %362, i64 -1
  %364 = bitcast double* %363 to <2 x double>*
  %wide.load201 = load <2 x double>, <2 x double>* %364, align 8, !tbaa !8
  %365 = getelementptr inbounds double, double* %362, i64 -2
  %366 = getelementptr inbounds double, double* %365, i64 -1
  %367 = bitcast double* %366 to <2 x double>*
  %wide.load203 = load <2 x double>, <2 x double>* %367, align 8, !tbaa !8
  %368 = getelementptr inbounds double, double* %"'ipc.i", i64 %offset.idx200
  %369 = getelementptr inbounds double, double* %368, i64 -1
  %370 = bitcast double* %369 to <2 x double>*
  %wide.load205 = load <2 x double>, <2 x double>* %370, align 8
  %371 = getelementptr inbounds double, double* %368, i64 -2
  %372 = getelementptr inbounds double, double* %371, i64 -1
  %373 = bitcast double* %372 to <2 x double>*
  %wide.load207 = load <2 x double>, <2 x double>* %373, align 8
  %374 = fmul fast <2 x double> %wide.load201, <double 2.000000e+00, double 2.000000e+00>
  %375 = fmul fast <2 x double> %wide.load203, <double 2.000000e+00, double 2.000000e+00>
  %376 = fadd fast <2 x double> %374, %wide.load205
  %377 = fadd fast <2 x double> %375, %wide.load207
  %378 = bitcast double* %369 to <2 x double>*
  store <2 x double> %376, <2 x double>* %378, align 8
  %379 = bitcast double* %372 to <2 x double>*
  store <2 x double> %377, <2 x double>* %379, align 8
  %offset.idx200.1 = sub nsw i64 1995, %index196
  %380 = getelementptr inbounds double, double* %345, i64 %offset.idx200.1
  %381 = getelementptr inbounds double, double* %380, i64 -1
  %382 = bitcast double* %381 to <2 x double>*
  %wide.load201.1 = load <2 x double>, <2 x double>* %382, align 8, !tbaa !8
  %383 = getelementptr inbounds double, double* %380, i64 -2
  %384 = getelementptr inbounds double, double* %383, i64 -1
  %385 = bitcast double* %384 to <2 x double>*
  %wide.load203.1 = load <2 x double>, <2 x double>* %385, align 8, !tbaa !8
  %386 = getelementptr inbounds double, double* %"'ipc.i", i64 %offset.idx200.1
  %387 = getelementptr inbounds double, double* %386, i64 -1
  %388 = bitcast double* %387 to <2 x double>*
  %wide.load205.1 = load <2 x double>, <2 x double>* %388, align 8
  %389 = getelementptr inbounds double, double* %386, i64 -2
  %390 = getelementptr inbounds double, double* %389, i64 -1
  %391 = bitcast double* %390 to <2 x double>*
  %wide.load207.1 = load <2 x double>, <2 x double>* %391, align 8
  %392 = fmul fast <2 x double> %wide.load201.1, <double 2.000000e+00, double 2.000000e+00>
  %393 = fmul fast <2 x double> %wide.load203.1, <double 2.000000e+00, double 2.000000e+00>
  %394 = fadd fast <2 x double> %392, %wide.load205.1
  %395 = fadd fast <2 x double> %393, %wide.load207.1
  %396 = bitcast double* %387 to <2 x double>*
  store <2 x double> %394, <2 x double>* %396, align 8
  %397 = bitcast double* %390 to <2 x double>*
  store <2 x double> %395, <2 x double>* %397, align 8
  %index.next197.1 = add nuw nsw i64 %index196, 8
  %398 = icmp eq i64 %index.next197.1, 2000
  br i1 %398, label %invertfor.cond.cleanup3.i, label %vector.body194, !llvm.loop !122

invertfor.cond.cleanup3.i:                        ; preds = %vector.body194, %middle.block173
  %"iv'ac.0.i" = phi i64 [ %421, %middle.block173 ], [ 1999, %vector.body194 ]
  %"arrayidx'ipg_unwrap5.i" = getelementptr inbounds double, double* %"'ipc.i", i64 %"iv'ac.0.i"
  %399 = load double, double* %"arrayidx'ipg_unwrap5.i", align 8
  store double 0.000000e+00, double* %"arrayidx'ipg_unwrap5.i", align 8
  %_unwrap7.i = mul nuw nsw i64 %"iv'ac.0.i", 2000
  %broadcast.splatinsert = insertelement <2 x double> poison, double %399, i32 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer
  %broadcast.splatinsert184 = insertelement <2 x double> poison, double %399, i32 0
  %broadcast.splat185 = shufflevector <2 x double> %broadcast.splatinsert184, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body175

vector.body175:                                   ; preds = %vector.body175, %invertfor.cond.cleanup3.i
  %index177 = phi i64 [ 0, %invertfor.cond.cleanup3.i ], [ %index.next178, %vector.body175 ]
  %offset.idx = sub i64 1999, %index177
  %400 = getelementptr inbounds double, double* %3, i64 %offset.idx
  %401 = getelementptr inbounds double, double* %400, i64 -1
  %402 = bitcast double* %401 to <2 x double>*
  %wide.load181 = load <2 x double>, <2 x double>* %402, align 8, !tbaa !8
  %reverse = shufflevector <2 x double> %wide.load181, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %403 = getelementptr inbounds double, double* %400, i64 -2
  %404 = getelementptr inbounds double, double* %403, i64 -1
  %405 = bitcast double* %404 to <2 x double>*
  %wide.load182 = load <2 x double>, <2 x double>* %405, align 8, !tbaa !8
  %reverse183 = shufflevector <2 x double> %wide.load182, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %406 = fmul fast <2 x double> %reverse, %broadcast.splat
  %407 = fmul fast <2 x double> %reverse183, %broadcast.splat185
  %408 = add nuw nsw i64 %offset.idx, %_unwrap7.i
  %409 = getelementptr inbounds double, double* %4, i64 %408
  %410 = getelementptr inbounds double, double* %409, i64 -1
  %411 = bitcast double* %410 to <2 x double>*
  %wide.load186 = load <2 x double>, <2 x double>* %411, align 8
  %reverse187 = shufflevector <2 x double> %wide.load186, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %412 = getelementptr inbounds double, double* %409, i64 -2
  %413 = getelementptr inbounds double, double* %412, i64 -1
  %414 = bitcast double* %413 to <2 x double>*
  %wide.load188 = load <2 x double>, <2 x double>* %414, align 8
  %reverse189 = shufflevector <2 x double> %wide.load188, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %415 = fadd fast <2 x double> %reverse187, %406
  %416 = fadd fast <2 x double> %reverse189, %407
  %reverse190 = shufflevector <2 x double> %415, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %417 = bitcast double* %410 to <2 x double>*
  store <2 x double> %reverse190, <2 x double>* %417, align 8
  %reverse191 = shufflevector <2 x double> %416, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %418 = bitcast double* %413 to <2 x double>*
  store <2 x double> %reverse191, <2 x double>* %418, align 8
  %index.next178 = add i64 %index177, 4
  %419 = icmp eq i64 %index.next178, 2000
  br i1 %419, label %middle.block173, label %vector.body175, !llvm.loop !123

middle.block173:                                  ; preds = %vector.body175
  store double 0.000000e+00, double* %"arrayidx'ipg_unwrap5.i", align 8
  %420 = icmp eq i64 %"iv'ac.0.i", 0
  %421 = add nsw i64 %"iv'ac.0.i", -1
  br i1 %420, label %diffe_Z11matvec_realPdS_.exit, label %invertfor.cond.cleanup3.i

diffe_Z11matvec_realPdS_.exit:                    ; preds = %middle.block173
  call void @free(i8* nonnull %"call'mi.i") #27
  call void @free(i8* nonnull %call.i14) #27
  br label %vector.body163

vector.body163:                                   ; preds = %vector.body163, %diffe_Z11matvec_realPdS_.exit
  %index165 = phi i64 [ 0, %diffe_Z11matvec_realPdS_.exit ], [ %index.next166, %vector.body163 ]
  %422 = getelementptr inbounds double, double* %4, i64 %index165
  %423 = bitcast double* %422 to <2 x double>*
  %wide.load169 = load <2 x double>, <2 x double>* %423, align 8, !tbaa !8
  %424 = getelementptr inbounds double, double* %422, i64 2
  %425 = bitcast double* %424 to <2 x double>*
  %wide.load170 = load <2 x double>, <2 x double>* %425, align 8, !tbaa !8
  %426 = fmul fast <2 x double> %wide.load169, <double 1.000000e-08, double 1.000000e-08>
  %427 = fmul fast <2 x double> %wide.load170, <double 1.000000e-08, double 1.000000e-08>
  %428 = getelementptr inbounds double, double* %0, i64 %index165
  %429 = bitcast double* %428 to <2 x double>*
  %wide.load171 = load <2 x double>, <2 x double>* %429, align 8, !tbaa !8
  %430 = getelementptr inbounds double, double* %428, i64 2
  %431 = bitcast double* %430 to <2 x double>*
  %wide.load172 = load <2 x double>, <2 x double>* %431, align 8, !tbaa !8
  %432 = fsub fast <2 x double> %wide.load171, %426
  %433 = fsub fast <2 x double> %wide.load172, %427
  %434 = bitcast double* %428 to <2 x double>*
  store <2 x double> %432, <2 x double>* %434, align 8, !tbaa !8
  %435 = bitcast double* %430 to <2 x double>*
  store <2 x double> %433, <2 x double>* %435, align 8, !tbaa !8
  %index.next166 = add i64 %index165, 4
  %436 = icmp eq i64 %index.next166, 4000000
  br i1 %436, label %for.cond.cleanup38.i, label %vector.body163, !llvm.loop !124

for.cond.cleanup38.i:                             ; preds = %vector.body163
  %inc48.i = add nuw nsw i32 %i20.049.i137, 1
  %exitcond53.not.i142 = icmp eq i32 %inc48.i, 1000
  br i1 %exitcond53.not.i142, label %_ZL13enzyme_sincosPdS_S_S_.exit, label %for.cond26.preheader.i138, !llvm.loop !125

_ZL13enzyme_sincosPdS_S_S_.exit:                  ; preds = %for.cond.cleanup38.i
  %call50.i = call i32 @gettimeofday(%struct.timeval* nonnull %end18.i70, i8* null) #27
  %tv_sec.i12.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end18.i70, i64 0, i32 0
  %437 = load i64, i64* %tv_sec.i12.i, align 8, !tbaa !2
  %tv_sec1.i13.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start17.i69, i64 0, i32 0
  %438 = load i64, i64* %tv_sec1.i13.i, align 8, !tbaa !2
  %sub.i14.i = sub nsw i64 %437, %438
  %conv.i15.i = sitofp i64 %sub.i14.i to double
  %tv_usec.i16.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end18.i70, i64 0, i32 1
  %439 = load i64, i64* %tv_usec.i16.i, align 8, !tbaa !7
  %tv_usec2.i17.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start17.i69, i64 0, i32 1
  %440 = load i64, i64* %tv_usec2.i17.i, align 8, !tbaa !7
  %sub3.i18.i = sub nsw i64 %439, %440
  %conv4.i19.i = sitofp i64 %sub3.i18.i to double
  %mul.i20.i = fmul fast double %conv4.i19.i, 0x3EB0C6F7A0B5ED8D
  %add.i21.i = fadd fast double %mul.i20.i, %conv.i15.i
  %conv5.i22.i = fptrunc double %add.i21.i to float
  %conv52.i = fpext float %conv5.i22.i to double
  %441 = load double, double* %54, align 8, !tbaa !8
  %442 = load double, double* %55, align 8, !tbaa !8
  %443 = load double, double* %56, align 8, !tbaa !8
  %call56.i = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), double %conv52.i, double %441, double %442, double %443)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %317) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %316) #27
  ret i32 0

for.body8:                                        ; preds = %for.body8, %for.body8.preheader
  %indvars.iv = phi i64 [ 0, %for.body8.preheader ], [ %indvars.iv.next, %for.body8 ]
  %444 = trunc i64 %indvars.iv to i32
  %conv10 = sitofp i32 %444 to double
  %arrayidx12 = getelementptr inbounds double, double* %3, i64 %indvars.iv
  store double %conv10, double* %arrayidx12, align 8, !tbaa !8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, 2000
  br i1 %exitcond.not, label %for.cond.cleanup7, label %for.body8, !llvm.loop !126
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
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(96) %2, i8 0, i64 96, i1 false)
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %_M_prev.i.i.i.i.i, align 8, !tbaa !127
  %_M_next.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %_M_next.i.i.i.i.i, align 8, !tbaa !129
  %_M_size.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i64 0, i64* %_M_size.i.i.i.i.i, align 8, !tbaa !130
  %coerce.dive = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5, i32 0
  store %"struct.std::__detail::_List_node_base"* %1, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %i_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 6
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %gradients_initialized_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 10
  %is_recording_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 12
  %3 = bitcast i32* %i_gradient_ to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(18) %3, i8 0, i64 18, i1 false)
  store i8 1, i8* %is_recording_, align 2, !tbaa !132
  %have_openmp_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 13
  store i8 0, i8* %have_openmp_, align 1, !tbaa !133
  %openmp_manually_disabled_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 14
  store i8 0, i8* %openmp_manually_disabled_, align 4, !tbaa !134
  %call.i11 = invoke noalias nonnull dereferenceable(8388608) i8* @_Znam(i64 8388608) #28
          to label %call.i.noexc unwind label %lpad

call.i.noexc:                                     ; preds = %entry
  %multiplier_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %4 = bitcast double** %multiplier_.i to i8**
  store i8* %call.i11, i8** %4, align 8, !tbaa !135
  %call3.i12 = invoke noalias nonnull dereferenceable(4194304) i8* @_Znam(i64 4194304) #28
          to label %call3.i.noexc unwind label %lpad

call3.i.noexc:                                    ; preds = %call.i.noexc
  %index_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %5 = bitcast i32** %index_.i to i8**
  store i8* %call3.i12, i8** %5, align 8, !tbaa !136
  %n_allocated_operations_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 6
  store i32 1048576, i32* %n_allocated_operations_.i, align 4, !tbaa !137
  %call5.i13 = invoke noalias nonnull dereferenceable(8388608) i8* @_Znam(i64 8388608) #28
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %call3.i.noexc
  %6 = bitcast %"class.adept::Stack"* %this to i8**
  store i8* %call5.i13, i8** %6, align 8, !tbaa !54
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 4
  store i32 1048576, i32* %n_allocated_statements_.i, align 4, !tbaa !53
  %n_operations_.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 5
  store i32 0, i32* %n_operations_.i.i, align 8, !tbaa !57
  %n_statements_.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  store i8 0, i8* %gradients_initialized_, align 8, !tbaa !64
  store i32 1, i32* %max_gradient_, align 8, !tbaa !71
  %index.i.i = bitcast i8* %call5.i13 to i32*
  store i32 -1, i32* %index.i.i, align 4, !tbaa !55
  store i32 1, i32* %n_statements_.i.i, align 8, !tbaa !51
  %end_plus_one.i.i = getelementptr inbounds i8, i8* %call5.i13, i64 4
  %7 = bitcast i8* %end_plus_one.i.i to i32*
  store i32 0, i32* %7, align 4, !tbaa !58
  br i1 %activate_immediately, label %if.then, label %if.end

if.then:                                          ; preds = %invoke.cont3
  invoke void @_ZN5adept5Stack8activateEv(%"class.adept::Stack"* nonnull dereferenceable(149) %this)
          to label %if.end unwind label %lpad

lpad:                                             ; preds = %if.then, %call3.i.noexc, %call.i.noexc, %entry
  %8 = landingpad { i8*, i32 }
          cleanup
  %9 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i.i.i.i, align 8, !tbaa !129
  %cmp.not12.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %9, %1
  br i1 %cmp.not12.i.i, label %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit, label %while.body.i.i

while.body.i.i:                                   ; preds = %lpad, %while.body.i.i
  %__cur.013.i.i = phi %"struct.std::__detail::_List_node_base"* [ %10, %while.body.i.i ], [ %9, %lpad ]
  %_M_next4.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %__cur.013.i.i, i64 0, i32 0
  %10 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next4.i.i, align 8, !tbaa !129
  %11 = bitcast %"struct.std::__detail::_List_node_base"* %__cur.013.i.i to i8*
  tail call void @_ZdlPv(i8* %11) #27
  %cmp.not.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %10, %1
  br i1 %cmp.not.i.i, label %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit, label %while.body.i.i, !llvm.loop !138

_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit: ; preds = %while.body.i.i, %lpad
  %_M_start.i.i6 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %12 = load i32*, i32** %_M_start.i.i6, align 8, !tbaa !61
  %tobool.not.i.i.i7 = icmp eq i32* %12, null
  br i1 %tobool.not.i.i.i7, label %_ZNSt6vectorIiSaIiEED2Ev.exit9, label %if.then.i.i.i8

if.then.i.i.i8:                                   ; preds = %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit
  %13 = bitcast i32* %12 to i8*
  tail call void @_ZdlPv(i8* nonnull %13) #27
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit9

_ZNSt6vectorIiSaIiEED2Ev.exit9:                   ; preds = %if.then.i.i.i8, %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %14 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !61
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
  store i32 0, i32* %ref.tmp1, align 4, !tbaa !36
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
  call void @llvm.experimental.noalias.scope.decl(metadata !139)
  %10 = load i32, i32* %arrayidx.i7.i, align 4, !tbaa !36, !noalias !139
  %mul.i = mul nsw i32 %10, %i.052
  %11 = load double*, double** %data_.i, align 8, !tbaa !142, !noalias !139
  %idxprom.i = sext i32 %mul.i to i64
  %arrayidx.i = getelementptr inbounds double, double* %11, i64 %idxprom.i
  %12 = load i32, i32* %value_.i.i.i, align 8, !tbaa !29, !noalias !139
  %add.i = add nsw i32 %12, %mul.i
  store double* %arrayidx.i, double** %val_.i.i, align 8, !tbaa !50, !alias.scope !139
  store i32 %add.i, i32* %gradient_index_.i.i, align 8, !tbaa !144, !alias.scope !139
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #27
  store double* %arrayidx.i, double** %val_.i.i37, align 8, !tbaa !50, !alias.scope !146
  store i32 %add.i, i32* %gradient_index_.i.i38, align 8, !tbaa !144, !alias.scope !146
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %6) #27
  store %"class.adept::Active"* %agg.result, %"class.adept::Active"** %7, align 8, !tbaa !50, !alias.scope !149
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
  br i1 %exitcond.not, label %nrvo.skipdtor, label %invoke.cont10, !llvm.loop !152

lpad9:                                            ; preds = %invoke.cont10
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #27
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #27
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.result) #27
  br label %ehcleanup19

nrvo.skipdtor:                                    ; preds = %invoke.cont12
  %storage_.i39 = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %out, i64 0, i32 2
  %14 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i39, align 8, !tbaa !153
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
  %17 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i, align 8, !tbaa !153
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
  %1 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !50
  %gradient_index_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 1
  %n_gradients_registered_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 9
  %2 = load i32, i32* %n_gradients_registered_.i, align 4, !tbaa !154
  %dec.i = add nsw i32 %2, -1
  store i32 %dec.i, i32* %n_gradients_registered_.i, align 4, !tbaa !154
  %3 = load i32, i32* %gradient_index_, align 4, !tbaa !36
  %add.i = add nsw i32 %3, 1
  %i_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 6
  %4 = load i32, i32* %i_gradient_.i, align 8, !tbaa !70
  %cmp.i = icmp eq i32 %add.i, %4
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %_ZTWN5adept21_stack_current_threadE.exit
  store i32 %3, i32* %i_gradient_.i, align 8, !tbaa !70
  %gap_list_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 4
  %5 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %6 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i, align 8, !tbaa !129
  %cmp.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %6, %5
  br i1 %cmp.i.i, label %invoke.cont, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  %_M_prev.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1
  %7 = bitcast %"struct.std::__detail::_List_node_base"** %_M_prev.i.i.i to %"struct.std::_List_node"**
  %8 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %7, align 8, !tbaa !127
  %end.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %8, i64 0, i32 1, i32 0, i64 4
  %9 = bitcast i8* %end.i to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !155
  %add8.i = add nsw i32 %10, 1
  %cmp9.i = icmp eq i32 %3, %add8.i
  %11 = getelementptr %"struct.std::_List_node", %"struct.std::_List_node"* %8, i64 0, i32 0
  br i1 %cmp9.i, label %if.then10.i, label %invoke.cont

if.then10.i:                                      ; preds = %if.then4.i
  %_M_storage.i.i.i.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %8, i64 0, i32 1
  %start.i = bitcast %"struct.__gnu_cxx::__aligned_membuf"* %_M_storage.i.i.i.i to i32*
  %12 = load i32, i32* %start.i, align 4, !tbaa !157
  store i32 %12, i32* %i_gradient_.i, align 8, !tbaa !70
  %_M_node.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 5, i32 0
  %13 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa !158
  %cmp.i30.i = icmp eq %"struct.std::__detail::_List_node_base"* %13, %11
  br i1 %cmp.i30.i, label %if.then17.i, label %if.end.i

if.then17.i:                                      ; preds = %if.then10.i
  store %"struct.std::__detail::_List_node_base"* %5, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa.struct !159
  br label %if.end.i

if.end.i:                                         ; preds = %if.then17.i, %if.then10.i
  %_M_size.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %14 = load i64, i64* %_M_size.i.i.i.i, align 8, !tbaa !160
  %sub.i.i.i.i = add i64 %14, -1
  store i64 %sub.i.i.i.i, i64* %_M_size.i.i.i.i, align 8, !tbaa !160
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
  %0 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_, align 8, !tbaa !32
  %tobool.not = icmp eq %"class.adept::Storage"* %0, null
  br i1 %tobool.not, label %for.body.preheader, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %0)
  store %"class.adept::Storage"* null, %"class.adept::Storage"** %storage_, align 8, !tbaa !32
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.then, %entry
  br label %for.body

for.cond:                                         ; preds = %if.else
  br i1 %cmp, label %for.body, label %for.end, !llvm.loop !163

for.body:                                         ; preds = %for.body.preheader, %for.cond
  %cmp = phi i1 [ false, %for.cond ], [ true, %for.body.preheader ]
  %indvars.iv = phi i64 [ 1, %for.cond ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr inbounds i32, i32* %dim, i64 %indvars.iv
  %1 = load i32, i32* %arrayidx, align 4, !tbaa !36
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
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !164, !alias.scope !166
  %_M_p.i.i25.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %_M_p.i.i25.i.i, align 8, !tbaa !169
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
  store i8* %7, i8** %_M_p.i23.i.i, align 8, !tbaa !169, !alias.scope !166
  %_M_allocated_capacity.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 2, i32 0
  %9 = load i64, i64* %_M_allocated_capacity.i.i, align 8, !tbaa !171
  %_M_allocated_capacity.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %9, i64* %_M_allocated_capacity.i.i.i, align 8, !tbaa !171, !alias.scope !166
  br label %invoke.cont8

invoke.cont8:                                     ; preds = %if.else.i.i, %if.then.i.i
  %_M_string_length.i22.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 1
  %10 = load i64, i64* %_M_string_length.i22.i.i, align 8, !tbaa !172
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %10, i64* %_M_string_length.i.i.i, align 8, !tbaa !172, !alias.scope !166
  %11 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i57 to %union.anon**
  store %union.anon* %8, %union.anon** %11, align 8, !tbaa !169
  store i64 0, i64* %_M_string_length.i22.i.i, align 8, !tbaa !172
  store i8 0, i8* %arraydecay.i.i.i.i, align 8, !tbaa !171
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
  %15 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !169
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
  %16 = load i8*, i8** %_M_p.i.i.i.i61, align 8, !tbaa !169
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
  store double* null, double** %data_.i, align 8, !tbaa !46
  %arrayidx.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 3, i32 0, i64 0
  %value_.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 0, i32 0
  %18 = bitcast i32* %arrayidx.i.i to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(16) %18, i8 0, i64 16, i1 false)
  store i32 -9999, i32* %value_.i.i, align 4, !tbaa !29
  br label %return

for.end:                                          ; preds = %for.cond
  %19 = load i32, i32* %dim, align 4, !tbaa !36
  %arrayidx3.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 3, i32 0, i64 0
  store i32 %19, i32* %arrayidx3.i, align 4, !tbaa !36
  %arrayidx.i.c = getelementptr inbounds i32, i32* %dim, i64 1
  %20 = load i32, i32* %arrayidx.i.c, align 4, !tbaa !36
  %arrayidx3.i.c = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 3, i32 0, i64 1
  store i32 %20, i32* %arrayidx3.i.c, align 4, !tbaa !36
  %21 = load i8, i8* @_ZN5adept8internal21array_row_major_orderE, align 1, !tbaa !173, !range !174
  %tobool.not.i66 = icmp eq i8 %21, 0
  br i1 %force_contiguous, label %if.then22, label %if.else23

if.then22:                                        ; preds = %for.end
  %22 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 4, i32 0, i64 0
  br i1 %tobool.not.i66, label %for.body.i77.preheader, label %if.end24

if.else23:                                        ; preds = %for.end
  br i1 %tobool.not.i66, label %if.end24.thread, label %if.then.i70

if.then.i70:                                      ; preds = %if.else23
  %arrayidx.i.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 4, i32 0, i64 1
  store i32 1, i32* %arrayidx.i.i.i, align 4, !tbaa !36
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
  %mul = mul nsw i32 %26, %19
  br label %if.end31

for.body.i77:                                     ; preds = %for.body.i77, %for.body.i77.preheader
  %27 = phi i32 [ %19, %for.body.i77.preheader ], [ %20, %for.body.i77 ]
  %cmp.i74 = phi i1 [ true, %for.body.i77.preheader ], [ false, %for.body.i77 ]
  %s.08.i = phi i32 [ 1, %for.body.i77.preheader ], [ %mul.i, %for.body.i77 ]
  %mul.i = mul nsw i32 %s.08.i, %27
  br i1 %cmp.i74, label %for.body.i77, label %if.end31, !llvm.loop !175

if.end31:                                         ; preds = %for.body.i77, %if.then26
  %data_vol.0 = phi i32 [ %mul, %if.then26 ], [ %mul.i, %for.body.i77 ]
  %call32 = tail call noalias nonnull dereferenceable(24) i8* @_Znwm(i64 24) #28
  %28 = bitcast i8* %call32 to %"class.adept::Storage"*
  invoke void @_ZN5adept7StorageIdEC2Eib(%"class.adept::Storage"* nonnull dereferenceable(20) %28, i32 %data_vol.0, i1 zeroext true)
          to label %invoke.cont34 unwind label %lpad33

invoke.cont34:                                    ; preds = %if.end31
  %29 = bitcast %"class.adept::Storage"** %storage_ to i8**
  store i8* %call32, i8** %29, align 8, !tbaa !32
  %data_.i68 = bitcast i8* %call32 to double**
  %30 = load double*, double** %data_.i68, align 8, !tbaa !176
  %data_ = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 1
  store double* %30, double** %data_, align 8, !tbaa !46
  %gradient_index_.i.i = getelementptr inbounds i8, i8* %call32, i64 16
  %31 = bitcast i8* %gradient_index_.i.i to i32*
  %32 = load i32, i32* %31, align 8, !tbaa !178
  %value_.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 0, i32 0
  store i32 %32, i32* %value_.i, align 4, !tbaa !29
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
  %0 = load i32, i32* %n_links_, align 4, !tbaa !179
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
  store %union.anon* %4, %union.anon** %5, align 8, !tbaa !164, !alias.scope !180
  %_M_p.i.i25.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 0, i32 0
  %6 = load i8*, i8** %_M_p.i.i25.i.i, align 8, !tbaa !169
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
  store i8* %6, i8** %_M_p.i23.i.i, align 8, !tbaa !169, !alias.scope !180
  %_M_allocated_capacity.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 2, i32 0
  %8 = load i64, i64* %_M_allocated_capacity.i.i, align 8, !tbaa !171
  %_M_allocated_capacity.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %8, i64* %_M_allocated_capacity.i.i.i, align 8, !tbaa !171, !alias.scope !180
  br label %invoke.cont4

invoke.cont4:                                     ; preds = %if.else.i.i, %if.then.i.i
  %_M_string_length.i22.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 1
  %9 = load i64, i64* %_M_string_length.i22.i.i, align 8, !tbaa !172
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %9, i64* %_M_string_length.i.i.i, align 8, !tbaa !172, !alias.scope !180
  %10 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i17 to %union.anon**
  store %union.anon* %7, %union.anon** %10, align 8, !tbaa !169
  store i64 0, i64* %_M_string_length.i22.i.i, align 8, !tbaa !172
  store i8 0, i8* %arraydecay.i.i.i.i, align 8, !tbaa !171
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
  %14 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !169
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
  %15 = load i8*, i8** %_M_p.i.i.i.i21, align 8, !tbaa !169
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
  store i32 %dec, i32* %n_links_, align 4, !tbaa !179
  %cmp11.not = icmp eq i32 %dec, 0
  br i1 %cmp11.not, label %delete.notnull, label %if.end13

delete.notnull:                                   ; preds = %if.else
  %17 = bitcast %"class.adept::Storage"* %this to i8**
  %18 = load i8*, i8** %17, align 8, !tbaa !176
  tail call void @free(i8* %18) #27
  %gradient_index_.i = getelementptr inbounds %"class.adept::Storage", %"class.adept::Storage"* %this, i64 0, i32 3
  %19 = load i32, i32* %gradient_index_.i, align 8, !tbaa !178
  %cmp.i = icmp sgt i32 %19, -1
  br i1 %cmp.i, label %if.then.i, label %_ZN5adept7StorageIdED2Ev.exit

if.then.i:                                        ; preds = %delete.notnull
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %20, label %_ZTWN5adept21_stack_current_threadE.exit.i

20:                                               ; preds = %if.then.i
  tail call void @_ZTHN5adept21_stack_current_threadE() #27
  br label %_ZTWN5adept21_stack_current_threadE.exit.i

_ZTWN5adept21_stack_current_threadE.exit.i:       ; preds = %20, %if.then.i
  %21 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !50
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
  %24 = load i32, i32* @_ZN5adept8internal26n_storage_objects_deleted_E, align 4, !tbaa !36
  %inc.i = add nsw i32 %24, 1
  store i32 %inc.i, i32* @_ZN5adept8internal26n_storage_objects_deleted_E, align 4, !tbaa !36
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
  %vtable.i = load i8*, i8** %2, align 8, !tbaa !183
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i64 -24
  %3 = bitcast i8* %vbase.offset.ptr.i to i64*
  %vbase.offset.i = load i64, i64* %3, align 8
  %4 = bitcast %"class.std::basic_ostream.base"* %add.ptr to i8*
  %add.ptr.i = getelementptr inbounds i8, i8* %4, i64 %vbase.offset.i
  %5 = bitcast i8* %add.ptr.i to %"class.std::basic_ios"*
  %_M_streambuf_state.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 32
  %6 = bitcast i8* %_M_streambuf_state.i.i.i to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !185
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
  store i32 (...)** %8, i32 (...)*** %9, align 8, !tbaa !183
  %10 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i32 (...)***), align 8
  %vbase.offset.ptr4.i.i = getelementptr i32 (...)*, i32 (...)** %8, i64 -3
  %11 = bitcast i32 (...)** %vbase.offset.ptr4.i.i to i64*
  %vbase.offset.i.i = load i64, i64* %11, align 8
  %add.ptr.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i
  %12 = bitcast i8* %add.ptr.i.i to i32 (...)***
  store i32 (...)** %10, i32 (...)*** %12, align 8, !tbaa !183
  %13 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i32 (...)***), align 8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** %13, i32 (...)*** %14, align 8, !tbaa !183
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %15, align 8, !tbaa !183
  %_M_p.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 0, i32 0
  %16 = load i8*, i8** %_M_p.i.i.i.i.i.i.i, align 8, !tbaa !169
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 2
  %arraydecay.i.i.i.i.i.i.i = bitcast %union.anon* %17 to i8*
  %cmp.i.i.i.i.i.i = icmp eq i8* %16, %arraydecay.i.i.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %invoke.cont9
  call void @_ZdlPv(i8* %16) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %if.then.i.i.i.i.i, %invoke.cont9
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %15, align 8, !tbaa !183
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i) #27
  %18 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)***), align 8
  store i32 (...)** %18, i32 (...)*** %9, align 8, !tbaa !183
  %19 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr3.i.i.i.i = getelementptr i32 (...)*, i32 (...)** %18, i64 -3
  %20 = bitcast i32 (...)** %vbase.offset.ptr3.i.i.i.i to i64*
  %vbase.offset.i.i.i.i = load i64, i64* %20, align 8
  %add.ptr.i.i.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i.i.i
  %21 = bitcast i8* %add.ptr.i.i.i.i to i32 (...)***
  store i32 (...)** %19, i32 (...)*** %21, align 8, !tbaa !183
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %22, align 8, !tbaa !191
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216) %23) #27
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %0) #27
  ret void

lpad:                                             ; preds = %invoke.cont7, %invoke.cont5, %invoke.cont3, %invoke.cont1, %if.else.i, %if.then.i, %entry
  %24 = landingpad { i8*, i32 }
          cleanup
  %25 = load i32 (...)**, i32 (...)*** bitcast ([10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE to i32 (...)***), align 8
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** %25, i32 (...)*** %26, align 8, !tbaa !183
  %27 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i32 (...)***), align 8
  %vbase.offset.ptr4.i.i26 = getelementptr i32 (...)*, i32 (...)** %25, i64 -3
  %28 = bitcast i32 (...)** %vbase.offset.ptr4.i.i26 to i64*
  %vbase.offset.i.i27 = load i64, i64* %28, align 8
  %add.ptr.i.i28 = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i27
  %29 = bitcast i8* %add.ptr.i.i28 to i32 (...)***
  store i32 (...)** %27, i32 (...)*** %29, align 8, !tbaa !183
  %30 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i32 (...)***), align 8
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** %30, i32 (...)*** %31, align 8, !tbaa !183
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %32, align 8, !tbaa !183
  %_M_p.i.i.i.i.i.i.i29 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 0, i32 0
  %33 = load i8*, i8** %_M_p.i.i.i.i.i.i.i29, align 8, !tbaa !169
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 2
  %arraydecay.i.i.i.i.i.i.i30 = bitcast %union.anon* %34 to i8*
  %cmp.i.i.i.i.i.i31 = icmp eq i8* %33, %arraydecay.i.i.i.i.i.i.i30
  br i1 %cmp.i.i.i.i.i.i31, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit37, label %if.then.i.i.i.i.i32

if.then.i.i.i.i.i32:                              ; preds = %lpad
  call void @_ZdlPv(i8* %33) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit37

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit37: ; preds = %if.then.i.i.i.i.i32, %lpad
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %32, align 8, !tbaa !183
  %_M_buf_locale.i.i.i.i33 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i33) #27
  %35 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)***), align 8
  store i32 (...)** %35, i32 (...)*** %26, align 8, !tbaa !183
  %36 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr3.i.i.i.i34 = getelementptr i32 (...)*, i32 (...)** %35, i64 -3
  %37 = bitcast i32 (...)** %vbase.offset.ptr3.i.i.i.i34 to i64*
  %vbase.offset.i.i.i.i35 = load i64, i64* %37, align 8
  %add.ptr.i.i.i.i36 = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i.i.i35
  %38 = bitcast i8* %add.ptr.i.i.i.i36 to i32 (...)***
  store i32 (...)** %36, i32 (...)*** %38, align 8, !tbaa !183
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %39, align 8, !tbaa !191
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
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !164
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #27
  store i64 27, i64* %__dnew.i.i.i.i, align 8, !tbaa !193
  %call5.i.i.i10.i15 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %lpad

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i18.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i15, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !193
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !171
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(27) %call5.i.i.i10.i15, i8* nonnull align 1 dereferenceable(27) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 27, i1 false) #27
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !172
  %6 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !171
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #27
  %7 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %message_.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1
  %8 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %message_.i.i to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !164
  %_M_string_length.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i.i, align 8, !tbaa !172
  %.cast.i.i.i = bitcast %union.anon* %8 to i8*
  store i8 0, i8* %.cast.i.i.i, align 1, !tbaa !171
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept15array_exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !183
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %10 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !183
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %11 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !169
  %cmp.i.i.i.i.i = icmp eq i8* %11, %.cast.i.i.i
  br i1 %cmp.i.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %11) #27
  br label %_ZN5adept9exceptionD2Ev.exit.i

_ZN5adept9exceptionD2Ev.exit.i:                   ; preds = %if.then.i.i.i.i, %lpad.i
  %12 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %12) #27
  %13 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %cmp.i.i.i18 = icmp eq i8* %13, %3
  br i1 %cmp.i.i.i18, label %ehcleanup, label %if.then.i.i19

invoke.cont4:                                     ; preds = %call5.i.i.i10.i.noexc
  %14 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %cmp.i.i.i = icmp eq i8* %14, %3
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont4
  call void @_ZdlPv(i8* %14) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %invoke.cont4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #27
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept17invalid_dimensionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !183
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
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !183
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %17 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !169
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
  store i32 %n, i32* %n.addr, align 4, !tbaa !36
  %n_ = getelementptr inbounds %"class.adept::Storage", %"class.adept::Storage"* %this, i64 0, i32 1
  store i32 %n, i32* %n_, align 8, !tbaa !194
  %n_links_ = getelementptr inbounds %"class.adept::Storage", %"class.adept::Storage"* %this, i64 0, i32 2
  store i32 1, i32* %n_links_, align 4, !tbaa !179
  %gradient_index_ = getelementptr inbounds %"class.adept::Storage", %"class.adept::Storage"* %this, i64 0, i32 3
  store i32 -1, i32* %gradient_index_, align 8, !tbaa !178
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
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt9bad_alloc, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %2, align 8, !tbaa !183
  call void @__cxa_throw(i8* %exception.i, i8* bitcast (i8** @_ZTISt9bad_alloc to i8*), i8* bitcast (void (%"class.std::bad_alloc"*)* @_ZNSt9bad_allocD1Ev to i8*)) #30
  unreachable

_ZN5adept8internal13alloc_alignedIdEEPT_i.exit:   ; preds = %entry
  %3 = load double*, double** %result.i, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #27
  %data_ = getelementptr inbounds %"class.adept::Storage", %"class.adept::Storage"* %this, i64 0, i32 0
  store double* %3, double** %data_, align 8, !tbaa !176
  %4 = load i32, i32* @_ZN5adept8internal26n_storage_objects_created_E, align 4, !tbaa !36
  %inc = add nsw i32 %4, 1
  store i32 %inc, i32* @_ZN5adept8internal26n_storage_objects_created_E, align 4, !tbaa !36
  br i1 %IsActive, label %if.then, label %if.end

if.then:                                          ; preds = %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %5, label %_ZTWN5adept21_stack_current_threadE.exit

5:                                                ; preds = %if.then
  call void @_ZTHN5adept21_stack_current_threadE()
  br label %_ZTWN5adept21_stack_current_threadE.exit

_ZTWN5adept21_stack_current_threadE.exit:         ; preds = %5, %if.then
  %6 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !50
  %call.i = call i32 @_ZN5adept5Stack21do_register_gradientsERKi(%"class.adept::Stack"* nonnull dereferenceable(149) %6, i32* nonnull align 4 dereferenceable(4) %n.addr)
  store i32 %call.i, i32* %gradient_index_, align 8, !tbaa !178
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
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !164
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #27
  store i64 27, i64* %__dnew.i.i.i.i, align 8, !tbaa !193
  %call5.i.i.i10.i15 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %lpad

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i18.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i15, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !193
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !171
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(27) %call5.i.i.i10.i15, i8* nonnull align 1 dereferenceable(27) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 27, i1 false) #27
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !172
  %6 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !171
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #27
  %7 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %message_.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1
  %8 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %message_.i.i to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !164
  %_M_string_length.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i.i, align 8, !tbaa !172
  %.cast.i.i.i = bitcast %union.anon* %8 to i8*
  store i8 0, i8* %.cast.i.i.i, align 1, !tbaa !171
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept15array_exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !183
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %10 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !183
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %11 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !169
  %cmp.i.i.i.i.i = icmp eq i8* %11, %.cast.i.i.i
  br i1 %cmp.i.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %11) #27
  br label %_ZN5adept9exceptionD2Ev.exit.i

_ZN5adept9exceptionD2Ev.exit.i:                   ; preds = %if.then.i.i.i.i, %lpad.i
  %12 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %12) #27
  %13 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %cmp.i.i.i18 = icmp eq i8* %13, %3
  br i1 %cmp.i.i.i18, label %ehcleanup, label %if.then.i.i19

invoke.cont4:                                     ; preds = %call5.i.i.i10.i.noexc
  %14 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %cmp.i.i.i = icmp eq i8* %14, %3
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont4
  call void @_ZdlPv(i8* %14) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %invoke.cont4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #27
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept17invalid_operationE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !183
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
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !183
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %17 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !169
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
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !183
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !169
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
  %0 = load i8*, i8** %_M_p.i.i, align 8, !tbaa !169
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
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !183
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::array_exception", %"class.adept::array_exception"* %this, i64 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !169
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
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !183
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !169
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
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !183
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !169
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
  %0 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_, align 8, !tbaa !37
  %tobool.not = icmp eq %"class.adept::Storage"* %0, null
  br i1 %tobool.not, label %for.body.critedge, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %0)
  store %"class.adept::Storage"* null, %"class.adept::Storage"** %storage_, align 8, !tbaa !37
  br label %for.body.critedge

for.body.critedge:                                ; preds = %if.then, %entry
  %1 = load i32, i32* %dim, align 4, !tbaa !36
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
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !164, !alias.scope !195
  %_M_p.i.i25.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %_M_p.i.i25.i.i, align 8, !tbaa !169
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
  store i8* %7, i8** %_M_p.i23.i.i, align 8, !tbaa !169, !alias.scope !195
  %_M_allocated_capacity.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 2, i32 0
  %9 = load i64, i64* %_M_allocated_capacity.i.i, align 8, !tbaa !171
  %_M_allocated_capacity.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %9, i64* %_M_allocated_capacity.i.i.i, align 8, !tbaa !171, !alias.scope !195
  br label %invoke.cont8

invoke.cont8:                                     ; preds = %if.else.i.i, %if.then.i.i
  %_M_string_length.i22.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 1
  %10 = load i64, i64* %_M_string_length.i22.i.i, align 8, !tbaa !172
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %10, i64* %_M_string_length.i.i.i, align 8, !tbaa !172, !alias.scope !195
  %11 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i57 to %union.anon**
  store %union.anon* %8, %union.anon** %11, align 8, !tbaa !169
  store i64 0, i64* %_M_string_length.i22.i.i, align 8, !tbaa !172
  store i8 0, i8* %arraydecay.i.i.i.i, align 8, !tbaa !171
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
  %15 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !169
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
  %16 = load i8*, i8** %_M_p.i.i.i.i61, align 8, !tbaa !169
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
  br i1 %cmp16, label %_ZN5adept5ArrayILi1EdLb0EE5clearEv.exit, label %for.end, !llvm.loop !198

_ZN5adept5ArrayILi1EdLb0EE5clearEv.exit:          ; preds = %if.else
  %data_.i = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %this, i64 0, i32 0
  store double* null, double** %data_.i, align 8, !tbaa !40
  %arrayidx.i.i = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %this, i64 0, i32 2, i32 0, i64 0
  store i32 0, i32* %arrayidx.i.i, align 4, !tbaa !36
  %arrayidx.i4.i = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %this, i64 0, i32 3, i32 0, i64 0
  store i32 0, i32* %arrayidx.i4.i, align 4, !tbaa !36
  br label %return

for.end:                                          ; preds = %if.else
  %arrayidx3.i = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %this, i64 0, i32 2, i32 0, i64 0
  store i32 %1, i32* %arrayidx3.i, align 4, !tbaa !36
  %18 = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %this, i64 0, i32 3, i32 0, i64 0
  store i32 1, i32* %18, align 4
  %call32 = tail call noalias nonnull dereferenceable(24) i8* @_Znwm(i64 24) #28
  %n_.i = getelementptr inbounds i8, i8* %call32, i64 8
  %19 = bitcast i8* %n_.i to i32*
  store i32 %1, i32* %19, align 8, !tbaa !194
  %n_links_.i = getelementptr inbounds i8, i8* %call32, i64 12
  %20 = bitcast i8* %n_links_.i to i32*
  store i32 1, i32* %20, align 4, !tbaa !179
  %gradient_index_.i = getelementptr inbounds i8, i8* %call32, i64 16
  %21 = bitcast i8* %gradient_index_.i to i32*
  store i32 -1, i32* %21, align 8, !tbaa !178
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
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt9bad_alloc, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %24, align 8, !tbaa !183
  invoke void @__cxa_throw(i8* nonnull %exception.i.i, i8* bitcast (i8** @_ZTISt9bad_alloc to i8*), i8* bitcast (void (%"class.std::bad_alloc"*)* @_ZNSt9bad_allocD1Ev to i8*)) #30
          to label %.noexc unwind label %lpad33

.noexc:                                           ; preds = %if.then4.i.i
  unreachable

invoke.cont34:                                    ; preds = %for.end
  %25 = load double*, double** %result.i.i, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #27
  %data_.i67 = bitcast i8* %call32 to double**
  store double* %25, double** %data_.i67, align 8, !tbaa !176
  %26 = load i32, i32* @_ZN5adept8internal26n_storage_objects_created_E, align 4, !tbaa !36
  %inc.i = add nsw i32 %26, 1
  store i32 %inc.i, i32* @_ZN5adept8internal26n_storage_objects_created_E, align 4, !tbaa !36
  %27 = bitcast %"class.adept::Storage"** %storage_ to i8**
  store i8* %call32, i8** %27, align 8, !tbaa !37
  %data_ = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %this, i64 0, i32 0
  store double* %25, double** %data_, align 8, !tbaa !40
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
  %0 = load i32, i32* %rhs, align 4, !tbaa !36
  %conv = sitofp i32 %0 to double
  store double %conv, double* %val_, align 8, !tbaa !199
  %gradient_index_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 1
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %1, label %_ZTWN5adept21_stack_current_threadE.exit

1:                                                ; preds = %entry
  tail call void @_ZTHN5adept21_stack_current_threadE()
  br label %_ZTWN5adept21_stack_current_threadE.exit

_ZTWN5adept21_stack_current_threadE.exit:         ; preds = %1, %entry
  %2 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !50
  %n_gradients_registered_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %2, i64 0, i32 9
  %3 = load i32, i32* %n_gradients_registered_.i, align 4, !tbaa !154
  %inc.i4 = add nsw i32 %3, 1
  store i32 %inc.i4, i32* %n_gradients_registered_.i, align 4, !tbaa !154
  %gap_list_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %2, i64 0, i32 4
  %4 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %5 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i, align 8, !tbaa !129
  %cmp.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %5, %4
  br i1 %cmp.i.i, label %if.then.i6, label %if.else.i

if.then.i6:                                       ; preds = %_ZTWN5adept21_stack_current_threadE.exit
  %i_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %2, i64 0, i32 6
  %6 = load i32, i32* %i_gradient_.i, align 8, !tbaa !70
  %inc2.i = add nsw i32 %6, 1
  store i32 %inc2.i, i32* %i_gradient_.i, align 8, !tbaa !70
  %max_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %2, i64 0, i32 8
  %7 = load i32, i32* %max_gradient_.i, align 8, !tbaa !71
  %cmp.not.i5 = icmp slt i32 %6, %7
  br i1 %cmp.not.i5, label %_ZN5adept5Stack17register_gradientEv.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i6
  store i32 %inc2.i, i32* %max_gradient_.i, align 8, !tbaa !71
  br label %_ZN5adept5Stack17register_gradientEv.exit

if.else.i:                                        ; preds = %_ZTWN5adept21_stack_current_threadE.exit
  %8 = bitcast %"struct.std::__detail::_List_node_base"* %5 to %"struct.std::_List_node"*
  %_M_storage.i.i.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %5, i64 1
  %start.i = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i.i.i to i32*
  %9 = load i32, i32* %start.i, align 4, !tbaa !157
  %inc11.i = add nsw i32 %9, 1
  store i32 %inc11.i, i32* %start.i, align 4, !tbaa !157
  %end.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %8, i64 0, i32 1, i32 0, i64 4
  %10 = bitcast i8* %end.i to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !155
  %cmp13.not.i = icmp slt i32 %9, %11
  br i1 %cmp13.not.i, label %_ZN5adept5Stack17register_gradientEv.exit, label %if.then14.i

if.then14.i:                                      ; preds = %if.else.i
  %_M_node.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %2, i64 0, i32 5, i32 0
  %12 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa !158
  %cmp.i35.i = icmp eq %"struct.std::__detail::_List_node_base"* %12, %5
  br i1 %cmp.i35.i, label %if.then18.i, label %if.end24.i

if.then18.i:                                      ; preds = %if.then14.i
  store %"struct.std::__detail::_List_node_base"* %4, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa.struct !159
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then18.i, %if.then14.i
  %_M_size.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %2, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %13 = load i64, i64* %_M_size.i.i.i.i, align 8, !tbaa !160
  %sub.i.i.i.i = add i64 %13, -1
  store i64 %sub.i.i.i.i, i64* %_M_size.i.i.i.i, align 8, !tbaa !160
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %5) #27
  %14 = bitcast %"struct.std::__detail::_List_node_base"* %5 to i8*
  tail call void @_ZdlPv(i8* nonnull %14) #27
  br label %_ZN5adept5Stack17register_gradientEv.exit

_ZN5adept5Stack17register_gradientEv.exit:        ; preds = %if.end24.i, %if.else.i, %if.then4.i, %if.then.i6
  %return_val.0.i = phi i32 [ %9, %if.end24.i ], [ %9, %if.else.i ], [ %6, %if.then4.i ], [ %6, %if.then.i6 ]
  store i32 %return_val.0.i, i32* %gradient_index_, align 8, !tbaa !72
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %15, label %_ZTWN5adept21_stack_current_threadE.exit3

15:                                               ; preds = %_ZN5adept5Stack17register_gradientEv.exit
  tail call void @_ZTHN5adept21_stack_current_threadE()
  br label %_ZTWN5adept21_stack_current_threadE.exit3

_ZTWN5adept21_stack_current_threadE.exit3:        ; preds = %15, %_ZN5adept5Stack17register_gradientEv.exit
  %16 = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !50
  %n_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %16, i64 0, i32 3
  %17 = load i32, i32* %n_statements_.i, align 8, !tbaa !51
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %16, i64 0, i32 4
  %18 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !53
  %cmp.not.i = icmp slt i32 %17, %18
  br i1 %cmp.not.i, label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit, label %if.then.i

if.then.i:                                        ; preds = %_ZTWN5adept21_stack_current_threadE.exit3
  tail call void @_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %16, i32 0)
  %.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !51
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %if.then.i, %_ZTWN5adept21_stack_current_threadE.exit3
  %19 = phi i32 [ %.pre.i, %if.then.i ], [ %17, %_ZTWN5adept21_stack_current_threadE.exit3 ]
  %20 = load i32, i32* %gradient_index_, align 4, !tbaa !36
  %statement_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %16, i64 0, i32 0
  %21 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i, align 8, !tbaa !54
  %idxprom.i = sext i32 %19 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %21, i64 %idxprom.i, i32 0
  store i32 %20, i32* %index.i, align 4, !tbaa !55
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %16, i64 0, i32 5
  %22 = load i32, i32* %n_operations_.i, align 8, !tbaa !57
  %inc.i = add nsw i32 %19, 1
  store i32 %inc.i, i32* %n_statements_.i, align 8, !tbaa !51
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %21, i64 %idxprom.i, i32 1
  store i32 %22, i32* %end_plus_one.i, align 4, !tbaa !58
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN5adept6matmulIdNS_5ArrayILi2EdLb1EEEdNS1_ILi1EdLb0EEEEENS_8internal9enable_ifIXaaaaooeqsrT0_4rankLi1EeqsrS6_4rankLi2EooeqsrT2_4rankLi1EeqsrS7_4rankLi2EgtplsrS6_4ranksrS7_4rankLi2EENS1_IXmiplsrS6_4ranksrS7_4rankLi2EENS4_7promoteIT_T1_E4typeEXoosrS6_9is_activesrS7_9is_activeEEEE4typeERKNS_10ExpressionIS9_S6_EERKNSG_ISA_S7_EE(%"class.adept::Array.13"* noalias sret(%"class.adept::Array.13") align 8 %agg.result, %"struct.adept::Expression"* nonnull align 1 dereferenceable(1) %left, %"struct.adept::Expression.5"* nonnull align 1 dereferenceable(1) %right) local_unnamed_addr #18 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.adept::Array", align 8
  %ref.tmp1 = alloca %"class.adept::Array.4", align 8
  %0 = bitcast %"class.adept::Array"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %0) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !200)
  %value_.i.i.i.i = bitcast %"struct.adept::Expression"* %left to i32*
  %1 = load i32, i32* %value_.i.i.i.i, align 8, !tbaa !29, !noalias !200
  %value_.i.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %ref.tmp, i64 0, i32 0, i32 0
  store i32 %1, i32* %value_.i.i.i, align 8, !tbaa !29, !alias.scope !200
  %data_.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %ref.tmp, i64 0, i32 1
  %data_.i.i.i = getelementptr inbounds %"struct.adept::Expression", %"struct.adept::Expression"* %left, i64 8
  %2 = bitcast %"struct.adept::Expression"* %data_.i.i.i to double**
  %3 = load double*, double** %2, align 8, !tbaa !46, !noalias !200
  store double* %3, double** %data_.i.i, align 8, !tbaa !46, !alias.scope !200
  %storage_.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %ref.tmp, i64 0, i32 2
  %storage_.i.i.i = getelementptr inbounds %"struct.adept::Expression", %"struct.adept::Expression"* %left, i64 16
  %4 = bitcast %"struct.adept::Expression"* %storage_.i.i.i to %"class.adept::Storage"**
  %5 = load %"class.adept::Storage"*, %"class.adept::Storage"** %4, align 8, !tbaa !32, !noalias !200
  store %"class.adept::Storage"* %5, %"class.adept::Storage"** %storage_.i.i, align 8, !tbaa !32, !alias.scope !200
  %dimensions_.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %ref.tmp, i64 0, i32 3
  %dimensions_.i.i.i = getelementptr inbounds %"struct.adept::Expression", %"struct.adept::Expression"* %left, i64 24
  %6 = bitcast %"struct.adept::Expression"* %dimensions_.i.i.i to <2 x i64>*
  %7 = load <2 x i64>, <2 x i64>* %6, align 8, !tbaa !171, !noalias !200
  %8 = bitcast %"class.adept::ExpressionSize"* %dimensions_.i.i to <2 x i64>*
  store <2 x i64> %7, <2 x i64>* %8, align 8, !tbaa !171, !alias.scope !200
  %tobool.not.i.i = icmp eq %"class.adept::Storage"* %5, null
  br i1 %tobool.not.i.i, label %_ZN5adept8internal13promote_arrayIdLi2EdLb1EEENS_5ArrayIXT0_ET_XT2_EEERKNS2_IXT0_ET1_XT2_EEE.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  %n_links_.i.i.i = getelementptr inbounds %"class.adept::Storage", %"class.adept::Storage"* %5, i64 0, i32 2
  %9 = load i32, i32* %n_links_.i.i.i, align 4, !tbaa !179, !noalias !200
  %inc.i.i.i = add nsw i32 %9, 1
  store i32 %inc.i.i.i, i32* %n_links_.i.i.i, align 4, !tbaa !179, !noalias !200
  br label %_ZN5adept8internal13promote_arrayIdLi2EdLb1EEENS_5ArrayIXT0_ET_XT2_EEERKNS2_IXT0_ET1_XT2_EEE.exit

_ZN5adept8internal13promote_arrayIdLi2EdLb1EEENS_5ArrayIXT0_ET_XT2_EEERKNS2_IXT0_ET1_XT2_EEE.exit: ; preds = %if.then.i.i, %entry
  %10 = bitcast %"class.adept::Array.4"* %ref.tmp1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %10) #27
  tail call void @llvm.experimental.noalias.scope.decl(metadata !203)
  %data_.i.i14 = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %ref.tmp1, i64 0, i32 0
  %data_.i.i.i15 = bitcast %"struct.adept::Expression.5"* %right to double**
  %11 = load double*, double** %data_.i.i.i15, align 8, !tbaa !40, !noalias !203
  store double* %11, double** %data_.i.i14, align 8, !tbaa !40, !alias.scope !203
  %storage_.i.i16 = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %ref.tmp1, i64 0, i32 1
  %storage_.i.i.i17 = getelementptr inbounds %"struct.adept::Expression.5", %"struct.adept::Expression.5"* %right, i64 8
  %12 = bitcast %"struct.adept::Expression.5"* %storage_.i.i.i17 to %"class.adept::Storage"**
  %13 = load %"class.adept::Storage"*, %"class.adept::Storage"** %12, align 8, !tbaa !37, !noalias !203
  store %"class.adept::Storage"* %13, %"class.adept::Storage"** %storage_.i.i16, align 8, !tbaa !37, !alias.scope !203
  %14 = getelementptr inbounds %"struct.adept::Expression.5", %"struct.adept::Expression.5"* %right, i64 16
  %15 = bitcast %"struct.adept::Expression.5"* %14 to i32*
  %16 = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %ref.tmp1, i64 0, i32 2, i32 0, i64 0
  %17 = load i32, i32* %15, align 8, !tbaa !171, !noalias !203
  store i32 %17, i32* %16, align 8, !tbaa !171, !alias.scope !203
  %18 = getelementptr inbounds %"struct.adept::Expression.5", %"struct.adept::Expression.5"* %right, i64 20
  %19 = bitcast %"struct.adept::Expression.5"* %18 to i32*
  %20 = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %ref.tmp1, i64 0, i32 3, i32 0, i64 0
  %21 = load i32, i32* %19, align 4, !tbaa !171, !noalias !203
  store i32 %21, i32* %20, align 4, !tbaa !171, !alias.scope !203
  %tobool.not.i.i18 = icmp eq %"class.adept::Storage"* %13, null
  br i1 %tobool.not.i.i18, label %invoke.cont3, label %if.then.i.i21

if.then.i.i21:                                    ; preds = %_ZN5adept8internal13promote_arrayIdLi2EdLb1EEENS_5ArrayIXT0_ET_XT2_EEERKNS2_IXT0_ET1_XT2_EEE.exit
  %n_links_.i.i.i19 = getelementptr inbounds %"class.adept::Storage", %"class.adept::Storage"* %13, i64 0, i32 2
  %22 = load i32, i32* %n_links_.i.i.i19, align 4, !tbaa !179, !noalias !203
  %inc.i.i.i20 = add nsw i32 %22, 1
  store i32 %inc.i.i.i20, i32* %n_links_.i.i.i19, align 4, !tbaa !179, !noalias !203
  br label %invoke.cont3

invoke.cont3:                                     ; preds = %if.then.i.i21, %_ZN5adept8internal13promote_arrayIdLi2EdLb1EEENS_5ArrayIXT0_ET_XT2_EEERKNS2_IXT0_ET1_XT2_EEE.exit
  invoke void @_ZN5adept8internal7matmul_IdLb1ELb0EEENS_5ArrayILi1ET_XooT0_T1_EEERKNS2_ILi2ES3_XT0_EEERKNS2_ILi1ES3_XT1_EEE(%"class.adept::Array.13"* sret(%"class.adept::Array.13") align 8 %agg.result, %"class.adept::Array"* nonnull align 8 dereferenceable(40) %ref.tmp, %"class.adept::Array.4"* nonnull align 8 dereferenceable(24) %ref.tmp1)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont3
  %23 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i.i16, align 8, !tbaa !37
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
  %26 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i.i, align 8, !tbaa !32
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
  %30 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i.i16, align 8, !tbaa !37
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
  %33 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i.i, align 8, !tbaa !32
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
  %1 = load i32, i32* %arrayidx.i.i, align 8, !tbaa !36
  %value_.i.i = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %ans, i64 0, i32 0, i32 0
  store i32 -9999, i32* %value_.i.i, align 8, !tbaa !29
  %storage_.i = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %ans, i64 0, i32 2
  store %"class.adept::Storage"* null, %"class.adept::Storage"** %storage_.i, align 8, !tbaa !153
  %2 = bitcast [7 x i32]* %dim.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %2) #27
  %arrayinit.begin.i.i = getelementptr inbounds [7 x i32], [7 x i32]* %dim.i.i, i64 0, i64 0
  store i32 %1, i32* %arrayinit.begin.i.i, align 16, !tbaa !36
  %arrayinit.element.i.i = getelementptr inbounds [7 x i32], [7 x i32]* %dim.i.i, i64 0, i64 1
  %3 = bitcast i32* %arrayinit.element.i.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(24) %3, i8 -1, i64 24, i1 false)
  call void @_ZN5adept5ArrayILi1EdLb1EE6resizeEPKib(%"class.adept::Array.13"* nonnull dereferenceable(32) %ans, i32* nonnull %arrayinit.begin.i.i, i1 zeroext false)
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %2) #27
  %arrayidx.i.i133 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %left, i64 0, i32 4, i32 0, i64 1
  %4 = load i32, i32* %arrayidx.i.i133, align 4, !tbaa !36
  %cmp.i = icmp eq i32 %4, 1
  %arrayidx.i7.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %left, i64 0, i32 4, i32 0, i64 0
  %5 = load i32, i32* %arrayidx.i7.i, align 8, !tbaa !36
  br i1 %cmp.i, label %_ZNK5adept5ArrayILi2EdLb1EE17is_row_contiguousEv.exit, label %land.lhs.true.thread

_ZNK5adept5ArrayILi2EdLb1EE17is_row_contiguousEv.exit: ; preds = %entry
  %arrayidx.i6.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %left, i64 0, i32 3, i32 0, i64 1
  %6 = load i32, i32* %arrayidx.i6.i, align 4, !tbaa !36
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
  %.pre = load i32, i32* %arrayidx.i.i166.phi.trans.insert, align 4, !tbaa !36
  br label %if.end18

invoke.cont5:                                     ; preds = %land.lhs.true.thread, %land.lhs.true
  %7 = bitcast %"class.adept::Array"* %left_ to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %7) #27
  %value_.i.i137 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %left_, i64 0, i32 0, i32 0
  store i32 -9999, i32* %value_.i.i137, align 8, !tbaa !29
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
  %10 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i145, align 8, !tbaa !32
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
  %15 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i149, align 8, !tbaa !32
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
  %20 = load i32, i32* %arrayidx.i.i, align 8, !tbaa !36
  %data_.i170 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %left, i64 0, i32 1
  %21 = load double*, double** %data_.i170, align 8, !tbaa !46
  %data_.i176 = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %right, i64 0, i32 0
  %22 = load double*, double** %data_.i176, align 8, !tbaa !40
  %arrayidx.i.i190 = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %right, i64 0, i32 3, i32 0, i64 0
  %23 = load i32, i32* %arrayidx.i.i190, align 4, !tbaa !36
  %data_.i189 = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %ans, i64 0, i32 1
  %24 = load double*, double** %data_.i189, align 8, !tbaa !142
  %arrayidx.i.i188 = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %ans, i64 0, i32 4, i32 0, i64 0
  %25 = load i32, i32* %arrayidx.i.i188, align 4, !tbaa !36
  invoke void @_ZN5adept8internal12cppblas_gemvEbciidPKdiS2_idPdi(i1 zeroext %19, i8 signext 78, i32 %20, i32 %18, double 1.000000e+00, double* %21, i32 %stride.0, double* %22, i32 %23, double 0.000000e+00, double* %24, i32 %25)
          to label %invoke.cont38 unwind label %lpad

invoke.cont38:                                    ; preds = %if.end18
  %value_.i.i187 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %left, i64 0, i32 0, i32 0
  %26 = load i32, i32* %value_.i.i187, align 8, !tbaa !29
  %27 = load i32, i32* %value_.i.i, align 8, !tbaa !29
  %arrayidx.i.i185 = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %right, i64 0, i32 2, i32 0, i64 0
  %28 = load i32, i32* %arrayidx.i.i185, align 8, !tbaa !36
  %arrayidx.i.i183 = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %ans, i64 0, i32 3, i32 0, i64 0
  %29 = load i32, i32* %arrayidx.i.i183, align 8, !tbaa !36
  %cmp198 = icmp sgt i32 %29, 0
  br i1 %cmp198, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %invoke.cont38
  %cmp8.i = icmp sgt i32 %28, 0
  br label %for.body

for.cond.cleanup.loopexit:                        ; preds = %invoke.cont70
  %.pre201 = load i32, i32* %value_.i.i, align 8, !tbaa !29
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %invoke.cont38
  %30 = phi i32 [ %27, %invoke.cont38 ], [ %.pre201, %for.cond.cleanup.loopexit ]
  %.lcssa = phi i32 [ %29, %invoke.cont38 ], [ %60, %for.cond.cleanup.loopexit ]
  %value_.i.i177 = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %agg.result, i64 0, i32 0, i32 0
  store i32 %30, i32* %value_.i.i177, align 8, !tbaa !29
  %data_.i178 = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %agg.result, i64 0, i32 1
  %31 = load double*, double** %data_.i189, align 8, !tbaa !142
  store double* %31, double** %data_.i178, align 8, !tbaa !142
  %storage_.i179 = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %agg.result, i64 0, i32 2
  %32 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i, align 8, !tbaa !153
  store %"class.adept::Storage"* %32, %"class.adept::Storage"** %storage_.i179, align 8, !tbaa !153
  %33 = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %agg.result, i64 0, i32 3, i32 0, i64 0
  store i32 %.lcssa, i32* %33, align 8, !tbaa !171
  %34 = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %agg.result, i64 0, i32 4, i32 0, i64 0
  %35 = load i32, i32* %arrayidx.i.i188, align 4, !tbaa !171
  store i32 %35, i32* %34, align 4, !tbaa !171
  %tobool.not.i180 = icmp eq %"class.adept::Storage"* %32, null
  br i1 %tobool.not.i180, label %_ZN5adept5ArrayILi1EdLb1EED2Ev.exit, label %cleanup.thread204

cleanup.thread204:                                ; preds = %for.cond.cleanup
  %n_links_.i.i = getelementptr inbounds %"class.adept::Storage", %"class.adept::Storage"* %32, i64 0, i32 2
  %36 = load i32, i32* %n_links_.i.i, align 4, !tbaa !179
  %inc.i.i181 = add nsw i32 %36, 1
  store i32 %inc.i.i181, i32* %n_links_.i.i, align 4, !tbaa !179
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
  %39 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !50
  %40 = load i32, i32* %arrayidx.i7.i, align 8, !tbaa !36
  %mul = mul nsw i32 %40, %i.0199
  %add = add nsw i32 %mul, %26
  %41 = load double*, double** %data_.i176, align 8, !tbaa !40
  %42 = load i32, i32* %arrayidx.i.i133, align 4, !tbaa !36
  %43 = load i32, i32* %arrayidx.i.i190, align 4, !tbaa !36
  %n_allocated_operations_.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %39, i64 0, i32 0, i32 6
  %44 = load i32, i32* %n_allocated_operations_.i.i, align 4, !tbaa !137
  %n_operations_.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %39, i64 0, i32 0, i32 5
  %45 = load i32, i32* %n_operations_.i.i, align 8, !tbaa !57
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
  %47 = load double*, double** %multiplier_.i.i, align 8, !tbaa !135
  %index_.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %39, i64 0, i32 0, i32 2
  %48 = load i32*, i32** %index_.i.i, align 8, !tbaa !136
  %idx.ext.i = sext i32 %43 to i64
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %for.body.lr.ph.i
  %i.011.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i168, %for.body.i ]
  %multiplier.addr.010.i = phi double* [ %41, %for.body.lr.ph.i ], [ %add.ptr.i, %for.body.i ]
  %rhs_index.addr.09.i = phi i32 [ %add, %for.body.lr.ph.i ], [ %add.i, %for.body.i ]
  %49 = load double, double* %multiplier.addr.010.i, align 8, !tbaa !8
  %50 = load i32, i32* %n_operations_.i.i, align 8, !tbaa !57
  %idxprom.i.i = sext i32 %50 to i64
  %arrayidx.i.i167 = getelementptr inbounds double, double* %47, i64 %idxprom.i.i
  store double %49, double* %arrayidx.i.i167, align 8, !tbaa !8
  %inc.i.i = add nsw i32 %50, 1
  store i32 %inc.i.i, i32* %n_operations_.i.i, align 8, !tbaa !57
  %arrayidx4.i.i = getelementptr inbounds i32, i32* %48, i64 %idxprom.i.i
  store i32 %rhs_index.addr.09.i, i32* %arrayidx4.i.i, align 4, !tbaa !36
  %inc.i168 = add nuw nsw i32 %i.011.i, 1
  %add.i = add nsw i32 %rhs_index.addr.09.i, %42
  %add.ptr.i = getelementptr inbounds double, double* %multiplier.addr.010.i, i64 %idx.ext.i
  %exitcond.not.i = icmp eq i32 %inc.i168, %28
  br i1 %exitcond.not.i, label %invoke.cont62, label %for.body.i, !llvm.loop !206

invoke.cont62:                                    ; preds = %for.body.i, %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit.i
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %51, label %invoke.cont63

51:                                               ; preds = %invoke.cont62
  invoke void @_ZTHN5adept21_stack_current_threadE()
          to label %invoke.cont63 unwind label %lpad52

invoke.cont63:                                    ; preds = %51, %invoke.cont62
  %52 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !50
  %53 = load i32, i32* %arrayidx.i.i188, align 4, !tbaa !36
  %mul68 = mul nsw i32 %53, %i.0199
  %add69 = add nsw i32 %mul68, %27
  %n_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %52, i64 0, i32 0, i32 3
  %54 = load i32, i32* %n_statements_.i, align 8, !tbaa !51
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %52, i64 0, i32 0, i32 4
  %55 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !53
  %cmp.not.i = icmp slt i32 %54, %55
  br i1 %cmp.not.i, label %invoke.cont70, label %if.then.i138

if.then.i138:                                     ; preds = %invoke.cont63
  %56 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %52, i64 0, i32 0
  invoke void @_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %56, i32 0)
          to label %.noexc unwind label %lpad65

.noexc:                                           ; preds = %if.then.i138
  %.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !51
  br label %invoke.cont70

invoke.cont70:                                    ; preds = %.noexc, %invoke.cont63
  %57 = phi i32 [ %.pre.i, %.noexc ], [ %54, %invoke.cont63 ]
  %statement_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %52, i64 0, i32 0, i32 0
  %58 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i, align 8, !tbaa !54
  %idxprom.i = sext i32 %57 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %58, i64 %idxprom.i, i32 0
  store i32 %add69, i32* %index.i, align 4, !tbaa !55
  %n_operations_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %52, i64 0, i32 0, i32 5
  %59 = load i32, i32* %n_operations_.i, align 8, !tbaa !57
  %inc.i = add nsw i32 %57, 1
  store i32 %inc.i, i32* %n_statements_.i, align 8, !tbaa !51
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %58, i64 %idxprom.i, i32 1
  store i32 %59, i32* %end_plus_one.i, align 4, !tbaa !58
  %inc = add nuw nsw i32 %i.0199, 1
  %60 = load i32, i32* %arrayidx.i.i183, align 8, !tbaa !36
  %cmp = icmp slt i32 %inc, %60
  br i1 %cmp, label %for.body, label %for.cond.cleanup.loopexit, !llvm.loop !207

lpad65:                                           ; preds = %if.then.i138
  %61 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup80

cleanup:                                          ; preds = %if.then.i147, %invoke.cont9
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %7) #27
  %.pre202 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i, align 8, !tbaa !153
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
  %65 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i, align 8, !tbaa !153
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
  %0 = load i32, i32* %arrayidx.i.i, align 8, !tbaa !36
  %cmp.i = icmp eq i32 %0, 0
  br i1 %cmp.i, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %arrayidx.i.i41 = getelementptr inbounds %"class.adept::Array.4", %"class.adept::Array.4"* %right, i64 0, i32 2, i32 0, i64 0
  %1 = load i32, i32* %arrayidx.i.i41, align 8, !tbaa !36
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
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !164, !alias.scope !208
  %_M_p.i.i25.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i51, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %_M_p.i.i25.i.i, align 8, !tbaa !169
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
  store i8* %7, i8** %_M_p.i23.i.i, align 8, !tbaa !169, !alias.scope !208
  %_M_allocated_capacity.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i51, i64 0, i32 2, i32 0
  %9 = load i64, i64* %_M_allocated_capacity.i.i, align 8, !tbaa !171
  %_M_allocated_capacity.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %9, i64* %_M_allocated_capacity.i.i.i, align 8, !tbaa !171, !alias.scope !208
  br label %invoke.cont4

invoke.cont4:                                     ; preds = %if.else.i.i, %if.then.i.i50
  %_M_string_length.i22.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i51, i64 0, i32 1
  %10 = load i64, i64* %_M_string_length.i22.i.i, align 8, !tbaa !172
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %10, i64* %_M_string_length.i.i.i, align 8, !tbaa !172, !alias.scope !208
  %11 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i51 to %union.anon**
  store %union.anon* %8, %union.anon** %11, align 8, !tbaa !169
  store i64 0, i64* %_M_string_length.i22.i.i, align 8, !tbaa !172
  store i8 0, i8* %arraydecay.i.i.i.i48, align 8, !tbaa !171
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
  %15 = load i8*, i8** %_M_p.i.i.i.i52, align 8, !tbaa !169
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
  %16 = load i8*, i8** %_M_p.i.i.i.i57, align 8, !tbaa !169
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
  %18 = load i32, i32* %arrayidx.i.i62, align 4, !tbaa !36
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
  store %union.anon* %22, %union.anon** %23, align 8, !tbaa !164, !alias.scope !211
  %_M_p.i.i25.i.i65 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i77, i64 0, i32 0, i32 0
  %24 = load i8*, i8** %_M_p.i.i25.i.i65, align 8, !tbaa !169
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
  store i8* %24, i8** %_M_p.i23.i.i70, align 8, !tbaa !169, !alias.scope !211
  %_M_allocated_capacity.i.i71 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i77, i64 0, i32 2, i32 0
  %26 = load i64, i64* %_M_allocated_capacity.i.i71, align 8, !tbaa !171
  %_M_allocated_capacity.i.i.i72 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp14, i64 0, i32 2, i32 0
  store i64 %26, i64* %_M_allocated_capacity.i.i.i72, align 8, !tbaa !171, !alias.scope !211
  br label %invoke.cont19

invoke.cont19:                                    ; preds = %if.else.i.i73, %if.then.i.i69
  %_M_string_length.i22.i.i74 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i77, i64 0, i32 1
  %27 = load i64, i64* %_M_string_length.i22.i.i74, align 8, !tbaa !172
  %_M_string_length.i.i.i75 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp14, i64 0, i32 1
  store i64 %27, i64* %_M_string_length.i.i.i75, align 8, !tbaa !172, !alias.scope !211
  %28 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i77 to %union.anon**
  store %union.anon* %25, %union.anon** %28, align 8, !tbaa !169
  store i64 0, i64* %_M_string_length.i22.i.i74, align 8, !tbaa !172
  store i8 0, i8* %arraydecay.i.i.i.i66, align 8, !tbaa !171
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
  %32 = load i8*, i8** %_M_p.i.i.i.i43, align 8, !tbaa !169
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
  %33 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !169
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
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !164
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #27
  store i64 27, i64* %__dnew.i.i.i.i, align 8, !tbaa !193
  %call5.i.i.i10.i15 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %lpad

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i18.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i15, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !193
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !171
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(27) %call5.i.i.i10.i15, i8* nonnull align 1 dereferenceable(27) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 27, i1 false) #27
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !172
  %6 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !171
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #27
  %7 = getelementptr inbounds %"class.adept::empty_array", %"class.adept::empty_array"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %message_.i.i = getelementptr inbounds %"class.adept::empty_array", %"class.adept::empty_array"* %this, i64 0, i32 0, i32 0, i32 1
  %8 = getelementptr inbounds %"class.adept::empty_array", %"class.adept::empty_array"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %message_.i.i to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !164
  %_M_string_length.i.i.i.i.i = getelementptr inbounds %"class.adept::empty_array", %"class.adept::empty_array"* %this, i64 0, i32 0, i32 0, i32 1, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i.i, align 8, !tbaa !172
  %.cast.i.i.i = bitcast %union.anon* %8 to i8*
  store i8 0, i8* %.cast.i.i.i, align 1, !tbaa !171
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept15array_exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !183
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %10 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !183
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.adept::empty_array", %"class.adept::empty_array"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %11 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !169
  %cmp.i.i.i.i.i = icmp eq i8* %11, %.cast.i.i.i
  br i1 %cmp.i.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %11) #27
  br label %_ZN5adept9exceptionD2Ev.exit.i

_ZN5adept9exceptionD2Ev.exit.i:                   ; preds = %if.then.i.i.i.i, %lpad.i
  %12 = getelementptr inbounds %"class.adept::empty_array", %"class.adept::empty_array"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %12) #27
  %13 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %cmp.i.i.i18 = icmp eq i8* %13, %3
  br i1 %cmp.i.i.i18, label %ehcleanup, label %if.then.i.i19

invoke.cont4:                                     ; preds = %call5.i.i.i10.i.noexc
  %14 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %cmp.i.i.i = icmp eq i8* %14, %3
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont4
  call void @_ZdlPv(i8* %14) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %invoke.cont4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #27
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept11empty_arrayE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !183
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
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !183
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::empty_array", %"class.adept::empty_array"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %17 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !169
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
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !164
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #27
  store i64 27, i64* %__dnew.i.i.i.i, align 8, !tbaa !193
  %call5.i.i.i10.i15 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %lpad

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i18.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i15, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !193
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !171
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(27) %call5.i.i.i10.i15, i8* nonnull align 1 dereferenceable(27) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 27, i1 false) #27
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !172
  %6 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !171
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #27
  %7 = getelementptr inbounds %"class.adept::inner_dimension_mismatch", %"class.adept::inner_dimension_mismatch"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %message_.i.i = getelementptr inbounds %"class.adept::inner_dimension_mismatch", %"class.adept::inner_dimension_mismatch"* %this, i64 0, i32 0, i32 0, i32 1
  %8 = getelementptr inbounds %"class.adept::inner_dimension_mismatch", %"class.adept::inner_dimension_mismatch"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %message_.i.i to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !164
  %_M_string_length.i.i.i.i.i = getelementptr inbounds %"class.adept::inner_dimension_mismatch", %"class.adept::inner_dimension_mismatch"* %this, i64 0, i32 0, i32 0, i32 1, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i.i, align 8, !tbaa !172
  %.cast.i.i.i = bitcast %union.anon* %8 to i8*
  store i8 0, i8* %.cast.i.i.i, align 1, !tbaa !171
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept15array_exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !183
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %10 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !183
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.adept::inner_dimension_mismatch", %"class.adept::inner_dimension_mismatch"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %11 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !169
  %cmp.i.i.i.i.i = icmp eq i8* %11, %.cast.i.i.i
  br i1 %cmp.i.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %11) #27
  br label %_ZN5adept9exceptionD2Ev.exit.i

_ZN5adept9exceptionD2Ev.exit.i:                   ; preds = %if.then.i.i.i.i, %lpad.i
  %12 = getelementptr inbounds %"class.adept::inner_dimension_mismatch", %"class.adept::inner_dimension_mismatch"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %12) #27
  %13 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %cmp.i.i.i18 = icmp eq i8* %13, %3
  br i1 %cmp.i.i.i18, label %ehcleanup, label %if.then.i.i19

invoke.cont4:                                     ; preds = %call5.i.i.i10.i.noexc
  %14 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %cmp.i.i.i = icmp eq i8* %14, %3
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont4
  call void @_ZdlPv(i8* %14) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %invoke.cont4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #27
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept24inner_dimension_mismatchE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !183
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
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !183
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::inner_dimension_mismatch", %"class.adept::inner_dimension_mismatch"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %17 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !169
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
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !183
  %_M_p.i.i.i.i = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !169
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
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !183
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::empty_array", %"class.adept::empty_array"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !169
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
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !183
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::inner_dimension_mismatch", %"class.adept::inner_dimension_mismatch"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !169
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
  %0 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_, align 8, !tbaa !153
  %tobool.not = icmp eq %"class.adept::Storage"* %0, null
  br i1 %tobool.not, label %for.body.critedge, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %0)
  store %"class.adept::Storage"* null, %"class.adept::Storage"** %storage_, align 8, !tbaa !153
  br label %for.body.critedge

for.body.critedge:                                ; preds = %if.then, %entry
  %1 = load i32, i32* %dim, align 4, !tbaa !36
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
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !164, !alias.scope !214
  %_M_p.i.i25.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %_M_p.i.i25.i.i, align 8, !tbaa !169
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
  store i8* %7, i8** %_M_p.i23.i.i, align 8, !tbaa !169, !alias.scope !214
  %_M_allocated_capacity.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 2, i32 0
  %9 = load i64, i64* %_M_allocated_capacity.i.i, align 8, !tbaa !171
  %_M_allocated_capacity.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %9, i64* %_M_allocated_capacity.i.i.i, align 8, !tbaa !171, !alias.scope !214
  br label %invoke.cont8

invoke.cont8:                                     ; preds = %if.else.i.i, %if.then.i.i
  %_M_string_length.i22.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 1
  %10 = load i64, i64* %_M_string_length.i22.i.i, align 8, !tbaa !172
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %10, i64* %_M_string_length.i.i.i, align 8, !tbaa !172, !alias.scope !214
  %11 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i57 to %union.anon**
  store %union.anon* %8, %union.anon** %11, align 8, !tbaa !169
  store i64 0, i64* %_M_string_length.i22.i.i, align 8, !tbaa !172
  store i8 0, i8* %arraydecay.i.i.i.i, align 8, !tbaa !171
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
  %15 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !169
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
  %16 = load i8*, i8** %_M_p.i.i.i.i61, align 8, !tbaa !169
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
  br i1 %cmp16, label %_ZN5adept5ArrayILi1EdLb1EE5clearEv.exit, label %for.end, !llvm.loop !217

_ZN5adept5ArrayILi1EdLb1EE5clearEv.exit:          ; preds = %if.else
  %data_.i = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %this, i64 0, i32 1
  store double* null, double** %data_.i, align 8, !tbaa !142
  %arrayidx.i.i = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %this, i64 0, i32 3, i32 0, i64 0
  store i32 0, i32* %arrayidx.i.i, align 4, !tbaa !36
  %arrayidx.i4.i = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %this, i64 0, i32 4, i32 0, i64 0
  store i32 0, i32* %arrayidx.i4.i, align 4, !tbaa !36
  br label %return

for.end:                                          ; preds = %if.else
  %arrayidx3.i = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %this, i64 0, i32 3, i32 0, i64 0
  store i32 %1, i32* %arrayidx3.i, align 4, !tbaa !36
  %18 = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %this, i64 0, i32 4, i32 0, i64 0
  store i32 1, i32* %18, align 4
  %call32 = tail call noalias nonnull dereferenceable(24) i8* @_Znwm(i64 24) #28
  %19 = bitcast i8* %call32 to %"class.adept::Storage"*
  invoke void @_ZN5adept7StorageIdEC2Eib(%"class.adept::Storage"* nonnull dereferenceable(20) %19, i32 %1, i1 zeroext true)
          to label %invoke.cont34 unwind label %lpad33

invoke.cont34:                                    ; preds = %for.end
  %20 = bitcast %"class.adept::Storage"** %storage_ to i8**
  store i8* %call32, i8** %20, align 8, !tbaa !153
  %data_.i66 = bitcast i8* %call32 to double**
  %21 = load double*, double** %data_.i66, align 8, !tbaa !176
  %data_ = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %this, i64 0, i32 1
  store double* %21, double** %data_, align 8, !tbaa !142
  %gradient_index_.i.i = getelementptr inbounds i8, i8* %call32, i64 16
  %22 = bitcast i8* %gradient_index_.i.i to i32*
  %23 = load i32, i32* %22, align 8, !tbaa !178
  br label %return

return:                                           ; preds = %invoke.cont34, %_ZN5adept5ArrayILi1EdLb1EE5clearEv.exit
  %.sink = phi i32 [ -9999, %_ZN5adept5ArrayILi1EdLb1EE5clearEv.exit ], [ %23, %invoke.cont34 ]
  %value_.i.i = getelementptr inbounds %"class.adept::Array.13", %"class.adept::Array.13"* %this, i64 0, i32 0, i32 0
  store i32 %.sink, i32* %value_.i.i, align 4, !tbaa !29
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
  %2 = load i64, i64* %1, align 8, !tbaa !171
  store i64 %2, i64* %dims, align 8, !tbaa !171
  %arrayidx.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 3, i32 0, i64 0
  %3 = load i32, i32* %arrayidx.i.i, align 4, !tbaa !36
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
  store %union.anon* %10, %union.anon** %11, align 8, !tbaa !164
  %12 = bitcast %union.anon* %10 to i8*
  %13 = bitcast %union.anon* %10 to i32*
  store i32 1919973445, i32* %13, align 8
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %str27, i64 0, i32 0, i32 0
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %str27, i64 0, i32 1
  store i64 4, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !172
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %12, i64 4
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 4, !tbaa !171
  %14 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp33 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #27
  %15 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp34 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #27
  %16 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp35 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #27
  invoke void @_ZNK5adept14ExpressionSizeILi2EE3strB5cxx11Ev(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp35, %"class.adept::ExpressionSize"* nonnull dereferenceable(8) %tmpcast)
          to label %invoke.cont37 unwind label %lpad36

invoke.cont37:                                    ; preds = %if.then26
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  %_M_string_length.i.i.i.i191 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp35, i64 0, i32 1
  %17 = load i64, i64* %_M_string_length.i.i.i.i191, align 8, !tbaa !172, !noalias !218
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
  store %union.anon* %18, %union.anon** %19, align 8, !tbaa !164, !alias.scope !218
  %_M_p.i.i25.i.i195 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call2.i.i209, i64 0, i32 0, i32 0
  %20 = load i8*, i8** %_M_p.i.i25.i.i195, align 8, !tbaa !169
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
  store i8* %20, i8** %_M_p.i23.i.i201, align 8, !tbaa !169, !alias.scope !218
  %_M_allocated_capacity.i.i202 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call2.i.i209, i64 0, i32 2, i32 0
  %22 = load i64, i64* %_M_allocated_capacity.i.i202, align 8, !tbaa !171
  %_M_allocated_capacity.i.i.i203 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp34, i64 0, i32 2, i32 0
  store i64 %22, i64* %_M_allocated_capacity.i.i.i203, align 8, !tbaa !171, !alias.scope !218
  br label %invoke.cont39

invoke.cont39:                                    ; preds = %if.else.i.i204, %if.then.i.i200
  %_M_string_length.i22.i.i205 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call2.i.i209, i64 0, i32 1
  %23 = load i64, i64* %_M_string_length.i22.i.i205, align 8, !tbaa !172
  %_M_string_length.i.i.i206 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp34, i64 0, i32 1
  store i64 %23, i64* %_M_string_length.i.i.i206, align 8, !tbaa !172, !alias.scope !218
  %24 = bitcast %"class.std::__cxx11::basic_string"* %call2.i.i209 to %union.anon**
  store %union.anon* %21, %union.anon** %24, align 8, !tbaa !169
  store i64 0, i64* %_M_string_length.i22.i.i205, align 8, !tbaa !172
  store i8 0, i8* %arraydecay.i.i.i.i196, align 8, !tbaa !171
  %25 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp40 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %25) #27
  invoke void @_ZNK5adept5ArrayILi2EdLb1EE18expression_string_B5cxx11Ev(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp40, %"class.adept::Array"* nonnull dereferenceable(40) %this)
          to label %invoke.cont42 unwind label %lpad41

invoke.cont42:                                    ; preds = %invoke.cont39
  call void @llvm.experimental.noalias.scope.decl(metadata !221)
  %26 = load i64, i64* %_M_string_length.i.i.i206, align 8, !tbaa !172, !noalias !221
  %_M_string_length.i18.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp40, i64 0, i32 1
  %27 = load i64, i64* %_M_string_length.i18.i, align 8, !tbaa !172, !noalias !221
  %add.i = add i64 %27, %26
  %_M_p.i.i.i.i211 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp34, i64 0, i32 0, i32 0
  %28 = load i8*, i8** %_M_p.i.i.i.i211, align 8, !tbaa !169, !noalias !221
  %arraydecay.i.i.i21.i = bitcast %union.anon* %18 to i8*
  %cmp.i.i22.i = icmp eq i8* %28, %arraydecay.i.i.i21.i
  %_M_allocated_capacity.i23.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp34, i64 0, i32 2, i32 0
  %29 = load i64, i64* %_M_allocated_capacity.i23.i, align 8, !noalias !221
  %cond.i.i = select i1 %cmp.i.i22.i, i64 15, i64 %29
  %cmp.i212 = icmp ugt i64 %add.i, %cond.i.i
  %_M_p.i.i.i24.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp40, i64 0, i32 0, i32 0
  %30 = load i8*, i8** %_M_p.i.i.i24.i, align 8, !tbaa !169
  br i1 %cmp.i212, label %land.rhs.i, label %cond.false.i

land.rhs.i:                                       ; preds = %invoke.cont42
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp40, i64 0, i32 2
  %arraydecay.i.i.i25.i = bitcast %union.anon* %31 to i8*
  %cmp.i.i26.i = icmp eq i8* %30, %arraydecay.i.i.i25.i
  %_M_allocated_capacity.i27.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp40, i64 0, i32 2, i32 0
  %32 = load i64, i64* %_M_allocated_capacity.i27.i, align 8, !noalias !221
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
  store %union.anon* %33, %union.anon** %34, align 8, !tbaa !164, !alias.scope !221
  %_M_p.i.i25.i.i213 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %cond-lvalue.i, i64 0, i32 0, i32 0
  %35 = load i8*, i8** %_M_p.i.i25.i.i213, align 8, !tbaa !169
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
  store i8* %35, i8** %_M_p.i23.i.i218, align 8, !tbaa !169, !alias.scope !221
  %_M_allocated_capacity.i.i219 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %cond-lvalue.i, i64 0, i32 2, i32 0
  %37 = load i64, i64* %_M_allocated_capacity.i.i219, align 8, !tbaa !171
  %_M_allocated_capacity.i.i.i220 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp33, i64 0, i32 2, i32 0
  store i64 %37, i64* %_M_allocated_capacity.i.i.i220, align 8, !tbaa !171, !alias.scope !221
  br label %invoke.cont44

invoke.cont44:                                    ; preds = %if.else.i.i221, %if.then.i.i217
  %_M_string_length.i22.i.i222 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %cond-lvalue.i, i64 0, i32 1
  %38 = load i64, i64* %_M_string_length.i22.i.i222, align 8, !tbaa !172
  %_M_string_length.i.i.i223 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp33, i64 0, i32 1
  store i64 %38, i64* %_M_string_length.i.i.i223, align 8, !tbaa !172, !alias.scope !221
  %39 = bitcast %"class.std::__cxx11::basic_string"* %cond-lvalue.i to %union.anon**
  store %union.anon* %36, %union.anon** %39, align 8, !tbaa !169
  store i64 0, i64* %_M_string_length.i22.i.i222, align 8, !tbaa !172
  store i8 0, i8* %arraydecay.i.i.i.i214, align 8, !tbaa !171
  %_M_p.i.i.i227 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp33, i64 0, i32 0, i32 0
  %40 = load i8*, i8** %_M_p.i.i.i227, align 8, !tbaa !169
  %41 = load i64, i64* %_M_string_length.i.i.i223, align 8, !tbaa !172
  %call3.i.i230 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %str27, i8* %40, i64 %41)
          to label %invoke.cont46 unwind label %lpad45

invoke.cont46:                                    ; preds = %invoke.cont44
  %42 = load i8*, i8** %_M_p.i.i.i227, align 8, !tbaa !169
  %arraydecay.i.i.i.i232 = bitcast %union.anon* %33 to i8*
  %cmp.i.i.i233 = icmp eq i8* %42, %arraydecay.i.i.i.i232
  br i1 %cmp.i.i.i233, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235, label %if.then.i.i234

if.then.i.i234:                                   ; preds = %invoke.cont46
  call void @_ZdlPv(i8* %42) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235: ; preds = %if.then.i.i234, %invoke.cont46
  %43 = load i8*, i8** %_M_p.i.i.i24.i, align 8, !tbaa !169
  %44 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp40, i64 0, i32 2
  %arraydecay.i.i.i.i237 = bitcast %union.anon* %44 to i8*
  %cmp.i.i.i238 = icmp eq i8* %43, %arraydecay.i.i.i.i237
  br i1 %cmp.i.i.i238, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240, label %if.then.i.i239

if.then.i.i239:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  call void @_ZdlPv(i8* %43) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240: ; preds = %if.then.i.i239, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit235
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %25) #27
  %45 = load i8*, i8** %_M_p.i.i.i.i211, align 8, !tbaa !169
  %cmp.i.i.i243 = icmp eq i8* %45, %arraydecay.i.i.i21.i
  br i1 %cmp.i.i.i243, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245, label %if.then.i.i244

if.then.i.i244:                                   ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  call void @_ZdlPv(i8* %45) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit245: ; preds = %if.then.i.i244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit240
  %_M_p.i.i.i.i246 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp35, i64 0, i32 0, i32 0
  %46 = load i8*, i8** %_M_p.i.i.i.i246, align 8, !tbaa !169
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
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %51 = load i64, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !172, !noalias !224
  %52 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !169, !noalias !224
  %call3.i.i.i265 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp58, i64 0, i64 0, i8* %52, i64 %51)
          to label %call3.i.i.i.noexc264 unwind label %lpad61

call3.i.i.i.noexc264:                             ; preds = %invoke.cont60
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp57, i64 0, i32 2
  %54 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp57 to %union.anon**
  store %union.anon* %53, %union.anon** %54, align 8, !tbaa !164, !alias.scope !224
  %_M_p.i.i25.i.i253 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i265, i64 0, i32 0, i32 0
  %55 = load i8*, i8** %_M_p.i.i25.i.i253, align 8, !tbaa !169
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
  store i8* %55, i8** %_M_p.i23.i.i258, align 8, !tbaa !169, !alias.scope !224
  %_M_allocated_capacity.i.i259 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i265, i64 0, i32 2, i32 0
  %57 = load i64, i64* %_M_allocated_capacity.i.i259, align 8, !tbaa !171
  %_M_allocated_capacity.i.i.i260 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp57, i64 0, i32 2, i32 0
  store i64 %57, i64* %_M_allocated_capacity.i.i.i260, align 8, !tbaa !171, !alias.scope !224
  br label %invoke.cont62

invoke.cont62:                                    ; preds = %if.else.i.i261, %if.then.i.i257
  %_M_string_length.i22.i.i262 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i265, i64 0, i32 1
  %58 = load i64, i64* %_M_string_length.i22.i.i262, align 8, !tbaa !172
  %_M_string_length.i.i2.i263 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp57, i64 0, i32 1
  store i64 %58, i64* %_M_string_length.i.i2.i263, align 8, !tbaa !172, !alias.scope !224
  %59 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i265 to %union.anon**
  store %union.anon* %56, %union.anon** %59, align 8, !tbaa !169
  store i64 0, i64* %_M_string_length.i22.i.i262, align 8, !tbaa !172
  store i8 0, i8* %arraydecay.i.i.i.i254, align 8, !tbaa !171
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
  %65 = load i8*, i8** %_M_p.i.i.i227, align 8, !tbaa !169
  %arraydecay.i.i.i.i268 = bitcast %union.anon* %33 to i8*
  %cmp.i.i.i269 = icmp eq i8* %65, %arraydecay.i.i.i.i268
  br i1 %cmp.i.i.i269, label %ehcleanup49, label %if.then.i.i270

if.then.i.i270:                                   ; preds = %lpad45
  call void @_ZdlPv(i8* %65) #27
  br label %ehcleanup49

ehcleanup49:                                      ; preds = %if.then.i.i270, %lpad45, %lpad43
  %.pn112 = phi { i8*, i32 } [ %63, %lpad43 ], [ %64, %lpad45 ], [ %64, %if.then.i.i270 ]
  %66 = load i8*, i8** %_M_p.i.i.i24.i, align 8, !tbaa !169
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
  %68 = load i8*, i8** %_M_p.i.i.i.i277, align 8, !tbaa !169
  %cmp.i.i.i279 = icmp eq i8* %68, %arraydecay.i.i.i.i278.pre-phi
  br i1 %cmp.i.i.i279, label %ehcleanup52, label %if.then.i.i280

if.then.i.i280:                                   ; preds = %ehcleanup50
  call void @_ZdlPv(i8* %68) #27
  br label %ehcleanup52

ehcleanup52:                                      ; preds = %if.then.i.i280, %ehcleanup50, %lpad38
  %.pn112.pn.pn = phi { i8*, i32 } [ %61, %lpad38 ], [ %.pn112.pn, %ehcleanup50 ], [ %.pn112.pn, %if.then.i.i280 ]
  %_M_p.i.i.i.i282 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp35, i64 0, i32 0, i32 0
  %69 = load i8*, i8** %_M_p.i.i.i.i282, align 8, !tbaa !169
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
  %74 = load i8*, i8** %_M_p.i.i.i.i287, align 8, !tbaa !169
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
  %75 = load i8*, i8** %_M_p.i.i.i.i292, align 8, !tbaa !169
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
  %77 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !169
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
  %.pre = load i32, i32* %arrayidx.i.i, align 4, !tbaa !36
  %cmp.i303 = icmp eq i32 %.pre, 0
  br i1 %cmp.i303, label %if.end100, label %if.then79

if.then79:                                        ; preds = %if.end77, %if.else24
  %78 = phi i32 [ %.pre, %if.end77 ], [ %3, %if.else24 ]
  %data_.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 1
  %79 = load double*, double** %data_.i, align 8, !tbaa !46
  %arrayidx.i31.i.phi.trans.insert = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 3, i32 0, i64 1
  %arrayidx.i.i30526 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 4, i32 0, i64 0
  %80 = load i32, i32* %arrayidx.i.i30526, align 4, !tbaa !36
  %cmp3.i27 = icmp sgt i32 %80, -1
  %sub.i28 = add nsw i32 %78, -1
  %mul.i29 = mul nsw i32 %sub.i28, %80
  %idx.ext.i30 = sext i32 %mul.i29 to i64
  %add.ptr.i31 = getelementptr inbounds double, double* %79, i64 %idx.ext.i30
  %add.ptr14.i32 = getelementptr inbounds double, double* %79, i64 %idx.ext.i30
  %ptr_begin.133 = select i1 %cmp3.i27, double* %79, double* %add.ptr14.i32
  %ptr_end.134 = select i1 %cmp3.i27, double* %add.ptr.i31, double* %79
  %.pre25 = load i32, i32* %arrayidx.i31.i.phi.trans.insert, align 4, !tbaa !36
  %arrayidx.i.i305 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 4, i32 0, i64 1
  %81 = load i32, i32* %arrayidx.i.i305, align 4, !tbaa !36
  %cmp3.i = icmp sgt i32 %81, -1
  %sub.i = add nsw i32 %.pre25, -1
  %mul.i = mul nsw i32 %sub.i, %81
  %idx.ext.i = sext i32 %mul.i to i64
  %add.ptr.i = getelementptr inbounds double, double* %ptr_end.134, i64 %idx.ext.i
  %add.ptr14.i = getelementptr inbounds double, double* %ptr_begin.133, i64 %idx.ext.i
  %ptr_begin.1 = select i1 %cmp3.i, double* %ptr_begin.133, double* %add.ptr14.i
  %ptr_end.1 = select i1 %cmp3.i, double* %add.ptr.i, double* %ptr_end.134
  %82 = bitcast %"struct.adept::Expression"* %rhs to %"class.adept::Array"*
  %data_.i.i.i = getelementptr inbounds %"struct.adept::Expression", %"struct.adept::Expression"* %rhs, i64 8
  %83 = bitcast %"struct.adept::Expression"* %data_.i.i.i to double**
  %84 = load double*, double** %83, align 8, !tbaa !46
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %for.body.i.i.i, %if.then79
  %ptr_begin.0.i.i = phi double* [ %84, %if.then79 ], [ %ptr_begin.1.i.i, %for.body.i.i.i ]
  %ptr_end.0.i.i = phi double* [ %84, %if.then79 ], [ %ptr_end.1.i.i, %for.body.i.i.i ]
  %cmp.i.i.i307 = phi i1 [ true, %if.then79 ], [ false, %for.body.i.i.i ]
  %indvars.iv.i.i.i = phi i64 [ 0, %if.then79 ], [ 1, %for.body.i.i.i ]
  %arrayidx.i.i.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %82, i64 0, i32 4, i32 0, i64 %indvars.iv.i.i.i
  %85 = load i32, i32* %arrayidx.i.i.i.i, align 4, !tbaa !36
  %cmp3.i.i.i = icmp sgt i32 %85, -1
  %arrayidx.i31.i.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %82, i64 0, i32 3, i32 0, i64 %indvars.iv.i.i.i
  %86 = load i32, i32* %arrayidx.i31.i.i.i, align 4, !tbaa !36
  %sub.i.i.i = add nsw i32 %86, -1
  %mul.i.i.i = mul nsw i32 %sub.i.i.i, %85
  %idx.ext.i.i.i = sext i32 %mul.i.i.i to i64
  %add.ptr.i.i.i = getelementptr inbounds double, double* %ptr_end.0.i.i, i64 %idx.ext.i.i.i
  %add.ptr14.i.i.i = getelementptr inbounds double, double* %ptr_begin.0.i.i, i64 %idx.ext.i.i.i
  %ptr_begin.1.i.i = select i1 %cmp3.i.i.i, double* %ptr_begin.0.i.i, double* %add.ptr14.i.i.i
  %ptr_end.1.i.i = select i1 %cmp3.i.i.i, double* %add.ptr.i.i.i, double* %ptr_end.0.i.i
  br i1 %cmp.i.i.i307, label %for.body.i.i.i, label %_ZNK5adept10ExpressionIdNS_5ArrayILi2EdLb1EEEE10is_aliasedEPKdS5_.exit, !llvm.loop !227

_ZNK5adept10ExpressionIdNS_5ArrayILi2EdLb1EEEE10is_aliasedEPKdS5_.exit: ; preds = %for.body.i.i.i
  %cmp.not.i.i = icmp ule double* %ptr_begin.1.i.i, %ptr_end.1
  %cmp2.not.i.i = icmp uge double* %ptr_end.1.i.i, %ptr_begin.1
  %not.or.cond.i.i = and i1 %cmp.not.i.i, %cmp2.not.i.i
  br i1 %not.or.cond.i.i, label %if.then81, label %if.else91

if.then81:                                        ; preds = %_ZNK5adept10ExpressionIdNS_5ArrayILi2EdLb1EEEE10is_aliasedEPKdS5_.exit
  %87 = bitcast %"class.adept::Array"* %copy to i8*
  call void @llvm.lifetime.start.p0i8(i64 40, i8* nonnull %87) #27
  %value_.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %copy, i64 0, i32 0, i32 0
  store i32 -9999, i32* %value_.i.i, align 8, !tbaa !29
  %data_.i309 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %copy, i64 0, i32 1
  %88 = bitcast double** %data_.i309 to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(24) %88, i8 0, i64 24, i1 false)
  %call84 = invoke nonnull align 8 dereferenceable(40) %"class.adept::Array"* @_ZN5adept5ArrayILi2EdLb1EEaSIdS1_EENS_8internal9enable_ifIXeqsrT0_4rankLi2EERS1_E4typeERKNS_10ExpressionIT_S5_EE(%"class.adept::Array"* nonnull dereferenceable(40) %copy, %"struct.adept::Expression"* nonnull align 1 dereferenceable(1) %rhs)
          to label %invoke.cont83 unwind label %lpad82

invoke.cont83:                                    ; preds = %if.then81
  %89 = load i32, i32* %value_.i.i, align 8, !tbaa !29
  %value_.i.i315 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %agg.tmp, i64 0, i32 0, i32 0
  store i32 %89, i32* %value_.i.i315, align 8, !tbaa !29
  %data_.i316 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %agg.tmp, i64 0, i32 1
  %90 = load double*, double** %data_.i309, align 8, !tbaa !46
  store double* %90, double** %data_.i316, align 8, !tbaa !46
  %storage_.i317 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %agg.tmp, i64 0, i32 2
  %storage_.i.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %copy, i64 0, i32 2
  %91 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i.i, align 8, !tbaa !32
  store %"class.adept::Storage"* %91, %"class.adept::Storage"** %storage_.i317, align 8, !tbaa !32
  %dimensions_.i = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %agg.tmp, i64 0, i32 3
  %dimensions_.i.i318 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %copy, i64 0, i32 3
  %92 = bitcast %"class.adept::ExpressionSize"* %dimensions_.i.i318 to <2 x i64>*
  %93 = load <2 x i64>, <2 x i64>* %92, align 8, !tbaa !171
  %94 = bitcast %"class.adept::ExpressionSize"* %dimensions_.i to <2 x i64>*
  store <2 x i64> %93, <2 x i64>* %94, align 8, !tbaa !171
  %tobool.not.i319 = icmp eq %"class.adept::Storage"* %91, null
  br i1 %tobool.not.i319, label %invoke.cont85, label %if.then.i320

if.then.i320:                                     ; preds = %invoke.cont83
  %n_links_.i.i = getelementptr inbounds %"class.adept::Storage", %"class.adept::Storage"* %91, i64 0, i32 2
  %95 = load i32, i32* %n_links_.i.i, align 4, !tbaa !179
  %inc.i.i = add nsw i32 %95, 1
  store i32 %inc.i.i, i32* %n_links_.i.i, align 4, !tbaa !179
  br label %invoke.cont85

invoke.cont85:                                    ; preds = %if.then.i320, %invoke.cont83
  invoke void @_ZN5adept5ArrayILi2EdLb1EE18assign_expression_ILi2ELb1ELb1ES1_EENS_8internal9enable_ifIXaaT0_T1_EvE4typeET2_(%"class.adept::Array"* nonnull dereferenceable(40) %this, %"class.adept::Array"* nonnull %agg.tmp)
          to label %invoke.cont87 unwind label %lpad86

invoke.cont87:                                    ; preds = %invoke.cont85
  %96 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i317, align 8, !tbaa !32
  %tobool.not.i322 = icmp eq %"class.adept::Storage"* %96, null
  br i1 %tobool.not.i322, label %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit325, label %if.then.i323

if.then.i323:                                     ; preds = %invoke.cont87
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %96)
          to label %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit325 unwind label %terminate.lpad.i324

terminate.lpad.i324:                              ; preds = %if.then.i323
  %97 = landingpad { i8*, i32 }
          catch i8* null
  %98 = extractvalue { i8*, i32 } %97, 0
  call void @__clang_call_terminate(i8* %98) #29
  unreachable

_ZN5adept5ArrayILi2EdLb1EED2Ev.exit325:           ; preds = %if.then.i323, %invoke.cont87
  %99 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i.i, align 8, !tbaa !32
  %tobool.not.i327 = icmp eq %"class.adept::Storage"* %99, null
  br i1 %tobool.not.i327, label %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit330, label %if.then.i328

if.then.i328:                                     ; preds = %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit325
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %99)
          to label %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit330 unwind label %terminate.lpad.i329

terminate.lpad.i329:                              ; preds = %if.then.i328
  %100 = landingpad { i8*, i32 }
          catch i8* null
  %101 = extractvalue { i8*, i32 } %100, 0
  call void @__clang_call_terminate(i8* %101) #29
  unreachable

_ZN5adept5ArrayILi2EdLb1EED2Ev.exit330:           ; preds = %if.then.i328, %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit325
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %87) #27
  br label %if.end100

lpad82:                                           ; preds = %if.then81
  %102 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup89

lpad86:                                           ; preds = %invoke.cont85
  %103 = landingpad { i8*, i32 }
          cleanup
  %104 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i317, align 8, !tbaa !32
  %tobool.not.i332 = icmp eq %"class.adept::Storage"* %104, null
  br i1 %tobool.not.i332, label %ehcleanup89, label %if.then.i333

if.then.i333:                                     ; preds = %lpad86
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %104)
          to label %ehcleanup89 unwind label %terminate.lpad.i334

terminate.lpad.i334:                              ; preds = %if.then.i333
  %105 = landingpad { i8*, i32 }
          catch i8* null
  %106 = extractvalue { i8*, i32 } %105, 0
  call void @__clang_call_terminate(i8* %106) #29
  unreachable

ehcleanup89:                                      ; preds = %if.then.i333, %lpad86, %lpad82
  %.pn122 = phi { i8*, i32 } [ %102, %lpad82 ], [ %103, %lpad86 ], [ %103, %if.then.i333 ]
  %storage_.i336 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %copy, i64 0, i32 2
  %107 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i336, align 8, !tbaa !32
  %tobool.not.i337 = icmp eq %"class.adept::Storage"* %107, null
  br i1 %tobool.not.i337, label %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit340, label %if.then.i338

if.then.i338:                                     ; preds = %ehcleanup89
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %107)
          to label %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit340 unwind label %terminate.lpad.i339

terminate.lpad.i339:                              ; preds = %if.then.i338
  %108 = landingpad { i8*, i32 }
          catch i8* null
  %109 = extractvalue { i8*, i32 } %108, 0
  call void @__clang_call_terminate(i8* %109) #29
  unreachable

_ZN5adept5ArrayILi2EdLb1EED2Ev.exit340:           ; preds = %if.then.i338, %ehcleanup89
  call void @llvm.lifetime.end.p0i8(i64 40, i8* nonnull %87) #27
  br label %ehcleanup101

if.else91:                                        ; preds = %_ZNK5adept10ExpressionIdNS_5ArrayILi2EdLb1EEEE10is_aliasedEPKdS5_.exit
  %value_.i.i.i341 = bitcast %"struct.adept::Expression"* %rhs to i32*
  %110 = load i32, i32* %value_.i.i.i341, align 8, !tbaa !29
  %value_.i.i342 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %agg.tmp92, i64 0, i32 0, i32 0
  store i32 %110, i32* %value_.i.i342, align 8, !tbaa !29
  %dimensions_.i343 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %agg.tmp92, i64 0, i32 3
  %111 = bitcast %"struct.adept::Expression"* %dimensions_.i.i to <2 x i64>*
  %112 = load <2 x i64>, <2 x i64>* %111, align 8, !tbaa !171
  %113 = bitcast %"class.adept::ExpressionSize"* %dimensions_.i343 to <2 x i64>*
  store <2 x i64> %112, <2 x i64>* %113, align 8, !tbaa !171
  %data_.i.i348 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %agg.tmp92, i64 0, i32 1
  store double* %84, double** %data_.i.i348, align 8, !tbaa !46
  %storage_.i.i.i = getelementptr inbounds %"struct.adept::Expression", %"struct.adept::Expression"* %rhs, i64 16
  %114 = bitcast %"struct.adept::Expression"* %storage_.i.i.i to %"class.adept::Storage"**
  %115 = load %"class.adept::Storage"*, %"class.adept::Storage"** %114, align 8, !tbaa !32
  %storage_.i.i349 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %agg.tmp92, i64 0, i32 2
  store %"class.adept::Storage"* %115, %"class.adept::Storage"** %storage_.i.i349, align 8, !tbaa !32
  %tobool.not.i.i = icmp eq %"class.adept::Storage"* %115, null
  br i1 %tobool.not.i.i, label %_ZN5adept5ArrayILi2EdLb1EEC2ERKS1_.exit, label %if.then.i.i350

if.then.i.i350:                                   ; preds = %if.else91
  %n_links_.i.i.i = getelementptr inbounds %"class.adept::Storage", %"class.adept::Storage"* %115, i64 0, i32 2
  %116 = load i32, i32* %n_links_.i.i.i, align 4, !tbaa !179
  %inc.i.i.i = add nsw i32 %116, 1
  store i32 %inc.i.i.i, i32* %n_links_.i.i.i, align 4, !tbaa !179
  br label %_ZN5adept5ArrayILi2EdLb1EEC2ERKS1_.exit

_ZN5adept5ArrayILi2EdLb1EEC2ERKS1_.exit:          ; preds = %if.then.i.i350, %if.else91
  invoke void @_ZN5adept5ArrayILi2EdLb1EE18assign_expression_ILi2ELb1ELb1ES1_EENS_8internal9enable_ifIXaaT0_T1_EvE4typeET2_(%"class.adept::Array"* nonnull dereferenceable(40) %this, %"class.adept::Array"* nonnull %agg.tmp92)
          to label %invoke.cont95 unwind label %lpad94

invoke.cont95:                                    ; preds = %_ZN5adept5ArrayILi2EdLb1EEC2ERKS1_.exit
  %117 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i.i349, align 8, !tbaa !32
  %tobool.not.i = icmp eq %"class.adept::Storage"* %117, null
  br i1 %tobool.not.i, label %if.end100, label %if.then.i

if.then.i:                                        ; preds = %invoke.cont95
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %117)
          to label %if.end100 unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %if.then.i
  %118 = landingpad { i8*, i32 }
          catch i8* null
  %119 = extractvalue { i8*, i32 } %118, 0
  call void @__clang_call_terminate(i8* %119) #29
  unreachable

lpad94:                                           ; preds = %_ZN5adept5ArrayILi2EdLb1EEC2ERKS1_.exit
  %120 = landingpad { i8*, i32 }
          cleanup
  %121 = load %"class.adept::Storage"*, %"class.adept::Storage"** %storage_.i.i349, align 8, !tbaa !32
  %tobool.not.i311 = icmp eq %"class.adept::Storage"* %121, null
  br i1 %tobool.not.i311, label %ehcleanup101, label %if.then.i312

if.then.i312:                                     ; preds = %lpad94
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage"* nonnull dereferenceable(20) %121)
          to label %ehcleanup101 unwind label %terminate.lpad.i313

terminate.lpad.i313:                              ; preds = %if.then.i312
  %122 = landingpad { i8*, i32 }
          catch i8* null
  %123 = extractvalue { i8*, i32 } %122, 0
  call void @__clang_call_terminate(i8* %123) #29
  unreachable

if.end100:                                        ; preds = %if.then.i, %invoke.cont95, %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit330, %if.end77
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #27
  ret %"class.adept::Array"* %this

ehcleanup101:                                     ; preds = %if.then.i312, %lpad94, %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit340, %ehcleanup75
  %.pn122.pn.pn = phi { i8*, i32 } [ %.pn117.pn.pn, %ehcleanup75 ], [ %.pn122, %_ZN5adept5ArrayILi2EdLb1EED2Ev.exit340 ], [ %120, %lpad94 ], [ %120, %if.then.i312 ]
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
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !164
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #27
  store i64 27, i64* %__dnew.i.i.i.i, align 8, !tbaa !193
  %call5.i.i.i10.i15 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %lpad

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i18.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i15, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !193
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !171
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(27) %call5.i.i.i10.i15, i8* nonnull align 1 dereferenceable(27) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0), i64 27, i1 false) #27
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !172
  %6 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !171
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #27
  %7 = getelementptr inbounds %"class.adept::size_mismatch", %"class.adept::size_mismatch"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %message_.i.i = getelementptr inbounds %"class.adept::size_mismatch", %"class.adept::size_mismatch"* %this, i64 0, i32 0, i32 0, i32 1
  %8 = getelementptr inbounds %"class.adept::size_mismatch", %"class.adept::size_mismatch"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %message_.i.i to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !164
  %_M_string_length.i.i.i.i.i = getelementptr inbounds %"class.adept::size_mismatch", %"class.adept::size_mismatch"* %this, i64 0, i32 0, i32 0, i32 1, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i.i, align 8, !tbaa !172
  %.cast.i.i.i = bitcast %union.anon* %8 to i8*
  store i8 0, i8* %.cast.i.i.i, align 1, !tbaa !171
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept15array_exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !183
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %10 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !183
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.adept::size_mismatch", %"class.adept::size_mismatch"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %11 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !169
  %cmp.i.i.i.i.i = icmp eq i8* %11, %.cast.i.i.i
  br i1 %cmp.i.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %11) #27
  br label %_ZN5adept9exceptionD2Ev.exit.i

_ZN5adept9exceptionD2Ev.exit.i:                   ; preds = %if.then.i.i.i.i, %lpad.i
  %12 = getelementptr inbounds %"class.adept::size_mismatch", %"class.adept::size_mismatch"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %12) #27
  %13 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %cmp.i.i.i18 = icmp eq i8* %13, %3
  br i1 %cmp.i.i.i18, label %ehcleanup, label %if.then.i.i19

invoke.cont4:                                     ; preds = %call5.i.i.i10.i.noexc
  %14 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %cmp.i.i.i = icmp eq i8* %14, %3
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont4
  call void @_ZdlPv(i8* %14) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %invoke.cont4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #27
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept13size_mismatchE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !183
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
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !183
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::size_mismatch", %"class.adept::size_mismatch"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %17 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !169
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
  %2 = load i32, i32* %arrayidx, align 4, !tbaa !36
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
  %4 = load i32, i32* %arrayidx9, align 4, !tbaa !36
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
  store i32 (...)** %6, i32 (...)*** %7, align 8, !tbaa !183
  %8 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i32 (...)***), align 8
  %vbase.offset.ptr4.i.i = getelementptr i32 (...)*, i32 (...)** %6, i64 -3
  %9 = bitcast i32 (...)** %vbase.offset.ptr4.i.i to i64*
  %vbase.offset.i.i = load i64, i64* %9, align 8
  %add.ptr.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i
  %10 = bitcast i8* %add.ptr.i.i to i32 (...)***
  store i32 (...)** %8, i32 (...)*** %10, align 8, !tbaa !183
  %11 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i32 (...)***), align 8
  %12 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** %11, i32 (...)*** %12, align 8, !tbaa !183
  %13 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %13, align 8, !tbaa !183
  %_M_p.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 0, i32 0
  %14 = load i8*, i8** %_M_p.i.i.i.i.i.i.i, align 8, !tbaa !169
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 2
  %arraydecay.i.i.i.i.i.i.i = bitcast %union.anon* %15 to i8*
  %cmp.i.i.i.i.i.i = icmp eq i8* %14, %arraydecay.i.i.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %invoke.cont15
  call void @_ZdlPv(i8* %14) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %if.then.i.i.i.i.i, %invoke.cont15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %13, align 8, !tbaa !183
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i) #27
  %16 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)***), align 8
  store i32 (...)** %16, i32 (...)*** %7, align 8, !tbaa !183
  %17 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr3.i.i.i.i = getelementptr i32 (...)*, i32 (...)** %16, i64 -3
  %18 = bitcast i32 (...)** %vbase.offset.ptr3.i.i.i.i to i64*
  %vbase.offset.i.i.i.i = load i64, i64* %18, align 8
  %add.ptr.i.i.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i.i.i
  %19 = bitcast i8* %add.ptr.i.i.i.i to i32 (...)***
  store i32 (...)** %17, i32 (...)*** %19, align 8, !tbaa !183
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %20, align 8, !tbaa !191
  %21 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216) %21) #27
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %0) #27
  ret void

ehcleanup:                                        ; preds = %lpad5, %lpad
  %.pn = phi { i8*, i32 } [ %5, %lpad5 ], [ %3, %lpad ]
  %22 = load i32 (...)**, i32 (...)*** bitcast ([10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE to i32 (...)***), align 8
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** %22, i32 (...)*** %23, align 8, !tbaa !183
  %24 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i32 (...)***), align 8
  %vbase.offset.ptr4.i.i30 = getelementptr i32 (...)*, i32 (...)** %22, i64 -3
  %25 = bitcast i32 (...)** %vbase.offset.ptr4.i.i30 to i64*
  %vbase.offset.i.i31 = load i64, i64* %25, align 8
  %add.ptr.i.i32 = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i31
  %26 = bitcast i8* %add.ptr.i.i32 to i32 (...)***
  store i32 (...)** %24, i32 (...)*** %26, align 8, !tbaa !183
  %27 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i32 (...)***), align 8
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** %27, i32 (...)*** %28, align 8, !tbaa !183
  %29 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %29, align 8, !tbaa !183
  %_M_p.i.i.i.i.i.i.i33 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 0, i32 0
  %30 = load i8*, i8** %_M_p.i.i.i.i.i.i.i33, align 8, !tbaa !169
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 2
  %arraydecay.i.i.i.i.i.i.i34 = bitcast %union.anon* %31 to i8*
  %cmp.i.i.i.i.i.i35 = icmp eq i8* %30, %arraydecay.i.i.i.i.i.i.i34
  br i1 %cmp.i.i.i.i.i.i35, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit41, label %if.then.i.i.i.i.i36

if.then.i.i.i.i.i36:                              ; preds = %ehcleanup
  call void @_ZdlPv(i8* %30) #27
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit41

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit41: ; preds = %if.then.i.i.i.i.i36, %ehcleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %29, align 8, !tbaa !183
  %_M_buf_locale.i.i.i.i37 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i37) #27
  %32 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)***), align 8
  store i32 (...)** %32, i32 (...)*** %23, align 8, !tbaa !183
  %33 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr3.i.i.i.i38 = getelementptr i32 (...)*, i32 (...)** %32, i64 -3
  %34 = bitcast i32 (...)** %vbase.offset.ptr3.i.i.i.i38 to i64*
  %vbase.offset.i.i.i.i39 = load i64, i64* %34, align 8
  %add.ptr.i.i.i.i40 = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i.i.i39
  %35 = bitcast i8* %add.ptr.i.i.i.i40 to i32 (...)***
  store i32 (...)** %33, i32 (...)*** %35, align 8, !tbaa !183
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %36, align 8, !tbaa !191
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
  store %union.anon* %0, %union.anon** %1, align 8, !tbaa !164
  %2 = bitcast %union.anon* %0 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(7) %2, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i64 0, i64 0), i64 7, i1 false) #27
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 0, i32 0
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1
  store i64 7, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !172
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %2, i64 7
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !171
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp3 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #27
  %dimensions_ = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 3
  invoke void @_ZNK5adept14ExpressionSizeILi2EE3strB5cxx11Ev(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp3, %"class.adept::ExpressionSize"* nonnull dereferenceable(8) %dimensions_)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %entry
  %_M_p.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp3, i64 0, i32 0, i32 0
  %4 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !169
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp3, i64 0, i32 1
  %5 = load i64, i64* %_M_string_length.i.i.i, align 8, !tbaa !172
  %call3.i.i19 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %agg.result, i8* %4, i64 %5)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %invoke.cont5
  %6 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !169
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
  %10 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !169
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
  %12 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !169
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
  %1 = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !50
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i, %_ZTWN5adept21_stack_current_threadE.exit43
  %cmp.i44 = phi i1 [ true, %_ZTWN5adept21_stack_current_threadE.exit43 ], [ false, %for.body.i ]
  %indvars.iv.i = phi i64 [ 0, %_ZTWN5adept21_stack_current_threadE.exit43 ], [ 1, %for.body.i ]
  %s.08.i = phi i32 [ 1, %_ZTWN5adept21_stack_current_threadE.exit43 ], [ %mul.i46, %for.body.i ]
  %arrayidx.i.i45 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 3, i32 0, i64 %indvars.iv.i
  %2 = load i32, i32* %arrayidx.i.i45, align 4, !tbaa !36
  %mul.i46 = mul nsw i32 %2, %s.08.i
  br i1 %cmp.i44, label %for.body.i, label %_ZNK5adept5ArrayILi2EdLb1EE4sizeEv.exit, !llvm.loop !175

_ZNK5adept5ArrayILi2EdLb1EE4sizeEv.exit:          ; preds = %for.body.i
  %n_allocated_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %1, i64 0, i32 6
  %3 = load i32, i32* %n_allocated_operations_.i, align 4, !tbaa !137
  %n_operations_.i49 = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %1, i64 0, i32 5
  %4 = load i32, i32* %n_operations_.i49, align 8, !tbaa !57
  %add.i50 = add nsw i32 %4, %mul.i46
  %cmp.not.i51 = icmp sgt i32 %3, %add.i50
  br i1 %cmp.not.i51, label %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit, label %if.then.i52

if.then.i52:                                      ; preds = %_ZNK5adept5ArrayILi2EdLb1EE4sizeEv.exit
  tail call void @_ZN5adept8internal16StackStorageOrig20grow_operation_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %1, i32 %mul.i46)
  br label %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit

_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit: ; preds = %if.then.i52, %_ZNK5adept5ArrayILi2EdLb1EE4sizeEv.exit
  %arrayidx.i.i.i53 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %rhs, i64 0, i32 4, i32 0, i64 1
  %5 = load i32, i32* %arrayidx.i.i.i53, align 4, !tbaa !36
  %cmp.i.i = icmp eq i32 %5, 1
  br i1 %cmp.i.i, label %_ZNK5adept10ExpressionIdNS_5ArrayILi2EdLb1EEEE21all_arrays_contiguousEv.exit, label %if.else

_ZNK5adept10ExpressionIdNS_5ArrayILi2EdLb1EEEE21all_arrays_contiguousEv.exit: ; preds = %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit
  %6 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %rhs, i64 0, i32 4, i32 0, i64 0
  %7 = load i32, i32* %6, align 4, !tbaa !36
  %8 = and i32 %7, 1
  %cmp.i.i.i = icmp eq i32 %8, 0
  br i1 %cmp.i.i.i, label %if.then, label %if.else

if.then:                                          ; preds = %_ZNK5adept10ExpressionIdNS_5ArrayILi2EdLb1EEEE21all_arrays_contiguousEv.exit
  %data_ = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 1
  %9 = load double*, double** %data_, align 8, !tbaa !46
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
  %12 = load i32, i32* %arrayidx.i10.i.i.i109, align 4, !tbaa !36
  %mul.i.i.i110 = mul nsw i32 %12, %11
  %add.i.i.i111 = add nsw i32 %mul.i.i.i110, %o.012.i.i.i107
  br i1 %cmp.i.i.i105, label %for.body.i.i.i112, label %for.cond.preheader, !llvm.loop !228

for.cond.preheader:                               ; preds = %for.body.i.i.i112
  %13 = load i32, i32* %arrayidx.i128, align 4, !tbaa !36
  %cmp162 = icmp sgt i32 %13, 0
  br i1 %cmp162, label %for.body.preheader, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  %.pre182 = load i32, i32* %arrayidx.i88, align 4, !tbaa !36
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
  %17 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !50
  %18 = load double*, double** %data_.i.i115, align 8, !tbaa !46
  %arrayidx.i9.i = getelementptr inbounds double, double* %18, i64 %indvars.iv
  %19 = load double, double* %arrayidx.i9.i, align 8, !tbaa !8
  %20 = load i32, i32* %value_.i.i.i.i117, align 4, !tbaa !29
  %21 = trunc i64 %indvars.iv to i32
  %add.i.i118 = add nsw i32 %20, %21
  %multiplier_.i.i.i119 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %17, i64 0, i32 0, i32 1
  %22 = load double*, double** %multiplier_.i.i.i119, align 8, !tbaa !135
  %n_operations_.i.i.i120 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %17, i64 0, i32 0, i32 5
  %23 = load i32, i32* %n_operations_.i.i.i120, align 8, !tbaa !57
  %idxprom.i.i.i121 = sext i32 %23 to i64
  %arrayidx.i.i.i122 = getelementptr inbounds double, double* %22, i64 %idxprom.i.i.i121
  store double 1.000000e+00, double* %arrayidx.i.i.i122, align 8, !tbaa !8
  %index_.i.i.i123 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %17, i64 0, i32 0, i32 2
  %24 = load i32*, i32** %index_.i.i.i123, align 8, !tbaa !136
  %inc.i.i.i124 = add nsw i32 %23, 1
  store i32 %inc.i.i.i124, i32* %n_operations_.i.i.i120, align 8, !tbaa !57
  %arrayidx4.i.i.i125 = getelementptr inbounds i32, i32* %24, i64 %idxprom.i.i.i121
  store i32 %add.i.i118, i32* %arrayidx4.i.i.i125, align 4, !tbaa !36
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %idxprom = sext i32 %index.1163 to i64
  %arrayidx = getelementptr inbounds double, double* %9, i64 %idxprom
  store double %19, double* %arrayidx, align 8, !tbaa !8
  %25 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %17, i64 0, i32 0
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %26, label %_ZTWN5adept21_stack_current_threadE.exit104

26:                                               ; preds = %_ZTWN5adept21_stack_current_threadE.exit126
  tail call void @_ZTHN5adept21_stack_current_threadE()
  %.pre181 = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !50
  br label %_ZTWN5adept21_stack_current_threadE.exit104

_ZTWN5adept21_stack_current_threadE.exit104:      ; preds = %26, %_ZTWN5adept21_stack_current_threadE.exit126
  %27 = phi %"class.adept::internal::StackStorageOrig"* [ %25, %_ZTWN5adept21_stack_current_threadE.exit126 ], [ %.pre181, %26 ]
  %28 = load i32, i32* %value_.i.i103, align 4, !tbaa !29
  %add = add nsw i32 %28, %index.1163
  %n_statements_.i90 = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %27, i64 0, i32 3
  %29 = load i32, i32* %n_statements_.i90, align 8, !tbaa !51
  %n_allocated_statements_.i91 = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %27, i64 0, i32 4
  %30 = load i32, i32* %n_allocated_statements_.i91, align 4, !tbaa !53
  %cmp.not.i92 = icmp slt i32 %29, %30
  br i1 %cmp.not.i92, label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit101, label %if.then.i94

if.then.i94:                                      ; preds = %_ZTWN5adept21_stack_current_threadE.exit104
  tail call void @_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %27, i32 0)
  %.pre.i93 = load i32, i32* %n_statements_.i90, align 8, !tbaa !51
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit101

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit101: ; preds = %if.then.i94, %_ZTWN5adept21_stack_current_threadE.exit104
  %31 = phi i32 [ %.pre.i93, %if.then.i94 ], [ %29, %_ZTWN5adept21_stack_current_threadE.exit104 ]
  %statement_.i95 = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %27, i64 0, i32 0
  %32 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i95, align 8, !tbaa !54
  %idxprom.i96 = sext i32 %31 to i64
  %index.i97 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %32, i64 %idxprom.i96, i32 0
  store i32 %add, i32* %index.i97, align 4, !tbaa !55
  %n_operations_.i98 = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %27, i64 0, i32 5
  %33 = load i32, i32* %n_operations_.i98, align 8, !tbaa !57
  %inc.i99 = add nsw i32 %31, 1
  store i32 %inc.i99, i32* %n_statements_.i90, align 8, !tbaa !51
  %end_plus_one.i100 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %32, i64 %idxprom.i96, i32 1
  store i32 %33, i32* %end_plus_one.i100, align 4, !tbaa !58
  %inc = add nuw nsw i32 %15, 1
  %34 = load i32, i32* %arrayidx.i88, align 4, !tbaa !36
  %add10 = add nsw i32 %34, %index.1163
  %35 = load i32, i32* %arrayidx.i128, align 4, !tbaa !36
  %cmp = icmp slt i32 %inc, %35
  br i1 %cmp, label %for.body, label %while.body.i71, !llvm.loop !229

while.body.i71:                                   ; preds = %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit101, %for.cond.preheader.for.end_crit_edge
  %36 = phi i32 [ %13, %for.cond.preheader.for.end_crit_edge ], [ %35, %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit101 ]
  %37 = phi i32 [ %.pre182, %for.cond.preheader.for.end_crit_edge ], [ %34, %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit101 ]
  %index.1.lcssa = phi i32 [ %index.0, %for.cond.preheader.for.end_crit_edge ], [ %add10, %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit101 ]
  %.pre184 = load i32, i32* %arrayidx.i35.i69.phi.trans.insert, align 4, !tbaa !36
  %inc.i67 = add nuw nsw i32 %10, 1
  %cmp6.not.i70 = icmp slt i32 %inc.i67, %.pre184
  br i1 %cmp6.not.i70, label %_ZNK5adept5ArrayILi2EdLb1EE13advance_indexERiS2_RNS_14ExpressionSizeILi2EEE.exit87, label %if.end

_ZNK5adept5ArrayILi2EdLb1EE13advance_indexERiS2_RNS_14ExpressionSizeILi2EEE.exit87: ; preds = %while.body.i71
  %mul.i62 = mul nsw i32 %37, %36
  %sub.i63 = sub i32 %index.1.lcssa, %mul.i62
  %38 = load i32, i32* %arrayidx.i27.i84, align 4, !tbaa !36
  %add.i85 = add nsw i32 %sub.i63, %38
  br label %do.body

if.else:                                          ; preds = %_ZNK5adept10ExpressionIdNS_5ArrayILi2EdLb1EEEE21all_arrays_contiguousEv.exit, %_ZN5adept8internal16StackStorageOrig11check_spaceEi.exit
  %data_13 = getelementptr inbounds %"class.adept::Array", %"class.adept::Array"* %this, i64 0, i32 1
  %39 = load double*, double** %data_13, align 8, !tbaa !46
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
  %42 = load i32, i32* %arrayidx.i10.i.i.i, align 4, !tbaa !36
  %mul.i.i.i = mul nsw i32 %42, %41
  %add.i.i.i = add nsw i32 %mul.i.i.i, %o.012.i.i.i
  br i1 %cmp.i.i.i56, label %for.body.i.i.i, label %for.cond16.preheader, !llvm.loop !228

for.cond16.preheader:                             ; preds = %for.body.i.i.i
  %43 = load i32, i32* %arrayidx.i54, align 4, !tbaa !36
  %cmp20165 = icmp sgt i32 %43, 0
  br i1 %cmp20165, label %for.body21, label %for.cond16.preheader.for.end34_crit_edge

for.cond16.preheader.for.end34_crit_edge:         ; preds = %for.cond16.preheader
  %.pre180 = load i32, i32* %arrayidx.i, align 4, !tbaa !36
  br label %while.body.i

for.body21:                                       ; preds = %for.cond16.preheader, %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit
  %44 = phi i32 [ %inc30, %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit ], [ 0, %for.cond16.preheader ]
  %ind.sroa.0.1167 = phi i32 [ %add.i.i, %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit ], [ %add.i.i.i, %for.cond16.preheader ]
  %index.5166 = phi i32 [ %add33, %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit ], [ %index.4, %for.cond16.preheader ]
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %45, label %_ZTWN5adept21_stack_current_threadE.exit48

45:                                               ; preds = %for.body21
  tail call void @_ZTHN5adept21_stack_current_threadE()
  br label %_ZTWN5adept21_stack_current_threadE.exit48

_ZTWN5adept21_stack_current_threadE.exit48:       ; preds = %45, %for.body21
  %46 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !50
  %47 = load double*, double** %data_.i.i, align 8, !tbaa !46
  %idxprom.i.i = sext i32 %ind.sroa.0.1167 to i64
  %arrayidx.i.i47 = getelementptr inbounds double, double* %47, i64 %idxprom.i.i
  %48 = load double, double* %arrayidx.i.i47, align 8, !tbaa !8
  %49 = load i32, i32* %value_.i.i.i.i, align 4, !tbaa !29
  %add.i8.i = add nsw i32 %49, %ind.sroa.0.1167
  %multiplier_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %46, i64 0, i32 0, i32 1
  %50 = load double*, double** %multiplier_.i.i.i, align 8, !tbaa !135
  %n_operations_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %46, i64 0, i32 0, i32 5
  %51 = load i32, i32* %n_operations_.i.i.i, align 8, !tbaa !57
  %idxprom.i.i.i = sext i32 %51 to i64
  %arrayidx.i.i9.i = getelementptr inbounds double, double* %50, i64 %idxprom.i.i.i
  store double 1.000000e+00, double* %arrayidx.i.i9.i, align 8, !tbaa !8
  %index_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %46, i64 0, i32 0, i32 2
  %52 = load i32*, i32** %index_.i.i.i, align 8, !tbaa !136
  %inc.i.i.i = add nsw i32 %51, 1
  store i32 %inc.i.i.i, i32* %n_operations_.i.i.i, align 8, !tbaa !57
  %arrayidx4.i.i.i = getelementptr inbounds i32, i32* %52, i64 %idxprom.i.i.i
  store i32 %add.i8.i, i32* %arrayidx4.i.i.i, align 4, !tbaa !36
  %53 = load i32, i32* %arrayidx.i.i.i53, align 4, !tbaa !36
  %add.i.i = add nsw i32 %53, %ind.sroa.0.1167
  %idxprom23 = sext i32 %index.5166 to i64
  %arrayidx24 = getelementptr inbounds double, double* %39, i64 %idxprom23
  store double %48, double* %arrayidx24, align 8, !tbaa !8
  %54 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %46, i64 0, i32 0
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %55, label %_ZTWN5adept21_stack_current_threadE.exit

55:                                               ; preds = %_ZTWN5adept21_stack_current_threadE.exit48
  tail call void @_ZTHN5adept21_stack_current_threadE()
  %.pre = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !50
  br label %_ZTWN5adept21_stack_current_threadE.exit

_ZTWN5adept21_stack_current_threadE.exit:         ; preds = %55, %_ZTWN5adept21_stack_current_threadE.exit48
  %56 = phi %"class.adept::internal::StackStorageOrig"* [ %54, %_ZTWN5adept21_stack_current_threadE.exit48 ], [ %.pre, %55 ]
  %57 = load i32, i32* %value_.i.i, align 4, !tbaa !29
  %add27 = add nsw i32 %57, %index.5166
  %n_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %56, i64 0, i32 3
  %58 = load i32, i32* %n_statements_.i, align 8, !tbaa !51
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %56, i64 0, i32 4
  %59 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !53
  %cmp.not.i = icmp slt i32 %58, %59
  br i1 %cmp.not.i, label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit, label %if.then.i41

if.then.i41:                                      ; preds = %_ZTWN5adept21_stack_current_threadE.exit
  tail call void @_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %56, i32 0)
  %.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !51
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %if.then.i41, %_ZTWN5adept21_stack_current_threadE.exit
  %60 = phi i32 [ %.pre.i, %if.then.i41 ], [ %58, %_ZTWN5adept21_stack_current_threadE.exit ]
  %statement_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %56, i64 0, i32 0
  %61 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i, align 8, !tbaa !54
  %idxprom.i = sext i32 %60 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %61, i64 %idxprom.i, i32 0
  store i32 %add27, i32* %index.i, align 4, !tbaa !55
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %56, i64 0, i32 5
  %62 = load i32, i32* %n_operations_.i, align 8, !tbaa !57
  %inc.i42 = add nsw i32 %60, 1
  store i32 %inc.i42, i32* %n_statements_.i, align 8, !tbaa !51
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %61, i64 %idxprom.i, i32 1
  store i32 %62, i32* %end_plus_one.i, align 4, !tbaa !58
  %inc30 = add nuw nsw i32 %44, 1
  %63 = load i32, i32* %arrayidx.i, align 4, !tbaa !36
  %add33 = add nsw i32 %63, %index.5166
  %64 = load i32, i32* %arrayidx.i54, align 4, !tbaa !36
  %cmp20 = icmp slt i32 %inc30, %64
  br i1 %cmp20, label %for.body21, label %while.body.i, !llvm.loop !230

while.body.i:                                     ; preds = %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit, %for.cond16.preheader.for.end34_crit_edge
  %65 = phi i32 [ %43, %for.cond16.preheader.for.end34_crit_edge ], [ %64, %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit ]
  %66 = phi i32 [ %.pre180, %for.cond16.preheader.for.end34_crit_edge ], [ %63, %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit ]
  %index.5.lcssa = phi i32 [ %index.4, %for.cond16.preheader.for.end34_crit_edge ], [ %add33, %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit ]
  %.pre183 = load i32, i32* %arrayidx.i35.i.phi.trans.insert, align 4, !tbaa !36
  %inc.i = add nuw nsw i32 %40, 1
  %cmp6.not.i = icmp slt i32 %inc.i, %.pre183
  br i1 %cmp6.not.i, label %_ZNK5adept5ArrayILi2EdLb1EE13advance_indexERiS2_RNS_14ExpressionSizeILi2EEE.exit, label %if.end

_ZNK5adept5ArrayILi2EdLb1EE13advance_indexERiS2_RNS_14ExpressionSizeILi2EEE.exit: ; preds = %while.body.i
  %mul.i = mul nsw i32 %66, %65
  %sub.i = sub i32 %index.5.lcssa, %mul.i
  %67 = load i32, i32* %arrayidx.i27.i, align 4, !tbaa !36
  %add.i = add nsw i32 %sub.i, %67
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
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !183
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::size_mismatch", %"class.adept::size_mismatch"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !169
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
  %1 = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !50
  %n_allocated_operations_.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %1, i64 0, i32 6
  %2 = load i32, i32* %n_allocated_operations_.i.i, align 4, !tbaa !137
  %n_operations_.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %1, i64 0, i32 5
  %3 = load i32, i32* %n_operations_.i.i, align 8, !tbaa !57
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
  %5 = load %"class.adept::Active"*, %"class.adept::Active"** %left.i.i.i, align 8, !tbaa !231
  %val_.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %5, i64 0, i32 0
  %6 = load double, double* %val_.i.i.i.i, align 8, !tbaa !199
  %left.i.i.i.i5.i = getelementptr inbounds %"struct.adept::Expression.17", %"struct.adept::Expression.17"* %rhs, i64 8
  %7 = bitcast %"struct.adept::Expression.17"* %left.i.i.i.i5.i to %"class.adept::ActiveReference"**
  %8 = load %"class.adept::ActiveReference"*, %"class.adept::ActiveReference"** %7, align 8, !tbaa !234
  %val_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::ActiveReference", %"class.adept::ActiveReference"* %8, i64 0, i32 0
  %9 = load double*, double** %val_.i.i.i.i.i.i, align 8, !tbaa !235
  %10 = load double, double* %9, align 8, !tbaa !8
  %right.i.i.i.i.i = getelementptr inbounds %"struct.adept::Expression.17", %"struct.adept::Expression.17"* %rhs, i64 16
  %11 = bitcast %"struct.adept::Expression.17"* %right.i.i.i.i.i to %"class.adept::ActiveReference"**
  %12 = load %"class.adept::ActiveReference"*, %"class.adept::ActiveReference"** %11, align 8, !tbaa !236
  %val_.i9.i.i.i.i.i = getelementptr inbounds %"class.adept::ActiveReference", %"class.adept::ActiveReference"* %12, i64 0, i32 0
  %13 = load double*, double** %val_.i9.i.i.i.i.i, align 8, !tbaa !235
  %14 = load double, double* %13, align 8, !tbaa !8
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %15, label %_ZNK5adept10ExpressionIdNS_8internal15BinaryOperationIdNS_6ActiveIdEENS1_3AddENS2_IdNS_15ActiveReferenceIdEENS1_8MultiplyES7_EEEEE25scalar_value_and_gradientERNS_5StackE.exit

15:                                               ; preds = %_ZTWN5adept21_stack_current_threadE.exit2
  tail call void @_ZTHN5adept21_stack_current_threadE()
  %.pre.i = load %"class.adept::Active"*, %"class.adept::Active"** %left.i.i.i, align 8, !tbaa !231
  %.pre8.i = load %"class.adept::ActiveReference"*, %"class.adept::ActiveReference"** %7, align 8, !tbaa !234
  %.pre9.i = load %"class.adept::ActiveReference"*, %"class.adept::ActiveReference"** %11, align 8, !tbaa !236
  %val_.i.i.i.i.i.i.i.phi.trans.insert.i = getelementptr inbounds %"class.adept::ActiveReference", %"class.adept::ActiveReference"* %.pre9.i, i64 0, i32 0
  %.pre10.i = load double*, double** %val_.i.i.i.i.i.i.i.phi.trans.insert.i, align 8, !tbaa !235
  %val_.i.i.i5.i.i.i.i.phi.trans.insert.i = getelementptr inbounds %"class.adept::ActiveReference", %"class.adept::ActiveReference"* %.pre8.i, i64 0, i32 0
  %.pre11.i = load double*, double** %val_.i.i.i5.i.i.i.i.phi.trans.insert.i, align 8, !tbaa !235
  br label %_ZNK5adept10ExpressionIdNS_8internal15BinaryOperationIdNS_6ActiveIdEENS1_3AddENS2_IdNS_15ActiveReferenceIdEENS1_8MultiplyES7_EEEEE25scalar_value_and_gradientERNS_5StackE.exit

_ZNK5adept10ExpressionIdNS_8internal15BinaryOperationIdNS_6ActiveIdEENS1_3AddENS2_IdNS_15ActiveReferenceIdEENS1_8MultiplyES7_EEEEE25scalar_value_and_gradientERNS_5StackE.exit: ; preds = %15, %_ZTWN5adept21_stack_current_threadE.exit2
  %16 = phi double* [ %9, %_ZTWN5adept21_stack_current_threadE.exit2 ], [ %.pre11.i, %15 ]
  %17 = phi double* [ %13, %_ZTWN5adept21_stack_current_threadE.exit2 ], [ %.pre10.i, %15 ]
  %18 = phi %"class.adept::ActiveReference"* [ %12, %_ZTWN5adept21_stack_current_threadE.exit2 ], [ %.pre9.i, %15 ]
  %19 = phi %"class.adept::ActiveReference"* [ %8, %_ZTWN5adept21_stack_current_threadE.exit2 ], [ %.pre8.i, %15 ]
  %20 = phi %"class.adept::Active"* [ %5, %_ZTWN5adept21_stack_current_threadE.exit2 ], [ %.pre.i, %15 ]
  %mul.i.i.i.i.i.i = fmul fast double %14, %10
  %add.i.i.i.i = fadd fast double %mul.i.i.i.i.i.i, %6
  %21 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !50
  %gradient_index_.i.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %20, i64 0, i32 1
  %multiplier_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0, i32 1
  %22 = load double*, double** %multiplier_.i.i.i.i.i.i, align 8, !tbaa !135
  %n_operations_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0, i32 5
  %23 = load i32, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !57
  %idxprom.i.i.i.i.i.i = sext i32 %23 to i64
  %arrayidx.i.i.i.i.i.i = getelementptr inbounds double, double* %22, i64 %idxprom.i.i.i.i.i.i
  store double 1.000000e+00, double* %arrayidx.i.i.i.i.i.i, align 8, !tbaa !8
  %24 = load i32, i32* %gradient_index_.i.i.i.i.i, align 8, !tbaa !36
  %index_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0, i32 2
  %25 = load i32*, i32** %index_.i.i.i.i.i.i, align 8, !tbaa !136
  %inc.i.i.i.i.i.i = add nsw i32 %23, 1
  store i32 %inc.i.i.i.i.i.i, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !57
  %arrayidx4.i.i.i.i.i.i = getelementptr inbounds i32, i32* %25, i64 %idxprom.i.i.i.i.i.i
  store i32 %24, i32* %arrayidx4.i.i.i.i.i.i, align 4, !tbaa !36
  %26 = load double, double* %17, align 8, !tbaa !8
  %gradient_index_.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.adept::ActiveReference", %"class.adept::ActiveReference"* %19, i64 0, i32 1
  %27 = load i32, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !57
  %idxprom.i.i.i.i.i.i.i.i.i = sext i32 %27 to i64
  %arrayidx.i.i.i.i.i.i.i.i.i = getelementptr inbounds double, double* %22, i64 %idxprom.i.i.i.i.i.i.i.i.i
  store double %26, double* %arrayidx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !8
  %28 = load i32, i32* %gradient_index_.i.i.i.i.i.i.i.i, align 8, !tbaa !36
  %inc.i.i.i.i.i.i.i.i.i = add nsw i32 %27, 1
  store i32 %inc.i.i.i.i.i.i.i.i.i, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !57
  %arrayidx4.i.i.i.i.i.i.i.i.i = getelementptr inbounds i32, i32* %25, i64 %idxprom.i.i.i.i.i.i.i.i.i
  store i32 %28, i32* %arrayidx4.i.i.i.i.i.i.i.i.i, align 4, !tbaa !36
  %29 = load double, double* %16, align 8, !tbaa !8
  %gradient_index_.i.i.i6.i.i.i.i.i = getelementptr inbounds %"class.adept::ActiveReference", %"class.adept::ActiveReference"* %18, i64 0, i32 1
  %30 = load i32, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !57
  %idxprom.i.i.i.i9.i.i.i.i.i = sext i32 %30 to i64
  %arrayidx.i.i.i.i10.i.i.i.i.i = getelementptr inbounds double, double* %22, i64 %idxprom.i.i.i.i9.i.i.i.i.i
  store double %29, double* %arrayidx.i.i.i.i10.i.i.i.i.i, align 8, !tbaa !8
  %31 = load i32, i32* %gradient_index_.i.i.i6.i.i.i.i.i, align 8, !tbaa !36
  %inc.i.i.i.i12.i.i.i.i.i = add nsw i32 %30, 1
  store i32 %inc.i.i.i.i12.i.i.i.i.i, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !57
  %arrayidx4.i.i.i.i13.i.i.i.i.i = getelementptr inbounds i32, i32* %25, i64 %idxprom.i.i.i.i9.i.i.i.i.i
  store i32 %31, i32* %arrayidx4.i.i.i.i13.i.i.i.i.i, align 4, !tbaa !36
  %val_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 0
  store double %add.i.i.i.i, double* %val_, align 8, !tbaa !199
  %32 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0
  br i1 icmp ne (void ()* @_ZTHN5adept21_stack_current_threadE, void ()* null), label %33, label %_ZTWN5adept21_stack_current_threadE.exit3

33:                                               ; preds = %_ZNK5adept10ExpressionIdNS_8internal15BinaryOperationIdNS_6ActiveIdEENS1_3AddENS2_IdNS_15ActiveReferenceIdEENS1_8MultiplyES7_EEEEE25scalar_value_and_gradientERNS_5StackE.exit
  tail call void @_ZTHN5adept21_stack_current_threadE()
  %.pre = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !50
  br label %_ZTWN5adept21_stack_current_threadE.exit3

_ZTWN5adept21_stack_current_threadE.exit3:        ; preds = %33, %_ZNK5adept10ExpressionIdNS_8internal15BinaryOperationIdNS_6ActiveIdEENS1_3AddENS2_IdNS_15ActiveReferenceIdEENS1_8MultiplyES7_EEEEE25scalar_value_and_gradientERNS_5StackE.exit
  %34 = phi %"class.adept::internal::StackStorageOrig"* [ %32, %_ZNK5adept10ExpressionIdNS_8internal15BinaryOperationIdNS_6ActiveIdEENS1_3AddENS2_IdNS_15ActiveReferenceIdEENS1_8MultiplyES7_EEEEE25scalar_value_and_gradientERNS_5StackE.exit ], [ %.pre, %33 ]
  %n_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %34, i64 0, i32 3
  %35 = load i32, i32* %n_statements_.i, align 8, !tbaa !51
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %34, i64 0, i32 4
  %36 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !53
  %cmp.not.i = icmp slt i32 %35, %36
  br i1 %cmp.not.i, label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit, label %if.then.i

if.then.i:                                        ; preds = %_ZTWN5adept21_stack_current_threadE.exit3
  tail call void @_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %34, i32 0)
  %.pre.i4 = load i32, i32* %n_statements_.i, align 8, !tbaa !51
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %if.then.i, %_ZTWN5adept21_stack_current_threadE.exit3
  %37 = phi i32 [ %.pre.i4, %if.then.i ], [ %35, %_ZTWN5adept21_stack_current_threadE.exit3 ]
  %gradient_index_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 1
  %38 = load i32, i32* %gradient_index_, align 4, !tbaa !36
  %statement_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %34, i64 0, i32 0
  %39 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i, align 8, !tbaa !54
  %idxprom.i = sext i32 %37 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %39, i64 %idxprom.i, i32 0
  store i32 %38, i32* %index.i, align 4, !tbaa !55
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %34, i64 0, i32 5
  %40 = load i32, i32* %n_operations_.i, align 8, !tbaa !57
  %inc.i = add nsw i32 %37, 1
  store i32 %inc.i, i32* %n_statements_.i, align 8, !tbaa !51
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %39, i64 %idxprom.i, i32 1
  store i32 %40, i32* %end_plus_one.i, align 4, !tbaa !58
  ret %"class.adept::Active"* %this
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept5Stack13set_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPKS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i32 %start, i32 %end_plus_one, double* %gradient) local_unnamed_addr #11 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %gradients_initialized_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 10
  %0 = load i8, i8* %gradients_initialized_.i, align 8, !tbaa !64, !range !174
  %tobool.i.not = icmp eq i8 %0, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  tail call void @_ZN5adept5Stack20initialize_gradientsEv(%"class.adept::Stack"* nonnull dereferenceable(149) %this)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %1 = load i32, i32* %max_gradient_, align 8, !tbaa !71
  %cmp = icmp slt i32 %1, %end_plus_one
  br i1 %cmp, label %if.then2, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cmp1028 = icmp sgt i32 %end_plus_one, %start
  br i1 %cmp1028, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
  %2 = load double*, double** %gradient_, align 8, !tbaa !237
  %3 = sext i32 %start to i64
  %4 = sub i32 %end_plus_one, %start
  %wide.trip.count = zext i32 %4 to i64
  %min.iters.check = icmp ult i32 %4, 4
  br i1 %min.iters.check, label %for.body.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %for.body.lr.ph
  %scevgep = getelementptr double, double* %2, i64 %3
  %5 = add nsw i64 %3, %wide.trip.count
  %scevgep5 = getelementptr double, double* %2, i64 %5
  %scevgep8 = getelementptr double, double* %gradient, i64 %wide.trip.count
  %bound0 = icmp ult double* %scevgep, %scevgep8
  %bound1 = icmp ugt double* %scevgep5, %gradient
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %for.body.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %wide.trip.count, 4294967292
  %ind.end = add nsw i64 %n.vec, %3
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %offset.idx = add i64 %index, %3
  %6 = getelementptr inbounds double, double* %gradient, i64 %index
  %7 = bitcast double* %6 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %7, align 8, !tbaa !8, !alias.scope !238
  %8 = getelementptr inbounds double, double* %6, i64 2
  %9 = bitcast double* %8 to <2 x double>*
  %wide.load11 = load <2 x double>, <2 x double>* %9, align 8, !tbaa !8, !alias.scope !238
  %10 = getelementptr inbounds double, double* %2, i64 %offset.idx
  %11 = bitcast double* %10 to <2 x double>*
  store <2 x double> %wide.load, <2 x double>* %11, align 8, !tbaa !8, !alias.scope !241, !noalias !238
  %12 = getelementptr inbounds double, double* %10, i64 2
  %13 = bitcast double* %12 to <2 x double>*
  store <2 x double> %wide.load11, <2 x double>* %13, align 8, !tbaa !8, !alias.scope !241, !noalias !238
  %index.next = add i64 %index, 4
  %14 = icmp eq i64 %index.next, %n.vec
  br i1 %14, label %middle.block, label %vector.body, !llvm.loop !243

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %for.body.lr.ph, %middle.block
  %indvars.iv32.ph = phi i64 [ %3, %vector.memcheck ], [ %3, %for.body.lr.ph ], [ %ind.end, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  br label %for.body

if.then2:                                         ; preds = %if.end
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #27
  %15 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #27
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %17 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %16, %union.anon** %17, align 8, !tbaa !164
  %18 = bitcast %union.anon* %16 to i8*
  %19 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %19) #27
  store i64 98, i64* %__dnew.i.i.i.i, align 8, !tbaa !193
  %call5.i.i.i10.i23 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.then2
  %_M_p.i18.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i23, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %20 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !193
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %20, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !171
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(98) %call5.i.i.i10.i23, i8* nonnull align 1 dereferenceable(98) getelementptr inbounds ([99 x i8], [99 x i8]* @.str.24, i64 0, i64 0), i64 98, i1 false) #27
  %_M_string_length.i.i.i.i.i.i22 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %20, i64* %_M_string_length.i.i.i.i.i.i22, align 8, !tbaa !172
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i23, i64 %20
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !171
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %19) #27
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %21 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %22 = getelementptr inbounds i8, i8* %exception, i64 24
  %23 = bitcast i8* %message_.i.i.i to i8**
  store i8* %22, i8** %23, align 8, !tbaa !164
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %24 = bitcast i8* %_M_string_length.i.i.i.i.i.i to i64*
  store i64 0, i64* %24, align 8, !tbaa !172
  store i8 0, i8* %22, align 1, !tbaa !171
  %25 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21gradient_out_of_rangeE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %25, align 8, !tbaa !183
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %21, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont5 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %26 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %25, align 8, !tbaa !183
  %27 = load i8*, i8** %23, align 8, !tbaa !169
  %cmp.i.i.i.i.i = icmp eq i8* %27, %22
  br i1 %cmp.i.i.i.i.i, label %lpad4.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %27) #27
  br label %lpad4.body

invoke.cont5:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21gradient_out_of_rangeE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad4.body.thread

ehcleanup.thread:                                 ; preds = %if.then2
  %28 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #27
  br label %cleanup.action

lpad4.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %29 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %29) #27
  %30 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %cmp.i.i.i = icmp eq i8* %30, %18
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad4.body
  call void @_ZdlPv(i8* %30) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #27
  br label %cleanup.action

lpad4.body.thread:                                ; preds = %invoke.cont5
  %31 = landingpad { i8*, i32 }
          cleanup
  %32 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %cmp.i.i.i36 = icmp eq i8* %32, %18
  br i1 %cmp.i.i.i36, label %ehcleanup.thread41, label %if.then.i.i

ehcleanup.thread41:                               ; preds = %lpad4.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #27
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad4.body.thread
  call void @_ZdlPv(i8* %32) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #27
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad4.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #27
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn27 = phi { i8*, i32 } [ %28, %ehcleanup.thread ], [ %26, %ehcleanup ], [ %26, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #27
  br label %eh.resume

for.cond.cleanup:                                 ; preds = %for.body, %middle.block, %for.cond.preheader
  ret void

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv32 = phi i64 [ %indvars.iv.next33, %for.body ], [ %indvars.iv32.ph, %for.body.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %arrayidx = getelementptr inbounds double, double* %gradient, i64 %indvars.iv
  %33 = load double, double* %arrayidx, align 8, !tbaa !8
  %arrayidx12 = getelementptr inbounds double, double* %2, i64 %indvars.iv32
  store double %33, double* %arrayidx12, align 8, !tbaa !8
  %indvars.iv.next33 = add nsw i64 %indvars.iv32, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !244

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread41
  %.pn26 = phi { i8*, i32 } [ %.pn27, %cleanup.action ], [ %31, %if.then.i.i ], [ %31, %ehcleanup.thread41 ]
  resume { i8*, i32 } %.pn26

unreachable:                                      ; preds = %invoke.cont5
  unreachable
}

declare dso_local void @_ZN5adept5Stack20initialize_gradientsEv(%"class.adept::Stack"* nonnull dereferenceable(149)) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept21gradient_out_of_rangeD0Ev(%"class.adept::gradient_out_of_range"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::gradient_out_of_range", %"class.adept::gradient_out_of_range"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !183
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::gradient_out_of_range", %"class.adept::gradient_out_of_range"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !169
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
  %0 = load i8, i8* %gradients_initialized_.i, align 8, !tbaa !64, !range !174
  %tobool.i.not = icmp eq i8 %0, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #27
  %1 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #27
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %2, %union.anon** %3, align 8, !tbaa !164
  %4 = bitcast %union.anon* %2 to i8*
  %5 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #27
  store i64 106, i64* %__dnew.i.i.i.i, align 8, !tbaa !193
  %call5.i.i.i10.i42 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.then
  %_M_p.i18.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i42, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %6 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !193
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %6, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !171
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(106) %call5.i.i.i10.i42, i8* nonnull align 1 dereferenceable(106) getelementptr inbounds ([107 x i8], [107 x i8]* @.str.25, i64 0, i64 0), i64 106, i1 false) #27
  %_M_string_length.i.i.i.i.i.i41 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %6, i64* %_M_string_length.i.i.i.i.i.i41, align 8, !tbaa !172
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i42, i64 %6
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !171
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #27
  %message_.i.i.i43 = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i.i43 to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i.i43 to i8**
  store i8* %8, i8** %9, align 8, !tbaa !164
  %_M_string_length.i.i.i.i.i.i44 = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i.i44 to i64*
  store i64 0, i64* %10, align 8, !tbaa !172
  store i8 0, i8* %8, align 1, !tbaa !171
  %11 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept25gradients_not_initializedE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %11, align 8, !tbaa !183
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad.i48

lpad.i48:                                         ; preds = %call5.i.i.i10.i.noexc
  %12 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %11, align 8, !tbaa !183
  %13 = load i8*, i8** %9, align 8, !tbaa !169
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
  %16 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
  %cmp.i.i.i54 = icmp eq i8* %16, %4
  br i1 %cmp.i.i.i54, label %ehcleanup, label %if.then.i.i55.thread

if.then.i.i55.thread:                             ; preds = %lpad3.body
  call void @_ZdlPv(i8* %16) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #27
  br label %cleanup.action

lpad3.body.thread:                                ; preds = %invoke.cont4
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = load i8*, i8** %_M_p.i18.i.i.i.i, align 8, !tbaa !169
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
  %19 = load i32, i32* %max_gradient_, align 8, !tbaa !71
  %cmp = icmp slt i32 %19, %end_plus_one
  br i1 %cmp, label %if.then8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cmp2678 = icmp sgt i32 %end_plus_one, %start
  br i1 %cmp2678, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
  %20 = load double*, double** %gradient_, align 8, !tbaa !237
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
  %wide.load = load <2 x double>, <2 x double>* %25, align 8, !tbaa !8, !alias.scope !245
  %26 = getelementptr inbounds double, double* %24, i64 2
  %27 = bitcast double* %26 to <2 x double>*
  %wide.load14 = load <2 x double>, <2 x double>* %27, align 8, !tbaa !8, !alias.scope !245
  %28 = getelementptr inbounds double, double* %gradient, i64 %index
  %29 = bitcast double* %28 to <2 x double>*
  store <2 x double> %wide.load, <2 x double>* %29, align 8, !tbaa !8, !alias.scope !248, !noalias !245
  %30 = getelementptr inbounds double, double* %28, i64 2
  %31 = bitcast double* %30 to <2 x double>*
  store <2 x double> %wide.load14, <2 x double>* %31, align 8, !tbaa !8, !alias.scope !248, !noalias !245
  %index.next = add i64 %index, 4
  %32 = icmp eq i64 %index.next, %n.vec
  br i1 %32, label %middle.block, label %vector.body, !llvm.loop !250

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %for.body.lr.ph, %middle.block
  %indvars.iv82.ph = phi i64 [ %21, %vector.memcheck ], [ %21, %for.body.lr.ph ], [ %ind.end, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  br label %for.body

if.then8:                                         ; preds = %if.end
  %exception9 = tail call i8* @__cxa_allocate_exception(i64 40) #27
  %33 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %33) #27
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp10, i64 0, i32 2
  %35 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp10 to %union.anon**
  store %union.anon* %34, %union.anon** %35, align 8, !tbaa !164
  %36 = bitcast %union.anon* %34 to i8*
  %37 = bitcast i64* %__dnew.i.i.i.i57 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %37) #27
  store i64 98, i64* %__dnew.i.i.i.i57, align 8, !tbaa !193
  %call5.i.i.i10.i70 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp10, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i57, i64 0)
          to label %call5.i.i.i10.i.noexc69 unwind label %ehcleanup18.thread

call5.i.i.i10.i.noexc69:                          ; preds = %if.then8
  %_M_p.i18.i.i.i.i60 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp10, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i70, i8** %_M_p.i18.i.i.i.i60, align 8, !tbaa !169
  %38 = load i64, i64* %__dnew.i.i.i.i57, align 8, !tbaa !193
  %_M_allocated_capacity.i.i.i.i.i61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp10, i64 0, i32 2, i32 0
  store i64 %38, i64* %_M_allocated_capacity.i.i.i.i.i61, align 8, !tbaa !171
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(98) %call5.i.i.i10.i70, i8* nonnull align 1 dereferenceable(98) getelementptr inbounds ([99 x i8], [99 x i8]* @.str.24, i64 0, i64 0), i64 98, i1 false) #27
  %_M_string_length.i.i.i.i.i.i67 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp10, i64 0, i32 1
  store i64 %38, i64* %_M_string_length.i.i.i.i.i.i67, align 8, !tbaa !172
  %arrayidx.i.i.i.i.i68 = getelementptr inbounds i8, i8* %call5.i.i.i10.i70, i64 %38
  store i8 0, i8* %arrayidx.i.i.i.i.i68, align 1, !tbaa !171
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %37) #27
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception9, i64 8
  %39 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %40 = getelementptr inbounds i8, i8* %exception9, i64 24
  %41 = bitcast i8* %message_.i.i.i to i8**
  store i8* %40, i8** %41, align 8, !tbaa !164
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds i8, i8* %exception9, i64 16
  %42 = bitcast i8* %_M_string_length.i.i.i.i.i.i to i64*
  store i64 0, i64* %42, align 8, !tbaa !172
  store i8 0, i8* %40, align 1, !tbaa !171
  %43 = bitcast i8* %exception9 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21gradient_out_of_rangeE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %43, align 8, !tbaa !183
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %39, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp10)
          to label %invoke.cont15 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc69
  %44 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %43, align 8, !tbaa !183
  %45 = load i8*, i8** %41, align 8, !tbaa !169
  %cmp.i.i.i.i.i = icmp eq i8* %45, %40
  br i1 %cmp.i.i.i.i.i, label %lpad14.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %45) #27
  br label %lpad14.body

invoke.cont15:                                    ; preds = %call5.i.i.i10.i.noexc69
  invoke void @__cxa_throw(i8* nonnull %exception9, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21gradient_out_of_rangeE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad14.body.thread

ehcleanup18.thread:                               ; preds = %if.then8
  %46 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #27
  br label %cleanup.action23

lpad14.body:                                      ; preds = %if.then.i.i.i.i, %lpad.i
  %47 = bitcast i8* %exception9 to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %47) #27
  %48 = load i8*, i8** %_M_p.i18.i.i.i.i60, align 8, !tbaa !169
  %cmp.i.i.i = icmp eq i8* %48, %36
  br i1 %cmp.i.i.i, label %ehcleanup18, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad14.body
  call void @_ZdlPv(i8* %48) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #27
  br label %cleanup.action23

lpad14.body.thread:                               ; preds = %invoke.cont15
  %49 = landingpad { i8*, i32 }
          cleanup
  %50 = load i8*, i8** %_M_p.i18.i.i.i.i60, align 8, !tbaa !169
  %cmp.i.i.i96 = icmp eq i8* %50, %36
  br i1 %cmp.i.i.i96, label %ehcleanup18.thread101, label %if.then.i.i

ehcleanup18.thread101:                            ; preds = %lpad14.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #27
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad14.body.thread
  call void @_ZdlPv(i8* %50) #27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #27
  br label %eh.resume

ehcleanup18:                                      ; preds = %lpad14.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #27
  br label %cleanup.action23

cleanup.action23:                                 ; preds = %ehcleanup18, %if.then.i.i.thread, %ehcleanup18.thread
  %.pn3877 = phi { i8*, i32 } [ %46, %ehcleanup18.thread ], [ %44, %ehcleanup18 ], [ %44, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception9) #27
  br label %eh.resume

for.cond.cleanup:                                 ; preds = %for.body, %middle.block, %for.cond.preheader
  ret void

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %for.body ], [ %indvars.iv82.ph, %for.body.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %arrayidx = getelementptr inbounds double, double* %20, i64 %indvars.iv82
  %51 = load double, double* %arrayidx, align 8, !tbaa !8
  %arrayidx28 = getelementptr inbounds double, double* %gradient, i64 %indvars.iv
  store double %51, double* %arrayidx28, align 8, !tbaa !8
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !251

eh.resume:                                        ; preds = %cleanup.action23, %if.then.i.i, %ehcleanup18.thread101, %cleanup.action, %if.then.i.i55, %ehcleanup.thread91
  %.pn38.pn = phi { i8*, i32 } [ %.pn3877, %cleanup.action23 ], [ %.pn74, %cleanup.action ], [ %17, %if.then.i.i55 ], [ %49, %if.then.i.i ], [ %17, %ehcleanup.thread91 ], [ %49, %ehcleanup18.thread101 ]
  resume { i8*, i32 } %.pn38.pn

unreachable:                                      ; preds = %invoke.cont15, %invoke.cont4
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept25gradients_not_initializedD0Ev(%"class.adept::gradients_not_initialized"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::gradients_not_initialized", %"class.adept::gradients_not_initialized"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !183
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::gradients_not_initialized", %"class.adept::gradients_not_initialized"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !169
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

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_matdescent.cpp() #11 section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1) @_ZStL8__ioinit)
  %0 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #27
  ret void
}

declare extern_weak void @_ZTHN5adept21_stack_current_threadE() #1

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #25

; Function Attrs: nounwind uwtable mustprogress
define dso_local double @preprocess__Z11matvec_realPdS_(double* nocapture readonly %mat, double* nocapture readonly %vec) local_unnamed_addr #4 {
entry:
  %call = tail call noalias dereferenceable_or_null(16000) i8* @malloc(i64 16000) #27
  %0 = bitcast i8* %call to double*
  br label %for.body

for.body:                                         ; preds = %middle.block, %entry
  %tiv1 = phi i64 [ %tiv.next2, %middle.block ], [ 0, %entry ]
  %arrayidx = getelementptr inbounds double, double* %0, i64 %tiv1
  store double 0.000000e+00, double* %arrayidx, align 8, !tbaa !8
  %1 = mul nuw nsw i64 %tiv1, 2000
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %for.body
  %index = phi i64 [ 0, %for.body ], [ %index.next, %vector.body ]
  %vec.phi = phi <2 x double> [ zeroinitializer, %for.body ], [ %13, %vector.body ]
  %vec.phi1 = phi <2 x double> [ zeroinitializer, %for.body ], [ %14, %vector.body ]
  %2 = add nuw nsw i64 %index, %1
  %3 = getelementptr inbounds double, double* %mat, i64 %2
  %4 = bitcast double* %3 to <2 x double>*
  %wide.load = load <2 x double>, <2 x double>* %4, align 8, !tbaa !8
  %5 = getelementptr inbounds double, double* %3, i64 2
  %6 = bitcast double* %5 to <2 x double>*
  %wide.load2 = load <2 x double>, <2 x double>* %6, align 8, !tbaa !8
  %7 = getelementptr inbounds double, double* %vec, i64 %index
  %8 = bitcast double* %7 to <2 x double>*
  %wide.load3 = load <2 x double>, <2 x double>* %8, align 8, !tbaa !8
  %9 = getelementptr inbounds double, double* %7, i64 2
  %10 = bitcast double* %9 to <2 x double>*
  %wide.load4 = load <2 x double>, <2 x double>* %10, align 8, !tbaa !8
  %11 = fmul fast <2 x double> %wide.load3, %wide.load
  %12 = fmul fast <2 x double> %wide.load4, %wide.load2
  %13 = fadd fast <2 x double> %11, %vec.phi
  %14 = fadd fast <2 x double> %12, %vec.phi1
  %index.next = add i64 %index, 4
  %15 = icmp eq i64 %index.next, 2000
  br i1 %15, label %middle.block, label %vector.body, !llvm.loop !252

middle.block:                                     ; preds = %vector.body
  %bin.rdx = fadd fast <2 x double> %14, %13
  %16 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx)
  %tiv.next2 = add nuw nsw i64 %tiv1, 1
  store double %16, double* %arrayidx, align 8, !tbaa !8
  %exitcond61.not = icmp eq i64 %tiv.next2, 2000
  br i1 %exitcond61.not, label %vector.body7, label %for.body, !llvm.loop !14

vector.body7:                                     ; preds = %middle.block, %vector.body7
  %index9 = phi i64 [ %index.next10, %vector.body7 ], [ 0, %middle.block ]
  %vec.phi13 = phi <2 x double> [ %23, %vector.body7 ], [ zeroinitializer, %middle.block ]
  %vec.phi14 = phi <2 x double> [ %24, %vector.body7 ], [ zeroinitializer, %middle.block ]
  %17 = getelementptr inbounds double, double* %0, i64 %index9
  %18 = bitcast double* %17 to <2 x double>*
  %wide.load15 = load <2 x double>, <2 x double>* %18, align 8, !tbaa !8
  %19 = getelementptr inbounds double, double* %17, i64 2
  %20 = bitcast double* %19 to <2 x double>*
  %wide.load16 = load <2 x double>, <2 x double>* %20, align 8, !tbaa !8
  %21 = fmul fast <2 x double> %wide.load15, %wide.load15
  %22 = fmul fast <2 x double> %wide.load16, %wide.load16
  %23 = fadd fast <2 x double> %21, %vec.phi13
  %24 = fadd fast <2 x double> %22, %vec.phi14
  %index.next10 = add i64 %index9, 4
  %25 = icmp eq i64 %index.next10, 2000
  br i1 %25, label %middle.block5, label %vector.body7, !llvm.loop !253

middle.block5:                                    ; preds = %vector.body7
  %bin.rdx17 = fadd fast <2 x double> %24, %23
  %26 = call fast double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %bin.rdx17)
  tail call void @free(i8* nonnull %call) #27
  ret double %26
}

; Function Attrs: nofree nosync nounwind readnone willreturn
declare double @llvm.vector.reduce.fadd.v2f64(double, <2 x double>) #26

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
attributes #25 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #26 = { nofree nosync nounwind readnone willreturn }
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
!10 = distinct !{!10, !11, !12, !13}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.unroll.disable"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = distinct !{!14, !11, !12}
!15 = distinct !{!15, !11, !12, !13}
!16 = distinct !{!16, !11, !12, !13}
!17 = distinct !{!17, !11, !12, !13}
!18 = distinct !{!18, !11, !12}
!19 = distinct !{!19, !11, !12, !13}
!20 = !{!21}
!21 = distinct !{!21, !22}
!22 = distinct !{!22, !"LVerDomain"}
!23 = !{!24}
!24 = distinct !{!24, !22}
!25 = distinct !{!25, !11, !12, !13}
!26 = distinct !{!26, !11, !12}
!27 = distinct !{!27, !11, !12, !13}
!28 = distinct !{!28, !11, !12}
!29 = !{!30, !31, i64 0}
!30 = !{!"_ZTSN5adept8internal13GradientIndexILb1EEE", !31, i64 0}
!31 = !{!"int", !5, i64 0}
!32 = !{!33, !34, i64 16}
!33 = !{!"_ZTSN5adept5ArrayILi2EdLb1EEE", !34, i64 8, !34, i64 16, !35, i64 24, !35, i64 32}
!34 = !{!"any pointer", !5, i64 0}
!35 = !{!"_ZTSN5adept14ExpressionSizeILi2EEE", !5, i64 0}
!36 = !{!31, !31, i64 0}
!37 = !{!38, !34, i64 8}
!38 = !{!"_ZTSN5adept5ArrayILi1EdLb0EEE", !34, i64 0, !34, i64 8, !39, i64 16, !39, i64 20}
!39 = !{!"_ZTSN5adept14ExpressionSizeILi1EEE", !5, i64 0}
!40 = !{!38, !34, i64 0}
!41 = distinct !{!41, !11, !12, !13}
!42 = distinct !{!42, !11, !12}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN5adept5ArrayILi2EdLb1EEclIiiEENS_8internal9enable_ifIXaaeqLi2ELi2Esr15all_scalar_intsILi2ET_T0_EE5valueENS_15ActiveReferenceIdEEE4typeES5_S6_: %agg.result"}
!45 = distinct !{!45, !"_ZN5adept5ArrayILi2EdLb1EEclIiiEENS_8internal9enable_ifIXaaeqLi2ELi2Esr15all_scalar_intsILi2ET_T0_EE5valueENS_15ActiveReferenceIdEEE4typeES5_S6_"}
!46 = !{!33, !34, i64 8}
!47 = !{!48, !44}
!48 = distinct !{!48, !49, !"_ZN5adept5ArrayILi2EdLb1EE20get_scalar_referenceILb1EEENS_8internal9enable_ifIXT_ENS_15ActiveReferenceIdEEE4typeERKi: %agg.result"}
!49 = distinct !{!49, !"_ZN5adept5ArrayILi2EdLb1EE20get_scalar_referenceILb1EEENS_8internal9enable_ifIXT_ENS_15ActiveReferenceIdEEE4typeERKi"}
!50 = !{!34, !34, i64 0}
!51 = !{!52, !31, i64 24}
!52 = !{!"_ZTSN5adept8internal16StackStorageOrigE", !34, i64 0, !34, i64 8, !34, i64 16, !31, i64 24, !31, i64 28, !31, i64 32, !31, i64 36}
!53 = !{!52, !31, i64 28}
!54 = !{!52, !34, i64 0}
!55 = !{!56, !31, i64 0}
!56 = !{!"_ZTSN5adept8internal9StatementE", !31, i64 0, !31, i64 4}
!57 = !{!52, !31, i64 32}
!58 = !{!56, !31, i64 4}
!59 = distinct !{!59, !11, !12}
!60 = distinct !{!60, !11, !12, !13}
!61 = !{!62, !34, i64 0}
!62 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !34, i64 0, !34, i64 8, !34, i64 16}
!63 = !{!62, !34, i64 8}
!64 = !{!65, !69, i64 144}
!65 = !{!"_ZTSN5adept5StackE", !34, i64 40, !66, i64 48, !66, i64 72, !67, i64 96, !68, i64 120, !31, i64 128, !31, i64 132, !31, i64 136, !31, i64 140, !69, i64 144, !69, i64 145, !69, i64 146, !69, i64 147, !69, i64 148}
!66 = !{!"_ZTSSt6vectorIiSaIiEE"}
!67 = !{!"_ZTSNSt7__cxx114listIN5adept3GapESaIS2_EEE"}
!68 = !{!"_ZTSSt14_List_iteratorIN5adept3GapEE", !34, i64 0}
!69 = !{!"bool", !5, i64 0}
!70 = !{!65, !31, i64 128}
!71 = !{!65, !31, i64 136}
!72 = !{!73, !31, i64 8}
!73 = !{!"_ZTSN5adept6ActiveIdEE", !9, i64 0, !31, i64 8}
!74 = distinct !{!74, !11, !12}
!75 = distinct !{!75, !11, !12, !13}
!76 = distinct !{!76, !11, !12}
!77 = !{!78}
!78 = distinct !{!78, !79, !"_ZN5adept5ArrayILi2EdLb1EEclIiiEENS_8internal9enable_ifIXaaeqLi2ELi2Esr15all_scalar_intsILi2ET_T0_EE5valueENS_15ActiveReferenceIdEEE4typeES5_S6_: %agg.result"}
!79 = distinct !{!79, !"_ZN5adept5ArrayILi2EdLb1EEclIiiEENS_8internal9enable_ifIXaaeqLi2ELi2Esr15all_scalar_intsILi2ET_T0_EE5valueENS_15ActiveReferenceIdEEE4typeES5_S6_"}
!80 = !{!81, !78}
!81 = distinct !{!81, !82, !"_ZN5adept5ArrayILi2EdLb1EE20get_scalar_referenceILb1EEENS_8internal9enable_ifIXT_ENS_15ActiveReferenceIdEEE4typeERKi: %agg.result"}
!82 = distinct !{!82, !"_ZN5adept5ArrayILi2EdLb1EE20get_scalar_referenceILb1EEENS_8internal9enable_ifIXT_ENS_15ActiveReferenceIdEEE4typeERKi"}
!83 = distinct !{!83, !11, !12}
!84 = distinct !{!84, !11, !12, !13}
!85 = !{!86}
!86 = distinct !{!86, !87, !"_ZN5adept5ArrayILi2EdLb1EEclIiiEENS_8internal9enable_ifIXaaeqLi2ELi2Esr15all_scalar_intsILi2ET_T0_EE5valueENS_15ActiveReferenceIdEEE4typeES5_S6_: %agg.result"}
!87 = distinct !{!87, !"_ZN5adept5ArrayILi2EdLb1EEclIiiEENS_8internal9enable_ifIXaaeqLi2ELi2Esr15all_scalar_intsILi2ET_T0_EE5valueENS_15ActiveReferenceIdEEE4typeES5_S6_"}
!88 = distinct !{!88, !11, !12}
!89 = distinct !{!89, !11, !12}
!90 = !{!91, !86}
!91 = distinct !{!91, !92, !"_ZN5adept5ArrayILi2EdLb1EE20get_scalar_referenceILb1EEENS_8internal9enable_ifIXT_ENS_15ActiveReferenceIdEEE4typeERKi: %agg.result"}
!92 = distinct !{!92, !"_ZN5adept5ArrayILi2EdLb1EE20get_scalar_referenceILb1EEENS_8internal9enable_ifIXT_ENS_15ActiveReferenceIdEEE4typeERKi"}
!93 = !{!94}
!94 = distinct !{!94, !95, !"_ZN5adept5ArrayILi2EdLb1EEclIiiEENS_8internal9enable_ifIXaaeqLi2ELi2Esr15all_scalar_intsILi2ET_T0_EE5valueENS_15ActiveReferenceIdEEE4typeES5_S6_: %agg.result"}
!95 = distinct !{!95, !"_ZN5adept5ArrayILi2EdLb1EEclIiiEENS_8internal9enable_ifIXaaeqLi2ELi2Esr15all_scalar_intsILi2ET_T0_EE5valueENS_15ActiveReferenceIdEEE4typeES5_S6_"}
!96 = !{!97, !94}
!97 = distinct !{!97, !98, !"_ZN5adept5ArrayILi2EdLb1EE20get_scalar_referenceILb1EEENS_8internal9enable_ifIXT_ENS_15ActiveReferenceIdEEE4typeERKi: %agg.result"}
!98 = distinct !{!98, !"_ZN5adept5ArrayILi2EdLb1EE20get_scalar_referenceILb1EEENS_8internal9enable_ifIXT_ENS_15ActiveReferenceIdEEE4typeERKi"}
!99 = distinct !{!99, !11, !12}
!100 = distinct !{!100, !11, !12}
!101 = !{!102}
!102 = distinct !{!102, !103, !"_ZN5adept5ArrayILi2EdLb1EEclIiiEENS_8internal9enable_ifIXaaeqLi2ELi2Esr15all_scalar_intsILi2ET_T0_EE5valueENS_15ActiveReferenceIdEEE4typeES5_S6_: %agg.result"}
!103 = distinct !{!103, !"_ZN5adept5ArrayILi2EdLb1EEclIiiEENS_8internal9enable_ifIXaaeqLi2ELi2Esr15all_scalar_intsILi2ET_T0_EE5valueENS_15ActiveReferenceIdEEE4typeES5_S6_"}
!104 = !{!105, !102}
!105 = distinct !{!105, !106, !"_ZN5adept5ArrayILi2EdLb1EE20get_scalar_referenceILb1EEENS_8internal9enable_ifIXT_ENS_15ActiveReferenceIdEEE4typeERKi: %agg.result"}
!106 = distinct !{!106, !"_ZN5adept5ArrayILi2EdLb1EE20get_scalar_referenceILb1EEENS_8internal9enable_ifIXT_ENS_15ActiveReferenceIdEEE4typeERKi"}
!107 = distinct !{!107, !11, !12}
!108 = distinct !{!108, !11, !12, !13}
!109 = distinct !{!109, !11, !12, !13}
!110 = distinct !{!110, !11, !12, !13}
!111 = distinct !{!111, !11, !12, !13}
!112 = distinct !{!112, !11, !12}
!113 = distinct !{!113, !11, !12, !13}
!114 = distinct !{!114, !11, !12}
!115 = distinct !{!115, !11, !12, !13}
!116 = distinct !{!116, !11, !12, !13}
!117 = distinct !{!117, !11, !12, !13}
!118 = distinct !{!118, !11, !12, !13}
!119 = distinct !{!119, !11, !12}
!120 = !{!"true"}
!121 = distinct !{!121, !11, !12, !13}
!122 = distinct !{!122, !13}
!123 = distinct !{!123, !13}
!124 = distinct !{!124, !11, !12, !13}
!125 = distinct !{!125, !11, !12}
!126 = distinct !{!126, !11, !12}
!127 = !{!128, !34, i64 8}
!128 = !{!"_ZTSNSt8__detail15_List_node_baseE", !34, i64 0, !34, i64 8}
!129 = !{!128, !34, i64 0}
!130 = !{!131, !4, i64 16}
!131 = !{!"_ZTSNSt8__detail17_List_node_headerE", !4, i64 16}
!132 = !{!65, !69, i64 146}
!133 = !{!65, !69, i64 147}
!134 = !{!65, !69, i64 148}
!135 = !{!52, !34, i64 8}
!136 = !{!52, !34, i64 16}
!137 = !{!52, !31, i64 36}
!138 = distinct !{!138, !11, !12}
!139 = !{!140}
!140 = distinct !{!140, !141, !"_ZN5adept5ArrayILi1EdLb1EEclIiEENS_8internal9enable_ifIXaaaaeqLi1ELi1Esr15all_scalar_intsILi1ET_EE5valueLb1EENS_15ActiveReferenceIdEEE4typeES5_: %agg.result"}
!141 = distinct !{!141, !"_ZN5adept5ArrayILi1EdLb1EEclIiEENS_8internal9enable_ifIXaaaaeqLi1ELi1Esr15all_scalar_intsILi1ET_EE5valueLb1EENS_15ActiveReferenceIdEEE4typeES5_"}
!142 = !{!143, !34, i64 8}
!143 = !{!"_ZTSN5adept5ArrayILi1EdLb1EEE", !34, i64 8, !34, i64 16, !39, i64 24, !39, i64 28}
!144 = !{!145, !31, i64 8}
!145 = !{!"_ZTSN5adept15ActiveReferenceIdEE", !34, i64 0, !31, i64 8}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZN5adept5ArrayILi1EdLb1EEclIiEENS_8internal9enable_ifIXaaaaeqLi1ELi1Esr15all_scalar_intsILi1ET_EE5valueLb1EENS_15ActiveReferenceIdEEE4typeES5_: %agg.result"}
!148 = distinct !{!148, !"_ZN5adept5ArrayILi1EdLb1EEclIiEENS_8internal9enable_ifIXaaaaeqLi1ELi1Esr15all_scalar_intsILi1ET_EE5valueLb1EENS_15ActiveReferenceIdEEE4typeES5_"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN5adeptplINS_6ActiveIdEENS_8internal15BinaryOperationIdNS_15ActiveReferenceIdEENS3_8MultiplyES6_EEEENS3_9enable_ifIXsr8internal15rank_compatibleIXsrT_4rankEXsrT0_4rankEEE5valueENS4_INS3_7promoteINSA_4typeENSB_4typeEE4typeESA_NS3_3AddESB_EEE4typeERKNS_10ExpressionISD_SA_EERKNSL_ISE_SB_EE: %agg.result"}
!151 = distinct !{!151, !"_ZN5adeptplINS_6ActiveIdEENS_8internal15BinaryOperationIdNS_15ActiveReferenceIdEENS3_8MultiplyES6_EEEENS3_9enable_ifIXsr8internal15rank_compatibleIXsrT_4rankEXsrT0_4rankEEE5valueENS4_INS3_7promoteINSA_4typeENSB_4typeEE4typeESA_NS3_3AddESB_EEE4typeERKNS_10ExpressionISD_SA_EERKNSL_ISE_SB_EE"}
!152 = distinct !{!152, !11, !12}
!153 = !{!143, !34, i64 16}
!154 = !{!65, !31, i64 140}
!155 = !{!156, !31, i64 4}
!156 = !{!"_ZTSN5adept3GapE", !31, i64 0, !31, i64 4}
!157 = !{!156, !31, i64 0}
!158 = !{!68, !34, i64 0}
!159 = !{i64 0, i64 8, !50}
!160 = !{!161, !4, i64 16}
!161 = !{!"_ZTSNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EEE", !162, i64 0}
!162 = !{!"_ZTSNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EE10_List_implE", !131, i64 0}
!163 = distinct !{!163, !11, !12}
!164 = !{!165, !34, i64 0}
!165 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !34, i64 0}
!166 = !{!167}
!167 = distinct !{!167, !168, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: %agg.result"}
!168 = distinct !{!168, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!169 = !{!170, !34, i64 0}
!170 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !165, i64 0, !4, i64 8, !5, i64 16}
!171 = !{!5, !5, i64 0}
!172 = !{!170, !4, i64 8}
!173 = !{!69, !69, i64 0}
!174 = !{i8 0, i8 2}
!175 = distinct !{!175, !11, !12}
!176 = !{!177, !34, i64 0}
!177 = !{!"_ZTSN5adept7StorageIdEE", !34, i64 0, !31, i64 8, !31, i64 12, !31, i64 16}
!178 = !{!177, !31, i64 16}
!179 = !{!177, !31, i64 12}
!180 = !{!181}
!181 = distinct !{!181, !182, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: %agg.result"}
!182 = distinct !{!182, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!183 = !{!184, !184, i64 0}
!184 = !{!"vtable pointer", !6, i64 0}
!185 = !{!186, !188, i64 32}
!186 = !{!"_ZTSSt8ios_base", !4, i64 8, !4, i64 16, !187, i64 24, !188, i64 28, !188, i64 32, !34, i64 40, !189, i64 48, !5, i64 64, !31, i64 192, !34, i64 200, !190, i64 208}
!187 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!188 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!189 = !{!"_ZTSNSt8ios_base6_WordsE", !34, i64 0, !4, i64 8}
!190 = !{!"_ZTSSt6locale", !34, i64 0}
!191 = !{!192, !4, i64 8}
!192 = !{!"_ZTSSi", !4, i64 8}
!193 = !{!4, !4, i64 0}
!194 = !{!177, !31, i64 8}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: %agg.result"}
!197 = distinct !{!197, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!198 = distinct !{!198, !11, !12}
!199 = !{!73, !9, i64 0}
!200 = !{!201}
!201 = distinct !{!201, !202, !"_ZN5adept8internal13promote_arrayIdLi2EdLb1EEENS_5ArrayIXT0_ET_XT2_EEERKNS2_IXT0_ET1_XT2_EEE: %agg.result"}
!202 = distinct !{!202, !"_ZN5adept8internal13promote_arrayIdLi2EdLb1EEENS_5ArrayIXT0_ET_XT2_EEERKNS2_IXT0_ET1_XT2_EEE"}
!203 = !{!204}
!204 = distinct !{!204, !205, !"_ZN5adept8internal13promote_arrayIdLi1EdLb0EEENS_5ArrayIXT0_ET_XT2_EEERKNS2_IXT0_ET1_XT2_EEE: %agg.result"}
!205 = distinct !{!205, !"_ZN5adept8internal13promote_arrayIdLi1EdLb0EEENS_5ArrayIXT0_ET_XT2_EEERKNS2_IXT0_ET1_XT2_EEE"}
!206 = distinct !{!206, !11, !12}
!207 = distinct !{!207, !11, !12}
!208 = !{!209}
!209 = distinct !{!209, !210, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: %agg.result"}
!210 = distinct !{!210, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!211 = !{!212}
!212 = distinct !{!212, !213, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: %agg.result"}
!213 = distinct !{!213, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!214 = !{!215}
!215 = distinct !{!215, !216, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: %agg.result"}
!216 = distinct !{!216, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!217 = distinct !{!217, !11, !12}
!218 = !{!219}
!219 = distinct !{!219, !220, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_: %agg.result"}
!220 = distinct !{!220, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_PKS5_"}
!221 = !{!222}
!222 = distinct !{!222, !223, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_: %agg.result"}
!223 = distinct !{!223, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEOS8_S9_"}
!224 = !{!225}
!225 = distinct !{!225, !226, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_: %agg.result"}
!226 = distinct !{!226, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_OS8_"}
!227 = distinct !{!227, !11, !12}
!228 = distinct !{!228, !11, !12}
!229 = distinct !{!229, !11, !12}
!230 = distinct !{!230, !11, !12}
!231 = !{!232, !34, i64 0}
!232 = !{!"_ZTSN5adept8internal15BinaryOperationIdNS_6ActiveIdEENS0_3AddENS1_IdNS_15ActiveReferenceIdEENS0_8MultiplyES6_EEEE", !34, i64 0, !233, i64 8}
!233 = !{!"_ZTSN5adept8internal15BinaryOperationIdNS_15ActiveReferenceIdEENS0_8MultiplyES3_EE", !34, i64 0, !34, i64 8}
!234 = !{!233, !34, i64 0}
!235 = !{!145, !34, i64 0}
!236 = !{!233, !34, i64 8}
!237 = !{!65, !34, i64 40}
!238 = !{!239}
!239 = distinct !{!239, !240}
!240 = distinct !{!240, !"LVerDomain"}
!241 = !{!242}
!242 = distinct !{!242, !240}
!243 = distinct !{!243, !11, !12, !13}
!244 = distinct !{!244, !11, !12, !13}
!245 = !{!246}
!246 = distinct !{!246, !247}
!247 = distinct !{!247, !"LVerDomain"}
!248 = !{!249}
!249 = distinct !{!249, !247}
!250 = distinct !{!250, !11, !12, !13}
!251 = distinct !{!251, !11, !12, !13}
!252 = distinct !{!252, !11, !12, !13}
!253 = distinct !{!253, !11, !12, !13}
