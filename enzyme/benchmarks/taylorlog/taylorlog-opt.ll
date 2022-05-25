; ModuleID = 'taylorlog-raw.ll'
source_filename = "taylorlog.cpp"
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
%struct.timeval = type { i64, i64 }
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
%"struct.adept::internal::BinaryOperation" = type { %"class.adept::Active"*, %"struct.adept::internal::BinaryOpScalarRight"* }
%"class.adept::Active" = type <{ double, i32, [4 x i8] }>
%"struct.adept::internal::BinaryOpScalarRight" = type { %"struct.adept::internal::BinaryOpScalarRight.32"*, %"struct.adept::internal::Packet" }
%"struct.adept::internal::BinaryOpScalarRight.32" = type <{ %"class.adept::Active"*, %"struct.adept::internal::Packet.34", [4 x i8] }>
%"struct.adept::internal::Packet.34" = type { i32 }
%"struct.adept::internal::Packet" = type { %union.anon.19 }
%union.anon.19 = type { <2 x double> }
%"struct.adept::Expression.35" = type { i8 }
%"class.adept::stack_already_active" = type { %"class.adept::autodiff_exception" }
%"class.adept::autodiff_exception" = type { %"class.adept::exception" }
%"class.adept::gradients_not_initialized" = type { %"class.adept::autodiff_exception" }
%"class.adept::feature_not_available" = type { %"class.adept::exception" }
%"class.adept::dependents_or_independents_not_identified" = type { %"class.adept::autodiff_exception" }
%"class.adept::gradient_out_of_range" = type { %"class.adept::autodiff_exception" }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"class.adept::invalid_dimension" = type { %"class.adept::array_exception" }

$_ZN5adept17invalid_operationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN5adept9exceptionD2Ev = comdat any

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

$_ZN5adept6ActiveIdEC2IdEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE = comdat any

$_ZN5adept6ActiveIdED2Ev = comdat any

$_ZN5adept5Stack13new_recordingEv = comdat any

$_ZN5adept6ActiveIdEC2IiEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE = comdat any

$_ZN5adept6ActiveIdEaSIdNS_8internal15BinaryOperationIdS1_NS3_3AddENS3_19BinaryOpScalarRightIdNS6_IdS1_NS3_3PowEiEENS3_6DivideEdEEEEEENS3_9enable_ifIXaasrT0_9is_activeeqsrSD_4rankLi0EERS1_E4typeERKNS_10ExpressionIT_SD_EE = comdat any

$_ZN5adept6ActiveIdEC2ERKS1_ = comdat any

$_ZN5adept5Stack13set_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPKS4_ = comdat any

$_ZN5adept21gradient_out_of_rangeD0Ev = comdat any

$_ZNK5adept5Stack13get_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPS4_ = comdat any

$_ZN5adept5ArrayILi1EdLb0EE6resizeEPKib = comdat any

$_ZN5adept7StorageIdE11remove_linkEv = comdat any

$_ZN5adept8internal18exception_locationB5cxx11EPKci = comdat any

$_ZN5adept17invalid_dimensionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN5adept17invalid_dimensionD0Ev = comdat any

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

$_ZTSN5adept21gradient_out_of_rangeE = comdat any

$_ZTIN5adept21gradient_out_of_rangeE = comdat any

$_ZTVN5adept21gradient_out_of_rangeE = comdat any

$_ZTSN5adept17invalid_dimensionE = comdat any

$_ZTIN5adept17invalid_dimensionE = comdat any

$_ZTVN5adept17invalid_dimensionE = comdat any

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
@.str.86 = private unnamed_addr constant [28 x i8] c"A misuse of arrays occurred\00", align 1
@_ZTVN5adept17invalid_operationE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_operationE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::invalid_operation"*)* @_ZN5adept17invalid_operationD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTVN5adept15array_exceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept15array_exceptionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::array_exception"*)* @_ZN5adept15array_exceptionD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTVN5adept9exceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept9exceptionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTVN5adept20stack_already_activeE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept20stack_already_activeE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::stack_already_active"*)* @_ZN5adept20stack_already_activeD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTVN5adept25gradients_not_initializedE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept25gradients_not_initializedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::gradients_not_initialized"*)* @_ZN5adept25gradients_not_initializedD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTVN5adept21feature_not_availableE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::feature_not_available"*)* @_ZN5adept21feature_not_availableD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTVN5adept41dependents_or_independents_not_identifiedE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept41dependents_or_independents_not_identifiedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::dependents_or_independents_not_identified"*)* @_ZN5adept41dependents_or_independents_not_identifiedD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@.str.87 = private unnamed_addr constant [14 x i8] c"%0.6f res=%f\0A\00", align 1
@.str.88 = private unnamed_addr constant [15 x i8] c"%0.6f res'=%f\0A\00", align 1
@.str.89 = private unnamed_addr constant [99 x i8] c"Gradient index out of range: probably aReal objects have been created after a set_gradient(s) call\00", align 1
@_ZTSN5adept21gradient_out_of_rangeE = linkonce_odr dso_local constant [32 x i8] c"N5adept21gradient_out_of_rangeE\00", comdat, align 1
@_ZTIN5adept21gradient_out_of_rangeE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @_ZTSN5adept21gradient_out_of_rangeE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept18autodiff_exceptionE to i8*) }, comdat, align 8
@_ZTVN5adept21gradient_out_of_rangeE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21gradient_out_of_rangeE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::gradient_out_of_range"*)* @_ZN5adept21gradient_out_of_rangeD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@.str.90 = private unnamed_addr constant [23 x i8] c"tapenade %0.6f res=%f\0A\00", align 1
@.str.91 = private unnamed_addr constant [25 x i8] c"tapendade %0.6f res'=%f\0A\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x i8*], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTISt9bad_alloc = external dso_local constant i8*
@_ZTVSt9bad_alloc = external dso_local unnamed_addr constant { [5 x i8*] }, align 8
@.str.95 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.97 = private unnamed_addr constant [35 x i8] c"Negative array dimension requested\00", align 1
@.str.98 = private unnamed_addr constant [89 x i8] c"/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src/adept2/include/adept/Array.h\00", align 1
@_ZTSN5adept17invalid_dimensionE = linkonce_odr dso_local constant [28 x i8] c"N5adept17invalid_dimensionE\00", comdat, align 1
@_ZTIN5adept17invalid_dimensionE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_ZTSN5adept17invalid_dimensionE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept15array_exceptionE to i8*) }, comdat, align 8
@.str.99 = private unnamed_addr constant [58 x i8] c"Attempt to remove more links to a storage object than set\00", align 1
@.str.100 = private unnamed_addr constant [91 x i8] c"/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src/adept2/include/adept/Storage.h\00", align 1
@.str.101 = private unnamed_addr constant [6 x i8] c" (in \00", align 1
@.str.102 = private unnamed_addr constant [2 x i8] c")\00", align 1
@_ZTVN5adept17invalid_dimensionE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_dimensionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::invalid_dimension"*)* @_ZN5adept17invalid_dimensionD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_taylorlog.cpp, i8* null }]
@str = private unnamed_addr constant [6 x i8] c"adept\00", align 1
@str.103 = private unnamed_addr constant [9 x i8] c"tapenade\00", align 1
@str.104 = private unnamed_addr constant [7 x i8] c"enzyme\00", align 1

@_ZN5adept5StackD1Ev = dso_local unnamed_addr alias void (%"class.adept::Stack"*), void (%"class.adept::Stack"*)* @_ZN5adept5StackD2Ev
@_ZN5adept8internal16StackStorageOrigD1Ev = dso_local unnamed_addr alias void (%"class.adept::internal::StackStorageOrig"*), void (%"class.adept::internal::StackStorageOrig"*)* @_ZN5adept8internal16StackStorageOrigD2Ev

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

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: nounwind uwtable
declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32)) unnamed_addr #5 align 2

; Function Attrs: uwtable
define dso_local void @_ZN5adept21set_array_print_styleENS_15ArrayPrintStyleE(i32 %ps) local_unnamed_addr #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %0 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i64 %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %1 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i57 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i64 %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %2 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i59 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i64 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %3 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i61 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i64 %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %4 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i63 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i64 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %5 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i65 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i64 %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %6 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i67 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i64 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
  %7 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i69 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i64 %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %8 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i71 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i64 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %9 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i73 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i64 %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i64 12)
  %10 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i75 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i64 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i64 7)
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %11 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i77 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i64 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2)
  %12 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i79 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i64 %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %13 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i81 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i64 %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %14 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i83 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i64 %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %15 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i85 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i64 %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %16 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i87 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i64 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2)
  %17 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i89 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i64 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
  %18 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i91 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i64 %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %19 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i93 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i64 %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %20 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i95 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i64 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i64 5)
  %21 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i97 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i64 %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %22 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i99 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i64 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %23 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i101 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i64 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1)
  %24 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i103 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i64 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i64 1)
  %25 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i105 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i64 %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %26 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i107 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i64 %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %27 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i109 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i64 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %28 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i111 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i64 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i64 2)
  %29 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i113 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i64 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1)
  %30 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i115 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i64 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i64 1)
  %31 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i117 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i64 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1)
  %32 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i119 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i64 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i64 1)
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  %33 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i121 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i64 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2)
  %34 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i123 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i64 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 1)
  %35 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i125 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i64 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
  %36 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i127 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i64 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 1)
  %37 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i129 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i64 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
  %38 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i131 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i64 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2)
  %39 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i133 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i64 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 2)
  %40 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i135 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i64 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i64 2)
  %41 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i137 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i64 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
  %42 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i139 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i64 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i64 12)
  %43 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  %call3.i.i141 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i64 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i64 7)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %44 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %44) #30
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %46 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %45, %union.anon** %46, align 8, !tbaa !12
  %47 = bitcast %union.anon* %45 to i8*
  %48 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48) #30
  store i64 32, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i142 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %sw.default
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i142, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %49 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %49, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(32) %call5.i.i.i10.i142, i8* nonnull align 1 dereferenceable(32) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0), i64 32, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %49, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %50 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %50, i64 %49
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48) #30
  %51 = bitcast i8* %exception to %"class.adept::invalid_operation"*
  invoke void @_ZN5adept17invalid_operationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %51, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont49 unwind label %lpad48

invoke.cont49:                                    ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_operationE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad48

ehcleanup.thread:                                 ; preds = %sw.default
  %52 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %44) #30
  br label %cleanup.action

lpad48:                                           ; preds = %invoke.cont49, %call5.i.i.i10.i.noexc
  %cleanup.isactive.0 = phi i1 [ false, %invoke.cont49 ], [ true, %call5.i.i.i10.i.noexc ]
  %53 = landingpad { i8*, i32 }
          cleanup
  %54 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %54, %47
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i

if.then.i.i:                                      ; preds = %lpad48
  call void @_ZdlPv(i8* %54) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %44) #30
  br i1 %cleanup.isactive.0, label %cleanup.action, label %eh.resume

ehcleanup:                                        ; preds = %lpad48
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %44) #30
  br i1 %cleanup.isactive.0, label %cleanup.action, label %eh.resume

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i, %ehcleanup.thread
  %.pn146 = phi { i8*, i32 } [ %52, %ehcleanup.thread ], [ %53, %ehcleanup ], [ %53, %if.then.i.i ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

sw.epilog:                                        ; preds = %sw.bb35, %sw.bb23, %sw.bb11, %sw.bb
  %.sink147 = phi i8 [ 1, %sw.bb35 ], [ 1, %sw.bb23 ], [ 0, %sw.bb11 ], [ 0, %sw.bb ]
  %.sink = phi i8 [ 1, %sw.bb35 ], [ 0, %sw.bb23 ], [ 0, %sw.bb11 ], [ 1, %sw.bb ]
  store i8 %.sink147, i8* @_ZN5adept8internal18array_print_indentE, align 1, !tbaa !16
  store i8 %.sink, i8* @_ZN5adept8internal22array_print_empty_rankE, align 1, !tbaa !16
  store i32 %ps, i32* @_ZN5adept8internal17array_print_styleE, align 4, !tbaa !18
  ret void

eh.resume:                                        ; preds = %cleanup.action, %ehcleanup, %if.then.i.i
  %.pn145 = phi { i8*, i32 } [ %53, %ehcleanup ], [ %.pn146, %cleanup.action ], [ %53, %if.then.i.i ]
  resume { i8*, i32 } %.pn145

unreachable:                                      ; preds = %invoke.cont49
  unreachable
}

declare dso_local i8* @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept17invalid_operationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %this, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %message) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 27, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i15 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %lpad

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i15, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(27) %call5.i.i.i10.i15, i8* nonnull align 1 dereferenceable(27) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.86, i64 0, i64 0), i64 27, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %6 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %7 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %message_.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1
  %8 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %message_.i.i to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i.i, align 8, !tbaa !8
  %.cast.i.i.i = bitcast %union.anon* %8 to i8*
  store i8 0, i8* %.cast.i.i.i, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept15array_exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %10 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !20
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %11 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %11, %.cast.i.i.i
  br i1 %cmp.i.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %11) #30
  br label %_ZN5adept9exceptionD2Ev.exit.i

_ZN5adept9exceptionD2Ev.exit.i:                   ; preds = %if.then.i.i.i.i, %lpad.i
  %12 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %12) #30
  %13 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i18 = icmp eq i8* %13, %3
  br i1 %cmp.i.i.i18, label %ehcleanup, label %if.then.i.i19

invoke.cont4:                                     ; preds = %call5.i.i.i10.i.noexc
  %14 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %14, %3
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont4
  call void @_ZdlPv(i8* %14) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %invoke.cont4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept17invalid_operationE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %message)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

lpad:                                             ; preds = %entry
  %15 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

if.then.i.i19:                                    ; preds = %_ZN5adept9exceptionD2Ev.exit.i
  call void @_ZdlPv(i8* %13) #30
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i19, %lpad, %_ZN5adept9exceptionD2Ev.exit.i
  %.pn = phi { i8*, i32 } [ %15, %lpad ], [ %10, %_ZN5adept9exceptionD2Ev.exit.i ], [ %10, %if.then.i.i19 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

lpad7:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %16 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !20
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %17 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i.i = icmp eq i8* %17, %.cast.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lpad7
  call void @_ZdlPv(i8* %17) #30
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %lpad7
  %18 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %18) #30
  br label %eh.resume

eh.resume:                                        ; preds = %_ZN5adept9exceptionD2Ev.exit, %ehcleanup
  %.pn12 = phi { i8*, i32 } [ %16, %_ZN5adept9exceptionD2Ev.exit ], [ %.pn, %ehcleanup ]
  resume { i8*, i32 } %.pn12
}

declare dso_local void @__cxa_throw(i8*, i8*, i8*) local_unnamed_addr

declare dso_local void @__cxa_free_exception(i8*) local_unnamed_addr

; Function Attrs: nounwind uwtable
define dso_local void @_ZN5adept5StackD2Ev(%"class.adept::Stack"* nonnull readonly dereferenceable(149) %this) unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %is_thread_unsafe_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 11
  %0 = load i8, i8* %is_thread_unsafe_, align 1, !tbaa !22, !range !28
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %1 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept28_stack_current_thread_unsafeE, align 8, !tbaa !29
  %cmp = icmp eq %"class.adept::Stack"* %1, %this
  br i1 %cmp, label %if.then2, label %if.end6

if.then2:                                         ; preds = %if.then
  store %"class.adept::Stack"* null, %"class.adept::Stack"** @_ZN5adept28_stack_current_thread_unsafeE, align 8, !tbaa !29
  br label %if.end6

if.else:                                          ; preds = %entry
  %2 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !29
  %cmp3 = icmp eq %"class.adept::Stack"* %2, %this
  br i1 %cmp3, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.else
  store %"class.adept::Stack"* null, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !29
  br label %if.end6

if.end6:                                          ; preds = %if.then4, %if.else, %if.then2, %if.then
  %gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
  %3 = load double*, double** %gradient_, align 8, !tbaa !30
  %tobool7.not = icmp eq double* %3, null
  br i1 %tobool7.not, label %if.end10, label %delete.notnull

delete.notnull:                                   ; preds = %if.end6
  %4 = bitcast double* %3 to i8*
  tail call void @_ZdaPv(i8* %4) #32
  br label %if.end10

if.end10:                                         ; preds = %delete.notnull, %if.end6
  %5 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0
  %6 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i64 0, i32 0, i32 0, i32 0
  %_M_next.i.i = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i64 0, i32 0, i32 0, i32 0, i32 0
  %7 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i, align 8, !tbaa !31
  %cmp.not12.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %7, %6
  br i1 %cmp.not12.i.i, label %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit, label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end10, %while.body.i.i
  %__cur.013.i.i = phi %"struct.std::__detail::_List_node_base"* [ %8, %while.body.i.i ], [ %7, %if.end10 ]
  %_M_next4.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %__cur.013.i.i, i64 0, i32 0
  %8 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next4.i.i, align 8, !tbaa !31
  %9 = bitcast %"struct.std::__detail::_List_node_base"* %__cur.013.i.i to i8*
  tail call void @_ZdlPv(i8* %9) #30
  %cmp.not.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %8, %6
  br i1 %cmp.not.i.i, label %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit, label %while.body.i.i, !llvm.loop !33

_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit: ; preds = %while.body.i.i, %if.end10
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %10 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
  %tobool.not.i.i.i = icmp eq i32* %10, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit
  %11 = bitcast i32* %10 to i8*
  tail call void @_ZdlPv(i8* nonnull %11) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %if.then.i.i.i, %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit
  %_M_start.i.i11 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %12 = load i32*, i32** %_M_start.i.i11, align 8, !tbaa !36
  %tobool.not.i.i.i12 = icmp eq i32* %12, null
  br i1 %tobool.not.i.i.i12, label %_ZNSt6vectorIiSaIiEED2Ev.exit14, label %if.then.i.i.i13

if.then.i.i.i13:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %13 = bitcast i32* %12 to i8*
  tail call void @_ZdlPv(i8* nonnull %13) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit14

_ZNSt6vectorIiSaIiEED2Ev.exit14:                  ; preds = %if.then.i.i.i13, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %statement_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %14 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i, align 8, !tbaa !38
  %tobool.not.i = icmp eq %"struct.adept::internal::Statement"* %14, null
  br i1 %tobool.not.i, label %if.end.i, label %delete.notnull.i

delete.notnull.i:                                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit14
  %15 = bitcast %"struct.adept::internal::Statement"* %14 to i8*
  tail call void @_ZdaPv(i8* %15) #32
  br label %if.end.i

if.end.i:                                         ; preds = %delete.notnull.i, %_ZNSt6vectorIiSaIiEED2Ev.exit14
  %multiplier_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %16 = load double*, double** %multiplier_.i, align 8, !tbaa !40
  %tobool3.not.i = icmp eq double* %16, null
  br i1 %tobool3.not.i, label %if.end9.i, label %delete.notnull7.i

delete.notnull7.i:                                ; preds = %if.end.i
  %17 = bitcast double* %16 to i8*
  tail call void @_ZdaPv(i8* %17) #32
  br label %if.end9.i

if.end9.i:                                        ; preds = %delete.notnull7.i, %if.end.i
  %index_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %18 = load i32*, i32** %index_.i, align 8, !tbaa !41
  %tobool10.not.i = icmp eq i32* %18, null
  br i1 %tobool10.not.i, label %_ZN5adept8internal16StackStorageOrigD2Ev.exit, label %delete.notnull14.i

delete.notnull14.i:                               ; preds = %if.end9.i
  %19 = bitcast i32* %18 to i8*
  tail call void @_ZdaPv(i8* %19) #32
  br label %_ZN5adept8internal16StackStorageOrigD2Ev.exit

_ZN5adept8internal16StackStorageOrigD2Ev.exit:    ; preds = %delete.notnull14.i, %if.end9.i
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @_ZN5adept8internal16StackStorageOrigD2Ev(%"class.adept::internal::StackStorageOrig"* nocapture nonnull readonly dereferenceable(40) %this) unnamed_addr #5 align 2 {
entry:
  %statement_ = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %this, i64 0, i32 0
  %0 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !38
  %tobool.not = icmp eq %"struct.adept::internal::Statement"* %0, null
  br i1 %tobool.not, label %if.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %1 = bitcast %"struct.adept::internal::Statement"* %0 to i8*
  tail call void @_ZdaPv(i8* %1) #32
  br label %if.end

if.end:                                           ; preds = %delete.notnull, %entry
  %multiplier_ = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %this, i64 0, i32 1
  %2 = load double*, double** %multiplier_, align 8, !tbaa !40
  %tobool3.not = icmp eq double* %2, null
  br i1 %tobool3.not, label %if.end9, label %delete.notnull7

delete.notnull7:                                  ; preds = %if.end
  %3 = bitcast double* %2 to i8*
  tail call void @_ZdaPv(i8* %3) #32
  br label %if.end9

if.end9:                                          ; preds = %delete.notnull7, %if.end
  %index_ = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %this, i64 0, i32 2
  %4 = load i32*, i32** %index_, align 8, !tbaa !41
  %tobool10.not = icmp eq i32* %4, null
  br i1 %tobool10.not, label %if.end16, label %delete.notnull14

delete.notnull14:                                 ; preds = %if.end9
  %5 = bitcast i32* %4 to i8*
  tail call void @_ZdaPv(i8* %5) #32
  br label %if.end16

if.end16:                                         ; preds = %delete.notnull14, %if.end9
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack8activateEv(%"class.adept::Stack"* nonnull dereferenceable(149) %this) local_unnamed_addr #6 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %is_thread_unsafe_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 11
  %0 = load i8, i8* %is_thread_unsafe_, align 1, !tbaa !22, !range !28
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #30
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %5 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %4, %union.anon** %5, align 8, !tbaa !12
  %6 = bitcast %union.anon* %4 to i8*
  %7 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #30
  store i64 77, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i26 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.then
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i26, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %8 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %8, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(77) %call5.i.i.i10.i26, i8* nonnull align 1 dereferenceable(77) getelementptr inbounds ([78 x i8], [78 x i8]* @.str.26, i64 0, i64 0), i64 77, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %8, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i26, i64 %8
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #30
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %9 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %10 = getelementptr inbounds i8, i8* %exception, i64 24
  %11 = bitcast i8* %message_.i.i.i to i8**
  store i8* %10, i8** %11, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i.i27 = getelementptr inbounds i8, i8* %exception, i64 16
  %12 = bitcast i8* %_M_string_length.i.i.i.i.i.i27 to i64*
  store i64 0, i64* %12, align 8, !tbaa !8
  store i8 0, i8* %10, align 1, !tbaa !15
  %13 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept20stack_already_activeE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %13, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %9, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont12 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %14 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %13, align 8, !tbaa !20
  %15 = load i8*, i8** %11, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %15, %10
  br i1 %cmp.i.i.i.i.i, label %lpad11.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %15) #30
  br label %lpad11.body

invoke.cont12:                                    ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept20stack_already_activeE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad11.body.thread

ehcleanup.thread:                                 ; preds = %if.then
  %16 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #30
  br label %cleanup.action

lpad11.body:                                      ; preds = %if.then.i.i.i.i, %lpad.i
  %17 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %17) #30
  %18 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %18, %6
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad11.body
  call void @_ZdlPv(i8* %18) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #30
  br label %cleanup.action

lpad11.body.thread:                               ; preds = %invoke.cont12
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i34 = icmp eq i8* %20, %6
  br i1 %cmp.i.i.i34, label %ehcleanup.thread39, label %if.then.i.i

ehcleanup.thread39:                               ; preds = %lpad11.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad11.body.thread
  call void @_ZdlPv(i8* %20) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad11.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn31 = phi { i8*, i32 } [ %16, %ehcleanup.thread ], [ %14, %ehcleanup ], [ %14, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

if.else:                                          ; preds = %lor.lhs.false
  %_ZN5adept21_stack_current_threadE.sink = select i1 %tobool, %"class.adept::Stack"** @_ZN5adept28_stack_current_thread_unsafeE, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE
  store %"class.adept::Stack"* %this, %"class.adept::Stack"** %_ZN5adept21_stack_current_threadE.sink, align 8, !tbaa !29
  ret void

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread39
  %.pn30 = phi { i8*, i32 } [ %.pn31, %cleanup.action ], [ %19, %if.then.i.i ], [ %19, %ehcleanup.thread39 ]
  resume { i8*, i32 } %.pn30

unreachable:                                      ; preds = %invoke.cont12
  unreachable
}

; Function Attrs: norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local i32 @_ZN5adept5Stack24set_max_jacobian_threadsEi(%"class.adept::Stack"* nocapture nonnull readnone dereferenceable(149) %this, i32 %n) local_unnamed_addr #8 align 2 {
entry:
  ret i32 1
}

; Function Attrs: norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local i32 @_ZNK5adept5Stack20max_jacobian_threadsEv(%"class.adept::Stack"* nocapture nonnull readnone dereferenceable(149) %this) local_unnamed_addr #8 align 2 {
entry:
  ret i32 1
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack15compute_adjointEv(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this) local_unnamed_addr #6 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %gradients_initialized_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 10
  %0 = load i8, i8* %gradients_initialized_.i, align 8, !tbaa !42, !range !28
  %tobool.i.not = icmp eq i8 %0, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %n_statements_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %1 = load i32, i32* %n_statements_, align 8, !tbaa !43
  %cmp59 = icmp sgt i32 %1, 1
  br i1 %cmp59, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %if.then
  %statement_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %2 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !38
  %gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
  %3 = load double*, double** %gradient_, align 8, !tbaa !30
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
  %6 = load i32, i32* %index, align 4, !tbaa !44
  %idxprom2 = sext i32 %6 to i64
  %arrayidx3 = getelementptr inbounds double, double* %3, i64 %idxprom2
  %7 = load double, double* %arrayidx3, align 8, !tbaa !46
  store double 0.000000e+00, double* %arrayidx3, align 8, !tbaa !46
  %cmp8 = fcmp fast une double %7, 0.000000e+00
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %for.body
  %8 = add i64 %indvars.iv7, 4294967294
  %9 = and i64 %8, 4294967295
  %end_plus_one = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %2, i64 %9, i32 1
  %10 = load i32, i32* %end_plus_one, align 4, !tbaa !48
  %end_plus_one15 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %2, i64 %indvars.iv.next8, i32 1
  %11 = load i32, i32* %end_plus_one15, align 4, !tbaa !48
  %cmp1656 = icmp slt i32 %10, %11
  br i1 %cmp1656, label %for.body18.lr.ph, label %if.end

for.body18.lr.ph:                                 ; preds = %if.then9
  %12 = load double*, double** %multiplier_, align 8, !tbaa !40
  %13 = load i32*, i32** %index_, align 8, !tbaa !41
  %14 = sext i32 %10 to i64
  %15 = sext i32 %11 to i64
  br label %for.body18

for.body18:                                       ; preds = %for.body18, %for.body18.lr.ph
  %indvars.iv = phi i64 [ %14, %for.body18.lr.ph ], [ %indvars.iv.next, %for.body18 ]
  %arrayidx20 = getelementptr inbounds double, double* %12, i64 %indvars.iv
  %16 = load double, double* %arrayidx20, align 8, !tbaa !46
  %mul = fmul fast double %16, %7
  %arrayidx23 = getelementptr inbounds i32, i32* %13, i64 %indvars.iv
  %17 = load i32, i32* %arrayidx23, align 4, !tbaa !49
  %idxprom24 = sext i32 %17 to i64
  %arrayidx25 = getelementptr inbounds double, double* %3, i64 %idxprom24
  %18 = load double, double* %arrayidx25, align 8, !tbaa !46
  %add = fadd fast double %18, %mul
  store double %add, double* %arrayidx25, align 8, !tbaa !46
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %15
  br i1 %exitcond.not, label %if.end, label %for.body18, !llvm.loop !50

if.end:                                           ; preds = %for.body18, %if.then9, %for.body
  %cmp = icmp sgt i64 %indvars.iv62, 2
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, -1
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !51

if.else:                                          ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %19 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %19) #30
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %21 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %20, %union.anon** %21, align 8, !tbaa !12
  %22 = bitcast %union.anon* %20 to i8*
  %23 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #30
  store i64 106, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i51 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.else
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i51, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %24 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %24, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(106) %call5.i.i.i10.i51, i8* nonnull align 1 dereferenceable(106) getelementptr inbounds ([107 x i8], [107 x i8]* @.str.27, i64 0, i64 0), i64 106, i1 false) #30
  %_M_string_length.i.i.i.i.i.i50 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %24, i64* %_M_string_length.i.i.i.i.i.i50, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i51, i64 %24
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #30
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %25 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %26 = getelementptr inbounds i8, i8* %exception, i64 24
  %27 = bitcast i8* %message_.i.i.i to i8**
  store i8* %26, i8** %27, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %28 = bitcast i8* %_M_string_length.i.i.i.i.i.i to i64*
  store i64 0, i64* %28, align 8, !tbaa !8
  store i8 0, i8* %26, align 1, !tbaa !15
  %29 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept25gradients_not_initializedE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %29, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %25, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont30 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %30 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %29, align 8, !tbaa !20
  %31 = load i8*, i8** %27, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %31, %26
  br i1 %cmp.i.i.i.i.i, label %lpad29.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %31) #30
  br label %lpad29.body

invoke.cont30:                                    ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept25gradients_not_initializedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad29.body.thread

ehcleanup.thread:                                 ; preds = %if.else
  %32 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #30
  br label %cleanup.action

lpad29.body:                                      ; preds = %if.then.i.i.i.i, %lpad.i
  %33 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %33) #30
  %34 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %34, %22
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad29.body
  call void @_ZdlPv(i8* %34) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #30
  br label %cleanup.action

lpad29.body.thread:                               ; preds = %invoke.cont30
  %35 = landingpad { i8*, i32 }
          cleanup
  %36 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i66 = icmp eq i8* %36, %22
  br i1 %cmp.i.i.i66, label %ehcleanup.thread71, label %if.then.i.i

ehcleanup.thread71:                               ; preds = %lpad29.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad29.body.thread
  call void @_ZdlPv(i8* %36) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad29.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn55 = phi { i8*, i32 } [ %32, %ehcleanup.thread ], [ %30, %ehcleanup ], [ %30, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread71
  %.pn54 = phi { i8*, i32 } [ %.pn55, %cleanup.action ], [ %35, %if.then.i.i ], [ %35, %ehcleanup.thread71 ]
  resume { i8*, i32 } %.pn54

unreachable:                                      ; preds = %invoke.cont30
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack22compute_tangent_linearEv(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this) local_unnamed_addr #6 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %gradients_initialized_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 10
  %0 = load i8, i8* %gradients_initialized_.i, align 8, !tbaa !42, !range !28
  %tobool.i.not = icmp eq i8 %0, 0
  br i1 %tobool.i.not, label %if.else, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  %n_statements_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %1 = load i32, i32* %n_statements_, align 8, !tbaa !43
  %cmp51 = icmp sgt i32 %1, 1
  br i1 %cmp51, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %statement_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %2 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !38
  %multiplier_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
  %index_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %3 = load double*, double** %gradient_, align 8, !tbaa !30
  %wide.trip.count = zext i32 %1 to i64
  %end_plus_one.phi.trans.insert = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %2, i64 0, i32 1
  %.pre = load i32, i32* %end_plus_one.phi.trans.insert, align 4, !tbaa !48
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.cond.cleanup8, %for.cond.preheader
  ret void

for.body:                                         ; preds = %for.cond.cleanup8, %for.body.lr.ph
  %4 = phi i32 [ %.pre, %for.body.lr.ph ], [ %5, %for.cond.cleanup8 ]
  %indvars.iv53 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next54, %for.cond.cleanup8 ]
  %end_plus_one6 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %2, i64 %indvars.iv53, i32 1
  %5 = load i32, i32* %end_plus_one6, align 4, !tbaa !48
  %cmp748 = icmp slt i32 %4, %5
  br i1 %cmp748, label %for.body9.lr.ph, label %for.cond.cleanup8

for.body9.lr.ph:                                  ; preds = %for.body
  %6 = load double*, double** %multiplier_, align 8, !tbaa !40
  %7 = load i32*, i32** %index_, align 8, !tbaa !41
  %8 = sext i32 %4 to i64
  %9 = sext i32 %5 to i64
  br label %for.body9

for.cond.cleanup8:                                ; preds = %for.body9, %for.body
  %a.0.lcssa = phi double [ 0.000000e+00, %for.body ], [ %add, %for.body9 ]
  %index = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %2, i64 %indvars.iv53, i32 0
  %10 = load i32, i32* %index, align 4, !tbaa !44
  %idxprom17 = sext i32 %10 to i64
  %arrayidx18 = getelementptr inbounds double, double* %3, i64 %idxprom17
  store double %a.0.lcssa, double* %arrayidx18, align 8, !tbaa !46
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next54, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !52

for.body9:                                        ; preds = %for.body9, %for.body9.lr.ph
  %indvars.iv = phi i64 [ %8, %for.body9.lr.ph ], [ %indvars.iv.next, %for.body9 ]
  %a.049 = phi double [ 0.000000e+00, %for.body9.lr.ph ], [ %add, %for.body9 ]
  %arrayidx11 = getelementptr inbounds double, double* %6, i64 %indvars.iv
  %11 = load double, double* %arrayidx11, align 8, !tbaa !46
  %arrayidx13 = getelementptr inbounds i32, i32* %7, i64 %indvars.iv
  %12 = load i32, i32* %arrayidx13, align 4, !tbaa !49
  %idxprom14 = sext i32 %12 to i64
  %arrayidx15 = getelementptr inbounds double, double* %3, i64 %idxprom14
  %13 = load double, double* %arrayidx15, align 8, !tbaa !46
  %mul = fmul fast double %13, %11
  %add = fadd fast double %mul, %a.049
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not6 = icmp eq i64 %indvars.iv.next, %9
  br i1 %exitcond.not6, label %for.cond.cleanup8, label %for.body9, !llvm.loop !53

if.else:                                          ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %14 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #30
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %16 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %15, %union.anon** %16, align 8, !tbaa !12
  %17 = bitcast %union.anon* %15 to i8*
  %18 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #30
  store i64 106, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i43 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.else
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i43, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %19 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %19, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(106) %call5.i.i.i10.i43, i8* nonnull align 1 dereferenceable(106) getelementptr inbounds ([107 x i8], [107 x i8]* @.str.27, i64 0, i64 0), i64 106, i1 false) #30
  %_M_string_length.i.i.i.i.i.i42 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %19, i64* %_M_string_length.i.i.i.i.i.i42, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i43, i64 %19
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #30
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %20 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %21 = getelementptr inbounds i8, i8* %exception, i64 24
  %22 = bitcast i8* %message_.i.i.i to i8**
  store i8* %21, i8** %22, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %23 = bitcast i8* %_M_string_length.i.i.i.i.i.i to i64*
  store i64 0, i64* %23, align 8, !tbaa !8
  store i8 0, i8* %21, align 1, !tbaa !15
  %24 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept25gradients_not_initializedE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %24, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %20, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont24 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %25 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %24, align 8, !tbaa !20
  %26 = load i8*, i8** %22, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %26, %21
  br i1 %cmp.i.i.i.i.i, label %lpad23.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %26) #30
  br label %lpad23.body

invoke.cont24:                                    ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept25gradients_not_initializedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad23.body.thread

ehcleanup.thread:                                 ; preds = %if.else
  %27 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #30
  br label %cleanup.action

lpad23.body:                                      ; preds = %if.then.i.i.i.i, %lpad.i
  %28 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %28) #30
  %29 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %29, %17
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad23.body
  call void @_ZdlPv(i8* %29) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #30
  br label %cleanup.action

lpad23.body.thread:                               ; preds = %invoke.cont24
  %30 = landingpad { i8*, i32 }
          cleanup
  %31 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i58 = icmp eq i8* %31, %17
  br i1 %cmp.i.i.i58, label %ehcleanup.thread63, label %if.then.i.i

ehcleanup.thread63:                               ; preds = %lpad23.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad23.body.thread
  call void @_ZdlPv(i8* %31) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad23.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn47 = phi { i8*, i32 } [ %27, %ehcleanup.thread ], [ %25, %ehcleanup ], [ %25, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread63
  %.pn46 = phi { i8*, i32 } [ %.pn47, %cleanup.action ], [ %30, %if.then.i.i ], [ %30, %ehcleanup.thread63 ]
  resume { i8*, i32 } %.pn46

unreachable:                                      ; preds = %invoke.cont24
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local i32 @_ZN5adept5Stack21do_register_gradientsERKi(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i32* nocapture nonnull readonly align 4 dereferenceable(4) %n) local_unnamed_addr #5 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i32, i32* %n, align 4, !tbaa !49
  %n_gradients_registered_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 9
  %1 = load i32, i32* %n_gradients_registered_, align 4, !tbaa !54
  %add = add nsw i32 %1, %0
  store i32 %add, i32* %n_gradients_registered_, align 4, !tbaa !54
  %gap_list_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4
  %2 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %3 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i, align 8, !tbaa !31
  %cmp.i = icmp eq %"struct.std::__detail::_List_node_base"* %3, %2
  %.pre = load i32, i32* %n, align 4, !tbaa !49
  br i1 %cmp.i, label %if.end49, label %for.body

for.body:                                         ; preds = %entry, %for.inc
  %it.sroa.0.0110 = phi %"struct.std::__detail::_List_node_base"* [ %10, %for.inc ], [ %3, %entry ]
  %_M_storage.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.0110, i64 1
  %4 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i to %"struct.adept::Gap"*
  %end = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %4, i64 0, i32 1
  %5 = load i32, i32* %end, align 4, !tbaa !55
  %add9 = add nsw i32 %5, 1
  %start = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i to i32*
  %6 = load i32, i32* %start, align 4, !tbaa !57
  %sub = sub i32 %add9, %6
  %cmp = icmp sgt i32 %sub, %.pre
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.body
  %start.le = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i to i32*
  %add16 = add nsw i32 %6, %.pre
  store i32 %add16, i32* %start.le, align 4, !tbaa !57
  br label %return

if.else:                                          ; preds = %for.body
  %cmp17 = icmp eq i32 %sub, %.pre
  br i1 %cmp17, label %if.then18, label %for.inc

if.then18:                                        ; preds = %if.else
  %_M_node.i83 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5, i32 0
  %7 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i83, align 8, !tbaa !58
  %cmp.i85 = icmp eq %"struct.std::__detail::_List_node_base"* %7, %it.sroa.0.0110
  %_M_size.i.i.i77 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %8 = load i64, i64* %_M_size.i.i.i77, align 8, !tbaa !59
  %sub.i.i.i78 = add i64 %8, -1
  store i64 %sub.i.i.i78, i64* %_M_size.i.i.i77, align 8, !tbaa !59
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %it.sroa.0.0110) #30
  %9 = bitcast %"struct.std::__detail::_List_node_base"* %it.sroa.0.0110 to i8*
  tail call void @_ZdlPv(i8* nonnull %9) #30
  br i1 %cmp.i85, label %if.then22, label %return

if.then22:                                        ; preds = %if.then18
  store %"struct.std::__detail::_List_node_base"* %2, %"struct.std::__detail::_List_node_base"** %_M_node.i83, align 8, !tbaa.struct !63
  br label %return

for.inc:                                          ; preds = %if.else
  %_M_next.i73 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.0110, i64 0, i32 0
  %10 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i73, align 8, !tbaa !31
  %cmp.i80.not = icmp eq %"struct.std::__detail::_List_node_base"* %10, %2
  br i1 %cmp.i80.not, label %if.end49, label %for.body, !llvm.loop !64

if.end49:                                         ; preds = %for.inc, %entry
  %i_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 6
  %11 = load i32, i32* %i_gradient_, align 8, !tbaa !65
  %add50 = add nsw i32 %11, %.pre
  store i32 %add50, i32* %i_gradient_, align 8, !tbaa !65
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %12 = load i32, i32* %max_gradient_, align 8, !tbaa !66
  %cmp52 = icmp sgt i32 %add50, %12
  br i1 %cmp52, label %if.then53, label %if.end56

if.then53:                                        ; preds = %if.end49
  store i32 %add50, i32* %max_gradient_, align 8, !tbaa !66
  br label %if.end56

if.end56:                                         ; preds = %if.then53, %if.end49
  %13 = load i32, i32* %n, align 4, !tbaa !49
  %sub58 = sub nsw i32 %add50, %13
  br label %return

return:                                           ; preds = %if.end56, %if.then22, %if.then18, %if.then11
  %retval.3 = phi i32 [ %sub58, %if.end56 ], [ %6, %if.then22 ], [ %6, %if.then11 ], [ %6, %if.then18 ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack27unregister_gradient_not_topERKi(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i32* nocapture nonnull readonly align 4 dereferenceable(4) %gradient_index) local_unnamed_addr #6 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %gap_list_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4
  %0 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %1 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i, align 8, !tbaa !31
  %cmp.i = icmp eq %"struct.std::__detail::_List_node_base"* %1, %0
  br i1 %cmp.i, label %if.then15.if.then62_crit_edge, label %land.rhs

land.rhs:                                         ; preds = %entry
  %_M_node.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5, i32 0
  %2 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i, align 8, !tbaa !58
  %cmp.i165.not = icmp eq %"struct.std::__detail::_List_node_base"* %2, %0
  %3 = bitcast %"struct.std::__detail::_List_node_base"* %2 to %"struct.std::_List_node"*
  br i1 %cmp.i165.not, label %land.rhs.for.body.lr.ph_crit_edge, label %if.then

land.rhs.for.body.lr.ph_crit_edge:                ; preds = %land.rhs
  %.pre17 = load i32, i32* %gradient_index, align 4, !tbaa !49
  br label %for.body.lr.ph

if.then:                                          ; preds = %land.rhs
  %_M_storage.i.i177 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %2, i64 1
  %4 = load i32, i32* %gradient_index, align 4, !tbaa !49
  %start = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i177 to i32*
  %5 = load i32, i32* %start, align 4, !tbaa !57
  %sub = add nsw i32 %5, -1
  %cmp = icmp eq i32 %4, %sub
  br i1 %cmp, label %if.end75.thread248, label %if.else

if.end75.thread248:                               ; preds = %if.then
  store i32 %4, i32* %start, align 4, !tbaa !57
  br label %land.rhs77

if.else:                                          ; preds = %if.then
  %end = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %3, i64 0, i32 1, i32 0, i64 4
  %6 = bitcast i8* %end to i32*
  %7 = load i32, i32* %6, align 4, !tbaa !55
  %add = add nsw i32 %7, 1
  %cmp9 = icmp eq i32 %4, %add
  br i1 %cmp9, label %if.then10, label %for.body.lr.ph

if.then10:                                        ; preds = %if.else
  store i32 %4, i32* %6, align 4, !tbaa !55
  br label %if.then113

if.then15.if.then62_crit_edge:                    ; preds = %entry
  %.pre = load i32, i32* %gradient_index, align 4, !tbaa !49
  br label %if.then62

for.body.lr.ph:                                   ; preds = %land.rhs.for.body.lr.ph_crit_edge, %if.else
  %8 = phi i32 [ %.pre17, %land.rhs.for.body.lr.ph_crit_edge ], [ %4, %if.else ]
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %it.sroa.0.0263 = phi %"struct.std::__detail::_List_node_base"* [ %1, %for.body.lr.ph ], [ %20, %for.inc ]
  %_M_storage.i.i205 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.0263, i64 1
  %9 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i205 to %"struct.adept::Gap"*
  %end25 = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %9, i64 0, i32 1
  %10 = load i32, i32* %end25, align 4, !tbaa !55
  %add26 = add nsw i32 %10, 1
  %cmp27.not = icmp sgt i32 %8, %add26
  br i1 %cmp27.not, label %for.inc, label %if.then28

if.then28:                                        ; preds = %for.body
  %11 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i205 to %"struct.adept::Gap"*
  %end25.le = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %11, i64 0, i32 1
  %start30 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i205 to i32*
  %12 = load i32, i32* %start30, align 4, !tbaa !57
  %sub31 = add nsw i32 %12, -1
  %cmp32 = icmp eq i32 %8, %sub31
  br i1 %cmp32, label %if.end75, label %if.else38

if.else38:                                        ; preds = %if.then28
  %cmp42 = icmp eq i32 %8, %add26
  br i1 %cmp42, label %if.then43, label %if.else48

if.then43:                                        ; preds = %if.else38
  store i32 %8, i32* %end25.le, align 4, !tbaa !55
  %most_recent_gap_47 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5
  %13 = bitcast %"struct.std::_List_iterator"* %most_recent_gap_47 to i64*
  %14 = ptrtoint %"struct.std::__detail::_List_node_base"* %it.sroa.0.0263 to i64
  store i64 %14, i64* %13, align 8, !tbaa !29
  %15 = bitcast %"struct.std::__detail::_List_node_base"* %it.sroa.0.0263 to %"struct.std::_List_node"*
  br label %if.then113

if.else48:                                        ; preds = %if.else38
  %call2.i.i.i.i.i.i201 = tail call noalias nonnull i8* @_Znwm(i64 24) #33
  %_M_storage.i.i.i.i202 = getelementptr inbounds i8, i8* %call2.i.i.i.i.i.i201, i64 16
  %16 = bitcast i8* %_M_storage.i.i.i.i202 to i64*
  %ref.tmp51.sroa.4.0.insert.ext = zext i32 %8 to i64
  %ref.tmp51.sroa.4.0.insert.shift = shl nuw i64 %ref.tmp51.sroa.4.0.insert.ext, 32
  %ref.tmp51.sroa.0.0.insert.insert = or i64 %ref.tmp51.sroa.4.0.insert.shift, %ref.tmp51.sroa.4.0.insert.ext
  store i64 %ref.tmp51.sroa.0.0.insert.insert, i64* %16, align 4
  %17 = bitcast i8* %call2.i.i.i.i.i.i201 to %"struct.std::__detail::_List_node_base"*
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %17, %"struct.std::__detail::_List_node_base"* nonnull %it.sroa.0.0263) #30
  %_M_size.i.i.i203 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %18 = load i64, i64* %_M_size.i.i.i203, align 8, !tbaa !59
  %add.i.i.i204 = add i64 %18, 1
  store i64 %add.i.i.i204, i64* %_M_size.i.i.i203, align 8, !tbaa !59
  %19 = bitcast %"struct.std::__detail::_List_node_base"** %_M_node.i to i8**
  store i8* %call2.i.i.i.i.i.i201, i8** %19, align 8, !tbaa.struct !63
  br label %if.end147

for.inc:                                          ; preds = %for.body
  %_M_next.i200 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.0263, i64 0, i32 0
  %20 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i200, align 8, !tbaa !31
  %cmp.i197.not = icmp eq %"struct.std::__detail::_List_node_base"* %20, %0
  br i1 %cmp.i197.not, label %if.then62, label %for.body, !llvm.loop !67

if.then62:                                        ; preds = %for.inc, %if.then15.if.then62_crit_edge
  %21 = phi i32 [ %.pre, %if.then15.if.then62_crit_edge ], [ %8, %for.inc ]
  %call2.i.i.i.i.i.i = tail call noalias nonnull i8* @_Znwm(i64 24) #33
  %_M_storage.i.i.i.i = getelementptr inbounds i8, i8* %call2.i.i.i.i.i.i, i64 16
  %22 = bitcast i8* %_M_storage.i.i.i.i to i64*
  %ref.tmp64.sroa.4.0.insert.ext = zext i32 %21 to i64
  %ref.tmp64.sroa.4.0.insert.shift = shl nuw i64 %ref.tmp64.sroa.4.0.insert.ext, 32
  %ref.tmp64.sroa.0.0.insert.insert = or i64 %ref.tmp64.sroa.4.0.insert.shift, %ref.tmp64.sroa.4.0.insert.ext
  store i64 %ref.tmp64.sroa.0.0.insert.insert, i64* %22, align 4
  %23 = bitcast i8* %call2.i.i.i.i.i.i to %"struct.std::__detail::_List_node_base"*
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %23, %"struct.std::__detail::_List_node_base"* nonnull %0) #30
  %_M_size.i.i.i194 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %24 = load i64, i64* %_M_size.i.i.i194, align 8, !tbaa !59
  %add.i.i.i = add i64 %24, 1
  store i64 %add.i.i.i, i64* %_M_size.i.i.i194, align 8, !tbaa !59
  %ref.tmp65.sroa.0.0..sroa_idx = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5, i32 0
  %_M_prev.i193 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1
  %25 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_prev.i193, align 8, !tbaa !68
  store %"struct.std::__detail::_List_node_base"* %25, %"struct.std::__detail::_List_node_base"** %ref.tmp65.sroa.0.0..sroa_idx, align 8, !tbaa !58
  br label %if.end147

if.end75:                                         ; preds = %if.then28
  store i32 %8, i32* %start30, align 4, !tbaa !57
  %most_recent_gap_37 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5
  %26 = bitcast %"struct.std::_List_iterator"* %most_recent_gap_37 to i64*
  %27 = ptrtoint %"struct.std::__detail::_List_node_base"* %it.sroa.0.0263 to i64
  store i64 %27, i64* %26, align 8, !tbaa !29
  %28 = bitcast %"struct.std::__detail::_List_node_base"* %it.sroa.0.0263 to %"struct.std::_List_node"*
  br label %land.rhs77

land.rhs77:                                       ; preds = %if.end75, %if.end75.thread248
  %29 = phi %"struct.std::_List_node"* [ %28, %if.end75 ], [ %3, %if.end75.thread248 ]
  %30 = phi %"struct.std::__detail::_List_node_base"* [ %it.sroa.0.0263, %if.end75 ], [ %2, %if.end75.thread248 ]
  %cmp.i189.not = icmp eq %"struct.std::__detail::_List_node_base"* %30, %1
  br i1 %cmp.i189.not, label %if.end147, label %if.then85

if.then85:                                        ; preds = %land.rhs77
  %_M_prev.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %30, i64 0, i32 1
  %31 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_prev.i, align 8, !tbaa !68
  %_M_storage.i.i184 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %31, i64 1
  %32 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i184 to %"struct.adept::Gap"*
  %end92 = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %32, i64 0, i32 1
  %33 = load i32, i32* %end92, align 4, !tbaa !55
  %_M_storage.i.i183 = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %29, i64 0, i32 1
  %start95 = bitcast %"struct.__gnu_cxx::__aligned_membuf"* %_M_storage.i.i183 to i32*
  %34 = load i32, i32* %start95, align 4, !tbaa !57
  %sub96 = add nsw i32 %34, -1
  %cmp97 = icmp eq i32 %33, %sub96
  br i1 %cmp97, label %if.then98, label %if.end147

if.then98:                                        ; preds = %if.then85
  %start100 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i184 to i32*
  %35 = load i32, i32* %start100, align 4, !tbaa !57
  store i32 %35, i32* %start95, align 4, !tbaa !57
  %_M_size.i.i.i175 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %36 = load i64, i64* %_M_size.i.i.i175, align 8, !tbaa !59
  %sub.i.i.i176 = add i64 %36, -1
  store i64 %sub.i.i.i176, i64* %_M_size.i.i.i175, align 8, !tbaa !59
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %31) #30
  %37 = bitcast %"struct.std::__detail::_List_node_base"* %31 to i8*
  tail call void @_ZdlPv(i8* nonnull %37) #30
  br label %if.end147

if.then113:                                       ; preds = %if.then43, %if.then10
  %38 = phi %"struct.std::_List_node"* [ %3, %if.then10 ], [ %15, %if.then43 ]
  %.ptr = phi %"struct.std::__detail::_List_node_base"* [ %2, %if.then10 ], [ %it.sroa.0.0263, %if.then43 ]
  %_M_next.i173 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %.ptr, i64 0, i32 0
  %39 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i173, align 8, !tbaa !31
  %cmp.i172.not = icmp eq %"struct.std::__detail::_List_node_base"* %39, %0
  br i1 %cmp.i172.not, label %if.end147, label %land.rhs124

land.rhs124:                                      ; preds = %if.then113
  %_M_storage.i.i169 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %39, i64 1
  %start126 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i169 to i32*
  %40 = load i32, i32* %start126, align 4, !tbaa !57
  %end129 = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %38, i64 0, i32 1, i32 0, i64 4
  %41 = bitcast i8* %end129 to i32*
  %42 = load i32, i32* %41, align 4, !tbaa !55
  %add130 = add nsw i32 %42, 1
  %cmp131 = icmp eq i32 %40, %add130
  br i1 %cmp131, label %if.then133, label %if.end147

if.then133:                                       ; preds = %land.rhs124
  %43 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i169 to %"struct.adept::Gap"*
  %end135 = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %43, i64 0, i32 1
  %44 = load i32, i32* %end135, align 4, !tbaa !55
  store i32 %44, i32* %41, align 4, !tbaa !55
  %_M_size.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %45 = load i64, i64* %_M_size.i.i.i, align 8, !tbaa !59
  %sub.i.i.i = add i64 %45, -1
  store i64 %sub.i.i.i, i64* %_M_size.i.i.i, align 8, !tbaa !59
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %39) #30
  %46 = bitcast %"struct.std::__detail::_List_node_base"* %39 to i8*
  tail call void @_ZdlPv(i8* nonnull %46) #30
  br label %if.end147

if.end147:                                        ; preds = %if.then133, %land.rhs124, %if.then113, %if.then98, %if.then85, %land.rhs77, %if.then62, %if.else48
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack20unregister_gradientsERKiS2_(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i32* nocapture nonnull readonly align 4 dereferenceable(4) %gradient_index, i32* nocapture nonnull readonly align 4 dereferenceable(4) %n) local_unnamed_addr #6 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i32, i32* %n, align 4, !tbaa !49
  %n_gradients_registered_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 9
  %1 = load i32, i32* %n_gradients_registered_, align 4, !tbaa !54
  %sub = sub nsw i32 %1, %0
  store i32 %sub, i32* %n_gradients_registered_, align 4, !tbaa !54
  %2 = load i32, i32* %gradient_index, align 4, !tbaa !49
  %3 = load i32, i32* %n, align 4, !tbaa !49
  %add = add i32 %3, %2
  %i_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 6
  %4 = load i32, i32* %i_gradient_, align 8, !tbaa !65
  %cmp = icmp eq i32 %add, %4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  store i32 %2, i32* %i_gradient_, align 8, !tbaa !65
  %gap_list_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4
  %5 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %6 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i, align 8, !tbaa !31
  %cmp.i = icmp eq %"struct.std::__detail::_List_node_base"* %6, %5
  br i1 %cmp.i, label %if.end192, label %if.then4

if.then4:                                         ; preds = %if.then
  %_M_prev.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1
  %7 = bitcast %"struct.std::__detail::_List_node_base"** %_M_prev.i.i to %"struct.std::_List_node"**
  %8 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %7, align 8, !tbaa !68
  %end = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %8, i64 0, i32 1, i32 0, i64 4
  %9 = bitcast i8* %end to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !55
  %add8 = add nsw i32 %10, 1
  %cmp9 = icmp eq i32 %2, %add8
  %11 = getelementptr %"struct.std::_List_node", %"struct.std::_List_node"* %8, i64 0, i32 0
  br i1 %cmp9, label %if.then10, label %if.end192

if.then10:                                        ; preds = %if.then4
  %_M_storage.i.i.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %8, i64 0, i32 1
  %start = bitcast %"struct.__gnu_cxx::__aligned_membuf"* %_M_storage.i.i.i to i32*
  %12 = load i32, i32* %start, align 4, !tbaa !57
  store i32 %12, i32* %i_gradient_, align 8, !tbaa !65
  %_M_node.i238 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5, i32 0
  %13 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i238, align 8, !tbaa !58
  %cmp.i240 = icmp eq %"struct.std::__detail::_List_node_base"* %13, %11
  br i1 %cmp.i240, label %if.then17, label %if.end

if.then17:                                        ; preds = %if.then10
  store %"struct.std::__detail::_List_node_base"* %5, %"struct.std::__detail::_List_node_base"** %_M_node.i238, align 8, !tbaa.struct !63
  br label %if.end

if.end:                                           ; preds = %if.then17, %if.then10
  %_M_size.i.i.i259 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %14 = load i64, i64* %_M_size.i.i.i259, align 8, !tbaa !59
  %sub.i.i.i260 = add i64 %14, -1
  store i64 %sub.i.i.i260, i64* %_M_size.i.i.i259, align 8, !tbaa !59
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %11) #30
  %15 = bitcast %"struct.std::_List_node"* %8 to i8*
  tail call void @_ZdlPv(i8* nonnull %15) #30
  br label %if.end192

if.else:                                          ; preds = %entry
  %gap_list_25 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4
  %16 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_25, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i261 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_25, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %17 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i261, align 8, !tbaa !31
  %cmp.i262 = icmp eq %"struct.std::__detail::_List_node_base"* %17, %16
  br i1 %cmp.i262, label %if.then104, label %land.rhs

land.rhs:                                         ; preds = %if.else
  %_M_node.i270 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5, i32 0
  %18 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i270, align 8, !tbaa !58
  %cmp.i272.not = icmp eq %"struct.std::__detail::_List_node_base"* %18, %16
  %19 = bitcast %"struct.std::__detail::_List_node_base"* %18 to %"struct.std::_List_node"*
  br i1 %cmp.i272.not, label %for.body.preheader, label %if.then33

for.body.preheader:                               ; preds = %if.else42, %land.rhs
  br label %for.body

if.then33:                                        ; preds = %land.rhs
  %_M_storage.i.i273 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %18, i64 1
  %start36 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i273 to i32*
  %20 = load i32, i32* %start36, align 4, !tbaa !57
  %sub37 = sub nsw i32 %20, %3
  %cmp38 = icmp eq i32 %2, %sub37
  br i1 %cmp38, label %if.end119.thread322, label %if.else42

if.end119.thread322:                              ; preds = %if.then33
  store i32 %2, i32* %start36, align 4, !tbaa !57
  br label %land.rhs121

if.else42:                                        ; preds = %if.then33
  %end43 = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %19, i64 0, i32 1, i32 0, i64 4
  %21 = bitcast i8* %end43 to i32*
  %22 = load i32, i32* %21, align 4, !tbaa !55
  %add44 = add nsw i32 %22, 1
  %cmp45 = icmp eq i32 %2, %add44
  br i1 %cmp45, label %if.then46, label %for.body.preheader

if.then46:                                        ; preds = %if.else42
  %add48 = add nsw i32 %22, %3
  store i32 %add48, i32* %21, align 4, !tbaa !55
  br label %if.then157

for.body:                                         ; preds = %for.body.preheader, %for.inc
  %it54.sroa.0.0338 = phi %"struct.std::__detail::_List_node_base"* [ %34, %for.inc ], [ %17, %for.body.preheader ]
  %_M_storage.i.i282 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it54.sroa.0.0338, i64 1
  %23 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i282 to %"struct.adept::Gap"*
  %end64 = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %23, i64 0, i32 1
  %24 = load i32, i32* %end64, align 4, !tbaa !55
  %add65 = add nsw i32 %24, 1
  %cmp66.not = icmp sgt i32 %2, %add65
  br i1 %cmp66.not, label %for.inc, label %if.then67

if.then67:                                        ; preds = %for.body
  %25 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i282 to %"struct.adept::Gap"*
  %end64.le = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %25, i64 0, i32 1
  %start69 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i282 to i32*
  %26 = load i32, i32* %start69, align 4, !tbaa !57
  %sub70 = sub nsw i32 %26, %3
  %cmp71 = icmp eq i32 %2, %sub70
  br i1 %cmp71, label %if.end119, label %if.else77

if.else77:                                        ; preds = %if.then67
  %cmp81 = icmp eq i32 %2, %add65
  br i1 %cmp81, label %if.then82, label %if.else87

if.then82:                                        ; preds = %if.else77
  %add85 = add nsw i32 %24, %3
  store i32 %add85, i32* %end64.le, align 4, !tbaa !55
  %most_recent_gap_86 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5
  %27 = bitcast %"struct.std::_List_iterator"* %most_recent_gap_86 to i64*
  %28 = ptrtoint %"struct.std::__detail::_List_node_base"* %it54.sroa.0.0338 to i64
  store i64 %28, i64* %27, align 8, !tbaa !29
  %29 = bitcast %"struct.std::__detail::_List_node_base"* %it54.sroa.0.0338 to %"struct.std::_List_node"*
  br label %if.then157

if.else87:                                        ; preds = %if.else77
  %sub92 = add i32 %add, -1
  %call2.i.i.i.i.i.i266 = tail call noalias nonnull i8* @_Znwm(i64 24) #33
  %_M_storage.i.i.i.i267 = getelementptr inbounds i8, i8* %call2.i.i.i.i.i.i266, i64 16
  %30 = bitcast i8* %_M_storage.i.i.i.i267 to i64*
  %ref.tmp90.sroa.4.0.insert.ext = zext i32 %sub92 to i64
  %ref.tmp90.sroa.4.0.insert.shift = shl nuw i64 %ref.tmp90.sroa.4.0.insert.ext, 32
  %ref.tmp90.sroa.0.0.insert.ext = zext i32 %2 to i64
  %ref.tmp90.sroa.0.0.insert.insert = or i64 %ref.tmp90.sroa.4.0.insert.shift, %ref.tmp90.sroa.0.0.insert.ext
  store i64 %ref.tmp90.sroa.0.0.insert.insert, i64* %30, align 4
  %31 = bitcast i8* %call2.i.i.i.i.i.i266 to %"struct.std::__detail::_List_node_base"*
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %31, %"struct.std::__detail::_List_node_base"* nonnull %it54.sroa.0.0338) #30
  %_M_size.i.i.i268 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %32 = load i64, i64* %_M_size.i.i.i268, align 8, !tbaa !59
  %add.i.i.i269 = add i64 %32, 1
  store i64 %add.i.i.i269, i64* %_M_size.i.i.i268, align 8, !tbaa !59
  %33 = bitcast %"struct.std::__detail::_List_node_base"** %_M_node.i270 to i8**
  store i8* %call2.i.i.i.i.i.i266, i8** %33, align 8, !tbaa.struct !63
  br label %if.end192

for.inc:                                          ; preds = %for.body
  %_M_next.i265 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it54.sroa.0.0338, i64 0, i32 0
  %34 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i265, align 8, !tbaa !31
  %cmp.i285.not = icmp eq %"struct.std::__detail::_List_node_base"* %34, %16
  br i1 %cmp.i285.not, label %if.then104, label %for.body, !llvm.loop !69

if.then104:                                       ; preds = %for.inc, %if.else
  %sub108 = add i32 %add, -1
  %call2.i.i.i.i.i.i = tail call noalias nonnull i8* @_Znwm(i64 24) #33
  %_M_storage.i.i.i.i = getelementptr inbounds i8, i8* %call2.i.i.i.i.i.i, i64 16
  %35 = bitcast i8* %_M_storage.i.i.i.i to i64*
  %ref.tmp106.sroa.4.0.insert.ext = zext i32 %sub108 to i64
  %ref.tmp106.sroa.4.0.insert.shift = shl nuw i64 %ref.tmp106.sroa.4.0.insert.ext, 32
  %ref.tmp106.sroa.0.0.insert.ext = zext i32 %2 to i64
  %ref.tmp106.sroa.0.0.insert.insert = or i64 %ref.tmp106.sroa.4.0.insert.shift, %ref.tmp106.sroa.0.0.insert.ext
  store i64 %ref.tmp106.sroa.0.0.insert.insert, i64* %35, align 4
  %36 = bitcast i8* %call2.i.i.i.i.i.i to %"struct.std::__detail::_List_node_base"*
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %36, %"struct.std::__detail::_List_node_base"* nonnull %16) #30
  %_M_size.i.i.i257 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %37 = load i64, i64* %_M_size.i.i.i257, align 8, !tbaa !59
  %add.i.i.i = add i64 %37, 1
  store i64 %add.i.i.i, i64* %_M_size.i.i.i257, align 8, !tbaa !59
  %ref.tmp109.sroa.0.0..sroa_idx = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5, i32 0
  %_M_prev.i256 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1
  %38 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_prev.i256, align 8, !tbaa !68
  store %"struct.std::__detail::_List_node_base"* %38, %"struct.std::__detail::_List_node_base"** %ref.tmp109.sroa.0.0..sroa_idx, align 8, !tbaa !58
  br label %if.end192

if.end119:                                        ; preds = %if.then67
  store i32 %2, i32* %start69, align 4, !tbaa !57
  %most_recent_gap_76 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5
  %39 = bitcast %"struct.std::_List_iterator"* %most_recent_gap_76 to i64*
  %40 = ptrtoint %"struct.std::__detail::_List_node_base"* %it54.sroa.0.0338 to i64
  store i64 %40, i64* %39, align 8, !tbaa !29
  %41 = bitcast %"struct.std::__detail::_List_node_base"* %it54.sroa.0.0338 to %"struct.std::_List_node"*
  br label %land.rhs121

land.rhs121:                                      ; preds = %if.end119, %if.end119.thread322
  %42 = phi %"struct.std::_List_node"* [ %41, %if.end119 ], [ %19, %if.end119.thread322 ]
  %43 = phi %"struct.std::__detail::_List_node_base"* [ %it54.sroa.0.0338, %if.end119 ], [ %18, %if.end119.thread322 ]
  %cmp.i252.not = icmp eq %"struct.std::__detail::_List_node_base"* %43, %17
  br i1 %cmp.i252.not, label %if.end192, label %if.then129

if.then129:                                       ; preds = %land.rhs121
  %_M_prev.i249 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %43, i64 0, i32 1
  %44 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_prev.i249, align 8, !tbaa !68
  %_M_storage.i.i246 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %44, i64 1
  %45 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i246 to %"struct.adept::Gap"*
  %end136 = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %45, i64 0, i32 1
  %46 = load i32, i32* %end136, align 4, !tbaa !55
  %_M_storage.i.i245 = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %42, i64 0, i32 1
  %start139 = bitcast %"struct.__gnu_cxx::__aligned_membuf"* %_M_storage.i.i245 to i32*
  %47 = load i32, i32* %start139, align 4, !tbaa !57
  %sub140 = add nsw i32 %47, -1
  %cmp141 = icmp eq i32 %46, %sub140
  br i1 %cmp141, label %if.then142, label %if.end192

if.then142:                                       ; preds = %if.then129
  %start144 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i246 to i32*
  %48 = load i32, i32* %start144, align 4, !tbaa !57
  store i32 %48, i32* %start139, align 4, !tbaa !57
  %_M_size.i.i.i234 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %49 = load i64, i64* %_M_size.i.i.i234, align 8, !tbaa !59
  %sub.i.i.i235 = add i64 %49, -1
  store i64 %sub.i.i.i235, i64* %_M_size.i.i.i234, align 8, !tbaa !59
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %44) #30
  %50 = bitcast %"struct.std::__detail::_List_node_base"* %44 to i8*
  tail call void @_ZdlPv(i8* nonnull %50) #30
  br label %if.end192

if.then157:                                       ; preds = %if.then82, %if.then46
  %51 = phi %"struct.std::_List_node"* [ %19, %if.then46 ], [ %29, %if.then82 ]
  %.ptr = phi %"struct.std::__detail::_List_node_base"* [ %18, %if.then46 ], [ %it54.sroa.0.0338, %if.then82 ]
  %_M_next.i232 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %.ptr, i64 0, i32 0
  %52 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i232, align 8, !tbaa !31
  %cmp.i231.not = icmp eq %"struct.std::__detail::_List_node_base"* %52, %16
  br i1 %cmp.i231.not, label %if.end192, label %land.rhs168

land.rhs168:                                      ; preds = %if.then157
  %_M_storage.i.i229 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %52, i64 1
  %start170 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i229 to i32*
  %53 = load i32, i32* %start170, align 4, !tbaa !57
  %end173 = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %51, i64 0, i32 1, i32 0, i64 4
  %54 = bitcast i8* %end173 to i32*
  %55 = load i32, i32* %54, align 4, !tbaa !55
  %add174 = add nsw i32 %55, 1
  %cmp175 = icmp eq i32 %53, %add174
  br i1 %cmp175, label %if.then177, label %if.end192

if.then177:                                       ; preds = %land.rhs168
  %56 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i229 to %"struct.adept::Gap"*
  %end179 = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %56, i64 0, i32 1
  %57 = load i32, i32* %end179, align 4, !tbaa !55
  store i32 %57, i32* %54, align 4, !tbaa !55
  %_M_size.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %58 = load i64, i64* %_M_size.i.i.i, align 8, !tbaa !59
  %sub.i.i.i = add i64 %58, -1
  store i64 %sub.i.i.i, i64* %_M_size.i.i.i, align 8, !tbaa !59
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %52) #30
  %59 = bitcast %"struct.std::__detail::_List_node_base"* %52 to i8*
  tail call void @_ZdlPv(i8* nonnull %59) #30
  br label %if.end192

if.end192:                                        ; preds = %if.then177, %land.rhs168, %if.then157, %if.then142, %if.then129, %land.rhs121, %if.then104, %if.else87, %if.end, %if.then4, %if.then
  ret void
}

; Function Attrs: uwtable mustprogress
define dso_local void @_ZNK5adept5Stack16print_statementsERSo(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, %"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os) local_unnamed_addr #9 align 2 {
entry:
  %n_statements_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %0 = load i32, i32* %n_statements_, align 8, !tbaa !43
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
  %1 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !38
  %2 = trunc i64 %indvars.iv69 to i32
  %call = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %2)
  %call1.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.28, i64 0, i64 0), i64 4)
  %index = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %1, i64 %indvars.iv69, i32 0
  %3 = load i32, i32* %index, align 4, !tbaa !44
  %call3 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %call, i32 %3)
  %call1.i54 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call3, i8* nonnull getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i64 0, i64 0), i64 4)
  %4 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !38
  %5 = add nsw i64 %indvars.iv69, -1
  %end_plus_one = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %4, i64 %5, i32 1
  %6 = load i32, i32* %end_plus_one, align 4, !tbaa !48
  %end_plus_one11 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %4, i64 %indvars.iv69, i32 1
  %7 = load i32, i32* %end_plus_one11, align 4, !tbaa !48
  %cmp12 = icmp eq i32 %6, %7
  br i1 %cmp12, label %if.then, label %for.cond19.preheader

for.cond19.preheader:                             ; preds = %for.body
  %end_plus_one20 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %1, i64 %indvars.iv69, i32 1
  %8 = load i32, i32* %end_plus_one20, align 4, !tbaa !48
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
  %10 = load double*, double** %multiplier_, align 8, !tbaa !40
  %arrayidx26 = getelementptr inbounds double, double* %10, i64 %indvars.iv
  %11 = load double, double* %arrayidx26, align 8, !tbaa !46
  %call.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, double %11)
  %call1.i62 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call.i, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.32, i64 0, i64 0), i64 3)
  %12 = load i32*, i32** %index_, align 8, !tbaa !41
  %arrayidx30 = getelementptr inbounds i32, i32* %12, i64 %indvars.iv
  %13 = load i32, i32* %arrayidx30, align 4, !tbaa !49
  %call31 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %call.i, i32 %13)
  %call1.i64 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call31, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i64 1)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %14 = load i32, i32* %end_plus_one20, align 4, !tbaa !48
  %15 = sext i32 %14 to i64
  %cmp21 = icmp slt i64 %indvars.iv.next, %15
  br i1 %cmp21, label %for.body23, label %for.cond.cleanup22, !llvm.loop !70

if.end:                                           ; preds = %for.cond.cleanup22, %if.then
  %indvars.iv.next70 = add nuw nsw i64 %indvars.iv69, 1
  %16 = load i32, i32* %n_statements_, align 8, !tbaa !43
  %17 = sext i32 %16 to i64
  %cmp = icmp slt i64 %indvars.iv.next70, %17
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !71
}

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8), i32) local_unnamed_addr #1

; Function Attrs: uwtable mustprogress
define dso_local zeroext i1 @_ZNK5adept5Stack15print_gradientsERSo(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, %"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os) local_unnamed_addr #9 align 2 {
entry:
  %gradients_initialized_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 10
  %0 = load i8, i8* %gradients_initialized_.i, align 8, !tbaa !42, !range !28
  %tobool.i = icmp ne i8 %0, 0
  br i1 %tobool.i, label %for.cond.preheader, label %if.else

for.cond.preheader:                               ; preds = %entry
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %1 = load i32, i32* %max_gradient_, align 8, !tbaa !66
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
  %3 = load double*, double** %gradient_, align 8, !tbaa !30
  %arrayidx = getelementptr inbounds double, double* %3, i64 %indvars.iv
  %4 = load double, double* %arrayidx, align 8, !tbaa !46
  %call.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, double %4)
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %5 = load i32, i32* %max_gradient_, align 8, !tbaa !66
  %6 = sext i32 %5 to i64
  %cmp = icmp slt i64 %indvars.iv.next, %6
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !72

if.else:                                          ; preds = %entry
  %call1.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([26 x i8], [26 x i8]* @.str.34, i64 0, i64 0), i64 25)
  br label %return

return:                                           ; preds = %if.else, %for.cond.cleanup
  ret i1 %tobool.i
}

; Function Attrs: uwtable
define dso_local void @_ZNK5adept5Stack10print_gapsERSo(%"class.adept::Stack"* nonnull readonly dereferenceable(149) %this, %"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os) local_unnamed_addr #6 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %gap_list_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4
  %_M_next.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %it.sroa.0.022 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i, align 8, !tbaa !31
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
  %2 = load i32, i32* %start, align 4, !tbaa !57
  %call7 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %2)
  %call1.i16 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call7, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i64 1)
  %end = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %1, i64 0, i32 1
  %3 = load i32, i32* %end, align 4, !tbaa !55
  %call10 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %call7, i32 %3)
  %call1.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %_M_next.i14 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.024, i64 0, i32 0
  %it.sroa.0.0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i14, align 8, !tbaa !31
  %cmp.i.not = icmp eq %"struct.std::__detail::_List_node_base"* %it.sroa.0.0, %0
  br i1 %cmp.i.not, label %for.cond.cleanup, label %for.body, !llvm.loop !73
}

; Function Attrs: uwtable mustprogress
define dso_local void @_ZN5adept5Stack20initialize_gradientsEv(%"class.adept::Stack"* nocapture nonnull dereferenceable(149) %this) local_unnamed_addr #9 align 2 {
entry:
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %0 = load i32, i32* %max_gradient_, align 8, !tbaa !66
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %n_allocated_gradients_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 7
  %1 = load i32, i32* %n_allocated_gradients_, align 4, !tbaa !74
  %cmp3 = icmp slt i32 %1, %0
  %gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
  br i1 %cmp3, label %if.then4, label %if.then.for.body.lr.ph_crit_edge

if.then.for.body.lr.ph_crit_edge:                 ; preds = %if.then
  %.phi.trans.insert = bitcast double** %gradient_ to i8**
  %.pre3 = load i8*, i8** %.phi.trans.insert, align 8, !tbaa !30
  br label %for.body.lr.ph

if.then4:                                         ; preds = %if.then
  %2 = load double*, double** %gradient_, align 8, !tbaa !30
  %tobool.not = icmp eq double* %2, null
  br i1 %tobool.not, label %if.end11, label %delete.notnull

delete.notnull:                                   ; preds = %if.then4
  %3 = bitcast double* %2 to i8*
  tail call void @_ZdaPv(i8* %3) #32
  %.pre = load i32, i32* %max_gradient_, align 8, !tbaa !66
  br label %if.end11

if.end11:                                         ; preds = %delete.notnull, %if.then4
  %4 = phi i32 [ %.pre, %delete.notnull ], [ %0, %if.then4 ]
  %conv = sext i32 %4 to i64
  %5 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 8)
  %6 = extractvalue { i64, i1 } %5, 1
  %7 = extractvalue { i64, i1 } %5, 0
  %8 = select i1 %6, i64 -1, i64 %7
  %call = tail call noalias nonnull i8* @_Znam(i64 %8) #34
  %9 = bitcast double** %gradient_ to i8**
  store i8* %call, i8** %9, align 8, !tbaa !30
  store i32 %4, i32* %n_allocated_gradients_, align 4, !tbaa !74
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
  store i8 1, i8* %gradients_initialized_, align 8, !tbaa !42
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #10

; Function Attrs: nobuiltin nofree allocsize(0)
declare dso_local nonnull i8* @_Znam(i64) local_unnamed_addr #11

; Function Attrs: uwtable
define dso_local void @_ZNK5adept5Stack12print_statusERSo(%"class.adept::Stack"* nonnull dereferenceable(149) %this, %"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os) local_unnamed_addr #6 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %call1.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([42 x i8], [42 x i8]* @.str.36, i64 0, i64 0), i64 41)
  %0 = bitcast %"class.adept::Stack"* %this to i8*
  %call.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIPKvEERSoT_(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i8* nonnull %0)
  %call1.i142 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call.i, i8* nonnull getelementptr inbounds ([4 x i8], [4 x i8]* @.str.37, i64 0, i64 0), i64 3)
  %is_thread_unsafe_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 11
  %1 = load i8, i8* %is_thread_unsafe_, align 1, !tbaa !22, !range !28
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
  %5 = load i8, i8* %is_recording_, align 2, !tbaa !75, !range !28
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
  %6 = load i32, i32* %n_statements_.i, align 8, !tbaa !43
  %sub = add nsw i32 %6, -1
  %call23 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %sub)
  %call1.i158 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call23, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.45, i64 0, i64 0), i64 13)
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 4
  %7 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !76
  %call26 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %call23, i32 %7)
  %call1.i160 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call26, i8* nonnull getelementptr inbounds ([12 x i8], [12 x i8]* @.str.46, i64 0, i64 0), i64 11)
  %call1.i162 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.47, i64 0, i64 0), i64 5)
  %n_operations_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 5
  %8 = load i32, i32* %n_operations_.i, align 8, !tbaa !77
  %call30 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %8)
  %call1.i164 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call30, i8* nonnull getelementptr inbounds ([14 x i8], [14 x i8]* @.str.48, i64 0, i64 0), i64 13)
  %n_allocated_operations_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 6
  %9 = load i32, i32* %n_allocated_operations_.i, align 4, !tbaa !78
  %call33 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %call30, i32 %9)
  %call1.i166 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call33, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i64 0, i64 0), i64 12)
  %call1.i168 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i64 6)
  %n_gradients_registered_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 9
  %10 = load i32, i32* %n_gradients_registered_.i, align 4, !tbaa !54
  %call37 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %10)
  %call1.i170 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call37, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i64 0, i64 0), i64 32)
  %call1.i172 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([16 x i8], [16 x i8]* @.str.51, i64 0, i64 0), i64 15)
  %max_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %11 = load i32, i32* %max_gradient_.i, align 8, !tbaa !66
  %call41 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %11)
  %call1.i174 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call41, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.52, i64 0, i64 0), i64 23)
  %i_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 6
  %12 = load i32, i32* %i_gradient_.i, align 8, !tbaa !65
  %call44 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %call41, i32 %12)
  %call1.i176 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call44, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0), i64 2)
  %gap_list_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4
  %13 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %14 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i, align 8, !tbaa !31
  %cmp.i = icmp eq %"struct.std::__detail::_List_node_base"* %14, %13
  br i1 %cmp.i, label %if.then47, label %if.else49

if.then47:                                        ; preds = %if.end20
  %call1.i178 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([33 x i8], [33 x i8]* @.str.54, i64 0, i64 0), i64 32)
  br label %if.end56

if.else49:                                        ; preds = %if.end20
  %call1.i180 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([25 x i8], [25 x i8]* @.str.55, i64 0, i64 0), i64 24)
  %_M_size.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %15 = load i64, i64* %_M_size.i.i.i, align 8, !tbaa !59
  %call.i181 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i64 %15)
  %call1.i183 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call.i181, i8* nonnull getelementptr inbounds ([8 x i8], [8 x i8]* @.str.56, i64 0, i64 0), i64 7)
  %it.sroa.0.022.i = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i, align 8, !tbaa !31
  %cmp.i.not23.i = icmp eq %"struct.std::__detail::_List_node_base"* %it.sroa.0.022.i, %13
  br i1 %cmp.i.not23.i, label %_ZNK5adept5Stack10print_gapsERSo.exit, label %for.body.i

for.body.i:                                       ; preds = %if.else49, %for.body.i
  %it.sroa.0.024.i = phi %"struct.std::__detail::_List_node_base"* [ %it.sroa.0.0.i, %for.body.i ], [ %it.sroa.0.022.i, %if.else49 ]
  %_M_storage.i.i17.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.024.i, i64 1
  %16 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i17.i to %"struct.adept::Gap"*
  %start.i = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i17.i to i32*
  %17 = load i32, i32* %start.i, align 4, !tbaa !57
  %call7.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %17)
  %call1.i16.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call7.i, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i64 1)
  %end.i = getelementptr inbounds %"struct.adept::Gap", %"struct.adept::Gap"* %16, i64 0, i32 1
  %18 = load i32, i32* %end.i, align 4, !tbaa !55
  %call10.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %call7.i, i32 %18)
  %call1.i.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call10.i, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %_M_next.i14.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.024.i, i64 0, i32 0
  %it.sroa.0.0.i = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i14.i, align 8, !tbaa !31
  %cmp.i.not.i = icmp eq %"struct.std::__detail::_List_node_base"* %it.sroa.0.0.i, %13
  br i1 %cmp.i.not.i, label %_ZNK5adept5Stack10print_gapsERSo.exit, label %for.body.i, !llvm.loop !73

_ZNK5adept5Stack10print_gapsERSo.exit:            ; preds = %for.body.i, %if.else49
  %call1.i185 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.53, i64 0, i64 0), i64 2)
  br label %if.end56

if.end56:                                         ; preds = %_ZNK5adept5Stack10print_gapsERSo.exit, %if.then47
  %call1.i187 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([24 x i8], [24 x i8]* @.str.57, i64 0, i64 0), i64 23)
  %gradients_initialized_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 10
  %19 = load i8, i8* %gradients_initialized_.i, align 8, !tbaa !42, !range !28
  %tobool.i.not = icmp eq i8 %19, 0
  br i1 %tobool.i.not, label %if.else67, label %if.then59

if.then59:                                        ; preds = %if.end56
  %call1.i189 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([7 x i8], [7 x i8]* @.str.44, i64 0, i64 0), i64 6)
  %20 = load i32, i32* %max_gradient_.i, align 8, !tbaa !66
  %call62 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %20)
  %call1.i192 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call62, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.58, i64 0, i64 0), i64 21)
  br label %if.end72

if.else67:                                        ; preds = %if.end56
  %call1.i196 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([29 x i8], [29 x i8]* @.str.59, i64 0, i64 0), i64 28)
  br label %if.end72

if.end72:                                         ; preds = %if.else67, %if.then59
  %os.sink = phi %"class.std::basic_ostream"* [ %os, %if.else67 ], [ %call62, %if.then59 ]
  %n_allocated_gradients_.i197 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 7
  %21 = load i32, i32* %n_allocated_gradients_.i197, align 4, !tbaa !74
  %call70 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os.sink, i32 %21)
  %call1.i199 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call70, i8* nonnull getelementptr inbounds ([13 x i8], [13 x i8]* @.str.49, i64 0, i64 0), i64 12)
  %call1.i201 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([22 x i8], [22 x i8]* @.str.60, i64 0, i64 0), i64 21)
  %_M_finish.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %22 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !79
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %23 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
  %sub.ptr.lhs.cast.i.i = ptrtoint i32* %22 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint i32* %23 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %24 = lshr exact i64 %sub.ptr.sub.i.i, 2
  %conv.i = trunc i64 %24 to i32
  %call75 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %conv.i)
  %call1.i203 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call75, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.61, i64 0, i64 0), i64 1)
  %_M_finish.i.i204 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %25 = load i32*, i32** %_M_finish.i.i204, align 8, !tbaa !79
  %_M_start.i.i205 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %26 = load i32*, i32** %_M_start.i.i205, align 8, !tbaa !36
  %sub.ptr.lhs.cast.i.i206 = ptrtoint i32* %25 to i64
  %sub.ptr.rhs.cast.i.i207 = ptrtoint i32* %26 to i64
  %sub.ptr.sub.i.i208 = sub i64 %sub.ptr.lhs.cast.i.i206, %sub.ptr.rhs.cast.i.i207
  %27 = lshr exact i64 %sub.ptr.sub.i.i208, 2
  %conv.i209 = trunc i64 %27 to i32
  %call78 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %call75, i32 %conv.i209)
  %call1.i211 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call78, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
  %28 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !79
  %29 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
  %sub.ptr.lhs.cast.i.i214 = ptrtoint i32* %28 to i64
  %sub.ptr.rhs.cast.i.i215 = ptrtoint i32* %29 to i64
  %sub.ptr.sub.i.i216 = sub i64 %sub.ptr.lhs.cast.i.i214, %sub.ptr.rhs.cast.i.i215
  %30 = lshr exact i64 %sub.ptr.sub.i.i216, 2
  %conv.i217 = trunc i64 %30 to i32
  %cmp81 = icmp slt i32 %conv.i217, 11
  br i1 %cmp81, label %land.lhs.true82, label %if.end108

land.lhs.true82:                                  ; preds = %if.end72
  %31 = load i32*, i32** %_M_finish.i.i204, align 8, !tbaa !79
  %32 = load i32*, i32** %_M_start.i.i205, align 8, !tbaa !36
  %sub.ptr.lhs.cast.i.i220 = ptrtoint i32* %31 to i64
  %sub.ptr.rhs.cast.i.i221 = ptrtoint i32* %32 to i64
  %sub.ptr.sub.i.i222 = sub i64 %sub.ptr.lhs.cast.i.i220, %sub.ptr.rhs.cast.i.i221
  %33 = lshr exact i64 %sub.ptr.sub.i.i222, 2
  %conv.i223 = trunc i64 %33 to i32
  %cmp84 = icmp slt i32 %conv.i223, 11
  br i1 %cmp84, label %if.then85, label %if.end108

if.then85:                                        ; preds = %land.lhs.true82
  %call1.i225 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([27 x i8], [27 x i8]* @.str.62, i64 0, i64 0), i64 26)
  %34 = load i32*, i32** %_M_finish.i.i204, align 8, !tbaa !79
  %35 = load i32*, i32** %_M_start.i.i205, align 8, !tbaa !36
  %cmp88255.not = icmp eq i32* %34, %35
  br i1 %cmp88255.not, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %if.then85
  %call1.i227 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([28 x i8], [28 x i8]* @.str.63, i64 0, i64 0), i64 27)
  %36 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !79
  %37 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
  %cmp97249.not = icmp eq i32* %36, %37
  br i1 %cmp97249.not, label %for.cond.cleanup98, label %for.body99

for.body:                                         ; preds = %if.then85, %for.body
  %i.0256 = phi i64 [ %inc, %for.body ], [ 0, %if.then85 ]
  %call1.i229 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %38 = load i32*, i32** %_M_start.i.i205, align 8, !tbaa !36
  %add.ptr.i = getelementptr inbounds i32, i32* %38, i64 %i.0256
  %39 = load i32, i32* %add.ptr.i, align 4, !tbaa !49
  %call92 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %39)
  %inc = add nuw i64 %i.0256, 1
  %40 = load i32*, i32** %_M_finish.i.i204, align 8, !tbaa !79
  %41 = load i32*, i32** %_M_start.i.i205, align 8, !tbaa !36
  %sub.ptr.lhs.cast.i = ptrtoint i32* %40 to i64
  %sub.ptr.rhs.cast.i = ptrtoint i32* %41 to i64
  %sub.ptr.sub.i = sub i64 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = ashr exact i64 %sub.ptr.sub.i, 2
  %cmp88 = icmp ult i64 %inc, %sub.ptr.div.i
  br i1 %cmp88, label %for.body, label %for.cond.cleanup, !llvm.loop !80

for.cond.cleanup98:                               ; preds = %for.body99, %for.cond.cleanup
  %call1.i238 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
  br label %if.end108

for.body99:                                       ; preds = %for.cond.cleanup, %for.body99
  %i94.0250 = phi i64 [ %inc105, %for.body99 ], [ 0, %for.cond.cleanup ]
  %call1.i240 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %42 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
  %add.ptr.i242 = getelementptr inbounds i32, i32* %42, i64 %i94.0250
  %43 = load i32, i32* %add.ptr.i242, align 4, !tbaa !49
  %call103 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %43)
  %inc105 = add nuw i64 %i94.0250, 1
  %44 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !79
  %45 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
  %sub.ptr.lhs.cast.i233 = ptrtoint i32* %44 to i64
  %sub.ptr.rhs.cast.i234 = ptrtoint i32* %45 to i64
  %sub.ptr.sub.i235 = sub i64 %sub.ptr.lhs.cast.i233, %sub.ptr.rhs.cast.i234
  %sub.ptr.div.i236 = ashr exact i64 %sub.ptr.sub.i235, 2
  %cmp97 = icmp ult i64 %inc105, %sub.ptr.div.i236
  br i1 %cmp97, label %for.body99, label %for.cond.cleanup98, !llvm.loop !81

if.end108:                                        ; preds = %for.cond.cleanup98, %land.lhs.true82, %if.end72
  %call1.i244 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os, i8* nonnull getelementptr inbounds ([51 x i8], [51 x i8]* @.str.64, i64 0, i64 0), i64 50)
  ret void
}

; Function Attrs: uwtable mustprogress
define dso_local void @_ZN5adept8internal16StackStorageOrig20grow_operation_stackEi(%"class.adept::internal::StackStorageOrig"* nocapture nonnull dereferenceable(40) %this, i32 %min) local_unnamed_addr #9 align 2 {
entry:
  %n_allocated_operations_ = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %this, i64 0, i32 6
  %0 = load i32, i32* %n_allocated_operations_, align 4, !tbaa !78
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
  %call = tail call noalias nonnull i8* @_Znam(i64 %4) #34
  %5 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 4)
  %6 = extractvalue { i64, i1 } %5, 1
  %7 = extractvalue { i64, i1 } %5, 0
  %8 = select i1 %6, i64 -1, i64 %7
  %call6 = tail call noalias nonnull i8* @_Znam(i64 %8) #34
  %multiplier_ = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %this, i64 0, i32 1
  %9 = bitcast double** %multiplier_ to i8**
  %10 = load i8*, i8** %9, align 8, !tbaa !40
  %n_operations_ = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %this, i64 0, i32 5
  %11 = load i32, i32* %n_operations_, align 8, !tbaa !77
  %conv7 = sext i32 %11 to i64
  %mul8 = shl nsw i64 %conv7, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 %call, i8* align 8 %10, i64 %mul8, i1 false)
  %index_ = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %this, i64 0, i32 2
  %12 = bitcast i32** %index_ to i8**
  %13 = load i8*, i8** %12, align 8, !tbaa !41
  %mul11 = shl nsw i64 %conv7, 2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call6, i8* align 4 %13, i64 %mul11, i1 false)
  %isnull = icmp eq i8* %10, null
  %14 = bitcast i8* %13 to i32*
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  tail call void @_ZdaPv(i8* nonnull %10) #32
  %.pr = load i32*, i32** %index_, align 8, !tbaa !41
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  %15 = phi i32* [ %.pr, %delete.notnull ], [ %14, %entry ]
  %isnull14 = icmp eq i32* %15, null
  br i1 %isnull14, label %delete.end16, label %delete.notnull15

delete.notnull15:                                 ; preds = %delete.end
  %16 = bitcast i32* %15 to i8*
  tail call void @_ZdaPv(i8* %16) #32
  br label %delete.end16

delete.end16:                                     ; preds = %delete.notnull15, %delete.end
  store i8* %call, i8** %9, align 8, !tbaa !40
  store i8* %call6, i8** %12, align 8, !tbaa !41
  store i32 %new_size.0, i32* %n_allocated_operations_, align 4, !tbaa !78
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi(%"class.adept::internal::StackStorageOrig"* nocapture nonnull dereferenceable(40) %this, i32 %min) local_unnamed_addr #6 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %n_allocated_statements_ = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %this, i64 0, i32 4
  %0 = load i32, i32* %n_allocated_statements_, align 4, !tbaa !76
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
  %call = tail call noalias nonnull i8* @_Znam(i64 %4) #34
  %5 = bitcast %"class.adept::internal::StackStorageOrig"* %this to i8**
  %6 = load i8*, i8** %5, align 8, !tbaa !38
  %n_statements_ = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %this, i64 0, i32 3
  %7 = load i32, i32* %n_statements_, align 8, !tbaa !43
  %conv5 = sext i32 %7 to i64
  %mul6 = shl nsw i64 %conv5, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call, i8* align 4 %6, i64 %mul6, i1 false)
  %isnull = icmp eq i8* %6, null
  br i1 %isnull, label %delete.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  tail call void @_ZdaPv(i8* nonnull %6) #32
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  store i8* %call, i8** %5, align 8, !tbaa !38
  store i32 %new_size.0, i32* %n_allocated_statements_, align 4, !tbaa !76
  ret void
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_gemmEbcciiidPKdiS2_idPdi(i1 zeroext %Order, i8 signext %TransA, i8 signext %TransB, i32 %M, i32 %N, i32 %K, double %alpha, double* nocapture readnone %A, i32 %lda, double* nocapture readnone %B, i32 %ldb, double %beta, double* nocapture readnone %C, i32 %ldc) local_unnamed_addr #12 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 73, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(73) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(73) getelementptr inbounds ([74 x i8], [74 x i8]* @.str.65, i64 0, i64 0), i64 73, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept9exceptionD2Ev(%"class.adept::exception"* nonnull dereferenceable(40) %this) unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !20
  %_M_p.i.i.i.i = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !14
  %2 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 2
  %arraydecay.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #30
  ret void
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_gemmEbcciiifPKfiS2_ifPfi(i1 zeroext %Order, i8 signext %TransA, i8 signext %TransB, i32 %M, i32 %N, i32 %K, float %alpha, float* nocapture readnone %A, i32 %lda, float* nocapture readnone %B, i32 %ldb, float %beta, float* nocapture readnone %C, i32 %ldc) local_unnamed_addr #12 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 73, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(73) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(73) getelementptr inbounds ([74 x i8], [74 x i8]* @.str.65, i64 0, i64 0), i64 73, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_gemvEbciidPKdiS2_idPdi(i1 zeroext %Order, i8 signext %TransA, i32 %M, i32 %N, double %alpha, double* nocapture readnone %A, i32 %lda, double* nocapture readnone %X, i32 %incX, double %beta, double* nocapture readnone %Y, i32 %incY) local_unnamed_addr #12 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 73, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(73) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(73) getelementptr inbounds ([74 x i8], [74 x i8]* @.str.66, i64 0, i64 0), i64 73, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_gemvEbciifPKfiS2_ifPfi(i1 zeroext %Order, i8 signext %TransA, i32 %M, i32 %N, float %alpha, float* nocapture readnone %A, i32 %lda, float* nocapture readnone %X, i32 %incX, float %beta, float* nocapture readnone %Y, i32 %incY) local_unnamed_addr #12 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 73, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(73) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(73) getelementptr inbounds ([74 x i8], [74 x i8]* @.str.66, i64 0, i64 0), i64 73, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_symmEbcciidPKdiS2_idPdi(i1 zeroext %Order, i8 signext %Side, i8 signext %Uplo, i32 %M, i32 %N, double %alpha, double* nocapture readnone %A, i32 %lda, double* nocapture readnone %B, i32 %ldb, double %beta, double* nocapture readnone %C, i32 %ldc) local_unnamed_addr #12 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 83, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(83) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(83) getelementptr inbounds ([84 x i8], [84 x i8]* @.str.67, i64 0, i64 0), i64 83, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_symmEbcciifPKfiS2_ifPfi(i1 zeroext %Order, i8 signext %Side, i8 signext %Uplo, i32 %M, i32 %N, float %alpha, float* nocapture readnone %A, i32 %lda, float* nocapture readnone %B, i32 %ldb, float %beta, float* nocapture readnone %C, i32 %ldc) local_unnamed_addr #12 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 83, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(83) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(83) getelementptr inbounds ([84 x i8], [84 x i8]* @.str.67, i64 0, i64 0), i64 83, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_symvEbcidPKdiS2_idPdi(i1 zeroext %Order, i8 signext %Uplo, i32 %N, double %alpha, double* nocapture readnone %A, i32 %lda, double* nocapture readnone %X, i32 %incX, double %beta, double* nocapture readnone %Y, i32 %incY) local_unnamed_addr #12 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 83, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(83) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(83) getelementptr inbounds ([84 x i8], [84 x i8]* @.str.68, i64 0, i64 0), i64 83, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_symvEbcifPKfiS2_ifPfi(i1 zeroext %Order, i8 signext %Uplo, i32 %N, float %alpha, float* nocapture readnone %A, i32 %lda, float* nocapture readnone %X, i32 %incX, float %beta, float* nocapture readnone %Y, i32 %incY) local_unnamed_addr #12 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 83, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(83) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(83) getelementptr inbounds ([84 x i8], [84 x i8]* @.str.68, i64 0, i64 0), i64 83, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_gbmvEbciiiidPKdiS2_idPdi(i1 zeroext %Order, i8 signext %TransA, i32 %M, i32 %N, i32 %KL, i32 %KU, double %alpha, double* nocapture readnone %A, i32 %lda, double* nocapture readnone %X, i32 %incX, double %beta, double* nocapture readnone %Y, i32 %incY) local_unnamed_addr #12 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 78, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(78) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(78) getelementptr inbounds ([79 x i8], [79 x i8]* @.str.69, i64 0, i64 0), i64 78, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_gbmvEbciiiifPKfiS2_ifPfi(i1 zeroext %Order, i8 signext %TransA, i32 %M, i32 %N, i32 %KL, i32 %KU, float %alpha, float* nocapture readnone %A, i32 %lda, float* nocapture readnone %X, i32 %incX, float %beta, float* nocapture readnone %Y, i32 %incY) local_unnamed_addr #12 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 78, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(78) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(78) getelementptr inbounds ([79 x i8], [79 x i8]* @.str.69, i64 0, i64 0), i64 78, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept3invIfEENS_5ArrayILi2ET_Lb0EEERKS3_(%"class.adept::Array"* noalias sret(%"class.adept::Array") align 8 %agg.result, %"class.adept::Array"* nonnull align 8 dereferenceable(32) %A) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept3invIfLNS_8internal21SymmMatrixOrientationE0EEENS_13SpecialMatrixIT_NS1_10SymmEngineIXT0_EEELb0EEERKS7_(%"class.adept::SpecialMatrix"* noalias sret(%"class.adept::SpecialMatrix") align 8 %agg.result, %"class.adept::SpecialMatrix"* nonnull align 8 dereferenceable(24) %A) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept3invIfLNS_8internal21SymmMatrixOrientationE1EEENS_13SpecialMatrixIT_NS1_10SymmEngineIXT0_EEELb0EEERKS7_(%"class.adept::SpecialMatrix.9"* noalias sret(%"class.adept::SpecialMatrix.9") align 8 %agg.result, %"class.adept::SpecialMatrix.9"* nonnull align 8 dereferenceable(24) %A) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept3invIdEENS_5ArrayILi2ET_Lb0EEERKS3_(%"class.adept::Array.12"* noalias sret(%"class.adept::Array.12") align 8 %agg.result, %"class.adept::Array.12"* nonnull align 8 dereferenceable(32) %A) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept3invIdLNS_8internal21SymmMatrixOrientationE0EEENS_13SpecialMatrixIT_NS1_10SymmEngineIXT0_EEELb0EEERKS7_(%"class.adept::SpecialMatrix.15"* noalias sret(%"class.adept::SpecialMatrix.15") align 8 %agg.result, %"class.adept::SpecialMatrix.15"* nonnull align 8 dereferenceable(24) %A) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept3invIdLNS_8internal21SymmMatrixOrientationE1EEENS_13SpecialMatrixIT_NS1_10SymmEngineIXT0_EEELb0EEERKS7_(%"class.adept::SpecialMatrix.17"* noalias sret(%"class.adept::SpecialMatrix.17") align 8 %agg.result, %"class.adept::SpecialMatrix.17"* nonnull align 8 dereferenceable(24) %A) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: nofree norecurse nounwind uwtable
define dso_local void @_ZNK5adept5Stack23jacobian_forward_kernelEPd(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, double* noalias nocapture %gradient_multipass_b) local_unnamed_addr #13 align 2 {
entry:
  %n_statements_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %0 = load i32, i32* %n_statements_, align 8, !tbaa !43
  %cmp45 = icmp sgt i32 %0, 1
  br i1 %cmp45, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %statement_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %1 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !38
  %index_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %multiplier_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %wide.trip.count = zext i32 %0 to i64
  %end_plus_one.phi.trans.insert = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %1, i64 0, i32 1
  %.pre = load i32, i32* %end_plus_one.phi.trans.insert, align 4, !tbaa !48
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.cond.cleanup8, %entry
  ret void

for.body:                                         ; preds = %for.cond.cleanup8, %for.body.lr.ph
  %2 = phi i32 [ %.pre, %for.body.lr.ph ], [ %3, %for.cond.cleanup8 ]
  %indvars.iv47 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next48, %for.cond.cleanup8 ]
  %end_plus_one6 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %1, i64 %indvars.iv47, i32 1
  %3 = load i32, i32* %end_plus_one6, align 4, !tbaa !48
  %cmp742 = icmp slt i32 %2, %3
  br i1 %cmp742, label %for.body9.lr.ph, label %for.cond.cleanup8

for.body9.lr.ph:                                  ; preds = %for.body
  %4 = load i32*, i32** %index_, align 8, !tbaa !41
  %5 = load double*, double** %multiplier_, align 8, !tbaa !40
  %6 = sext i32 %2 to i64
  %7 = sext i32 %3 to i64
  br label %for.body9

for.cond.cleanup8:                                ; preds = %for.body9, %for.body
  %a.sroa.0.0.lcssa = phi <2 x double> [ zeroinitializer, %for.body ], [ %add.i.i, %for.body9 ]
  %index = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %1, i64 %indvars.iv47, i32 0
  %8 = load i32, i32* %index, align 4, !tbaa !44
  %mul15 = shl nsw i32 %8, 1
  %idx.ext16 = sext i32 %mul15 to i64
  %add.ptr17 = getelementptr inbounds double, double* %gradient_multipass_b, i64 %idx.ext16
  %9 = bitcast double* %add.ptr17 to <2 x double>*
  store <2 x double> %a.sroa.0.0.lcssa, <2 x double>* %9, align 16, !tbaa !15, !alias.scope !82
  %indvars.iv.next48 = add nuw nsw i64 %indvars.iv47, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next48, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !85

for.body9:                                        ; preds = %for.body9, %for.body9.lr.ph
  %indvars.iv = phi i64 [ %6, %for.body9.lr.ph ], [ %indvars.iv.next, %for.body9 ]
  %a.sroa.0.043 = phi <2 x double> [ zeroinitializer, %for.body9.lr.ph ], [ %add.i.i, %for.body9 ]
  %arrayidx11 = getelementptr inbounds i32, i32* %4, i64 %indvars.iv
  %10 = load i32, i32* %arrayidx11, align 4, !tbaa !49
  %mul = shl nsw i32 %10, 1
  %idx.ext = sext i32 %mul to i64
  %add.ptr = getelementptr inbounds double, double* %gradient_multipass_b, i64 %idx.ext
  %11 = bitcast double* %add.ptr to <2 x double>*
  %12 = load <2 x double>, <2 x double>* %11, align 16, !tbaa !15
  %arrayidx13 = getelementptr inbounds double, double* %5, i64 %indvars.iv
  %13 = load double, double* %arrayidx13, align 8, !tbaa !46
  %vecinit.i.i = insertelement <2 x double> undef, double %13, i32 0
  %vecinit1.i.i = shufflevector <2 x double> %vecinit.i.i, <2 x double> undef, <2 x i32> zeroinitializer
  %mul.i.i = fmul fast <2 x double> %vecinit1.i.i, %12
  %add.i.i = fadd fast <2 x double> %mul.i.i, %a.sroa.0.043
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %exitcond.not3 = icmp eq i64 %indvars.iv.next, %7
  br i1 %exitcond.not3, label %for.cond.cleanup8, label %for.body9, !llvm.loop !86
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, double* noalias nocapture %gradient_multipass_b, i32 %n_extra) local_unnamed_addr #14 align 2 {
entry:
  %a = alloca %"struct.adept::Block", align 8
  %a76 = bitcast %"struct.adept::Block"* %a to i8*
  %n_statements_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %0 = load i32, i32* %n_statements_, align 8, !tbaa !43
  %cmp70 = icmp sgt i32 %0, 1
  br i1 %cmp70, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %entry
  %statement_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %1 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !38
  %cmp1163 = icmp sgt i32 %n_extra, 0
  %multiplier_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %index_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %2 = zext i32 %n_extra to i64
  %3 = shl nuw nsw i64 %2, 3
  %wide.trip.count83 = zext i32 %0 to i64
  %end_plus_one.phi.trans.insert = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %1, i64 0, i32 1
  %.pre = load i32, i32* %end_plus_one.phi.trans.insert, align 4, !tbaa !48
  %min.iters.check = icmp ult i32 %n_extra, 4
  %n.vec = and i64 %2, 4294967292
  %cmp.n = icmp eq i64 %n.vec, %2
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.cond.cleanup28, %entry
  ret void

for.body:                                         ; preds = %for.cond.cleanup28, %for.body.lr.ph
  %4 = phi i32 [ %.pre, %for.body.lr.ph ], [ %5, %for.cond.cleanup28 ]
  %indvars.iv80 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next81, %for.cond.cleanup28 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %a76) #30
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %a76, i8 0, i64 16, i1 false) #30
  %end_plus_one6 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %1, i64 %indvars.iv80, i32 1
  %5 = load i32, i32* %end_plus_one6, align 4, !tbaa !48
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
  %8 = load i32, i32* %index, align 4, !tbaa !44
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
  %11 = load double*, double** %multiplier_, align 8, !tbaa !40
  %arrayidx15 = getelementptr inbounds double, double* %11, i64 %indvars.iv73
  %12 = load double, double* %arrayidx15, align 8, !tbaa !46
  %13 = load i32*, i32** %index_, align 8, !tbaa !41
  %arrayidx17 = getelementptr inbounds i32, i32* %13, i64 %indvars.iv73
  %14 = load i32, i32* %arrayidx17, align 4, !tbaa !49
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
  %wide.load = load <2 x double>, <2 x double>* %18, align 8, !tbaa !46
  %19 = getelementptr inbounds double, double* %17, i64 2
  %20 = bitcast double* %19 to <2 x double>*
  %wide.load5 = load <2 x double>, <2 x double>* %20, align 8, !tbaa !46
  %21 = fmul fast <2 x double> %wide.load, %broadcast.splat
  %22 = fmul fast <2 x double> %wide.load5, %broadcast.splat7
  %23 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %a, i64 0, i32 0, i64 %index4
  %24 = bitcast double* %23 to <2 x double>*
  %wide.load8 = load <2 x double>, <2 x double>* %24, align 8, !tbaa !46
  %25 = getelementptr inbounds double, double* %23, i64 2
  %26 = bitcast double* %25 to <2 x double>*
  %wide.load9 = load <2 x double>, <2 x double>* %26, align 8, !tbaa !46
  %27 = fadd fast <2 x double> %wide.load8, %21
  %28 = fadd fast <2 x double> %wide.load9, %22
  %29 = bitcast double* %23 to <2 x double>*
  store <2 x double> %27, <2 x double>* %29, align 8, !tbaa !46
  %30 = bitcast double* %25 to <2 x double>*
  store <2 x double> %28, <2 x double>* %30, align 8, !tbaa !46
  %index.next = add i64 %index4, 4
  %31 = icmp eq i64 %index.next, %n.vec
  br i1 %31, label %middle.block, label %vector.body, !llvm.loop !87

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %for.cond.cleanup12, label %for.body13.preheader

for.body13.preheader:                             ; preds = %for.body13.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %for.body13.lr.ph ], [ %n.vec, %middle.block ]
  br label %for.body13

for.cond.cleanup12:                               ; preds = %for.body13, %middle.block, %for.cond10.preheader
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, 1
  %exitcond.not3 = icmp eq i64 %indvars.iv.next74, %7
  br i1 %exitcond.not3, label %for.cond26.preheader, label %for.cond10.preheader, !llvm.loop !89

for.body13:                                       ; preds = %for.body13.preheader, %for.body13
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body13 ], [ %indvars.iv.ph, %for.body13.preheader ]
  %32 = add nsw i64 %indvars.iv, %15
  %arrayidx19 = getelementptr inbounds double, double* %gradient_multipass_b, i64 %32
  %33 = load double, double* %arrayidx19, align 8, !tbaa !46
  %mul20 = fmul fast double %33, %12
  %arrayidx.i62 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %a, i64 0, i32 0, i64 %indvars.iv
  %34 = load double, double* %arrayidx.i62, align 8, !tbaa !46
  %add21 = fadd fast double %34, %mul20
  store double %add21, double* %arrayidx.i62, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %for.cond.cleanup12, label %for.body13, !llvm.loop !90

for.cond.cleanup28:                               ; preds = %for.body29.lr.ph, %for.cond26.preheader
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %a76) #30
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %for.cond.cleanup, label %for.body, !llvm.loop !91
}

; Function Attrs: uwtable
define dso_local void @_ZNK5adept5Stack23jacobian_forward_openmpEPd(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, double* nocapture %jacobian_out) local_unnamed_addr #15 align 2 {
entry:
  %result.i = alloca double*, align 8
  %_M_finish.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %0 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !79
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %1 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
  %sub.ptr.lhs.cast.i.i = ptrtoint i32* %0 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint i32* %1 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %2 = lshr exact i64 %sub.ptr.sub.i.i, 2
  %conv.i = trunc i64 %2 to i32
  %sub = add nsw i32 %conv.i, 1
  %div = sdiv i32 %sub, 2
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %3 = load i32, i32* %max_gradient_, align 8, !tbaa !66
  %mul = shl i32 %3, 1
  %4 = bitcast double** %result.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  %5 = bitcast double** %result.i to i8**
  %conv1.i = sext i32 %mul to i64
  %mul.i111 = shl nsw i64 %conv1.i, 3
  %call2.i = call i32 @posix_memalign(i8** nonnull %5, i64 16, i64 %mul.i111) #30
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit, label %if.then4.i

if.then4.i:                                       ; preds = %entry
  %exception.i = call i8* @__cxa_allocate_exception(i64 8) #30
  %6 = bitcast i8* %exception.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt9bad_alloc, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  call void @__cxa_throw(i8* %exception.i, i8* bitcast (i8** @_ZTISt9bad_alloc to i8*), i8* bitcast (void (%"class.std::bad_alloc"*)* @_ZNSt9bad_allocD1Ev to i8*)) #31
  unreachable

_ZN5adept8internal13alloc_alignedIdEEPT_i.exit:   ; preds = %entry
  %7 = load double*, double** %result.i, align 8, !tbaa !29
  %8 = bitcast double* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %cmp123 = icmp sgt i32 %conv.i, 0
  br i1 %cmp123, label %for.body.lr.ph, label %for.end55

for.body.lr.ph:                                   ; preds = %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit
  %sub5 = add nsw i32 %div, -1
  %9 = and i32 %conv.i, -2147483647
  %cmp7 = icmp eq i32 %9, 1
  %cmp9112 = icmp sgt i32 %3, 0
  %n_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %10 = load i32, i32* %n_statements_.i, align 8, !tbaa !43, !noalias !92
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
  %17 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
  %18 = icmp ugt i32 %spec.select, 1
  %umax = select i1 %18, i32 %spec.select, i32 1
  %wide.trip.count = zext i32 %umax to i64
  br label %for.body15

for.cond.cleanup14:                               ; preds = %for.body15
  call void @llvm.experimental.noalias.scope.decl(metadata !92)
  br i1 %cmp45.i, label %for.body.lr.ph.i, label %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.cleanup14
  %19 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i, align 8, !tbaa !38, !noalias !92
  %end_plus_one.phi.trans.insert.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %19, i64 0, i32 1
  %.pre.i = load i32, i32* %end_plus_one.phi.trans.insert.i, align 4, !tbaa !48, !noalias !92
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.cleanup8.i, %for.body.lr.ph.i
  %20 = phi i32 [ %.pre.i, %for.body.lr.ph.i ], [ %21, %for.cond.cleanup8.i ]
  %indvars.iv47.i = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next48.i, %for.cond.cleanup8.i ]
  %end_plus_one6.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %19, i64 %indvars.iv47.i, i32 1
  %21 = load i32, i32* %end_plus_one6.i, align 4, !tbaa !48, !noalias !92
  %cmp742.i = icmp slt i32 %20, %21
  br i1 %cmp742.i, label %for.body9.lr.ph.i, label %for.cond.cleanup8.i

for.body9.lr.ph.i:                                ; preds = %for.body.i
  %22 = load i32*, i32** %index_.i, align 8, !tbaa !41, !noalias !92
  %23 = load double*, double** %multiplier_.i, align 8, !tbaa !40, !noalias !92
  %24 = sext i32 %20 to i64
  %25 = sext i32 %21 to i64
  br label %for.body9.i

for.cond.cleanup8.i:                              ; preds = %for.body9.i, %for.body.i
  %a.sroa.0.0.lcssa.i = phi <2 x double> [ zeroinitializer, %for.body.i ], [ %add.i.i.i, %for.body9.i ]
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %19, i64 %indvars.iv47.i, i32 0
  %26 = load i32, i32* %index.i, align 4, !tbaa !44, !noalias !92
  %mul15.i = shl nsw i32 %26, 1
  %idx.ext16.i = sext i32 %mul15.i to i64
  %add.ptr17.i = getelementptr inbounds double, double* %7, i64 %idx.ext16.i
  %27 = bitcast double* %add.ptr17.i to <2 x double>*
  store <2 x double> %a.sroa.0.0.lcssa.i, <2 x double>* %27, align 16, !tbaa !15, !alias.scope !95
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next48.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit, label %for.body.i, !llvm.loop !85

for.body9.i:                                      ; preds = %for.body9.i, %for.body9.lr.ph.i
  %indvars.iv.i = phi i64 [ %24, %for.body9.lr.ph.i ], [ %indvars.iv.next.i, %for.body9.i ]
  %a.sroa.0.043.i = phi <2 x double> [ zeroinitializer, %for.body9.lr.ph.i ], [ %add.i.i.i, %for.body9.i ]
  %arrayidx11.i = getelementptr inbounds i32, i32* %22, i64 %indvars.iv.i
  %28 = load i32, i32* %arrayidx11.i, align 4, !tbaa !49, !noalias !92
  %mul.i = shl nsw i32 %28, 1
  %idx.ext.i = sext i32 %mul.i to i64
  %add.ptr.i110 = getelementptr inbounds double, double* %7, i64 %idx.ext.i
  %29 = bitcast double* %add.ptr.i110 to <2 x double>*
  %30 = load <2 x double>, <2 x double>* %29, align 16, !tbaa !15, !alias.scope !92
  %arrayidx13.i = getelementptr inbounds double, double* %23, i64 %indvars.iv.i
  %31 = load double, double* %arrayidx13.i, align 8, !tbaa !46, !noalias !92
  %vecinit.i.i.i = insertelement <2 x double> undef, double %31, i32 0
  %vecinit1.i.i.i = shufflevector <2 x double> %vecinit.i.i.i, <2 x double> undef, <2 x i32> zeroinitializer
  %mul.i.i.i = fmul fast <2 x double> %vecinit1.i.i.i, %30
  %add.i.i.i = fadd fast <2 x double> %mul.i.i.i, %a.sroa.0.043.i
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1
  %exitcond126.not = icmp eq i64 %indvars.iv.next.i, %25
  br i1 %exitcond126.not, label %for.cond.cleanup8.i, label %for.body9.i, !llvm.loop !86

_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit: ; preds = %for.cond.cleanup8.i, %for.cond.cleanup14
  %32 = load i32*, i32** %_M_finish.i.i102, align 8, !tbaa !79
  %33 = load i32*, i32** %_M_start.i.i103, align 8, !tbaa !36
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
  %37 = load i32, i32* %add.ptr.i109, align 4, !tbaa !49
  %mul18 = shl nsw i32 %37, 1
  %38 = trunc i64 %indvars.iv to i32
  %add19 = add nsw i32 %mul18, %38
  %idxprom20 = sext i32 %add19 to i64
  %arrayidx21 = getelementptr inbounds double, double* %7, i64 %idxprom20
  store double 1.000000e+00, double* %arrayidx21, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup14, label %for.body15, !llvm.loop !98

for.cond31.preheader:                             ; preds = %for.cond.cleanup33, %for.cond31.preheader.lr.ph
  %indvars.iv135 = phi i64 [ 0, %for.cond31.preheader.lr.ph ], [ %indvars.iv.next136, %for.cond.cleanup33 ]
  %add.ptr.i = getelementptr inbounds i32, i32* %33, i64 %indvars.iv135
  %39 = load i32, i32* %add.ptr.i, align 4, !tbaa !49
  %mul37 = shl nsw i32 %39, 1
  %40 = sext i32 %mul37 to i64
  br label %for.body34

for.cond.cleanup28:                               ; preds = %for.cond.cleanup33, %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit
  %indvars.iv.next141 = add nuw nsw i64 %indvars.iv140, 1
  %exitcond145.not = icmp eq i64 %indvars.iv.next141, %wide.trip.count144
  br i1 %exitcond145.not, label %for.end55, label %for.body, !llvm.loop !99

for.cond.cleanup33:                               ; preds = %for.body34
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %for.cond.cleanup28, label %for.cond31.preheader, !llvm.loop !100

for.body34:                                       ; preds = %for.body34, %for.cond31.preheader
  %indvars.iv127 = phi i64 [ 0, %for.cond31.preheader ], [ %indvars.iv.next128, %for.body34 ]
  %41 = add nsw i64 %indvars.iv127, %40
  %arrayidx40 = getelementptr inbounds double, double* %7, i64 %41
  %42 = load double, double* %arrayidx40, align 8, !tbaa !46
  %43 = add nuw nsw i64 %indvars.iv127, %16
  %44 = mul nsw i64 %43, %35
  %45 = add nsw i64 %44, %indvars.iv135
  %arrayidx46 = getelementptr inbounds double, double* %jacobian_out, i64 %45
  store double %42, double* %arrayidx46, align 8, !tbaa !46
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1
  %exitcond134.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count
  br i1 %exitcond134.not, label %for.cond.cleanup33, label %for.body34, !llvm.loop !101

for.end55:                                        ; preds = %for.cond.cleanup28, %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit
  call void @free(i8* %8) #30
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack16jacobian_forwardEPd(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, double* nocapture %jacobian_out) local_unnamed_addr #15 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %result.i = alloca double*, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %0 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !29
  %_M_finish.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %1 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !29
  %cmp.i.i = icmp eq i32* %0, %1
  br i1 %cmp.i.i, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %_M_start.i.i184 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %2 = load i32*, i32** %_M_start.i.i184, align 8, !tbaa !29
  %_M_finish.i.i185 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %3 = load i32*, i32** %_M_finish.i.i185, align 8, !tbaa !29
  %cmp.i.i186 = icmp eq i32* %2, %3
  br i1 %cmp.i.i186, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %4 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #30
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %6 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !12
  %7 = bitcast %union.anon* %5 to i8*
  %8 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #30
  store i64 79, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i230 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.then
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i230, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %9 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %9, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(79) %call5.i.i.i10.i230, i8* nonnull align 1 dereferenceable(79) getelementptr inbounds ([80 x i8], [80 x i8]* @.str.71, i64 0, i64 0), i64 79, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %9, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i230, i64 %9
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #30
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %10 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %11 = getelementptr inbounds i8, i8* %exception, i64 24
  %12 = bitcast i8* %message_.i.i.i to i8**
  store i8* %11, i8** %12, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i.i231 = getelementptr inbounds i8, i8* %exception, i64 16
  %13 = bitcast i8* %_M_string_length.i.i.i.i.i.i231 to i64*
  store i64 0, i64* %13, align 8, !tbaa !8
  store i8 0, i8* %11, align 1, !tbaa !15
  %14 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept41dependents_or_independents_not_identifiedE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %14, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %10, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont5 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %15 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %14, align 8, !tbaa !20
  %16 = load i8*, i8** %12, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %16, %11
  br i1 %cmp.i.i.i.i.i, label %lpad4.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %16) #30
  br label %lpad4.body

invoke.cont5:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept41dependents_or_independents_not_identifiedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad4.body.thread

ehcleanup.thread:                                 ; preds = %if.then
  %17 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #30
  br label %cleanup.action

lpad4.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %18 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %18) #30
  %19 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %19, %7
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad4.body
  call void @_ZdlPv(i8* %19) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #30
  br label %cleanup.action

lpad4.body.thread:                                ; preds = %invoke.cont5
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i299 = icmp eq i8* %21, %7
  br i1 %cmp.i.i.i299, label %ehcleanup.thread304, label %if.then.i.i

ehcleanup.thread304:                              ; preds = %lpad4.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad4.body.thread
  call void @_ZdlPv(i8* %21) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad4.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn247 = phi { i8*, i32 } [ %17, %ehcleanup.thread ], [ %15, %ehcleanup ], [ %15, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

if.end:                                           ; preds = %lor.lhs.false
  %sub.ptr.lhs.cast.i.i234 = ptrtoint i32* %1 to i64
  %sub.ptr.rhs.cast.i.i235 = ptrtoint i32* %0 to i64
  %sub.ptr.sub.i.i236 = sub i64 %sub.ptr.lhs.cast.i.i234, %sub.ptr.rhs.cast.i.i235
  %22 = lshr exact i64 %sub.ptr.sub.i.i236, 2
  %conv.i237 = trunc i64 %22 to i32
  %div = sdiv i32 %conv.i237, 2
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %23 = load i32, i32* %max_gradient_, align 8, !tbaa !66
  %mul = shl i32 %23, 1
  %24 = bitcast double** %result.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #30
  %25 = bitcast double** %result.i to i8**
  %conv1.i = sext i32 %mul to i64
  %mul.i229 = shl nsw i64 %conv1.i, 3
  %call2.i = call i32 @posix_memalign(i8** nonnull %25, i64 16, i64 %mul.i229) #30
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.end
  %exception.i = call i8* @__cxa_allocate_exception(i64 8) #30
  %26 = bitcast i8* %exception.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt9bad_alloc, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %26, align 8, !tbaa !20
  call void @__cxa_throw(i8* %exception.i, i8* bitcast (i8** @_ZTISt9bad_alloc to i8*), i8* bitcast (void (%"class.std::bad_alloc"*)* @_ZNSt9bad_allocD1Ev to i8*)) #31
  unreachable

_ZN5adept8internal13alloc_alignedIdEEPT_i.exit:   ; preds = %if.end
  %27 = load double*, double** %result.i, align 8, !tbaa !29
  %28 = bitcast double* %27 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #30
  %cmp268 = icmp sgt i32 %conv.i237, 1
  br i1 %cmp268, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit
  %cmp14257 = icmp sgt i32 %23, 0
  %n_statements_.i213 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %29 = load i32, i32* %n_statements_.i213, align 8, !tbaa !43, !noalias !102
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
  %35 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
  %add.ptr.i212 = getelementptr inbounds i32, i32* %35, i64 %34
  %36 = load i32, i32* %add.ptr.i212, align 4, !tbaa !49
  %mul24 = shl nsw i32 %36, 1
  %idxprom26 = sext i32 %mul24 to i64
  %arrayidx27 = getelementptr inbounds double, double* %27, i64 %idxprom26
  store double 1.000000e+00, double* %arrayidx27, align 8, !tbaa !46
  %37 = or i64 %34, 1
  %add.ptr.i212.c = getelementptr inbounds i32, i32* %35, i64 %37
  %38 = load i32, i32* %add.ptr.i212.c, align 4, !tbaa !49
  %mul24.c = shl nsw i32 %38, 1
  %add25.c = or i32 %mul24.c, 1
  %idxprom26.c = sext i32 %add25.c to i64
  %arrayidx27.c = getelementptr inbounds double, double* %27, i64 %idxprom26.c
  store double 1.000000e+00, double* %arrayidx27.c, align 8, !tbaa !46
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  br i1 %cmp45.i, label %for.body.lr.ph.i219, label %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit

for.body.lr.ph.i219:                              ; preds = %for.cond18.preheader
  %39 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i214, align 8, !tbaa !38, !noalias !102
  %end_plus_one.phi.trans.insert.i217 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %39, i64 0, i32 1
  %.pre.i218 = load i32, i32* %end_plus_one.phi.trans.insert.i217, align 4, !tbaa !48, !noalias !102
  br label %for.body.i221

for.body.i221:                                    ; preds = %for.cond.cleanup8.i, %for.body.lr.ph.i219
  %40 = phi i32 [ %.pre.i218, %for.body.lr.ph.i219 ], [ %41, %for.cond.cleanup8.i ]
  %indvars.iv47.i = phi i64 [ 1, %for.body.lr.ph.i219 ], [ %indvars.iv.next48.i, %for.cond.cleanup8.i ]
  %end_plus_one6.i220 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %39, i64 %indvars.iv47.i, i32 1
  %41 = load i32, i32* %end_plus_one6.i220, align 4, !tbaa !48, !noalias !102
  %cmp742.i = icmp slt i32 %40, %41
  br i1 %cmp742.i, label %for.body9.lr.ph.i, label %for.cond.cleanup8.i

for.body9.lr.ph.i:                                ; preds = %for.body.i221
  %42 = load i32*, i32** %index_.i215, align 8, !tbaa !41, !noalias !102
  %43 = load double*, double** %multiplier_.i216, align 8, !tbaa !40, !noalias !102
  %44 = sext i32 %40 to i64
  %45 = sext i32 %41 to i64
  br label %for.body9.i

for.cond.cleanup8.i:                              ; preds = %for.body9.i, %for.body.i221
  %a.sroa.0.0.lcssa.i = phi <2 x double> [ zeroinitializer, %for.body.i221 ], [ %add.i.i.i, %for.body9.i ]
  %index.i222 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %39, i64 %indvars.iv47.i, i32 0
  %46 = load i32, i32* %index.i222, align 4, !tbaa !44, !noalias !102
  %mul15.i = shl nsw i32 %46, 1
  %idx.ext16.i = sext i32 %mul15.i to i64
  %add.ptr17.i = getelementptr inbounds double, double* %27, i64 %idx.ext16.i
  %47 = bitcast double* %add.ptr17.i to <2 x double>*
  store <2 x double> %a.sroa.0.0.lcssa.i, <2 x double>* %47, align 16, !tbaa !15, !alias.scope !105
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1
  %exitcond.not.i223 = icmp eq i64 %indvars.iv.next48.i, %wide.trip.count.i
  br i1 %exitcond.not.i223, label %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit, label %for.body.i221, !llvm.loop !85

for.body9.i:                                      ; preds = %for.body9.i, %for.body9.lr.ph.i
  %indvars.iv.i224 = phi i64 [ %44, %for.body9.lr.ph.i ], [ %indvars.iv.next.i227, %for.body9.i ]
  %a.sroa.0.043.i = phi <2 x double> [ zeroinitializer, %for.body9.lr.ph.i ], [ %add.i.i.i, %for.body9.i ]
  %arrayidx11.i = getelementptr inbounds i32, i32* %42, i64 %indvars.iv.i224
  %48 = load i32, i32* %arrayidx11.i, align 4, !tbaa !49, !noalias !102
  %mul.i225 = shl nsw i32 %48, 1
  %idx.ext.i = sext i32 %mul.i225 to i64
  %add.ptr.i226 = getelementptr inbounds double, double* %27, i64 %idx.ext.i
  %49 = bitcast double* %add.ptr.i226 to <2 x double>*
  %50 = load <2 x double>, <2 x double>* %49, align 16, !tbaa !15, !alias.scope !102
  %arrayidx13.i = getelementptr inbounds double, double* %43, i64 %indvars.iv.i224
  %51 = load double, double* %arrayidx13.i, align 8, !tbaa !46, !noalias !102
  %vecinit.i.i.i = insertelement <2 x double> undef, double %51, i32 0
  %vecinit1.i.i.i = shufflevector <2 x double> %vecinit.i.i.i, <2 x double> undef, <2 x i32> zeroinitializer
  %mul.i.i.i = fmul fast <2 x double> %vecinit1.i.i.i, %50
  %add.i.i.i = fadd fast <2 x double> %mul.i.i.i, %a.sroa.0.043.i
  %indvars.iv.next.i227 = add nsw i64 %indvars.iv.i224, 1
  %exitcond280.not = icmp eq i64 %indvars.iv.next.i227, %45
  br i1 %exitcond280.not, label %for.cond.cleanup8.i, label %for.body9.i, !llvm.loop !86

_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit: ; preds = %for.cond.cleanup8.i, %for.cond18.preheader
  %52 = load i32*, i32** %_M_finish.i.i185, align 8, !tbaa !79
  %53 = load i32*, i32** %_M_start.i.i184, align 8, !tbaa !36
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
  %58 = load i32, i32* %add.ptr.i204, align 4, !tbaa !49
  %mul44 = shl nsw i32 %58, 1
  %59 = sext i32 %mul44 to i64
  %arrayidx47 = getelementptr inbounds double, double* %27, i64 %59
  %60 = load double, double* %arrayidx47, align 8, !tbaa !46
  %61 = add nsw i64 %indvars.iv287, %56
  %arrayidx53 = getelementptr inbounds double, double* %jacobian_out, i64 %61
  store double %60, double* %arrayidx53, align 8, !tbaa !46
  %62 = or i64 %59, 1
  %arrayidx47.c = getelementptr inbounds double, double* %27, i64 %62
  %63 = load double, double* %arrayidx47.c, align 8, !tbaa !46
  %64 = add nsw i64 %indvars.iv287, %57
  %arrayidx53.c = getelementptr inbounds double, double* %jacobian_out, i64 %64
  store double %63, double* %arrayidx53.c, align 8, !tbaa !46
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1
  %exitcond291.not = icmp eq i64 %indvars.iv.next288, %wide.trip.count290
  br i1 %exitcond291.not, label %for.cond.cleanup34, label %for.cond37.preheader, !llvm.loop !108

for.cond.cleanup34:                               ; preds = %for.cond37.preheader, %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1
  %exitcond296.not = icmp eq i64 %indvars.iv.next293, %wide.trip.count295
  br i1 %exitcond296.not, label %for.cond.cleanup, label %for.body, !llvm.loop !109

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
  %68 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
  %add.ptr.i196 = getelementptr inbounds i32, i32* %68, i64 %conv85
  %69 = load i32, i32* %add.ptr.i196, align 4, !tbaa !49
  %mul87 = shl nsw i32 %69, 1
  %idxprom89 = sext i32 %mul87 to i64
  %arrayidx90 = getelementptr inbounds double, double* %27, i64 %idxprom89
  store double 1.000000e+00, double* %arrayidx90, align 8, !tbaa !46
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  %n_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %70 = load i32, i32* %n_statements_.i, align 8, !tbaa !43, !noalias !110
  %cmp70.i = icmp sgt i32 %70, 1
  br i1 %cmp70.i, label %for.body.lr.ph.i, label %_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi.exit

for.body.lr.ph.i:                                 ; preds = %for.body82
  %statement_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %71 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i, align 8, !tbaa !38, !noalias !110
  %multiplier_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %index_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %wide.trip.count83.i = zext i32 %70 to i64
  %end_plus_one.phi.trans.insert.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %71, i64 0, i32 1
  %.pre.i = load i32, i32* %end_plus_one.phi.trans.insert.i, align 4, !tbaa !48, !noalias !110
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond26.preheader.i, %for.body.lr.ph.i
  %72 = phi i32 [ %.pre.i, %for.body.lr.ph.i ], [ %73, %for.cond26.preheader.i ]
  %indvars.iv80.i = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next81.i, %for.cond26.preheader.i ]
  %end_plus_one6.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %71, i64 %indvars.iv80.i, i32 1
  %73 = load i32, i32* %end_plus_one6.i, align 4, !tbaa !48, !noalias !110
  %cmp765.i = icmp slt i32 %72, %73
  br i1 %cmp765.i, label %for.cond10.preheader.lr.ph.i, label %for.cond26.preheader.i

for.cond10.preheader.lr.ph.i:                     ; preds = %for.body.i
  %74 = sext i32 %72 to i64
  %75 = sext i32 %73 to i64
  %76 = load double*, double** %multiplier_.i, align 8, !tbaa !40, !noalias !110
  %77 = load i32*, i32** %index_.i, align 8, !tbaa !41, !noalias !110
  br label %for.cond.cleanup12.i

for.cond26.preheader.i.loopexit:                  ; preds = %for.cond.cleanup12.i
  %78 = bitcast double %add21.i to i64
  br label %for.cond26.preheader.i

for.cond26.preheader.i:                           ; preds = %for.cond26.preheader.i.loopexit, %for.body.i
  %79 = phi i64 [ 0, %for.body.i ], [ %78, %for.cond26.preheader.i.loopexit ]
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %71, i64 %indvars.iv80.i, i32 0
  %80 = load i32, i32* %index.i, align 4, !tbaa !44, !noalias !110
  %81 = shl i32 %80, 1
  %82 = sext i32 %81 to i64
  %scevgep.i = getelementptr double, double* %27, i64 %82
  %83 = bitcast double* %scevgep.i to i64*
  store i64 %79, i64* %83, align 8
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1
  %exitcond84.not.i = icmp eq i64 %indvars.iv.next81.i, %wide.trip.count83.i
  br i1 %exitcond84.not.i, label %_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi.exit, label %for.body.i, !llvm.loop !91

for.cond.cleanup12.i:                             ; preds = %for.cond.cleanup12.i, %for.cond10.preheader.lr.ph.i
  %84 = phi double [ 0.000000e+00, %for.cond10.preheader.lr.ph.i ], [ %add21.i, %for.cond.cleanup12.i ]
  %indvars.iv73.i = phi i64 [ %74, %for.cond10.preheader.lr.ph.i ], [ %indvars.iv.next74.i, %for.cond.cleanup12.i ]
  %arrayidx15.i = getelementptr inbounds double, double* %76, i64 %indvars.iv73.i
  %85 = load double, double* %arrayidx15.i, align 8, !tbaa !46, !noalias !110
  %arrayidx17.i = getelementptr inbounds i32, i32* %77, i64 %indvars.iv73.i
  %86 = load i32, i32* %arrayidx17.i, align 4, !tbaa !49, !noalias !110
  %mul.i = shl nsw i32 %86, 1
  %87 = sext i32 %mul.i to i64
  %arrayidx19.i = getelementptr inbounds double, double* %27, i64 %87
  %88 = load double, double* %arrayidx19.i, align 8, !tbaa !46, !alias.scope !110
  %mul20.i = fmul fast double %88, %85
  %add21.i = fadd fast double %mul20.i, %84
  %indvars.iv.next74.i = add nsw i64 %indvars.iv73.i, 1
  %exitcond270.not = icmp eq i64 %indvars.iv.next74.i, %75
  br i1 %exitcond270.not, label %for.cond26.preheader.i.loopexit, label %for.cond.cleanup12.i, !llvm.loop !89

_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi.exit: ; preds = %for.cond26.preheader.i, %for.body82
  %89 = load i32*, i32** %_M_finish.i.i185, align 8, !tbaa !79
  %90 = load i32*, i32** %_M_start.i.i184, align 8, !tbaa !36
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
  %92 = load i32, i32* %add.ptr.i, align 4, !tbaa !49
  %mul108 = shl nsw i32 %92, 1
  %idxprom110 = sext i32 %mul108 to i64
  %arrayidx111 = getelementptr inbounds double, double* %27, i64 %idxprom110
  %93 = load double, double* %arrayidx111, align 8, !tbaa !46
  %94 = trunc i64 %indvars.iv to i32
  %add115 = add nsw i32 %mul114, %94
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds double, double* %jacobian_out, i64 %idxprom116
  store double %93, double* %arrayidx117, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end124, label %for.body104, !llvm.loop !113

if.end124:                                        ; preds = %for.body104, %_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi.exit, %for.cond.cleanup
  call void @free(i8* %28) #30
  ret void

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread304
  %.pn246 = phi { i8*, i32 } [ %.pn247, %cleanup.action ], [ %20, %if.then.i.i ], [ %20, %ehcleanup.thread304 ]
  resume { i8*, i32 } %.pn246

unreachable:                                      ; preds = %invoke.cont5
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZNK5adept5Stack23jacobian_reverse_openmpEPd(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, double* nocapture %jacobian_out) local_unnamed_addr #6 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %a = alloca [2 x double], align 16
  %_M_finish.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %0 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !79
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %1 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
  %sub.ptr.lhs.cast.i.i = ptrtoint i32* %0 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint i32* %1 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %2 = lshr exact i64 %sub.ptr.sub.i.i, 2
  %conv.i = trunc i64 %2 to i32
  %sub = add nsw i32 %conv.i, 1
  %div = sdiv i32 %sub, 2
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %3 = load i32, i32* %max_gradient_, align 8, !tbaa !66
  %conv = sext i32 %3 to i64
  %cmp.i.i = icmp slt i32 %3, 0
  br i1 %cmp.i.i, label %if.then.i.i, label %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.95, i64 0, i64 0)) #31
  unreachable

_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %entry
  %cmp.not.i.i.i.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i.i.i.i, label %invoke.cont.thread, label %invoke.cont

invoke.cont:                                      ; preds = %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %mul.i.i.i.i.i.i = shl nuw nsw i64 %conv, 4
  %call2.i.i.i.i3.i.i243 = tail call noalias nonnull i8* @_Znwm(i64 %mul.i.i.i.i.i.i) #33
  %4 = bitcast i8* %call2.i.i.i.i3.i.i243 to %"struct.adept::Block"*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %call2.i.i.i.i3.i.i243, i8 0, i64 %mul.i.i.i.i.i.i, i1 false)
  %cmp287 = icmp sgt i32 %conv.i, 0
  br i1 %cmp287, label %invoke.cont.for.body.lr.ph_crit_edge, label %if.then.i.i.i

invoke.cont.for.body.lr.ph_crit_edge:             ; preds = %invoke.cont
  %add.ptr.i.i.i = getelementptr %"struct.adept::Block", %"struct.adept::Block"* %4, i64 %conv
  %phi.cast = ptrtoint %"struct.adept::Block"* %add.ptr.i.i.i to i64
  %.pre = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
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
  %7 = load i32, i32* %n_statements_, align 8, !tbaa !43
  %cmp31277 = icmp sgt i32 %7, 1
  %statement_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %8 = bitcast [2 x double]* %a to i8*
  %multiplier_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %index_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %_M_finish.i.i217 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %9 = load i32*, i32** %_M_finish.i.i217, align 8, !tbaa !79
  %_M_start.i.i218 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %10 = load i32*, i32** %_M_start.i.i218, align 8, !tbaa !36
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
  %26 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !38
  br label %for.body33

for.body17:                                       ; preds = %for.body17, %for.cond14.preheader
  %indvars.iv = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next, %for.body17 ]
  %27 = add nuw nsw i64 %indvars.iv, %24
  %add.ptr.i239 = getelementptr inbounds i32, i32* %5, i64 %27
  %28 = load i32, i32* %add.ptr.i239, align 4, !tbaa !49
  %conv21 = sext i32 %28 to i64
  %arrayidx.i235 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i267330, i64 %conv21, i32 0, i64 %indvars.iv
  store double 1.000000e+00, double* %arrayidx.i235, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup16, label %for.body17, !llvm.loop !114

for.cond101.preheader:                            ; preds = %if.end95, %for.cond.cleanup16
  br i1 %cmp105285, label %for.cond109.preheader.lr.ph, label %for.cond.cleanup106

for.cond109.preheader.lr.ph:                      ; preds = %for.cond101.preheader
  %29 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !79
  %sub.ptr.lhs.cast.i.i211 = ptrtoint i32* %29 to i64
  %sub.ptr.sub.i.i213 = sub i64 %sub.ptr.lhs.cast.i.i211, %sub.ptr.rhs.cast.i.i212.pre-phi
  %30 = lshr exact i64 %sub.ptr.sub.i.i213, 2
  %31 = and i64 %30, 4294967295
  br label %for.cond109.preheader

for.body33:                                       ; preds = %if.end95, %for.body33.lr.ph
  %indvars.iv7 = phi i64 [ %indvars.iv.next8, %if.end95 ], [ %23, %for.body33.lr.ph ]
  %indvars.iv306 = phi i64 [ %indvars.iv.next307, %if.end95 ], [ %20, %for.body33.lr.ph ]
  %indvars.iv.next8 = add nsw i64 %indvars.iv7, -1
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #30
  %index = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %26, i64 %indvars.iv.next8, i32 0
  %32 = load i32, i32* %index, align 4, !tbaa !44
  %conv39 = sext i32 %32 to i64
  br label %for.body38

for.cond.cleanup37:                               ; preds = %for.body38
  %tobool.not = icmp eq i32 %n_non_zero.1, 0
  br i1 %tobool.not, label %if.end95, label %if.then59

for.body38:                                       ; preds = %for.body38, %for.body33
  %indvars.iv296 = phi i64 [ 0, %for.body33 ], [ %indvars.iv.next297, %for.body38 ]
  %n_non_zero.0271 = phi i32 [ 0, %for.body33 ], [ %n_non_zero.1, %for.body38 ]
  %arrayidx.i231 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i267330, i64 %conv39, i32 0, i64 %indvars.iv296
  %33 = load double, double* %arrayidx.i231, align 8, !tbaa !46
  %arrayidx45 = getelementptr inbounds [2 x double], [2 x double]* %a, i64 0, i64 %indvars.iv296
  store double %33, double* %arrayidx45, align 8, !tbaa !46
  store double 0.000000e+00, double* %arrayidx.i231, align 8, !tbaa !46
  %cmp53 = fcmp fast une double %33, 0.000000e+00
  %n_non_zero.1 = select i1 %cmp53, i32 1, i32 %n_non_zero.0271
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1
  %exitcond299.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count
  br i1 %exitcond299.not, label %for.cond.cleanup37, label %for.body38, !llvm.loop !115

if.then59:                                        ; preds = %for.cond.cleanup37
  %34 = add i64 %indvars.iv7, 4294967294
  %35 = and i64 %34, 4294967295
  %end_plus_one = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %26, i64 %35, i32 1
  %36 = load i32, i32* %end_plus_one, align 4, !tbaa !48
  %end_plus_one65 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %26, i64 %indvars.iv.next8, i32 1
  %37 = load i32, i32* %end_plus_one65, align 4, !tbaa !48
  %cmp66274 = icmp slt i32 %36, %37
  br i1 %cmp66274, label %for.body68.lr.ph, label %if.end95

for.body68.lr.ph:                                 ; preds = %if.then59
  %38 = load double*, double** %multiplier_, align 8, !tbaa !40
  %39 = load i32*, i32** %index_, align 8, !tbaa !41
  %40 = sext i32 %36 to i64
  %41 = sext i32 %37 to i64
  br label %for.body68

for.body68:                                       ; preds = %for.cond.cleanup81, %for.body68.lr.ph
  %indvars.iv304 = phi i64 [ %40, %for.body68.lr.ph ], [ %indvars.iv.next305, %for.cond.cleanup81 ]
  %arrayidx70 = getelementptr inbounds double, double* %38, i64 %indvars.iv304
  %42 = load double, double* %arrayidx70, align 8, !tbaa !46
  %arrayidx72 = getelementptr inbounds i32, i32* %39, i64 %indvars.iv304
  %43 = load i32, i32* %arrayidx72, align 4, !tbaa !49
  %conv73 = sext i32 %43 to i64
  br label %for.body82

for.cond.cleanup81:                               ; preds = %for.body82
  %indvars.iv.next305 = add nsw i64 %indvars.iv304, 1
  %exitcond.not11 = icmp eq i64 %indvars.iv.next305, %41
  br i1 %exitcond.not11, label %if.end95, label %for.body68, !llvm.loop !116

for.body82:                                       ; preds = %for.body82, %for.body68
  %indvars.iv300 = phi i64 [ 0, %for.body68 ], [ %indvars.iv.next301, %for.body82 ]
  %arrayidx84 = getelementptr inbounds [2 x double], [2 x double]* %a, i64 0, i64 %indvars.iv300
  %44 = load double, double* %arrayidx84, align 8, !tbaa !46
  %mul85 = fmul fast double %44, %42
  %arrayidx87 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i267330, i64 %conv73, i32 0, i64 %indvars.iv300
  %45 = load double, double* %arrayidx87, align 8, !tbaa !46
  %add88 = fadd fast double %45, %mul85
  store double %add88, double* %arrayidx87, align 8, !tbaa !46
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 1
  %exitcond303.not = icmp eq i64 %indvars.iv.next301, %wide.trip.count
  br i1 %exitcond303.not, label %for.cond.cleanup81, label %for.body82, !llvm.loop !117

if.end95:                                         ; preds = %for.cond.cleanup81, %if.then59, %for.cond.cleanup37
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #30
  %cmp31 = icmp sgt i64 %indvars.iv306, 2
  %indvars.iv.next307 = add nsw i64 %indvars.iv306, -1
  br i1 %cmp31, label %for.body33, label %for.cond101.preheader, !llvm.loop !118

for.cond109.preheader:                            ; preds = %for.cond.cleanup111, %for.cond109.preheader.lr.ph
  %indvars.iv313 = phi i64 [ 0, %for.cond109.preheader.lr.ph ], [ %indvars.iv.next314, %for.cond.cleanup111 ]
  %add.ptr.i216 = getelementptr inbounds i32, i32* %10, i64 %indvars.iv313
  %46 = load i32, i32* %add.ptr.i216, align 4, !tbaa !49
  %conv115 = sext i32 %46 to i64
  %47 = mul nuw i64 %indvars.iv313, %31
  %48 = add nuw i64 %47, %24
  br label %for.body112

for.cond.cleanup106:                              ; preds = %for.cond.cleanup111, %for.cond101.preheader
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1
  %exitcond324.not = icmp eq i64 %indvars.iv.next320, %wide.trip.count323
  br i1 %exitcond324.not, label %if.then.i.i.i, label %for.body, !llvm.loop !119

for.cond.cleanup111:                              ; preds = %for.body112
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1
  %exitcond318.not = icmp eq i64 %indvars.iv.next314, %wide.trip.count317
  br i1 %exitcond318.not, label %for.cond.cleanup106, label %for.cond109.preheader, !llvm.loop !120

for.body112:                                      ; preds = %for.body112, %for.cond109.preheader
  %indvars.iv308 = phi i64 [ 0, %for.cond109.preheader ], [ %indvars.iv.next309, %for.body112 ]
  %arrayidx.i = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i267330, i64 %conv115, i32 0, i64 %indvars.iv308
  %49 = load double, double* %arrayidx.i, align 8, !tbaa !46
  %add124 = add nuw i64 %48, %indvars.iv308
  %sext = shl i64 %add124, 32
  %idxprom125 = ashr exact i64 %sext, 32
  %arrayidx126 = getelementptr inbounds double, double* %jacobian_out, i64 %idxprom125
  store double %49, double* %arrayidx126, align 8, !tbaa !46
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1
  %exitcond312.not = icmp eq i64 %indvars.iv.next309, %wide.trip.count
  br i1 %exitcond312.not, label %for.cond.cleanup111, label %for.body112, !llvm.loop !121

if.then.i.i.i:                                    ; preds = %for.cond.cleanup106, %invoke.cont
  %cond.i.i.i.i267289334 = phi i8* [ %call2.i.i.i.i3.i.i243, %invoke.cont ], [ %cond.i.i.i.i267289333, %for.cond.cleanup106 ]
  tail call void @_ZdlPv(i8* nonnull %cond.i.i.i.i267289334) #30
  br label %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EED2Ev.exit: ; preds = %if.then.i.i.i, %invoke.cont.thread
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack16jacobian_reverseEPd(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, double* nocapture %jacobian_out) local_unnamed_addr #6 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %a = alloca <2 x double>, align 16
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %0 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !29
  %_M_finish.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %1 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !29
  %cmp.i.i = icmp eq i32* %0, %1
  br i1 %cmp.i.i, label %if.then, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %_M_start.i.i426 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %2 = load i32*, i32** %_M_start.i.i426, align 8, !tbaa !29
  %_M_finish.i.i427 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %3 = load i32*, i32** %_M_finish.i.i427, align 8, !tbaa !29
  %cmp.i.i428 = icmp eq i32* %2, %3
  br i1 %cmp.i.i428, label %if.then, label %if.end

if.then:                                          ; preds = %lor.lhs.false, %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %4 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #30
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %6 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !12
  %7 = bitcast %union.anon* %5 to i8*
  %8 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #30
  store i64 79, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i513 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.then
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i513, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %9 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %9, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(79) %call5.i.i.i10.i513, i8* nonnull align 1 dereferenceable(79) getelementptr inbounds ([80 x i8], [80 x i8]* @.str.71, i64 0, i64 0), i64 79, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %9, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i513, i64 %9
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #30
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %10 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %11 = getelementptr inbounds i8, i8* %exception, i64 24
  %12 = bitcast i8* %message_.i.i.i to i8**
  store i8* %11, i8** %12, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i.i514 = getelementptr inbounds i8, i8* %exception, i64 16
  %13 = bitcast i8* %_M_string_length.i.i.i.i.i.i514 to i64*
  store i64 0, i64* %13, align 8, !tbaa !8
  store i8 0, i8* %11, align 1, !tbaa !15
  %14 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept41dependents_or_independents_not_identifiedE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %14, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %10, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont5 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %15 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %14, align 8, !tbaa !20
  %16 = load i8*, i8** %12, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %16, %11
  br i1 %cmp.i.i.i.i.i, label %lpad4.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %16) #30
  br label %lpad4.body

invoke.cont5:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept41dependents_or_independents_not_identifiedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad4.body.thread

ehcleanup.thread:                                 ; preds = %if.then
  %17 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #30
  br label %cleanup.action

lpad4.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %18 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %18) #30
  %19 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %19, %7
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i515.thread

if.then.i.i515.thread:                            ; preds = %lpad4.body
  call void @_ZdlPv(i8* %19) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #30
  br label %cleanup.action

lpad4.body.thread:                                ; preds = %invoke.cont5
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i640 = icmp eq i8* %21, %7
  br i1 %cmp.i.i.i640, label %ehcleanup.thread645, label %if.then.i.i515

ehcleanup.thread645:                              ; preds = %lpad4.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #30
  br label %eh.resume

if.then.i.i515:                                   ; preds = %lpad4.body.thread
  call void @_ZdlPv(i8* %21) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad4.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i515.thread, %ehcleanup.thread
  %.pn549 = phi { i8*, i32 } [ %17, %ehcleanup.thread ], [ %15, %ehcleanup ], [ %15, %if.then.i.i515.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

if.end:                                           ; preds = %lor.lhs.false
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %22 = load i32, i32* %max_gradient_, align 8, !tbaa !66
  %conv = sext i32 %22 to i64
  %cmp.i.i511 = icmp slt i32 %22, 0
  br i1 %cmp.i.i511, label %if.then.i.i, label %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

if.then.i.i:                                      ; preds = %if.end
  tail call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.95, i64 0, i64 0)) #31
  unreachable

_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %if.end
  %cmp.not.i.i.i.i = icmp eq i32 %22, 0
  br i1 %cmp.not.i.i.i.i, label %invoke.cont11, label %_ZNSt16allocator_traitsISaIN5adept5BlockILi2EdEEEE8allocateERS3_m.exit.i.i.i.i

_ZNSt16allocator_traitsISaIN5adept5BlockILi2EdEEEE8allocateERS3_m.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %mul.i.i.i.i.i.i = shl nuw nsw i64 %conv, 4
  %call2.i.i.i.i3.i.i512 = tail call noalias nonnull i8* @_Znwm(i64 %mul.i.i.i.i.i.i) #33
  %23 = bitcast i8* %call2.i.i.i.i3.i.i512 to %"struct.adept::Block"*
  %add.ptr.i.i.i = getelementptr %"struct.adept::Block", %"struct.adept::Block"* %23, i64 %conv
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %call2.i.i.i.i3.i.i512, i8 0, i64 %mul.i.i.i.i.i.i, i1 false)
  %phi.cast = ptrtoint %"struct.adept::Block"* %add.ptr.i.i.i to i64
  %.pre = load i32*, i32** %_M_finish.i.i427, align 8, !tbaa !79
  %.pre636 = load i32*, i32** %_M_start.i.i426, align 8, !tbaa !36
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
  %27 = load i32, i32* %n_statements_, align 8, !tbaa !43
  %cmp47581 = icmp sgt i32 %27, 1
  %statement_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %28 = bitcast <2 x double>* %a to i8*
  %multiplier_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %index_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %29 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !79
  %30 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
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
  %54 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !38
  br label %for.body49

for.body33:                                       ; preds = %for.body24.preheader, %for.cond20.preheader
  %add.ptr.i489 = getelementptr inbounds i32, i32* %24, i64 %indvars.iv632
  %55 = load i32, i32* %add.ptr.i489, align 4, !tbaa !49
  %conv37 = sext i32 %55 to i64
  %arrayidx.i485 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv37, i32 0, i64 0
  store double 1.000000e+00, double* %arrayidx.i485, align 8, !tbaa !46
  %56 = or i64 %indvars.iv632, 1
  %add.ptr.i489.c = getelementptr inbounds i32, i32* %24, i64 %56
  %57 = load i32, i32* %add.ptr.i489.c, align 4, !tbaa !49
  %conv37.c = sext i32 %57 to i64
  %arrayidx.i485.c = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv37.c, i32 0, i64 1
  store double 1.000000e+00, double* %arrayidx.i485.c, align 8, !tbaa !46
  br i1 %cmp47581, label %for.body49.lr.ph, label %for.cond121.preheader

for.cond121.preheader:                            ; preds = %if.end114, %for.body33
  br i1 %cmp125589, label %for.cond129.preheader.lr.ph, label %for.cond.cleanup126

for.cond129.preheader.lr.ph:                      ; preds = %for.cond121.preheader
  %58 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
  %59 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !79
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #30
  %index = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %54, i64 %indvars.iv.next17, i32 0
  %62 = load i32, i32* %index, align 4, !tbaa !44
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
  %63 = load double, double* %arrayidx.i481, align 8, !tbaa !46
  %arrayidx61 = getelementptr inbounds <2 x double>, <2 x double>* %a, i64 0, i64 %indvars.iv613
  store double %63, double* %arrayidx61, align 8, !tbaa !46
  store double 0.000000e+00, double* %arrayidx.i481, align 8, !tbaa !46
  %cmp69 = fcmp fast une double %63, 0.000000e+00
  %n_non_zero.1 = select i1 %cmp69, i32 1, i32 %n_non_zero.0575
  br i1 %cmp52, label %for.body54, label %for.cond.cleanup53, !llvm.loop !122

if.then76:                                        ; preds = %for.cond.cleanup53
  %64 = add i64 %indvars.iv16, 4294967294
  %65 = and i64 %64, 4294967295
  %end_plus_one = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %54, i64 %65, i32 1
  %66 = load i32, i32* %end_plus_one, align 4, !tbaa !48
  %end_plus_one82 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %54, i64 %indvars.iv.next17, i32 1
  %67 = load i32, i32* %end_plus_one82, align 4, !tbaa !48
  %cmp83578 = icmp slt i32 %66, %67
  br i1 %cmp83578, label %for.body85.lr.ph, label %if.end114

for.body85.lr.ph:                                 ; preds = %if.then76
  %68 = load double*, double** %multiplier_, align 8, !tbaa !40
  %69 = load i32*, i32** %index_, align 8, !tbaa !41
  %70 = sext i32 %66 to i64
  %71 = sext i32 %67 to i64
  %72 = load <2 x double>, <2 x double>* %a, align 16, !tbaa !46
  br label %for.body85

for.body85:                                       ; preds = %for.body85, %for.body85.lr.ph
  %indvars.iv617 = phi i64 [ %70, %for.body85.lr.ph ], [ %indvars.iv.next618, %for.body85 ]
  %arrayidx87 = getelementptr inbounds double, double* %68, i64 %indvars.iv617
  %73 = load double, double* %arrayidx87, align 8, !tbaa !46
  %arrayidx89 = getelementptr inbounds i32, i32* %69, i64 %indvars.iv617
  %74 = load i32, i32* %arrayidx89, align 4, !tbaa !49
  %conv90 = sext i32 %74 to i64
  %arrayidx103 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv90, i32 0, i64 0
  %75 = insertelement <2 x double> poison, double %73, i32 0
  %76 = shufflevector <2 x double> %75, <2 x double> undef, <2 x i32> zeroinitializer
  %77 = fmul fast <2 x double> %72, %76
  %78 = bitcast double* %arrayidx103 to <2 x double>*
  %79 = load <2 x double>, <2 x double>* %78, align 8, !tbaa !46
  %80 = fadd fast <2 x double> %79, %77
  store <2 x double> %80, <2 x double>* %78, align 8, !tbaa !46
  %indvars.iv.next618 = add nsw i64 %indvars.iv617, 1
  %exitcond15.not = icmp eq i64 %indvars.iv.next618, %71
  br i1 %exitcond15.not, label %if.end114, label %for.body85, !llvm.loop !123

if.end114:                                        ; preds = %for.body85, %if.then76, %for.cond.cleanup53
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #30
  %cmp47 = icmp sgt i64 %indvars.iv619, 2
  %indvars.iv.next620 = add nsw i64 %indvars.iv619, -1
  br i1 %cmp47, label %for.body49, label %for.cond121.preheader, !llvm.loop !124

for.cond129.preheader:                            ; preds = %for.cond129.preheader, %for.cond129.preheader.lr.ph
  %indvar621 = phi i64 [ 0, %for.cond129.preheader.lr.ph ], [ %indvar.next622, %for.cond129.preheader ]
  %81 = mul nsw i64 %indvar621, %41
  %82 = add nsw i64 %81, %43
  %scevgep = getelementptr double, double* %jacobian_out, i64 %82
  %scevgep623 = bitcast double* %scevgep to i8*
  %add.ptr.i466 = getelementptr inbounds i32, i32* %58, i64 %indvar621
  %83 = load i32, i32* %add.ptr.i466, align 4, !tbaa !49
  %conv136 = sext i32 %83 to i64
  %scevgep624 = getelementptr %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv136
  %scevgep624625 = bitcast %"struct.adept::Block"* %scevgep624 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %scevgep623, i8* nonnull align 8 dereferenceable(16) %scevgep624625, i64 16, i1 false)
  %indvar.next622 = add nuw nsw i64 %indvar621, 1
  %exitcond631.not = icmp eq i64 %indvar.next622, %wide.trip.count630
  br i1 %exitcond631.not, label %for.cond.cleanup126, label %for.cond129.preheader, !llvm.loop !125

for.cond.cleanup126:                              ; preds = %for.cond129.preheader, %for.cond121.preheader
  %indvars.iv.next633 = add nuw nsw i64 %indvars.iv632, 2
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond635.not = icmp eq i64 %indvar.next, %div651
  br i1 %exitcond635.not, label %for.cond.cleanup.loopexit, label %for.cond20.preheader, !llvm.loop !126

for.body180:                                      ; preds = %for.body168.preheader, %for.cond164.preheader
  %conv183 = zext i32 %i_dependent.0.lcssa to i64
  %84 = load i32*, i32** %_M_start.i.i426, align 8, !tbaa !36
  %add.ptr.i452 = getelementptr inbounds i32, i32* %84, i64 %conv183
  %85 = load i32, i32* %add.ptr.i452, align 4, !tbaa !49
  %conv185 = sext i32 %85 to i64
  %arrayidx.i448 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv185, i32 0, i64 0
  store double 1.000000e+00, double* %arrayidx.i448, align 8, !tbaa !46
  %n_statements_195 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %86 = load i32, i32* %n_statements_195, align 8, !tbaa !43
  %cmp198567 = icmp sgt i32 %86, 1
  br i1 %cmp198567, label %for.body200.lr.ph, label %for.cond289.preheader

for.body200.lr.ph:                                ; preds = %for.body180
  %statement_202 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %87 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_202, align 8, !tbaa !38
  %multiplier_248 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %index_252 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %88 = zext i32 %86 to i64
  %89 = zext i32 %86 to i64
  br label %for.body200

for.cond289.preheader:                            ; preds = %if.end280, %for.body180
  %90 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !79
  %91 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
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
  %95 = load i32, i32* %index212, align 4, !tbaa !44
  %conv213 = sext i32 %95 to i64
  %arrayidx.i445 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv213, i32 0, i64 0
  %arrayidx.i445.promoted = load double, double* %arrayidx.i445, align 8, !tbaa !46
  %cmp227 = fcmp fast oeq double %arrayidx.i445.promoted, 0.000000e+00
  store double 0.000000e+00, double* %arrayidx.i445, align 8, !tbaa !46
  br i1 %cmp227, label %if.end280, label %if.then235

if.then235:                                       ; preds = %for.body200
  %96 = add i64 %indvars.iv12, 4294967294
  %97 = and i64 %96, 4294967295
  %end_plus_one241 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %87, i64 %97, i32 1
  %98 = load i32, i32* %end_plus_one241, align 4, !tbaa !48
  %end_plus_one243 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %87, i64 %indvars.iv.next13, i32 1
  %99 = load i32, i32* %end_plus_one243, align 4, !tbaa !48
  %cmp244564 = icmp slt i32 %98, %99
  br i1 %cmp244564, label %for.body246.lr.ph, label %if.end280

for.body246.lr.ph:                                ; preds = %if.then235
  %100 = load double*, double** %multiplier_248, align 8, !tbaa !40
  %101 = load i32*, i32** %index_252, align 8, !tbaa !41
  %102 = sext i32 %98 to i64
  %103 = sext i32 %99 to i64
  br label %for.body246

for.body246:                                      ; preds = %for.body246, %for.body246.lr.ph
  %indvars.iv596 = phi i64 [ %102, %for.body246.lr.ph ], [ %indvars.iv.next597, %for.body246 ]
  %arrayidx250 = getelementptr inbounds double, double* %100, i64 %indvars.iv596
  %104 = load double, double* %arrayidx250, align 8, !tbaa !46
  %arrayidx254 = getelementptr inbounds i32, i32* %101, i64 %indvars.iv596
  %105 = load i32, i32* %arrayidx254, align 4, !tbaa !49
  %conv255 = sext i32 %105 to i64
  %arrayidx.i439 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv255, i32 0, i64 0
  %mul267 = fmul fast double %104, %arrayidx.i445.promoted
  %106 = load double, double* %arrayidx.i439, align 8, !tbaa !46
  %add270 = fadd fast double %106, %mul267
  store double %add270, double* %arrayidx.i439, align 8, !tbaa !46
  %indvars.iv.next597 = add nsw i64 %indvars.iv596, 1
  %exitcond.not19 = icmp eq i64 %indvars.iv.next597, %103
  br i1 %exitcond.not19, label %if.end280, label %for.body246, !llvm.loop !127

if.end280:                                        ; preds = %for.body246, %if.then235, %for.body200
  %cmp198 = icmp sgt i64 %indvars.iv598, 2
  %indvars.iv.next599 = add nsw i64 %indvars.iv598, -1
  br i1 %cmp198, label %for.body200, label %for.cond289.preheader, !llvm.loop !128

for.body300:                                      ; preds = %for.body300, %for.body300.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body300.lr.ph ], [ %indvars.iv.next, %for.body300 ]
  %add.ptr.i432 = getelementptr inbounds i32, i32* %91, i64 %indvars.iv
  %107 = load i32, i32* %add.ptr.i432, align 4, !tbaa !49
  %conv304 = sext i32 %107 to i64
  %arrayidx.i = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv304, i32 0, i64 0
  %108 = load double, double* %arrayidx.i, align 8, !tbaa !46
  %109 = mul nsw i64 %indvars.iv, %93
  %110 = add nsw i64 %109, %94
  %arrayidx315 = getelementptr inbounds double, double* %jacobian_out, i64 %110
  store double %108, double* %arrayidx315, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.then.i.i.i, label %for.body300, !llvm.loop !129

if.end324:                                        ; preds = %for.cond.cleanup
  %tobool.not.i.i.i = icmp eq %"struct.adept::Block"* %cond.i.i.i.i552, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %for.body300, %if.end324, %for.cond289.preheader
  tail call void @_ZdlPv(i8* nonnull %cond.i.i.i.i552600) #30
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
define dso_local void @_ZN5adept5Stack8jacobianEPd(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, double* nocapture %jacobian_out) local_unnamed_addr #9 align 2 {
entry:
  %_M_finish.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %0 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !79
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %1 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
  %sub.ptr.lhs.cast.i.i = ptrtoint i32* %0 to i64
  %sub.ptr.rhs.cast.i.i = ptrtoint i32* %1 to i64
  %sub.ptr.sub.i.i = sub i64 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %2 = lshr exact i64 %sub.ptr.sub.i.i, 2
  %conv.i = trunc i64 %2 to i32
  %_M_finish.i.i4 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %3 = load i32*, i32** %_M_finish.i.i4, align 8, !tbaa !79
  %_M_start.i.i5 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %4 = load i32*, i32** %_M_start.i.i5, align 8, !tbaa !36
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
define dso_local void @_ZN5adept7versionB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result) local_unnamed_addr #16 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2
  %1 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to %union.anon**
  store %union.anon* %0, %union.anon** %1, align 8, !tbaa !12
  %2 = bitcast %union.anon* %0 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(5) %2, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), i64 5, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1
  store i64 5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %2, i64 5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept16compiler_versionB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias nonnull sret(%"class.std::__cxx11::basic_string") align 8 %agg.result) local_unnamed_addr #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i:
  %0 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2
  %1 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to %union.anon**
  store %union.anon* %0, %union.anon** %1, align 8, !tbaa !12
  %2 = bitcast %union.anon* %0 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(7) %2, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i64 7, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1
  store i64 7, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %2, i64 7
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  %call2.i.i7 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %agg.result, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i64 8)
          to label %nrvo.skipdtor unwind label %lpad1

lpad1:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %3 = landingpad { i8*, i32 }
          cleanup
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 0, i32 0
  %4 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %4, %2
  br i1 %cmp.i.i.i, label %eh.resume, label %if.then.i.i

if.then.i.i:                                      ; preds = %lpad1
  tail call void @_ZdlPv(i8* %4) #30
  br label %eh.resume

nrvo.skipdtor:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  ret void

eh.resume:                                        ; preds = %if.then.i.i, %lpad1
  resume { i8*, i32 } %3
}

; Function Attrs: nofree nounwind uwtable willreturn
define dso_local void @_ZN5adept14compiler_flagsB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result) local_unnamed_addr #16 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2
  %1 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to %union.anon**
  store %union.anon* %0, %union.anon** %1, align 8, !tbaa !12
  %2 = bitcast %union.anon* %0 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(7) %2, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i64 7, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1
  store i64 7, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %2, i64 7
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept13configurationB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result) local_unnamed_addr #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %s = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp11 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp24 = alloca %"class.std::__cxx11::basic_string", align 8
  %0 = bitcast %"class.std::__cxx11::basic_stringstream"* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 392, i8* nonnull %0) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull dereferenceable(128) %s)
  %add.ptr = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1
  %1 = bitcast %"class.std::basic_ostream.base"* %add.ptr to %"class.std::basic_ostream"*
  %call1.i52 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i64 0, i64 0), i64 14)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %entry
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #30
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %4 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %3, %union.anon** %4, align 8, !tbaa !12, !alias.scope !130
  %5 = bitcast %union.anon* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(5) %5, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), i64 5, i1 false) #30
  %_M_string_length.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 5, i64* %_M_string_length.i.i.i.i.i.i.i, align 8, !tbaa !8, !alias.scope !130
  %arrayidx.i.i.i.i.i.i = getelementptr inbounds i8, i8* %5, i64 5
  store i8 0, i8* %arrayidx.i.i.i.i.i.i, align 1, !tbaa !15, !alias.scope !130
  %_M_p.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  %call2.i53 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull %5, i64 5)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont2
  %call1.i55 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call2.i53, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i64 0, i64 0), i64 2)
          to label %invoke.cont6 unwind label %lpad3

invoke.cont6:                                     ; preds = %invoke.cont4
  %6 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %6, %5
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont6
  call void @_ZdlPv(i8* %6) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %invoke.cont6
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #30
  %call1.i58 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i64 0, i64 0), i64 16)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %7 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #30
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp11, i64 0, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp11 to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !12, !alias.scope !133
  %10 = bitcast %union.anon* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(7) %10, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i64 7, i1 false) #30
  %_M_string_length.i.i.i.i.i.i.i60 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp11, i64 0, i32 1
  store i64 7, i64* %_M_string_length.i.i.i.i.i.i.i60, align 8, !tbaa !8, !alias.scope !133
  %arrayidx.i.i.i.i.i.i61 = getelementptr inbounds i8, i8* %10, i64 7
  store i8 0, i8* %arrayidx.i.i.i.i.i.i61, align 1, !tbaa !15, !alias.scope !133
  %call2.i.i7.i = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i64 8)
          to label %invoke.cont13 unwind label %lpad1.i

lpad1.i:                                          ; preds = %invoke.cont9
  %11 = landingpad { i8*, i32 }
          cleanup
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp11, i64 0, i32 0, i32 0
  %12 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !14, !alias.scope !133
  %cmp.i.i.i.i = icmp eq i8* %12, %10
  br i1 %cmp.i.i.i.i, label %ehcleanup20, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lpad1.i
  call void @_ZdlPv(i8* %12) #30
  br label %ehcleanup20

invoke.cont13:                                    ; preds = %invoke.cont9
  %_M_p.i.i.i62 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp11, i64 0, i32 0, i32 0
  %13 = load i8*, i8** %_M_p.i.i.i62, align 8, !tbaa !14
  %14 = load i64, i64* %_M_string_length.i.i.i.i.i.i.i60, align 8, !tbaa !8
  %call2.i64 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* %13, i64 %14)
          to label %invoke.cont15 unwind label %lpad14

invoke.cont15:                                    ; preds = %invoke.cont13
  %call1.i67 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call2.i64, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
          to label %invoke.cont17 unwind label %lpad14

invoke.cont17:                                    ; preds = %invoke.cont15
  %15 = load i8*, i8** %_M_p.i.i.i62, align 8, !tbaa !14
  %cmp.i.i.i71 = icmp eq i8* %15, %10
  br i1 %cmp.i.i.i71, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %if.then.i.i72

if.then.i.i72:                                    ; preds = %invoke.cont17
  call void @_ZdlPv(i8* %15) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %if.then.i.i72, %invoke.cont17
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #30
  %call1.i75 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.78, i64 0, i64 0), i64 18)
          to label %invoke.cont26 unwind label %lpad

invoke.cont26:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %16 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #30
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp24, i64 0, i32 2
  %18 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp24 to %union.anon**
  store %union.anon* %17, %union.anon** %18, align 8, !tbaa !12, !alias.scope !136
  %19 = bitcast %union.anon* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(7) %19, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i64 7, i1 false) #30
  %_M_string_length.i.i.i.i.i.i.i77 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp24, i64 0, i32 1
  store i64 7, i64* %_M_string_length.i.i.i.i.i.i.i77, align 8, !tbaa !8, !alias.scope !136
  %arrayidx.i.i.i.i.i.i78 = getelementptr inbounds i8, i8* %19, i64 7
  store i8 0, i8* %arrayidx.i.i.i.i.i.i78, align 1, !tbaa !15, !alias.scope !136
  %_M_p.i.i.i79 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp24, i64 0, i32 0, i32 0
  %call2.i81 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull %19, i64 7)
          to label %invoke.cont28 unwind label %lpad27

invoke.cont28:                                    ; preds = %invoke.cont26
  %call1.i84 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call2.i81, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i64 0, i64 0), i64 2)
          to label %invoke.cont30 unwind label %lpad27

invoke.cont30:                                    ; preds = %invoke.cont28
  %20 = load i8*, i8** %_M_p.i.i.i79, align 8, !tbaa !14
  %cmp.i.i.i88 = icmp eq i8* %20, %19
  br i1 %cmp.i.i.i88, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %if.then.i.i89

if.then.i.i89:                                    ; preds = %invoke.cont30
  call void @_ZdlPv(i8* %20) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %if.then.i.i89, %invoke.cont30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #30
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
  store i32 (...)** %21, i32 (...)*** %22, align 8, !tbaa !20
  %23 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i32 (...)***), align 8
  %vbase.offset.ptr4.i.i = getelementptr i32 (...)*, i32 (...)** %21, i64 -3
  %24 = bitcast i32 (...)** %vbase.offset.ptr4.i.i to i64*
  %vbase.offset.i.i = load i64, i64* %24, align 8
  %add.ptr.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i
  %25 = bitcast i8* %add.ptr.i.i to i32 (...)***
  store i32 (...)** %23, i32 (...)*** %25, align 8, !tbaa !20
  %26 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i32 (...)***), align 8
  %27 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** %26, i32 (...)*** %27, align 8, !tbaa !20
  %28 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %28, align 8, !tbaa !20
  %_M_p.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 0, i32 0
  %29 = load i8*, i8** %_M_p.i.i.i.i.i.i.i, align 8, !tbaa !14
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 2
  %arraydecay.i.i.i.i.i.i.i = bitcast %union.anon* %30 to i8*
  %cmp.i.i.i.i.i.i = icmp eq i8* %29, %arraydecay.i.i.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %invoke.cont41
  call void @_ZdlPv(i8* %29) #30
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %if.then.i.i.i.i.i, %invoke.cont41
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %28, align 8, !tbaa !20
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i) #30
  %31 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)***), align 8
  store i32 (...)** %31, i32 (...)*** %22, align 8, !tbaa !20
  %32 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr3.i.i.i.i = getelementptr i32 (...)*, i32 (...)** %31, i64 -3
  %33 = bitcast i32 (...)** %vbase.offset.ptr3.i.i.i.i to i64*
  %vbase.offset.i.i.i.i = load i64, i64* %33, align 8
  %add.ptr.i.i.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i.i.i
  %34 = bitcast i8* %add.ptr.i.i.i.i to i32 (...)***
  store i32 (...)** %32, i32 (...)*** %34, align 8, !tbaa !20
  %35 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %35, align 8, !tbaa !139
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216) %36) #30
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %0) #30
  ret void

lpad:                                             ; preds = %invoke.cont39, %invoke.cont37, %invoke.cont35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %entry
  %37 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup42

lpad3:                                            ; preds = %invoke.cont4, %invoke.cont2
  %38 = landingpad { i8*, i32 }
          cleanup
  %39 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i99 = icmp eq i8* %39, %5
  br i1 %cmp.i.i.i99, label %ehcleanup, label %if.then.i.i100

if.then.i.i100:                                   ; preds = %lpad3
  call void @_ZdlPv(i8* %39) #30
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i100, %lpad3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #30
  br label %ehcleanup42

lpad14:                                           ; preds = %invoke.cont15, %invoke.cont13
  %40 = landingpad { i8*, i32 }
          cleanup
  %41 = load i8*, i8** %_M_p.i.i.i62, align 8, !tbaa !14
  %cmp.i.i.i104 = icmp eq i8* %41, %10
  br i1 %cmp.i.i.i104, label %ehcleanup20, label %if.then.i.i105

if.then.i.i105:                                   ; preds = %lpad14
  call void @_ZdlPv(i8* %41) #30
  br label %ehcleanup20

ehcleanup20:                                      ; preds = %if.then.i.i105, %lpad14, %if.then.i.i.i, %lpad1.i
  %.pn46 = phi { i8*, i32 } [ %11, %if.then.i.i.i ], [ %11, %lpad1.i ], [ %40, %lpad14 ], [ %40, %if.then.i.i105 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #30
  br label %ehcleanup42

lpad27:                                           ; preds = %invoke.cont28, %invoke.cont26
  %42 = landingpad { i8*, i32 }
          cleanup
  %43 = load i8*, i8** %_M_p.i.i.i79, align 8, !tbaa !14
  %cmp.i.i.i109 = icmp eq i8* %43, %19
  br i1 %cmp.i.i.i109, label %ehcleanup33, label %if.then.i.i110

if.then.i.i110:                                   ; preds = %lpad27
  call void @_ZdlPv(i8* %43) #30
  br label %ehcleanup33

ehcleanup33:                                      ; preds = %if.then.i.i110, %lpad27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #30
  br label %ehcleanup42

ehcleanup42:                                      ; preds = %ehcleanup33, %ehcleanup20, %ehcleanup, %lpad
  %.pn49 = phi { i8*, i32 } [ %37, %lpad ], [ %42, %ehcleanup33 ], [ %.pn46, %ehcleanup20 ], [ %38, %ehcleanup ]
  %44 = load i32 (...)**, i32 (...)*** bitcast ([10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE to i32 (...)***), align 8
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** %44, i32 (...)*** %45, align 8, !tbaa !20
  %46 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i32 (...)***), align 8
  %vbase.offset.ptr4.i.i112 = getelementptr i32 (...)*, i32 (...)** %44, i64 -3
  %47 = bitcast i32 (...)** %vbase.offset.ptr4.i.i112 to i64*
  %vbase.offset.i.i113 = load i64, i64* %47, align 8
  %add.ptr.i.i114 = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i113
  %48 = bitcast i8* %add.ptr.i.i114 to i32 (...)***
  store i32 (...)** %46, i32 (...)*** %48, align 8, !tbaa !20
  %49 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i32 (...)***), align 8
  %50 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** %49, i32 (...)*** %50, align 8, !tbaa !20
  %51 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %51, align 8, !tbaa !20
  %_M_p.i.i.i.i.i.i.i115 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 0, i32 0
  %52 = load i8*, i8** %_M_p.i.i.i.i.i.i.i115, align 8, !tbaa !14
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 2
  %arraydecay.i.i.i.i.i.i.i116 = bitcast %union.anon* %53 to i8*
  %cmp.i.i.i.i.i.i117 = icmp eq i8* %52, %arraydecay.i.i.i.i.i.i.i116
  br i1 %cmp.i.i.i.i.i.i117, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit123, label %if.then.i.i.i.i.i118

if.then.i.i.i.i.i118:                             ; preds = %ehcleanup42
  call void @_ZdlPv(i8* %52) #30
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit123

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit123: ; preds = %if.then.i.i.i.i.i118, %ehcleanup42
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %51, align 8, !tbaa !20
  %_M_buf_locale.i.i.i.i119 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i119) #30
  %54 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)***), align 8
  store i32 (...)** %54, i32 (...)*** %45, align 8, !tbaa !20
  %55 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr3.i.i.i.i120 = getelementptr i32 (...)*, i32 (...)** %54, i64 -3
  %56 = bitcast i32 (...)** %vbase.offset.ptr3.i.i.i.i120 to i64*
  %vbase.offset.i.i.i.i121 = load i64, i64* %56, align 8
  %add.ptr.i.i.i.i122 = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i.i.i121
  %57 = bitcast i8* %add.ptr.i.i.i.i122 to i32 (...)***
  store i32 (...)** %55, i32 (...)*** %57, align 8, !tbaa !20
  %58 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %58, align 8, !tbaa !139
  %59 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216) %59) #30
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %0) #30
  resume { i8*, i32 } %.pn49
}

; Function Attrs: uwtable
declare dso_local void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull dereferenceable(128)) unnamed_addr #6 align 2

; Function Attrs: norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local i32 @_ZN5adept16max_blas_threadsEv() local_unnamed_addr #8 {
entry:
  ret i32 1
}

; Function Attrs: norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local i32 @_ZN5adept20set_max_blas_threadsEi(i32 %n) local_unnamed_addr #8 {
entry:
  ret i32 1
}

; Function Attrs: norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local zeroext i1 @_ZN5adept26have_matrix_multiplicationEv() local_unnamed_addr #8 {
entry:
  ret i1 false
}

; Function Attrs: norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local zeroext i1 @_ZN5adept19have_linear_algebraEv() local_unnamed_addr #8 {
entry:
  ret i1 false
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIfEENS_5ArrayILi1ET_Lb0EEERKNS1_ILi2ES2_Lb0EEERKS3_(%"class.adept::Array.25"* noalias sret(%"class.adept::Array.25") align 8 %agg.result, %"class.adept::Array"* nonnull align 8 dereferenceable(32) %A, %"class.adept::Array.25"* nonnull align 8 dereferenceable(24) %b) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIfLNS_8internal21SymmMatrixOrientationE0EEENS_5ArrayILi1ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array.25"* noalias sret(%"class.adept::Array.25") align 8 %agg.result, %"class.adept::SpecialMatrix"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array.25"* nonnull align 8 dereferenceable(24) %b) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIfLNS_8internal21SymmMatrixOrientationE1EEENS_5ArrayILi1ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array.25"* noalias sret(%"class.adept::Array.25") align 8 %agg.result, %"class.adept::SpecialMatrix.9"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array.25"* nonnull align 8 dereferenceable(24) %b) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIfEENS_5ArrayILi2ET_Lb0EEERKS3_S5_(%"class.adept::Array"* noalias sret(%"class.adept::Array") align 8 %agg.result, %"class.adept::Array"* nonnull align 8 dereferenceable(32) %A, %"class.adept::Array"* nonnull align 8 dereferenceable(32) %B) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIfLNS_8internal21SymmMatrixOrientationE0EEENS_5ArrayILi2ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array"* noalias sret(%"class.adept::Array") align 8 %agg.result, %"class.adept::SpecialMatrix"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array"* nonnull align 8 dereferenceable(32) %B) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIfLNS_8internal21SymmMatrixOrientationE1EEENS_5ArrayILi2ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array"* noalias sret(%"class.adept::Array") align 8 %agg.result, %"class.adept::SpecialMatrix.9"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array"* nonnull align 8 dereferenceable(32) %B) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIdEENS_5ArrayILi1ET_Lb0EEERKNS1_ILi2ES2_Lb0EEERKS3_(%"class.adept::Array.28"* noalias sret(%"class.adept::Array.28") align 8 %agg.result, %"class.adept::Array.12"* nonnull align 8 dereferenceable(32) %A, %"class.adept::Array.28"* nonnull align 8 dereferenceable(24) %b) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIdLNS_8internal21SymmMatrixOrientationE0EEENS_5ArrayILi1ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array.28"* noalias sret(%"class.adept::Array.28") align 8 %agg.result, %"class.adept::SpecialMatrix.15"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array.28"* nonnull align 8 dereferenceable(24) %b) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIdLNS_8internal21SymmMatrixOrientationE1EEENS_5ArrayILi1ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array.28"* noalias sret(%"class.adept::Array.28") align 8 %agg.result, %"class.adept::SpecialMatrix.17"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array.28"* nonnull align 8 dereferenceable(24) %b) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIdEENS_5ArrayILi2ET_Lb0EEERKS3_S5_(%"class.adept::Array.12"* noalias sret(%"class.adept::Array.12") align 8 %agg.result, %"class.adept::Array.12"* nonnull align 8 dereferenceable(32) %A, %"class.adept::Array.12"* nonnull align 8 dereferenceable(32) %B) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIdLNS_8internal21SymmMatrixOrientationE0EEENS_5ArrayILi2ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array.12"* noalias sret(%"class.adept::Array.12") align 8 %agg.result, %"class.adept::SpecialMatrix.15"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array.12"* nonnull align 8 dereferenceable(32) %B) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIdLNS_8internal21SymmMatrixOrientationE1EEENS_5ArrayILi2ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array.12"* noalias sret(%"class.adept::Array.12") align 8 %agg.result, %"class.adept::SpecialMatrix.17"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array.12"* nonnull align 8 dereferenceable(32) %B) local_unnamed_addr #6 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #30
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #30
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept8linspaceEddi(%"class.adept::Array.28"* noalias nonnull sret(%"class.adept::Array.28") align 8 %agg.result, double %x1, double %x2, i32 %n) local_unnamed_addr #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %dim.i.i = alloca [7 x i32], align 16
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %storage_.i = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %agg.result, i64 0, i32 1
  store %"class.adept::Storage.14"* null, %"class.adept::Storage.14"** %storage_.i, align 8, !tbaa !141
  %0 = bitcast [7 x i32]* %dim.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #30
  %arrayinit.begin.i.i = getelementptr inbounds [7 x i32], [7 x i32]* %dim.i.i, i64 0, i64 0
  store i32 %n, i32* %arrayinit.begin.i.i, align 16, !tbaa !49
  %arrayinit.element.i.i = getelementptr inbounds [7 x i32], [7 x i32]* %dim.i.i, i64 0, i64 1
  %1 = bitcast i32* %arrayinit.element.i.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(24) %1, i8 -1, i64 24, i1 false)
  call void @_ZN5adept5ArrayILi1EdLb0EE6resizeEPKib(%"class.adept::Array.28"* nonnull dereferenceable(24) %agg.result, i32* nonnull %arrayinit.begin.i.i, i1 zeroext false)
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #30
  %cmp = icmp sgt i32 %n, 1
  br i1 %cmp, label %invoke.cont.lr.ph, label %if.else

invoke.cont.lr.ph:                                ; preds = %entry
  %data_.i = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %agg.result, i64 0, i32 0
  %2 = load double*, double** %data_.i, align 8, !tbaa !144
  %arrayidx.i4.i = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %agg.result, i64 0, i32 3, i32 0, i64 0
  %3 = load i32, i32* %arrayidx.i4.i, align 4, !tbaa !49
  %sub = fsub fast double %x2, %x1
  %sub2 = add nsw i32 %n, -1
  %conv3 = sitofp i32 %sub2 to double
  %4 = sext i32 %3 to i64
  %wide.trip.count = zext i32 %n to i64
  %5 = fdiv fast double 1.000000e+00, %conv3
  br label %invoke.cont

invoke.cont:                                      ; preds = %invoke.cont, %invoke.cont.lr.ph
  %indvars.iv = phi i64 [ 0, %invoke.cont.lr.ph ], [ %indvars.iv.next, %invoke.cont ]
  %6 = mul nsw i64 %indvars.iv, %4
  %arrayidx.i = getelementptr inbounds double, double* %2, i64 %6
  %7 = trunc i64 %indvars.iv to i32
  %conv = sitofp i32 %7 to double
  %mul = fmul fast double %sub, %conv
  %8 = fmul fast double %mul, %5
  %add = fadd fast double %8, %x1
  store double %add, double* %arrayidx.i, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %nrvo.skipdtor, label %invoke.cont, !llvm.loop !145

if.else:                                          ; preds = %entry
  %cmp4 = icmp eq i32 %n, 1
  %cmp5 = fcmp fast oeq double %x1, %x2
  %or.cond = and i1 %cmp5, %cmp4
  br i1 %or.cond, label %invoke.cont8, label %if.else10

invoke.cont8:                                     ; preds = %if.else
  %data_.i43 = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %agg.result, i64 0, i32 0
  %9 = load double*, double** %data_.i43, align 8, !tbaa !144
  store double %x1, double* %9, align 8, !tbaa !46
  br label %nrvo.skipdtor

if.else10:                                        ; preds = %if.else
  br i1 %cmp4, label %if.then12, label %nrvo.skipdtor

if.then12:                                        ; preds = %if.else10
  %exception = call i8* @__cxa_allocate_exception(i64 40) #30
  %10 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %10) #30
  %11 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %12 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %11, %union.anon** %12, align 8, !tbaa !12
  %13 = bitcast %union.anon* %11 to i8*
  %14 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %14) #30
  store i64 46, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i45 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.then12
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i45, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %15 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %15, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(46) %call5.i.i.i10.i45, i8* nonnull align 1 dereferenceable(46) getelementptr inbounds ([47 x i8], [47 x i8]* @.str.82, i64 0, i64 0), i64 46, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %15, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i45, i64 %15
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %14) #30
  %16 = bitcast i8* %exception to %"class.adept::invalid_operation"*
  invoke void @_ZN5adept17invalid_operationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %16, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont17 unwind label %lpad16

invoke.cont17:                                    ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_operationE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad16

ehcleanup.thread:                                 ; preds = %if.then12
  %17 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10) #30
  br label %cleanup.action

lpad16:                                           ; preds = %invoke.cont17, %call5.i.i.i10.i.noexc
  %cleanup.isactive.0 = phi i1 [ false, %invoke.cont17 ], [ true, %call5.i.i.i10.i.noexc ]
  %18 = landingpad { i8*, i32 }
          cleanup
  %19 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %19, %13
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i

if.then.i.i:                                      ; preds = %lpad16
  call void @_ZdlPv(i8* %19) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10) #30
  br i1 %cleanup.isactive.0, label %cleanup.action, label %ehcleanup23

ehcleanup:                                        ; preds = %lpad16
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %10) #30
  br i1 %cleanup.isactive.0, label %cleanup.action, label %ehcleanup23

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i, %ehcleanup.thread
  %.pn48 = phi { i8*, i32 } [ %17, %ehcleanup.thread ], [ %18, %ehcleanup ], [ %18, %if.then.i.i ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %ehcleanup23

nrvo.skipdtor:                                    ; preds = %invoke.cont, %if.else10, %invoke.cont8
  ret void

ehcleanup23:                                      ; preds = %cleanup.action, %ehcleanup, %if.then.i.i
  %.pn40 = phi { i8*, i32 } [ %.pn48, %cleanup.action ], [ %18, %ehcleanup ], [ %18, %if.then.i.i ]
  %20 = load %"class.adept::Storage.14"*, %"class.adept::Storage.14"** %storage_.i, align 8, !tbaa !141
  %tobool.not.i = icmp eq %"class.adept::Storage.14"* %20, null
  br i1 %tobool.not.i, label %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit, label %if.then.i

if.then.i:                                        ; preds = %ehcleanup23
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage.14"* nonnull dereferenceable(20) %20)
          to label %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %if.then.i
  %21 = landingpad { i8*, i32 }
          catch i8* null
  %22 = extractvalue { i8*, i32 } %21, 0
  call void @__clang_call_terminate(i8* %22) #35
  unreachable

_ZN5adept5ArrayILi1EdLb0EED2Ev.exit:              ; preds = %if.then.i, %ehcleanup23
  resume { i8*, i32 } %.pn40

unreachable:                                      ; preds = %invoke.cont17
  unreachable
}

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #17 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %start.i38 = alloca %struct.timeval, align 8
  %end.i39 = alloca %struct.timeval, align 8
  %start5.i40 = alloca %struct.timeval, align 8
  %end6.i41 = alloca %struct.timeval, align 8
  %start14.i42 = alloca %struct.timeval, align 8
  %end15.i43 = alloca %struct.timeval, align 8
  %start.i10 = alloca %struct.timeval, align 8
  %end.i11 = alloca %struct.timeval, align 8
  %start5.i12 = alloca %struct.timeval, align 8
  %end6.i13 = alloca %struct.timeval, align 8
  %start14.i = alloca %struct.timeval, align 8
  %end15.i = alloca %struct.timeval, align 8
  %gradient.i.i.i = alloca double, align 8
  %ref.tmp.i.i.i.i = alloca %"struct.adept::internal::BinaryOperation", align 8
  %ref.tmp.i.i51.i = alloca i32, align 4
  %ref.tmp1.i.i.i = alloca %"struct.adept::internal::BinaryOpScalarRight", align 16
  %ref.tmp2.i.i.i = alloca { %"class.adept::Active"*, i32 }, align 8
  %xin.addr.i.i = alloca double, align 8
  %stack.i.i = alloca %"class.adept::Stack", align 8
  %x.i.i = alloca %"class.adept::Active", align 8
  %y.i.i = alloca %"class.adept::Active", align 8
  %agg.tmp.i.i = alloca %"class.adept::Active", align 8
  %ref.tmp.i52.i = alloca double, align 8
  %ref.tmp.i.i.i = alloca %"struct.adept::internal::BinaryOperation", align 8
  %ref.tmp.i.i = alloca i32, align 4
  %ref.tmp1.i.i = alloca %"struct.adept::internal::BinaryOpScalarRight", align 16
  %ref.tmp2.i.i = alloca { %"class.adept::Active"*, i32 }, align 8
  %inp.addr.i = alloca double, align 8
  %start.i = alloca %struct.timeval, align 8
  %end.i = alloca %struct.timeval, align 8
  %start5.i = alloca %struct.timeval, align 8
  %end6.i = alloca %struct.timeval, align 8
  %stack.i = alloca %"class.adept::Stack", align 8
  %resa.i = alloca %"class.adept::Active", align 8
  %agg.tmp.i = alloca %"class.adept::Active", align 8
  %start23.i = alloca %struct.timeval, align 8
  %end24.i = alloca %struct.timeval, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %0 = load i8*, i8** %arrayidx, align 8, !tbaa !29
  %call.i = tail call fast double @strtod(i8* nocapture nonnull %0, i8** null) #30
  %puts = tail call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([6 x i8], [6 x i8]* @str, i64 0, i64 0))
  %1 = bitcast double* %inp.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1)
  %2 = bitcast %"class.adept::Active"* %agg.tmp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2)
  store double %call.i, double* %inp.addr.i, align 8, !tbaa !46
  %3 = bitcast %struct.timeval* %start.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %3) #30
  %4 = bitcast %struct.timeval* %end.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #30
  %call.i9 = call i32 @gettimeofday(%struct.timeval* nonnull %start.i, i8* null) #30
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %entry
  %i.08.i.i = phi i32 [ 1, %entry ], [ %inc.i.i, %for.body.i.i ]
  %sum.07.i.i = phi double [ 0.000000e+00, %entry ], [ %add.i.i, %for.body.i.i ]
  %5 = tail call fast double @llvm.powi.f64(double %call.i, i32 %i.08.i.i) #30
  %conv.i.i = sitofp i32 %i.08.i.i to double
  %div.i.i = fdiv fast double %5, %conv.i.i
  %add.i.i = fadd fast double %div.i.i, %sum.07.i.i
  %inc.i.i = add nuw nsw i32 %i.08.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 101
  br i1 %exitcond.not.i.i, label %_ZL11sincos_reald.exit.i, label %for.body.i.i, !llvm.loop !146

_ZL11sincos_reald.exit.i:                         ; preds = %for.body.i.i
  %call2.i = call i32 @gettimeofday(%struct.timeval* nonnull %end.i, i8* null) #30
  %tv_sec.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i, i64 0, i32 0
  %6 = load i64, i64* %tv_sec.i.i, align 8, !tbaa !2
  %tv_sec1.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i, i64 0, i32 0
  %7 = load i64, i64* %tv_sec1.i.i, align 8, !tbaa !2
  %sub.i.i = sub nsw i64 %6, %7
  %conv.i36.i = sitofp i64 %sub.i.i to double
  %tv_usec.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i, i64 0, i32 1
  %8 = load i64, i64* %tv_usec.i.i, align 8, !tbaa !7
  %tv_usec2.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i, i64 0, i32 1
  %9 = load i64, i64* %tv_usec2.i.i, align 8, !tbaa !7
  %sub3.i.i = sub nsw i64 %8, %9
  %conv4.i.i = sitofp i64 %sub3.i.i to double
  %mul.i.i = fmul fast double %conv4.i.i, 0x3EB0C6F7A0B5ED8D
  %add.i37.i = fadd fast double %mul.i.i, %conv.i36.i
  %conv5.i.i = fptrunc double %add.i37.i to float
  %conv.i = fpext float %conv5.i.i to double
  %call4.i = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87, i64 0, i64 0), double %conv.i, double %add.i.i)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #30
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %3) #30
  %10 = bitcast %struct.timeval* %start5.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #30
  %11 = bitcast %struct.timeval* %end6.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %11) #30
  %call7.i = call i32 @gettimeofday(%struct.timeval* nonnull %start5.i, i8* null) #30
  %12 = bitcast %"class.adept::Stack"* %stack.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %12) #30
  call void @_ZN5adept5StackC2Eb(%"class.adept::Stack"* nonnull dereferenceable(149) %stack.i, i1 zeroext true)
  %13 = bitcast %"class.adept::Active"* %resa.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %13) #30
  invoke void @_ZN5adept6ActiveIdEC2IdEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp.i, double* nonnull align 8 dereferenceable(8) %inp.addr.i, i8* null)
          to label %invoke.cont.i unwind label %lpad.i

invoke.cont.i:                                    ; preds = %_ZL11sincos_reald.exit.i
  %14 = bitcast i32* %ref.tmp.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %14) #30, !noalias !147
  store i32 0, i32* %ref.tmp.i.i, align 4, !tbaa !49, !noalias !147
  invoke void @_ZN5adept6ActiveIdEC2IiEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %resa.i, i32* nonnull align 4 dereferenceable(4) %ref.tmp.i.i, i8* null)
          to label %.noexc.i unwind label %lpad8.i

.noexc.i:                                         ; preds = %invoke.cont.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %14) #30, !noalias !147
  %15 = bitcast %"struct.adept::internal::BinaryOpScalarRight"* %ref.tmp1.i.i to i8*
  %16 = bitcast { %"class.adept::Active"*, i32 }* %ref.tmp2.i.i to i8*
  %17 = getelementptr inbounds { %"class.adept::Active"*, i32 }, { %"class.adept::Active"*, i32 }* %ref.tmp2.i.i, i64 0, i32 0
  %18 = getelementptr inbounds { %"class.adept::Active"*, i32 }, { %"class.adept::Active"*, i32 }* %ref.tmp2.i.i, i64 0, i32 1
  %19 = bitcast %"struct.adept::internal::BinaryOpScalarRight"* %ref.tmp1.i.i to { %"class.adept::Active"*, i32 }**
  %data.i.i.i.i.i = getelementptr inbounds %"struct.adept::internal::BinaryOpScalarRight", %"struct.adept::internal::BinaryOpScalarRight"* %ref.tmp1.i.i, i64 0, i32 1, i32 0, i32 0
  %20 = bitcast %"struct.adept::internal::BinaryOperation"* %ref.tmp.i.i.i to i8*
  %21 = getelementptr inbounds %"struct.adept::internal::BinaryOperation", %"struct.adept::internal::BinaryOperation"* %ref.tmp.i.i.i, i64 0, i32 0
  %22 = getelementptr inbounds %"struct.adept::internal::BinaryOperation", %"struct.adept::internal::BinaryOperation"* %ref.tmp.i.i.i, i64 0, i32 1
  %23 = bitcast %"struct.adept::internal::BinaryOperation"* %ref.tmp.i.i.i to %"struct.adept::Expression.35"*
  br label %invoke.cont3.i.i

invoke.cont3.i.i:                                 ; preds = %invoke.cont4.i.i, %.noexc.i
  %storemerge13.i.i = phi i32 [ 1, %.noexc.i ], [ %inc.i38.i, %invoke.cont4.i.i ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %15) #30, !noalias !147
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #30, !noalias !147
  store %"class.adept::Active"* %agg.tmp.i, %"class.adept::Active"** %17, align 8, !noalias !147
  store i32 %storemerge13.i.i, i32* %18, align 8, !noalias !147
  %conv.i.i.i = sitofp i32 %storemerge13.i.i to double
  store { %"class.adept::Active"*, i32 }* %ref.tmp2.i.i, { %"class.adept::Active"*, i32 }** %19, align 16, !tbaa !29, !alias.scope !150, !noalias !147
  %vecinit.i.i.i.i.i.i = insertelement <2 x double> undef, double %conv.i.i.i, i32 0
  %vecinit1.i.i.i.i.i.i = shufflevector <2 x double> %vecinit.i.i.i.i.i.i, <2 x double> undef, <2 x i32> zeroinitializer
  store <2 x double> %vecinit1.i.i.i.i.i.i, <2 x double>* %data.i.i.i.i.i, align 16, !tbaa !15, !alias.scope !150, !noalias !147
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %20) #30, !noalias !147
  store %"class.adept::Active"* %resa.i, %"class.adept::Active"** %21, align 8, !noalias !147
  store %"struct.adept::internal::BinaryOpScalarRight"* %ref.tmp1.i.i, %"struct.adept::internal::BinaryOpScalarRight"** %22, align 8, !noalias !147
  %call2.i7.i.i = invoke nonnull align 8 dereferenceable(12) %"class.adept::Active"* @_ZN5adept6ActiveIdEaSIdNS_8internal15BinaryOperationIdS1_NS3_3AddENS3_19BinaryOpScalarRightIdNS6_IdS1_NS3_3PowEiEENS3_6DivideEdEEEEEENS3_9enable_ifIXaasrT0_9is_activeeqsrSD_4rankLi0EERS1_E4typeERKNS_10ExpressionIT_SD_EE(%"class.adept::Active"* nonnull dereferenceable(12) %resa.i, %"struct.adept::Expression.35"* nonnull align 1 dereferenceable(1) %23)
          to label %invoke.cont4.i.i unwind label %lpad.i.i

invoke.cont4.i.i:                                 ; preds = %invoke.cont3.i.i
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %20) #30, !noalias !147
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #30, !noalias !147
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #30, !noalias !147
  %inc.i38.i = add nuw nsw i32 %storemerge13.i.i, 1
  %exitcond.not.i39.i = icmp eq i32 %inc.i38.i, 101
  br i1 %exitcond.not.i39.i, label %invoke.cont9.i, label %invoke.cont3.i.i, !llvm.loop !153

lpad.i.i:                                         ; preds = %invoke.cont3.i.i
  %24 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #30, !noalias !147
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %15) #30, !noalias !147
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %resa.i) #30
  br label %lpad8.body.i

invoke.cont9.i:                                   ; preds = %invoke.cont4.i.i
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp.i) #30
  %val_.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %resa.i, i64 0, i32 0
  %25 = load double, double* %val_.i.i, align 8, !tbaa !154
  %call14.i = call i32 @gettimeofday(%struct.timeval* nonnull %end6.i, i8* null) #30
  %tv_sec.i40.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end6.i, i64 0, i32 0
  %26 = load i64, i64* %tv_sec.i40.i, align 8, !tbaa !2
  %tv_sec1.i41.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start5.i, i64 0, i32 0
  %27 = load i64, i64* %tv_sec1.i41.i, align 8, !tbaa !2
  %sub.i42.i = sub nsw i64 %26, %27
  %conv.i43.i = sitofp i64 %sub.i42.i to double
  %tv_usec.i44.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end6.i, i64 0, i32 1
  %28 = load i64, i64* %tv_usec.i44.i, align 8, !tbaa !7
  %tv_usec2.i45.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start5.i, i64 0, i32 1
  %29 = load i64, i64* %tv_usec2.i45.i, align 8, !tbaa !7
  %sub3.i46.i = sub nsw i64 %28, %29
  %conv4.i47.i = sitofp i64 %sub3.i46.i to double
  %mul.i48.i = fmul fast double %conv4.i47.i, 0x3EB0C6F7A0B5ED8D
  %add.i49.i = fadd fast double %mul.i48.i, %conv.i43.i
  %conv5.i50.i = fptrunc double %add.i49.i to float
  %conv16.i = fpext float %conv5.i50.i to double
  %call18.i = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87, i64 0, i64 0), double %conv16.i, double %25)
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %resa.i) #30
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #30
  call void @_ZN5adept5StackD2Ev(%"class.adept::Stack"* nonnull dereferenceable(149) %stack.i) #30
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %12) #30
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #30
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #30
  %30 = bitcast %struct.timeval* %start23.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %30) #30
  %31 = bitcast %struct.timeval* %end24.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %31) #30
  %call25.i = call i32 @gettimeofday(%struct.timeval* nonnull %start23.i, i8* null) #30
  %32 = load double, double* %inp.addr.i, align 8, !tbaa !46
  %33 = bitcast double* %xin.addr.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33)
  %34 = bitcast %"class.adept::Active"* %agg.tmp.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %34)
  store double %32, double* %xin.addr.i.i, align 8, !tbaa !46
  %35 = bitcast %"class.adept::Stack"* %stack.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %35) #30
  call void @_ZN5adept5StackC2Eb(%"class.adept::Stack"* nonnull dereferenceable(149) %stack.i.i, i1 zeroext true)
  %36 = bitcast %"class.adept::Active"* %x.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %36) #30
  invoke void @_ZN5adept6ActiveIdEC2IdEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %x.i.i, double* nonnull align 8 dereferenceable(8) %xin.addr.i.i, i8* null)
          to label %invoke.cont.i.i unwind label %lpad.i54.i

invoke.cont.i.i:                                  ; preds = %invoke.cont9.i
  %n_operations_.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i.i, i64 0, i32 0, i32 5
  store i32 0, i32* %n_operations_.i.i.i.i, align 8, !tbaa !77
  %n_statements_.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i.i, i64 0, i32 0, i32 3
  store i32 0, i32* %n_statements_.i.i.i.i, align 8, !tbaa !43
  %_M_start.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i.i, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %37 = load i32*, i32** %_M_start.i.i.i.i.i, align 8, !tbaa !36
  %_M_finish.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i.i, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %38 = load i32*, i32** %_M_finish.i.i.i.i.i.i, align 8, !tbaa !79
  %tobool.not.i.i.i.i.i.i = icmp eq i32* %38, %37
  br i1 %tobool.not.i.i.i.i.i.i, label %_ZN5adept5Stack18clear_independentsEv.exit.i.i.i, label %invoke.cont.i.i.i.i.i.i

invoke.cont.i.i.i.i.i.i:                          ; preds = %invoke.cont.i.i
  store i32* %37, i32** %_M_finish.i.i.i.i.i.i, align 8, !tbaa !79
  br label %_ZN5adept5Stack18clear_independentsEv.exit.i.i.i

_ZN5adept5Stack18clear_independentsEv.exit.i.i.i: ; preds = %invoke.cont.i.i.i.i.i.i, %invoke.cont.i.i
  %_M_start.i.i4.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i.i, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %39 = load i32*, i32** %_M_start.i.i4.i.i.i, align 8, !tbaa !36
  %_M_finish.i.i.i5.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i.i, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %40 = load i32*, i32** %_M_finish.i.i.i5.i.i.i, align 8, !tbaa !79
  %tobool.not.i.i.i6.i.i.i = icmp eq i32* %40, %39
  br i1 %tobool.not.i.i.i6.i.i.i, label %_ZN5adept5Stack16clear_dependentsEv.exit.i.i.i, label %invoke.cont.i.i.i7.i.i.i

invoke.cont.i.i.i7.i.i.i:                         ; preds = %_ZN5adept5Stack18clear_independentsEv.exit.i.i.i
  store i32* %39, i32** %_M_finish.i.i.i5.i.i.i, align 8, !tbaa !79
  br label %_ZN5adept5Stack16clear_dependentsEv.exit.i.i.i

_ZN5adept5Stack16clear_dependentsEv.exit.i.i.i:   ; preds = %invoke.cont.i.i.i7.i.i.i, %_ZN5adept5Stack18clear_independentsEv.exit.i.i.i
  %gradients_initialized_.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i.i, i64 0, i32 10
  store i8 0, i8* %gradients_initialized_.i.i.i.i, align 8, !tbaa !42
  %i_gradient_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i.i, i64 0, i32 6
  %41 = load i32, i32* %i_gradient_.i.i.i, align 8, !tbaa !65
  %add.i.i.i = add nsw i32 %41, 1
  %max_gradient_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i.i, i64 0, i32 8
  store i32 %add.i.i.i, i32* %max_gradient_.i.i.i, align 8, !tbaa !66
  %n_allocated_statements_.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i.i, i64 0, i32 0, i32 4
  %42 = load i32, i32* %n_allocated_statements_.i.i.i.i, align 4, !tbaa !76
  %cmp.not.i.i.i.i = icmp sgt i32 %42, 0
  br i1 %cmp.not.i.i.i.i, label %entry.if.end_crit_edge.i.i.i.i, label %if.then.i.i.i.i

entry.if.end_crit_edge.i.i.i.i:                   ; preds = %_ZN5adept5Stack16clear_dependentsEv.exit.i.i.i
  %statement_.phi.trans.insert.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i.i, i64 0, i32 0, i32 0
  %.pre.i.i.i.i = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i.i.i.i, align 8, !tbaa !38
  br label %invoke.cont2.i.i

if.then.i.i.i.i:                                  ; preds = %_ZN5adept5Stack16clear_dependentsEv.exit.i.i.i
  %mul.i.i.i.i.i = shl nsw i32 %42, 1
  %conv.i.i.i.i.i = sext i32 %mul.i.i.i.i.i to i64
  %43 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i.i.i.i, i64 8)
  %44 = extractvalue { i64, i1 } %43, 1
  %45 = extractvalue { i64, i1 } %43, 0
  %46 = select i1 %44, i64 -1, i64 %45
  %call.i.i.i5.i.i = invoke noalias nonnull i8* @_Znam(i64 %46) #34
          to label %call.i.i.i.noexc.i.i unwind label %lpad1.i.i

call.i.i.i.noexc.i.i:                             ; preds = %if.then.i.i.i.i
  %47 = bitcast %"class.adept::Stack"* %stack.i.i to i8**
  %48 = load i8*, i8** %47, align 8, !tbaa !38
  %isnull.i.i.i.i.i = icmp eq i8* %48, null
  br i1 %isnull.i.i.i.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i.i.i, label %delete.notnull.i.i.i.i.i

delete.notnull.i.i.i.i.i:                         ; preds = %call.i.i.i.noexc.i.i
  call void @_ZdaPv(i8* nonnull %48) #32
  %.pre7.pre.i.i.i.i = load i32, i32* %n_statements_.i.i.i.i, align 8, !tbaa !43
  %.pre.pre.i.i.i = load i32, i32* %n_operations_.i.i.i.i, align 8, !tbaa !77
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i.i.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i.i.i: ; preds = %delete.notnull.i.i.i.i.i, %call.i.i.i.noexc.i.i
  %.pre.i.i.i = phi i32 [ 0, %call.i.i.i.noexc.i.i ], [ %.pre.pre.i.i.i, %delete.notnull.i.i.i.i.i ]
  %.pre7.i.i.i.i = phi i32 [ 0, %call.i.i.i.noexc.i.i ], [ %.pre7.pre.i.i.i.i, %delete.notnull.i.i.i.i.i ]
  store i8* %call.i.i.i5.i.i, i8** %47, align 8, !tbaa !38
  store i32 %mul.i.i.i.i.i, i32* %n_allocated_statements_.i.i.i.i, align 4, !tbaa !76
  %49 = bitcast i8* %call.i.i.i5.i.i to %"struct.adept::internal::Statement"*
  br label %invoke.cont2.i.i

invoke.cont2.i.i:                                 ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i.i.i, %entry.if.end_crit_edge.i.i.i.i
  %50 = phi i32 [ 0, %entry.if.end_crit_edge.i.i.i.i ], [ %.pre.i.i.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i.i.i ]
  %51 = phi i32 [ 0, %entry.if.end_crit_edge.i.i.i.i ], [ %.pre7.i.i.i.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i.i.i ]
  %52 = phi %"struct.adept::internal::Statement"* [ %.pre.i.i.i.i, %entry.if.end_crit_edge.i.i.i.i ], [ %49, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i.i.i ]
  %idxprom.i.i.i.i = sext i32 %51 to i64
  %index.i.i.i.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %52, i64 %idxprom.i.i.i.i, i32 0
  store i32 -1, i32* %index.i.i.i.i, align 4, !tbaa !44
  %inc.i.i.i.i = add nsw i32 %51, 1
  store i32 %inc.i.i.i.i, i32* %n_statements_.i.i.i.i, align 8, !tbaa !43
  %end_plus_one.i.i.i.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %52, i64 %idxprom.i.i.i.i, i32 1
  store i32 %50, i32* %end_plus_one.i.i.i.i, align 4, !tbaa !48
  %53 = bitcast %"class.adept::Active"* %y.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %53) #30
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp.i.i, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %x.i.i)
          to label %invoke.cont4.i53.i unwind label %lpad3.i.i

invoke.cont4.i53.i:                               ; preds = %invoke.cont2.i.i
  %54 = bitcast i32* %ref.tmp.i.i51.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %54) #30, !noalias !156
  store i32 0, i32* %ref.tmp.i.i51.i, align 4, !tbaa !49, !noalias !156
  invoke void @_ZN5adept6ActiveIdEC2IiEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %y.i.i, i32* nonnull align 4 dereferenceable(4) %ref.tmp.i.i51.i, i8* null)
          to label %.noexc.i.i unwind label %lpad5.i.i

.noexc.i.i:                                       ; preds = %invoke.cont4.i53.i
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %54) #30, !noalias !156
  %55 = bitcast %"struct.adept::internal::BinaryOpScalarRight"* %ref.tmp1.i.i.i to i8*
  %56 = bitcast { %"class.adept::Active"*, i32 }* %ref.tmp2.i.i.i to i8*
  %57 = getelementptr inbounds { %"class.adept::Active"*, i32 }, { %"class.adept::Active"*, i32 }* %ref.tmp2.i.i.i, i64 0, i32 0
  %58 = getelementptr inbounds { %"class.adept::Active"*, i32 }, { %"class.adept::Active"*, i32 }* %ref.tmp2.i.i.i, i64 0, i32 1
  %59 = bitcast %"struct.adept::internal::BinaryOpScalarRight"* %ref.tmp1.i.i.i to { %"class.adept::Active"*, i32 }**
  %data.i.i.i.i.i.i = getelementptr inbounds %"struct.adept::internal::BinaryOpScalarRight", %"struct.adept::internal::BinaryOpScalarRight"* %ref.tmp1.i.i.i, i64 0, i32 1, i32 0, i32 0
  %60 = bitcast %"struct.adept::internal::BinaryOperation"* %ref.tmp.i.i.i.i to i8*
  %61 = getelementptr inbounds %"struct.adept::internal::BinaryOperation", %"struct.adept::internal::BinaryOperation"* %ref.tmp.i.i.i.i, i64 0, i32 0
  %62 = getelementptr inbounds %"struct.adept::internal::BinaryOperation", %"struct.adept::internal::BinaryOperation"* %ref.tmp.i.i.i.i, i64 0, i32 1
  %63 = bitcast %"struct.adept::internal::BinaryOperation"* %ref.tmp.i.i.i.i to %"struct.adept::Expression.35"*
  br label %invoke.cont3.i.i.i

invoke.cont3.i.i.i:                               ; preds = %invoke.cont4.i.i.i, %.noexc.i.i
  %storemerge13.i.i.i = phi i32 [ 1, %.noexc.i.i ], [ %inc.i.i.i, %invoke.cont4.i.i.i ]
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %55) #30, !noalias !156
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %56) #30, !noalias !156
  store %"class.adept::Active"* %agg.tmp.i.i, %"class.adept::Active"** %57, align 8, !noalias !156
  store i32 %storemerge13.i.i.i, i32* %58, align 8, !noalias !156
  %conv.i.i.i.i = sitofp i32 %storemerge13.i.i.i to double
  store { %"class.adept::Active"*, i32 }* %ref.tmp2.i.i.i, { %"class.adept::Active"*, i32 }** %59, align 16, !tbaa !29, !alias.scope !159, !noalias !156
  %vecinit.i.i.i.i.i.i.i = insertelement <2 x double> undef, double %conv.i.i.i.i, i32 0
  %vecinit1.i.i.i.i.i.i.i = shufflevector <2 x double> %vecinit.i.i.i.i.i.i.i, <2 x double> undef, <2 x i32> zeroinitializer
  store <2 x double> %vecinit1.i.i.i.i.i.i.i, <2 x double>* %data.i.i.i.i.i.i, align 16, !tbaa !15, !alias.scope !159, !noalias !156
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %60) #30, !noalias !156
  store %"class.adept::Active"* %y.i.i, %"class.adept::Active"** %61, align 8, !noalias !156
  store %"struct.adept::internal::BinaryOpScalarRight"* %ref.tmp1.i.i.i, %"struct.adept::internal::BinaryOpScalarRight"** %62, align 8, !noalias !156
  %call2.i7.i.i.i = invoke nonnull align 8 dereferenceable(12) %"class.adept::Active"* @_ZN5adept6ActiveIdEaSIdNS_8internal15BinaryOperationIdS1_NS3_3AddENS3_19BinaryOpScalarRightIdNS6_IdS1_NS3_3PowEiEENS3_6DivideEdEEEEEENS3_9enable_ifIXaasrT0_9is_activeeqsrSD_4rankLi0EERS1_E4typeERKNS_10ExpressionIT_SD_EE(%"class.adept::Active"* nonnull dereferenceable(12) %y.i.i, %"struct.adept::Expression.35"* nonnull align 1 dereferenceable(1) %63)
          to label %invoke.cont4.i.i.i unwind label %lpad.i.i.i

invoke.cont4.i.i.i:                               ; preds = %invoke.cont3.i.i.i
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %60) #30, !noalias !156
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %56) #30, !noalias !156
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %55) #30, !noalias !156
  %inc.i.i.i = add nuw nsw i32 %storemerge13.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 101
  br i1 %exitcond.not.i.i.i, label %invoke.cont6.i.i, label %invoke.cont3.i.i.i, !llvm.loop !153

lpad.i.i.i:                                       ; preds = %invoke.cont3.i.i.i
  %64 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %56) #30, !noalias !156
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %55) #30, !noalias !156
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %y.i.i) #30
  br label %lpad5.body.i.i

invoke.cont6.i.i:                                 ; preds = %invoke.cont4.i.i.i
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp.i.i) #30
  %65 = bitcast double* %ref.tmp.i52.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %65) #30
  store double 1.000000e+00, double* %ref.tmp.i52.i, align 8, !tbaa !46
  %66 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !29
  %gradient_index_.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %y.i.i, i64 0, i32 1
  %67 = load i32, i32* %gradient_index_.i.i.i, align 8, !tbaa !162
  %add.i6.i.i = add nsw i32 %67, 1
  invoke void @_ZN5adept5Stack13set_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPKS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %66, i32 %67, i32 %add.i6.i.i, double* nonnull %ref.tmp.i52.i)
          to label %invoke.cont8.i.i unwind label %lpad7.i.i

invoke.cont8.i.i:                                 ; preds = %invoke.cont6.i.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %65) #30
  invoke void @_ZN5adept5Stack15compute_adjointEv(%"class.adept::Stack"* nonnull dereferenceable(149) %stack.i.i)
          to label %invoke.cont10.i.i unwind label %lpad9.i.i

invoke.cont10.i.i:                                ; preds = %invoke.cont8.i.i
  %68 = bitcast double* %gradient.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %68) #30
  store double 0.000000e+00, double* %gradient.i.i.i, align 8, !tbaa !46
  %69 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !29
  %gradient_index_.i8.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %x.i.i, i64 0, i32 1
  %70 = load i32, i32* %gradient_index_.i8.i.i, align 8, !tbaa !162
  %add.i9.i.i = add nsw i32 %70, 1
  invoke void @_ZNK5adept5Stack13get_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %69, i32 %70, i32 %add.i9.i.i, double* nonnull %gradient.i.i.i)
          to label %_ZL12adept_sincosd.exit unwind label %lpad9.i.i

lpad.i54.i:                                       ; preds = %invoke.cont9.i
  %71 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup15.i.i

lpad1.i.i:                                        ; preds = %if.then.i.i.i.i
  %72 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup14.i.i

lpad3.i.i:                                        ; preds = %invoke.cont2.i.i
  %73 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup13.i.i

lpad5.i.i:                                        ; preds = %invoke.cont4.i53.i
  %74 = landingpad { i8*, i32 }
          cleanup
  br label %lpad5.body.i.i

lpad5.body.i.i:                                   ; preds = %lpad5.i.i, %lpad.i.i.i
  %eh.lpad-body.i.i = phi { i8*, i32 } [ %74, %lpad5.i.i ], [ %64, %lpad.i.i.i ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp.i.i) #30
  br label %ehcleanup13.i.i

lpad7.i.i:                                        ; preds = %invoke.cont6.i.i
  %75 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %65) #30
  br label %ehcleanup.i.i

lpad9.i.i:                                        ; preds = %invoke.cont10.i.i, %invoke.cont8.i.i
  %76 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup.i.i

ehcleanup.i.i:                                    ; preds = %lpad9.i.i, %lpad7.i.i
  %.pn.i.i = phi { i8*, i32 } [ %76, %lpad9.i.i ], [ %75, %lpad7.i.i ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %y.i.i) #30
  br label %ehcleanup13.i.i

ehcleanup13.i.i:                                  ; preds = %ehcleanup.i.i, %lpad5.body.i.i, %lpad3.i.i
  %.pn.pn.i.i = phi { i8*, i32 } [ %.pn.i.i, %ehcleanup.i.i ], [ %eh.lpad-body.i.i, %lpad5.body.i.i ], [ %73, %lpad3.i.i ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %53) #30
  br label %ehcleanup14.i.i

ehcleanup14.i.i:                                  ; preds = %ehcleanup13.i.i, %lpad1.i.i
  %.pn.pn.pn.i.i = phi { i8*, i32 } [ %.pn.pn.i.i, %ehcleanup13.i.i ], [ %72, %lpad1.i.i ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %x.i.i) #30
  br label %ehcleanup15.i.i

ehcleanup15.i.i:                                  ; preds = %ehcleanup14.i.i, %lpad.i54.i
  %.pn.pn.pn.pn.i.i = phi { i8*, i32 } [ %.pn.pn.pn.i.i, %ehcleanup14.i.i ], [ %71, %lpad.i54.i ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %36) #30
  call void @_ZN5adept5StackD2Ev(%"class.adept::Stack"* nonnull dereferenceable(149) %stack.i.i) #30
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %35) #30
  resume { i8*, i32 } %.pn.pn.pn.pn.i.i

lpad.i:                                           ; preds = %_ZL11sincos_reald.exit.i
  %77 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup.i

lpad8.i:                                          ; preds = %invoke.cont.i
  %78 = landingpad { i8*, i32 }
          cleanup
  br label %lpad8.body.i

lpad8.body.i:                                     ; preds = %lpad8.i, %lpad.i.i
  %eh.lpad-body.i = phi { i8*, i32 } [ %78, %lpad8.i ], [ %24, %lpad.i.i ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp.i) #30
  br label %ehcleanup.i

ehcleanup.i:                                      ; preds = %lpad8.body.i, %lpad.i
  %.pn.i = phi { i8*, i32 } [ %eh.lpad-body.i, %lpad8.body.i ], [ %77, %lpad.i ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %13) #30
  call void @_ZN5adept5StackD2Ev(%"class.adept::Stack"* nonnull dereferenceable(149) %stack.i) #30
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %12) #30
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %11) #30
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #30
  resume { i8*, i32 } %.pn.i

_ZL12adept_sincosd.exit:                          ; preds = %invoke.cont10.i.i
  %79 = load double, double* %gradient.i.i.i, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %68) #30
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %y.i.i) #30
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %53) #30
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %x.i.i) #30
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %36) #30
  call void @_ZN5adept5StackD2Ev(%"class.adept::Stack"* nonnull dereferenceable(149) %stack.i.i) #30
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %35) #30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %34)
  %call27.i = call i32 @gettimeofday(%struct.timeval* nonnull %end24.i, i8* null) #30
  %tv_sec.i55.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end24.i, i64 0, i32 0
  %80 = load i64, i64* %tv_sec.i55.i, align 8, !tbaa !2
  %tv_sec1.i56.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start23.i, i64 0, i32 0
  %81 = load i64, i64* %tv_sec1.i56.i, align 8, !tbaa !2
  %sub.i57.i = sub nsw i64 %80, %81
  %conv.i58.i = sitofp i64 %sub.i57.i to double
  %tv_usec.i59.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end24.i, i64 0, i32 1
  %82 = load i64, i64* %tv_usec.i59.i, align 8, !tbaa !7
  %tv_usec2.i60.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start23.i, i64 0, i32 1
  %83 = load i64, i64* %tv_usec2.i60.i, align 8, !tbaa !7
  %sub3.i61.i = sub nsw i64 %82, %83
  %conv4.i62.i = sitofp i64 %sub3.i61.i to double
  %mul.i63.i = fmul fast double %conv4.i62.i, 0x3EB0C6F7A0B5ED8D
  %add.i64.i = fadd fast double %mul.i63.i, %conv.i58.i
  %conv5.i65.i = fptrunc double %add.i64.i to float
  %conv29.i = fpext float %conv5.i65.i to double
  %call30.i = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.88, i64 0, i64 0), double %conv29.i, double %79)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %31) #30
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %30) #30
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2)
  %puts7 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([9 x i8], [9 x i8]* @str.103, i64 0, i64 0))
  %84 = bitcast %struct.timeval* %start.i10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %84) #30
  %85 = bitcast %struct.timeval* %end.i11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %85) #30
  %call.i14 = call i32 @gettimeofday(%struct.timeval* nonnull %start.i10, i8* null) #30
  br label %for.body.i.i22

for.body.i.i22:                                   ; preds = %for.body.i.i22, %_ZL12adept_sincosd.exit
  %i.08.i.i15 = phi i32 [ 1, %_ZL12adept_sincosd.exit ], [ %inc.i.i20, %for.body.i.i22 ]
  %sum.07.i.i16 = phi double [ 0.000000e+00, %_ZL12adept_sincosd.exit ], [ %add.i.i19, %for.body.i.i22 ]
  %86 = call fast double @llvm.powi.f64(double %call.i, i32 %i.08.i.i15) #30
  %conv.i.i17 = sitofp i32 %i.08.i.i15 to double
  %div.i.i18 = fdiv fast double %86, %conv.i.i17
  %add.i.i19 = fadd fast double %div.i.i18, %sum.07.i.i16
  %inc.i.i20 = add nuw nsw i32 %i.08.i.i15, 1
  %exitcond.not.i.i21 = icmp eq i32 %inc.i.i20, 101
  br i1 %exitcond.not.i.i21, label %_ZL11sincos_reald.exit.i27, label %for.body.i.i22, !llvm.loop !146

_ZL11sincos_reald.exit.i27:                       ; preds = %for.body.i.i22
  %call2.i23 = call i32 @gettimeofday(%struct.timeval* nonnull %end.i11, i8* null) #30
  %tv_sec.i50.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i11, i64 0, i32 0
  %87 = load i64, i64* %tv_sec.i50.i, align 8, !tbaa !2
  %tv_sec1.i51.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i10, i64 0, i32 0
  %88 = load i64, i64* %tv_sec1.i51.i, align 8, !tbaa !2
  %sub.i52.i = sub nsw i64 %87, %88
  %conv.i53.i = sitofp i64 %sub.i52.i to double
  %tv_usec.i54.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i11, i64 0, i32 1
  %89 = load i64, i64* %tv_usec.i54.i, align 8, !tbaa !7
  %tv_usec2.i55.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i10, i64 0, i32 1
  %90 = load i64, i64* %tv_usec2.i55.i, align 8, !tbaa !7
  %sub3.i56.i = sub nsw i64 %89, %90
  %conv4.i57.i = sitofp i64 %sub3.i56.i to double
  %mul.i58.i = fmul fast double %conv4.i57.i, 0x3EB0C6F7A0B5ED8D
  %add.i59.i = fadd fast double %mul.i58.i, %conv.i53.i
  %conv5.i60.i = fptrunc double %add.i59.i to float
  %conv.i24 = fpext float %conv5.i60.i to double
  %call4.i25 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.90, i64 0, i64 0), double %conv.i24, double %add.i.i19) #30
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %85) #30
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %84) #30
  %91 = bitcast %struct.timeval* %start5.i12 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %91) #30
  %92 = bitcast %struct.timeval* %end6.i13 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %92) #30
  %call7.i26 = call i32 @gettimeofday(%struct.timeval* nonnull %start5.i12, i8* null) #30
  br label %for.body.i48.i

for.body.i48.i:                                   ; preds = %for.body.i48.i, %_ZL11sincos_reald.exit.i27
  %i.08.i41.i = phi i32 [ 1, %_ZL11sincos_reald.exit.i27 ], [ %inc.i46.i, %for.body.i48.i ]
  %sum.07.i42.i = phi double [ 0.000000e+00, %_ZL11sincos_reald.exit.i27 ], [ %add.i45.i, %for.body.i48.i ]
  %93 = call fast double @llvm.powi.f64(double %call.i, i32 %i.08.i41.i) #30
  %conv.i43.i28 = sitofp i32 %i.08.i41.i to double
  %div.i44.i = fdiv fast double %93, %conv.i43.i28
  %add.i45.i = fadd fast double %div.i44.i, %sum.07.i42.i
  %inc.i46.i = add nuw nsw i32 %i.08.i41.i, 1
  %exitcond.not.i47.i = icmp eq i32 %inc.i46.i, 101
  br i1 %exitcond.not.i47.i, label %_ZL11sincos_reald.exit49.i, label %for.body.i48.i, !llvm.loop !146

_ZL11sincos_reald.exit49.i:                       ; preds = %for.body.i48.i
  %call10.i = call i32 @gettimeofday(%struct.timeval* nonnull %end6.i13, i8* null) #30
  %tv_sec.i30.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end6.i13, i64 0, i32 0
  %94 = load i64, i64* %tv_sec.i30.i, align 8, !tbaa !2
  %tv_sec1.i31.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start5.i12, i64 0, i32 0
  %95 = load i64, i64* %tv_sec1.i31.i, align 8, !tbaa !2
  %sub.i32.i = sub nsw i64 %94, %95
  %conv.i33.i = sitofp i64 %sub.i32.i to double
  %tv_usec.i34.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end6.i13, i64 0, i32 1
  %96 = load i64, i64* %tv_usec.i34.i, align 8, !tbaa !7
  %tv_usec2.i35.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start5.i12, i64 0, i32 1
  %97 = load i64, i64* %tv_usec2.i35.i, align 8, !tbaa !7
  %sub3.i36.i = sub nsw i64 %96, %97
  %conv4.i37.i = sitofp i64 %sub3.i36.i to double
  %mul.i38.i = fmul fast double %conv4.i37.i, 0x3EB0C6F7A0B5ED8D
  %add.i39.i = fadd fast double %mul.i38.i, %conv.i33.i
  %conv5.i40.i = fptrunc double %add.i39.i to float
  %conv12.i = fpext float %conv5.i40.i to double
  %call13.i = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([23 x i8], [23 x i8]* @.str.90, i64 0, i64 0), double %conv12.i, double %add.i45.i) #30
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %92) #30
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %91) #30
  %98 = bitcast %struct.timeval* %start14.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %98) #30
  %99 = bitcast %struct.timeval* %end15.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %99) #30
  %call16.i = call i32 @gettimeofday(%struct.timeval* nonnull %start14.i, i8* null) #30
  br label %for.body.i29.i

for.body.i29.i:                                   ; preds = %for.body.i29.i, %_ZL11sincos_reald.exit49.i
  %add2.i.i = phi double [ 0.000000e+00, %_ZL11sincos_reald.exit49.i ], [ %add.i28.i, %for.body.i29.i ]
  %i.01.i.i = phi i32 [ 100, %_ZL11sincos_reald.exit49.i ], [ %sub.i27.i, %for.body.i29.i ]
  %sub.i27.i = add nsw i32 %i.01.i.i, -1
  %100 = call fast double @llvm.powi.f64(double %call.i, i32 %sub.i27.i) #30
  %add.i28.i = fadd fast double %100, %add2.i.i
  %cmp.i.i = icmp ugt i32 %i.01.i.i, 1
  br i1 %cmp.i.i, label %for.body.i29.i, label %_ZL15tapenade_sincosd.exit, !llvm.loop !163

_ZL15tapenade_sincosd.exit:                       ; preds = %for.body.i29.i
  %call17.i = call i32 @gettimeofday(%struct.timeval* nonnull %end15.i, i8* null) #30
  %tv_sec.i.i29 = getelementptr inbounds %struct.timeval, %struct.timeval* %end15.i, i64 0, i32 0
  %101 = load i64, i64* %tv_sec.i.i29, align 8, !tbaa !2
  %tv_sec1.i.i30 = getelementptr inbounds %struct.timeval, %struct.timeval* %start14.i, i64 0, i32 0
  %102 = load i64, i64* %tv_sec1.i.i30, align 8, !tbaa !2
  %sub.i.i31 = sub nsw i64 %101, %102
  %conv.i25.i = sitofp i64 %sub.i.i31 to double
  %tv_usec.i.i32 = getelementptr inbounds %struct.timeval, %struct.timeval* %end15.i, i64 0, i32 1
  %103 = load i64, i64* %tv_usec.i.i32, align 8, !tbaa !7
  %tv_usec2.i.i33 = getelementptr inbounds %struct.timeval, %struct.timeval* %start14.i, i64 0, i32 1
  %104 = load i64, i64* %tv_usec2.i.i33, align 8, !tbaa !7
  %sub3.i.i34 = sub nsw i64 %103, %104
  %conv4.i.i35 = sitofp i64 %sub3.i.i34 to double
  %mul.i.i36 = fmul fast double %conv4.i.i35, 0x3EB0C6F7A0B5ED8D
  %add.i26.i = fadd fast double %mul.i.i36, %conv.i25.i
  %conv5.i.i37 = fptrunc double %add.i26.i to float
  %conv19.i = fpext float %conv5.i.i37 to double
  %call20.i = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.91, i64 0, i64 0), double %conv19.i, double %add.i28.i) #30
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %99) #30
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %98) #30
  %puts8 = call i32 @puts(i8* nonnull dereferenceable(1) getelementptr inbounds ([7 x i8], [7 x i8]* @str.104, i64 0, i64 0))
  %105 = bitcast %struct.timeval* %start.i38 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %105) #30
  %106 = bitcast %struct.timeval* %end.i39 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %106) #30
  %call.i44 = call i32 @gettimeofday(%struct.timeval* nonnull %start.i38, i8* null) #30
  br label %for.body.i.i52

for.body.i.i52:                                   ; preds = %for.body.i.i52, %_ZL15tapenade_sincosd.exit
  %i.08.i.i45 = phi i32 [ 1, %_ZL15tapenade_sincosd.exit ], [ %inc.i.i50, %for.body.i.i52 ]
  %sum.07.i.i46 = phi double [ 0.000000e+00, %_ZL15tapenade_sincosd.exit ], [ %add.i.i49, %for.body.i.i52 ]
  %107 = call fast double @llvm.powi.f64(double %call.i, i32 %i.08.i.i45) #30
  %conv.i.i47 = sitofp i32 %i.08.i.i45 to double
  %div.i.i48 = fdiv fast double %107, %conv.i.i47
  %add.i.i49 = fadd fast double %div.i.i48, %sum.07.i.i46
  %inc.i.i50 = add nuw nsw i32 %i.08.i.i45, 1
  %exitcond.not.i.i51 = icmp eq i32 %inc.i.i50, 101
  br i1 %exitcond.not.i.i51, label %_ZL11sincos_reald.exit.i57, label %for.body.i.i52, !llvm.loop !146

_ZL11sincos_reald.exit.i57:                       ; preds = %for.body.i.i52
  %call2.i53 = call i32 @gettimeofday(%struct.timeval* nonnull %end.i39, i8* null) #30
  %tv_sec.i49.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i39, i64 0, i32 0
  %108 = load i64, i64* %tv_sec.i49.i, align 8, !tbaa !2
  %tv_sec1.i50.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i38, i64 0, i32 0
  %109 = load i64, i64* %tv_sec1.i50.i, align 8, !tbaa !2
  %sub.i51.i = sub nsw i64 %108, %109
  %conv.i52.i = sitofp i64 %sub.i51.i to double
  %tv_usec.i53.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i39, i64 0, i32 1
  %110 = load i64, i64* %tv_usec.i53.i, align 8, !tbaa !7
  %tv_usec2.i54.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i38, i64 0, i32 1
  %111 = load i64, i64* %tv_usec2.i54.i, align 8, !tbaa !7
  %sub3.i55.i = sub nsw i64 %110, %111
  %conv4.i56.i = sitofp i64 %sub3.i55.i to double
  %mul.i57.i = fmul fast double %conv4.i56.i, 0x3EB0C6F7A0B5ED8D
  %add.i58.i = fadd fast double %mul.i57.i, %conv.i52.i
  %conv5.i59.i = fptrunc double %add.i58.i to float
  %conv.i54 = fpext float %conv5.i59.i to double
  %call4.i55 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87, i64 0, i64 0), double %conv.i54, double %add.i.i49)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %106) #30
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %105) #30
  %112 = bitcast %struct.timeval* %start5.i40 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %112) #30
  %113 = bitcast %struct.timeval* %end6.i41 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %113) #30
  %call7.i56 = call i32 @gettimeofday(%struct.timeval* nonnull %start5.i40, i8* null) #30
  br label %for.body.i47.i

for.body.i47.i:                                   ; preds = %for.body.i47.i, %_ZL11sincos_reald.exit.i57
  %i.08.i40.i = phi i32 [ 1, %_ZL11sincos_reald.exit.i57 ], [ %inc.i45.i, %for.body.i47.i ]
  %sum.07.i41.i = phi double [ 0.000000e+00, %_ZL11sincos_reald.exit.i57 ], [ %add.i44.i, %for.body.i47.i ]
  %114 = call fast double @llvm.powi.f64(double %call.i, i32 %i.08.i40.i) #30
  %conv.i42.i = sitofp i32 %i.08.i40.i to double
  %div.i43.i = fdiv fast double %114, %conv.i42.i
  %add.i44.i = fadd fast double %div.i43.i, %sum.07.i41.i
  %inc.i45.i = add nuw nsw i32 %i.08.i40.i, 1
  %exitcond.not.i46.i = icmp eq i32 %inc.i45.i, 101
  br i1 %exitcond.not.i46.i, label %_ZL13enzyme_sincosd.exit, label %for.body.i47.i, !llvm.loop !146

_ZL13enzyme_sincosd.exit:                         ; preds = %for.body.i47.i
  %call10.i58 = call i32 @gettimeofday(%struct.timeval* nonnull %end6.i41, i8* null) #30
  %tv_sec.i29.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end6.i41, i64 0, i32 0
  %115 = load i64, i64* %tv_sec.i29.i, align 8, !tbaa !2
  %tv_sec1.i30.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start5.i40, i64 0, i32 0
  %116 = load i64, i64* %tv_sec1.i30.i, align 8, !tbaa !2
  %sub.i31.i = sub nsw i64 %115, %116
  %conv.i32.i = sitofp i64 %sub.i31.i to double
  %tv_usec.i33.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end6.i41, i64 0, i32 1
  %117 = load i64, i64* %tv_usec.i33.i, align 8, !tbaa !7
  %tv_usec2.i34.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start5.i40, i64 0, i32 1
  %118 = load i64, i64* %tv_usec2.i34.i, align 8, !tbaa !7
  %sub3.i35.i = sub nsw i64 %117, %118
  %conv4.i36.i = sitofp i64 %sub3.i35.i to double
  %mul.i37.i = fmul fast double %conv4.i36.i, 0x3EB0C6F7A0B5ED8D
  %add.i38.i = fadd fast double %mul.i37.i, %conv.i32.i
  %conv5.i39.i = fptrunc double %add.i38.i to float
  %conv12.i59 = fpext float %conv5.i39.i to double
  %call13.i60 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([14 x i8], [14 x i8]* @.str.87, i64 0, i64 0), double %conv12.i59, double %add.i44.i)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %113) #30
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %112) #30
  %119 = bitcast %struct.timeval* %start14.i42 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %119) #30
  %120 = bitcast %struct.timeval* %end15.i43 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %120) #30
  %call16.i61 = call i32 @gettimeofday(%struct.timeval* nonnull %start14.i42, i8* null) #30
  br label %invertfor.body.i

invertfor.body.i:                                 ; preds = %invertfor.body.i, %_ZL13enzyme_sincosd.exit
  %"x'de.0.i" = phi double [ 0.000000e+00, %_ZL13enzyme_sincosd.exit ], [ %139, %invertfor.body.i ]
  %"iv'ac.0.i" = phi i64 [ 99, %_ZL13enzyme_sincosd.exit ], [ %141, %invertfor.body.i ]
  %121 = trunc i64 %"iv'ac.0.i" to i32
  %122 = call fast double @llvm.powi.f64(double %call.i, i32 %121) #30
  %123 = fadd fast double %122, %"x'de.0.i"
  %124 = trunc i64 %"iv'ac.0.i" to i32
  %125 = add i32 %124, -1
  %126 = call fast double @llvm.powi.f64(double %call.i, i32 %125) #30
  %127 = fadd fast double %126, %123
  %128 = trunc i64 %"iv'ac.0.i" to i32
  %129 = add i32 %128, -2
  %130 = call fast double @llvm.powi.f64(double %call.i, i32 %129) #30
  %131 = fadd fast double %130, %127
  %132 = trunc i64 %"iv'ac.0.i" to i32
  %133 = add i32 %132, -3
  %134 = call fast double @llvm.powi.f64(double %call.i, i32 %133) #30
  %135 = fadd fast double %134, %131
  %136 = add nsw i64 %"iv'ac.0.i", -4
  %137 = trunc i64 %136 to i32
  %138 = call fast double @llvm.powi.f64(double %call.i, i32 %137) #30
  %139 = fadd fast double %138, %135
  %140 = icmp eq i64 %136, 0
  %141 = add nsw i64 %"iv'ac.0.i", -5
  br i1 %140, label %diffe_ZL11sincos_reald.exit, label %invertfor.body.i

diffe_ZL11sincos_reald.exit:                      ; preds = %invertfor.body.i
  %call18.i63 = call i32 @gettimeofday(%struct.timeval* nonnull %end15.i43, i8* null) #30
  %tv_sec.i.i64 = getelementptr inbounds %struct.timeval, %struct.timeval* %end15.i43, i64 0, i32 0
  %142 = load i64, i64* %tv_sec.i.i64, align 8, !tbaa !2
  %tv_sec1.i.i65 = getelementptr inbounds %struct.timeval, %struct.timeval* %start14.i42, i64 0, i32 0
  %143 = load i64, i64* %tv_sec1.i.i65, align 8, !tbaa !2
  %sub.i.i66 = sub nsw i64 %142, %143
  %conv.i27.i = sitofp i64 %sub.i.i66 to double
  %tv_usec.i.i67 = getelementptr inbounds %struct.timeval, %struct.timeval* %end15.i43, i64 0, i32 1
  %144 = load i64, i64* %tv_usec.i.i67, align 8, !tbaa !7
  %tv_usec2.i.i68 = getelementptr inbounds %struct.timeval, %struct.timeval* %start14.i42, i64 0, i32 1
  %145 = load i64, i64* %tv_usec2.i.i68, align 8, !tbaa !7
  %sub3.i.i69 = sub nsw i64 %144, %145
  %conv4.i.i70 = sitofp i64 %sub3.i.i69 to double
  %mul.i.i71 = fmul fast double %conv4.i.i70, 0x3EB0C6F7A0B5ED8D
  %add.i28.i72 = fadd fast double %mul.i.i71, %conv.i27.i
  %conv5.i.i73 = fptrunc double %add.i28.i72 to float
  %conv20.i = fpext float %conv5.i.i73 to double
  %call21.i = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([15 x i8], [15 x i8]* @.str.88, i64 0, i64 0), double %conv20.i, double %139)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %120) #30
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %119) #30
  ret i32 0
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept17invalid_operationD0Ev(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !20
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !14
  %2 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #30
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #30
  %4 = bitcast %"class.adept::invalid_operation"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #32
  ret void
}

; Function Attrs: nounwind uwtable willreturn mustprogress
define linkonce_odr dso_local i8* @_ZNK5adept9exception4whatEv(%"class.adept::exception"* nonnull dereferenceable(40) %this) unnamed_addr #20 comdat align 2 {
entry:
  %_M_p.i.i = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 0, i32 0
  %0 = load i8*, i8** %_M_p.i.i, align 8, !tbaa !14
  ret i8* %0
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept15array_exceptionD0Ev(%"class.adept::array_exception"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::array_exception", %"class.adept::array_exception"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !20
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::array_exception", %"class.adept::array_exception"* %this, i64 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !14
  %2 = getelementptr inbounds %"class.adept::array_exception", %"class.adept::array_exception"* %this, i64 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #30
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::array_exception", %"class.adept::array_exception"* %this, i64 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #30
  %4 = bitcast %"class.adept::array_exception"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #32
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept9exceptionD0Ev(%"class.adept::exception"* nonnull dereferenceable(40) %this) unnamed_addr #5 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !20
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !14
  %2 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #30
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #30
  %4 = bitcast %"class.adept::exception"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #32
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) local_unnamed_addr #21 comdat {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #30
  tail call void @_ZSt9terminatev() #35
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare dso_local void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #7

; Function Attrs: nounwind
declare dso_local void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8)) unnamed_addr #2

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32), %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept20stack_already_activeD0Ev(%"class.adept::stack_already_active"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::stack_already_active", %"class.adept::stack_already_active"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !20
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::stack_already_active", %"class.adept::stack_already_active"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !14
  %2 = getelementptr inbounds %"class.adept::stack_already_active", %"class.adept::stack_already_active"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #30
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::stack_already_active", %"class.adept::stack_already_active"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #30
  %4 = bitcast %"class.adept::stack_already_active"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #32
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept25gradients_not_initializedD0Ev(%"class.adept::gradients_not_initialized"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::gradients_not_initialized", %"class.adept::gradients_not_initialized"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !20
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::gradients_not_initialized", %"class.adept::gradients_not_initialized"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !14
  %2 = getelementptr inbounds %"class.adept::gradients_not_initialized", %"class.adept::gradients_not_initialized"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #30
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::gradients_not_initialized", %"class.adept::gradients_not_initialized"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #30
  %4 = bitcast %"class.adept::gradients_not_initialized"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #32
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept21feature_not_availableD0Ev(%"class.adept::feature_not_available"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::feature_not_available", %"class.adept::feature_not_available"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !20
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::feature_not_available", %"class.adept::feature_not_available"* %this, i64 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !14
  %2 = getelementptr inbounds %"class.adept::feature_not_available", %"class.adept::feature_not_available"* %this, i64 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #30
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::feature_not_available", %"class.adept::feature_not_available"* %this, i64 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #30
  %4 = bitcast %"class.adept::feature_not_available"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #32
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept41dependents_or_independents_not_identifiedD0Ev(%"class.adept::dependents_or_independents_not_identified"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::dependents_or_independents_not_identified", %"class.adept::dependents_or_independents_not_identified"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !20
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::dependents_or_independents_not_identified", %"class.adept::dependents_or_independents_not_identified"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !14
  %2 = getelementptr inbounds %"class.adept::dependents_or_independents_not_identified", %"class.adept::dependents_or_independents_not_identified"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #30
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::dependents_or_independents_not_identified", %"class.adept::dependents_or_independents_not_identified"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #30
  %4 = bitcast %"class.adept::dependents_or_independents_not_identified"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #32
  ret void
}

; Function Attrs: nofree nounwind willreturn
declare dso_local double @strtod(i8* readonly, i8** nocapture) local_unnamed_addr #22

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #18

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept5StackC2Eb(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i1 zeroext %activate_immediately) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %gap_list_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4
  %0 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_prev.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1
  %1 = bitcast %"class.adept::Stack"* %this to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(96) %1, i8 0, i64 96, i1 false)
  store %"struct.std::__detail::_List_node_base"* %0, %"struct.std::__detail::_List_node_base"** %_M_prev.i.i.i.i.i, align 8, !tbaa !68
  %_M_next.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %0, %"struct.std::__detail::_List_node_base"** %_M_next.i.i.i.i.i, align 8, !tbaa !31
  %_M_size.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i64 0, i64* %_M_size.i.i.i.i.i, align 8, !tbaa !164
  %coerce.dive = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5, i32 0
  store %"struct.std::__detail::_List_node_base"* %0, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %i_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 6
  %is_recording_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 12
  %2 = bitcast i32* %i_gradient_ to i8*
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(18) %2, i8 0, i64 18, i1 false)
  store i8 1, i8* %is_recording_, align 2, !tbaa !75
  %have_openmp_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 13
  store i8 0, i8* %have_openmp_, align 1, !tbaa !165
  %openmp_manually_disabled_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 14
  store i8 0, i8* %openmp_manually_disabled_, align 4, !tbaa !166
  %call.i12 = invoke noalias nonnull dereferenceable(8388608) i8* @_Znam(i64 8388608) #34
          to label %call.i.noexc unwind label %lpad

call.i.noexc:                                     ; preds = %entry
  %multiplier_.i10 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %3 = bitcast double** %multiplier_.i10 to i8**
  store i8* %call.i12, i8** %3, align 8, !tbaa !40
  %call3.i13 = invoke noalias nonnull dereferenceable(4194304) i8* @_Znam(i64 4194304) #34
          to label %call3.i.noexc unwind label %lpad

call3.i.noexc:                                    ; preds = %call.i.noexc
  %index_.i11 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %4 = bitcast i32** %index_.i11 to i8**
  store i8* %call3.i13, i8** %4, align 8, !tbaa !41
  %n_allocated_operations_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 6
  store i32 1048576, i32* %n_allocated_operations_.i, align 4, !tbaa !78
  %call5.i14 = invoke noalias nonnull dereferenceable(8388608) i8* @_Znam(i64 8388608) #34
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %call3.i.noexc
  %5 = bitcast %"class.adept::Stack"* %this to i8**
  store i8* %call5.i14, i8** %5, align 8, !tbaa !38
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 4
  store i32 1048576, i32* %n_allocated_statements_.i, align 4, !tbaa !76
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
  %7 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i.i.i.i, align 8, !tbaa !31
  %cmp.not12.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %7, %0
  br i1 %cmp.not12.i.i, label %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit, label %while.body.i.i

while.body.i.i:                                   ; preds = %lpad, %while.body.i.i
  %__cur.013.i.i = phi %"struct.std::__detail::_List_node_base"* [ %8, %while.body.i.i ], [ %7, %lpad ]
  %_M_next4.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %__cur.013.i.i, i64 0, i32 0
  %8 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next4.i.i, align 8, !tbaa !31
  %9 = bitcast %"struct.std::__detail::_List_node_base"* %__cur.013.i.i to i8*
  tail call void @_ZdlPv(i8* %9) #30
  %cmp.not.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %8, %0
  br i1 %cmp.not.i.i, label %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit, label %while.body.i.i, !llvm.loop !33

_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit: ; preds = %while.body.i.i, %lpad
  %_M_start.i.i6 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %10 = load i32*, i32** %_M_start.i.i6, align 8, !tbaa !36
  %tobool.not.i.i.i7 = icmp eq i32* %10, null
  br i1 %tobool.not.i.i.i7, label %_ZNSt6vectorIiSaIiEED2Ev.exit9, label %if.then.i.i.i8

if.then.i.i.i8:                                   ; preds = %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit
  %11 = bitcast i32* %10 to i8*
  tail call void @_ZdlPv(i8* nonnull %11) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit9

_ZNSt6vectorIiSaIiEED2Ev.exit9:                   ; preds = %if.then.i.i.i8, %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %12 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
  %tobool.not.i.i.i = icmp eq i32* %12, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit9
  %13 = bitcast i32* %12 to i8*
  tail call void @_ZdlPv(i8* nonnull %13) #30
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %if.then.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit9
  %statement_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %14 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i, align 8, !tbaa !38
  %tobool.not.i = icmp eq %"struct.adept::internal::Statement"* %14, null
  br i1 %tobool.not.i, label %if.end.i, label %delete.notnull.i

delete.notnull.i:                                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %15 = bitcast %"struct.adept::internal::Statement"* %14 to i8*
  tail call void @_ZdaPv(i8* %15) #32
  br label %if.end.i

if.end.i:                                         ; preds = %delete.notnull.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %multiplier_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %16 = load double*, double** %multiplier_.i, align 8, !tbaa !40
  %tobool3.not.i = icmp eq double* %16, null
  br i1 %tobool3.not.i, label %if.end9.i, label %delete.notnull7.i

delete.notnull7.i:                                ; preds = %if.end.i
  %17 = bitcast double* %16 to i8*
  tail call void @_ZdaPv(i8* %17) #32
  br label %if.end9.i

if.end9.i:                                        ; preds = %delete.notnull7.i, %if.end.i
  %index_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %18 = load i32*, i32** %index_.i, align 8, !tbaa !41
  %tobool10.not.i = icmp eq i32* %18, null
  br i1 %tobool10.not.i, label %_ZN5adept8internal16StackStorageOrigD2Ev.exit, label %delete.notnull14.i

delete.notnull14.i:                               ; preds = %if.end9.i
  %19 = bitcast i32* %18 to i8*
  tail call void @_ZdaPv(i8* %19) #32
  br label %_ZN5adept8internal16StackStorageOrigD2Ev.exit

_ZN5adept8internal16StackStorageOrigD2Ev.exit:    ; preds = %delete.notnull14.i, %if.end9.i
  resume { i8*, i32 } %6

if.end:                                           ; preds = %if.then, %invoke.cont3
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept6ActiveIdEC2IdEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %this, double* nonnull align 8 dereferenceable(8) %rhs, i8* %dummy) unnamed_addr #6 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %val_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 0
  %0 = load double, double* %rhs, align 8, !tbaa !46
  store double %0, double* %val_, align 8, !tbaa !154
  %gradient_index_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 1
  %1 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !29
  %n_gradients_registered_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 9
  %2 = load i32, i32* %n_gradients_registered_.i, align 4, !tbaa !54
  %inc.i = add nsw i32 %2, 1
  store i32 %inc.i, i32* %n_gradients_registered_.i, align 4, !tbaa !54
  %gap_list_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 4
  %3 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %4 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i, align 8, !tbaa !31
  %cmp.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %4, %3
  %5 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 0
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %i_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 6
  %6 = load i32, i32* %i_gradient_.i, align 8, !tbaa !65
  %inc2.i = add nsw i32 %6, 1
  store i32 %inc2.i, i32* %i_gradient_.i, align 8, !tbaa !65
  %max_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 8
  %7 = load i32, i32* %max_gradient_.i, align 8, !tbaa !66
  %cmp.not.i = icmp slt i32 %6, %7
  br i1 %cmp.not.i, label %_ZN5adept5Stack17register_gradientEv.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  store i32 %inc2.i, i32* %max_gradient_.i, align 8, !tbaa !66
  br label %_ZN5adept5Stack17register_gradientEv.exit

if.else.i:                                        ; preds = %entry
  %8 = bitcast %"struct.std::__detail::_List_node_base"* %4 to %"struct.std::_List_node"*
  %_M_storage.i.i.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %4, i64 1
  %start.i = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i.i.i to i32*
  %9 = load i32, i32* %start.i, align 4, !tbaa !57
  %inc11.i = add nsw i32 %9, 1
  store i32 %inc11.i, i32* %start.i, align 4, !tbaa !57
  %end.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %8, i64 0, i32 1, i32 0, i64 4
  %10 = bitcast i8* %end.i to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !55
  %cmp13.not.i = icmp slt i32 %9, %11
  br i1 %cmp13.not.i, label %_ZN5adept5Stack17register_gradientEv.exit, label %if.then14.i

if.then14.i:                                      ; preds = %if.else.i
  %_M_node.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 5, i32 0
  %12 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa !58
  %cmp.i35.i = icmp eq %"struct.std::__detail::_List_node_base"* %12, %4
  br i1 %cmp.i35.i, label %if.then18.i, label %if.end24.i

if.then18.i:                                      ; preds = %if.then14.i
  store %"struct.std::__detail::_List_node_base"* %3, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa.struct !63
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then18.i, %if.then14.i
  %_M_size.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %13 = load i64, i64* %_M_size.i.i.i.i, align 8, !tbaa !59
  %sub.i.i.i.i = add i64 %13, -1
  store i64 %sub.i.i.i.i, i64* %_M_size.i.i.i.i, align 8, !tbaa !59
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %4) #30
  %14 = bitcast %"struct.std::__detail::_List_node_base"* %4 to i8*
  tail call void @_ZdlPv(i8* nonnull %14) #30
  %.pre = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !29
  br label %_ZN5adept5Stack17register_gradientEv.exit

_ZN5adept5Stack17register_gradientEv.exit:        ; preds = %if.end24.i, %if.else.i, %if.then4.i, %if.then.i
  %15 = phi %"class.adept::internal::StackStorageOrig"* [ %.pre, %if.end24.i ], [ %5, %if.else.i ], [ %5, %if.then4.i ], [ %5, %if.then.i ]
  %return_val.0.i = phi i32 [ %9, %if.end24.i ], [ %9, %if.else.i ], [ %6, %if.then4.i ], [ %6, %if.then.i ]
  store i32 %return_val.0.i, i32* %gradient_index_, align 8, !tbaa !162
  %n_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %15, i64 0, i32 3
  %16 = load i32, i32* %n_statements_.i, align 8, !tbaa !43
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %15, i64 0, i32 4
  %17 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !76
  %cmp.not.i3 = icmp slt i32 %16, %17
  br i1 %cmp.not.i3, label %entry.if.end_crit_edge.i, label %if.then.i4

entry.if.end_crit_edge.i:                         ; preds = %_ZN5adept5Stack17register_gradientEv.exit
  %statement_.phi.trans.insert.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %15, i64 0, i32 0
  %.pre.i = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i, align 8, !tbaa !38
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

if.then.i4:                                       ; preds = %_ZN5adept5Stack17register_gradientEv.exit
  %mul.i.i = shl nsw i32 %17, 1
  %conv.i.i = sext i32 %mul.i.i to i64
  %18 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i, i64 8)
  %19 = extractvalue { i64, i1 } %18, 1
  %20 = extractvalue { i64, i1 } %18, 0
  %21 = select i1 %19, i64 -1, i64 %20
  %call.i.i = tail call noalias nonnull i8* @_Znam(i64 %21) #34
  %22 = bitcast %"class.adept::internal::StackStorageOrig"* %15 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !38
  %conv5.i.i = sext i32 %16 to i64
  %mul6.i.i = shl nsw i64 %conv5.i.i, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call.i.i, i8* align 4 %23, i64 %mul6.i.i, i1 false)
  %isnull.i.i = icmp eq i8* %23, null
  br i1 %isnull.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %if.then.i4
  tail call void @_ZdaPv(i8* nonnull %23) #32
  %.pre7.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !43
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i: ; preds = %delete.notnull.i.i, %if.then.i4
  %.pre7.i = phi i32 [ %16, %if.then.i4 ], [ %.pre7.pre.i, %delete.notnull.i.i ]
  store i8* %call.i.i, i8** %22, align 8, !tbaa !38
  store i32 %mul.i.i, i32* %n_allocated_statements_.i, align 4, !tbaa !76
  %24 = bitcast i8* %call.i.i to %"struct.adept::internal::Statement"*
  %.pre6 = load i32, i32* %gradient_index_, align 4, !tbaa !49
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, %entry.if.end_crit_edge.i
  %25 = phi i32 [ %return_val.0.i, %entry.if.end_crit_edge.i ], [ %.pre6, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %26 = phi i32 [ %16, %entry.if.end_crit_edge.i ], [ %.pre7.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %27 = phi %"struct.adept::internal::Statement"* [ %.pre.i, %entry.if.end_crit_edge.i ], [ %24, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %idxprom.i = sext i32 %26 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %27, i64 %idxprom.i, i32 0
  store i32 %25, i32* %index.i, align 4, !tbaa !44
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %15, i64 0, i32 5
  %28 = load i32, i32* %n_operations_.i, align 8, !tbaa !77
  %inc.i5 = add nsw i32 %26, 1
  store i32 %inc.i5, i32* %n_statements_.i, align 8, !tbaa !43
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %27, i64 %idxprom.i, i32 1
  store i32 %28, i32* %end_plus_one.i, align 4, !tbaa !48
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %this) unnamed_addr #5 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !29
  %gradient_index_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 1
  %n_gradients_registered_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 9
  %1 = load i32, i32* %n_gradients_registered_.i, align 4, !tbaa !54
  %dec.i = add nsw i32 %1, -1
  store i32 %dec.i, i32* %n_gradients_registered_.i, align 4, !tbaa !54
  %2 = load i32, i32* %gradient_index_, align 4, !tbaa !49
  %add.i = add nsw i32 %2, 1
  %i_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 6
  %3 = load i32, i32* %i_gradient_.i, align 8, !tbaa !65
  %cmp.i = icmp eq i32 %add.i, %3
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  store i32 %2, i32* %i_gradient_.i, align 8, !tbaa !65
  %gap_list_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 4
  %4 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %5 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i, align 8, !tbaa !31
  %cmp.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %5, %4
  br i1 %cmp.i.i, label %invoke.cont, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  %_M_prev.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1
  %6 = bitcast %"struct.std::__detail::_List_node_base"** %_M_prev.i.i.i to %"struct.std::_List_node"**
  %7 = load %"struct.std::_List_node"*, %"struct.std::_List_node"** %6, align 8, !tbaa !68
  %end.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %7, i64 0, i32 1, i32 0, i64 4
  %8 = bitcast i8* %end.i to i32*
  %9 = load i32, i32* %8, align 4, !tbaa !55
  %add8.i = add nsw i32 %9, 1
  %cmp9.i = icmp eq i32 %2, %add8.i
  %10 = getelementptr %"struct.std::_List_node", %"struct.std::_List_node"* %7, i64 0, i32 0
  br i1 %cmp9.i, label %if.then10.i, label %invoke.cont

if.then10.i:                                      ; preds = %if.then4.i
  %_M_storage.i.i.i.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %7, i64 0, i32 1
  %start.i = bitcast %"struct.__gnu_cxx::__aligned_membuf"* %_M_storage.i.i.i.i to i32*
  %11 = load i32, i32* %start.i, align 4, !tbaa !57
  store i32 %11, i32* %i_gradient_.i, align 8, !tbaa !65
  %_M_node.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 5, i32 0
  %12 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa !58
  %cmp.i31.i = icmp eq %"struct.std::__detail::_List_node_base"* %12, %10
  br i1 %cmp.i31.i, label %if.then17.i, label %if.end.i

if.then17.i:                                      ; preds = %if.then10.i
  store %"struct.std::__detail::_List_node_base"* %4, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa.struct !63
  br label %if.end.i

if.end.i:                                         ; preds = %if.then17.i, %if.then10.i
  %_M_size.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %13 = load i64, i64* %_M_size.i.i.i.i, align 8, !tbaa !59
  %sub.i.i.i.i = add i64 %13, -1
  store i64 %sub.i.i.i.i, i64* %_M_size.i.i.i.i, align 8, !tbaa !59
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %10) #30
  %14 = bitcast %"struct.std::_List_node"* %7 to i8*
  tail call void @_ZdlPv(i8* nonnull %14) #30
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
  tail call void @__clang_call_terminate(i8* %16) #35
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept5Stack13new_recordingEv(%"class.adept::Stack"* nonnull dereferenceable(149) %this) local_unnamed_addr #6 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %n_operations_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 5
  store i32 0, i32* %n_operations_.i, align 8, !tbaa !77
  %n_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  store i32 0, i32* %n_statements_.i, align 8, !tbaa !43
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %0 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
  %_M_finish.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %1 = load i32*, i32** %_M_finish.i.i.i, align 8, !tbaa !79
  %tobool.not.i.i.i = icmp eq i32* %1, %0
  br i1 %tobool.not.i.i.i, label %_ZN5adept5Stack18clear_independentsEv.exit, label %invoke.cont.i.i.i

invoke.cont.i.i.i:                                ; preds = %entry
  store i32* %0, i32** %_M_finish.i.i.i, align 8, !tbaa !79
  br label %_ZN5adept5Stack18clear_independentsEv.exit

_ZN5adept5Stack18clear_independentsEv.exit:       ; preds = %invoke.cont.i.i.i, %entry
  %_M_start.i.i4 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %2 = load i32*, i32** %_M_start.i.i4, align 8, !tbaa !36
  %_M_finish.i.i.i5 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %3 = load i32*, i32** %_M_finish.i.i.i5, align 8, !tbaa !79
  %tobool.not.i.i.i6 = icmp eq i32* %3, %2
  br i1 %tobool.not.i.i.i6, label %_ZN5adept5Stack16clear_dependentsEv.exit, label %invoke.cont.i.i.i7

invoke.cont.i.i.i7:                               ; preds = %_ZN5adept5Stack18clear_independentsEv.exit
  store i32* %2, i32** %_M_finish.i.i.i5, align 8, !tbaa !79
  br label %_ZN5adept5Stack16clear_dependentsEv.exit

_ZN5adept5Stack16clear_dependentsEv.exit:         ; preds = %invoke.cont.i.i.i7, %_ZN5adept5Stack18clear_independentsEv.exit
  %gradients_initialized_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 10
  store i8 0, i8* %gradients_initialized_.i, align 8, !tbaa !42
  %i_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 6
  %4 = load i32, i32* %i_gradient_, align 8, !tbaa !65
  %add = add nsw i32 %4, 1
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  store i32 %add, i32* %max_gradient_, align 8, !tbaa !66
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 4
  %5 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !76
  %cmp.not.i = icmp sgt i32 %5, 0
  br i1 %cmp.not.i, label %entry.if.end_crit_edge.i, label %if.then.i

entry.if.end_crit_edge.i:                         ; preds = %_ZN5adept5Stack16clear_dependentsEv.exit
  %statement_.phi.trans.insert.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %.pre.i = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i, align 8, !tbaa !38
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

if.then.i:                                        ; preds = %_ZN5adept5Stack16clear_dependentsEv.exit
  %mul.i.i = shl nsw i32 %5, 1
  %conv.i.i = sext i32 %mul.i.i to i64
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i, i64 8)
  %7 = extractvalue { i64, i1 } %6, 1
  %8 = extractvalue { i64, i1 } %6, 0
  %9 = select i1 %7, i64 -1, i64 %8
  %call.i.i = tail call noalias nonnull i8* @_Znam(i64 %9) #34
  %10 = bitcast %"class.adept::Stack"* %this to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !38
  %isnull.i.i = icmp eq i8* %11, null
  br i1 %isnull.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %if.then.i
  tail call void @_ZdaPv(i8* nonnull %11) #32
  %.pre7.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !43
  %.pre.pre = load i32, i32* %n_operations_.i, align 8, !tbaa !77
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i: ; preds = %delete.notnull.i.i, %if.then.i
  %.pre = phi i32 [ 0, %if.then.i ], [ %.pre.pre, %delete.notnull.i.i ]
  %.pre7.i = phi i32 [ 0, %if.then.i ], [ %.pre7.pre.i, %delete.notnull.i.i ]
  store i8* %call.i.i, i8** %10, align 8, !tbaa !38
  store i32 %mul.i.i, i32* %n_allocated_statements_.i, align 4, !tbaa !76
  %12 = bitcast i8* %call.i.i to %"struct.adept::internal::Statement"*
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, %entry.if.end_crit_edge.i
  %13 = phi i32 [ 0, %entry.if.end_crit_edge.i ], [ %.pre, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %14 = phi i32 [ 0, %entry.if.end_crit_edge.i ], [ %.pre7.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %15 = phi %"struct.adept::internal::Statement"* [ %.pre.i, %entry.if.end_crit_edge.i ], [ %12, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %idxprom.i = sext i32 %14 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %15, i64 %idxprom.i, i32 0
  store i32 -1, i32* %index.i, align 4, !tbaa !44
  %inc.i = add nsw i32 %14, 1
  store i32 %inc.i, i32* %n_statements_.i, align 8, !tbaa !43
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %15, i64 %idxprom.i, i32 1
  store i32 %13, i32* %end_plus_one.i, align 4, !tbaa !48
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept6ActiveIdEC2IiEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %this, i32* nonnull align 4 dereferenceable(4) %rhs, i8* %dummy) unnamed_addr #6 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %val_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 0
  %0 = load i32, i32* %rhs, align 4, !tbaa !49
  %conv = sitofp i32 %0 to double
  store double %conv, double* %val_, align 8, !tbaa !154
  %gradient_index_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 1
  %1 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !29
  %n_gradients_registered_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 9
  %2 = load i32, i32* %n_gradients_registered_.i, align 4, !tbaa !54
  %inc.i = add nsw i32 %2, 1
  store i32 %inc.i, i32* %n_gradients_registered_.i, align 4, !tbaa !54
  %gap_list_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 4
  %3 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %4 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i, align 8, !tbaa !31
  %cmp.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %4, %3
  %5 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 0
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %i_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 6
  %6 = load i32, i32* %i_gradient_.i, align 8, !tbaa !65
  %inc2.i = add nsw i32 %6, 1
  store i32 %inc2.i, i32* %i_gradient_.i, align 8, !tbaa !65
  %max_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 8
  %7 = load i32, i32* %max_gradient_.i, align 8, !tbaa !66
  %cmp.not.i = icmp slt i32 %6, %7
  br i1 %cmp.not.i, label %_ZN5adept5Stack17register_gradientEv.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  store i32 %inc2.i, i32* %max_gradient_.i, align 8, !tbaa !66
  br label %_ZN5adept5Stack17register_gradientEv.exit

if.else.i:                                        ; preds = %entry
  %8 = bitcast %"struct.std::__detail::_List_node_base"* %4 to %"struct.std::_List_node"*
  %_M_storage.i.i.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %4, i64 1
  %start.i = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i.i.i to i32*
  %9 = load i32, i32* %start.i, align 4, !tbaa !57
  %inc11.i = add nsw i32 %9, 1
  store i32 %inc11.i, i32* %start.i, align 4, !tbaa !57
  %end.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %8, i64 0, i32 1, i32 0, i64 4
  %10 = bitcast i8* %end.i to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !55
  %cmp13.not.i = icmp slt i32 %9, %11
  br i1 %cmp13.not.i, label %_ZN5adept5Stack17register_gradientEv.exit, label %if.then14.i

if.then14.i:                                      ; preds = %if.else.i
  %_M_node.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 5, i32 0
  %12 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa !58
  %cmp.i35.i = icmp eq %"struct.std::__detail::_List_node_base"* %12, %4
  br i1 %cmp.i35.i, label %if.then18.i, label %if.end24.i

if.then18.i:                                      ; preds = %if.then14.i
  store %"struct.std::__detail::_List_node_base"* %3, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa.struct !63
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then18.i, %if.then14.i
  %_M_size.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %13 = load i64, i64* %_M_size.i.i.i.i, align 8, !tbaa !59
  %sub.i.i.i.i = add i64 %13, -1
  store i64 %sub.i.i.i.i, i64* %_M_size.i.i.i.i, align 8, !tbaa !59
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %4) #30
  %14 = bitcast %"struct.std::__detail::_List_node_base"* %4 to i8*
  tail call void @_ZdlPv(i8* nonnull %14) #30
  %.pre = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !29
  br label %_ZN5adept5Stack17register_gradientEv.exit

_ZN5adept5Stack17register_gradientEv.exit:        ; preds = %if.end24.i, %if.else.i, %if.then4.i, %if.then.i
  %15 = phi %"class.adept::internal::StackStorageOrig"* [ %.pre, %if.end24.i ], [ %5, %if.else.i ], [ %5, %if.then4.i ], [ %5, %if.then.i ]
  %return_val.0.i = phi i32 [ %9, %if.end24.i ], [ %9, %if.else.i ], [ %6, %if.then4.i ], [ %6, %if.then.i ]
  store i32 %return_val.0.i, i32* %gradient_index_, align 8, !tbaa !162
  %n_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %15, i64 0, i32 3
  %16 = load i32, i32* %n_statements_.i, align 8, !tbaa !43
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %15, i64 0, i32 4
  %17 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !76
  %cmp.not.i3 = icmp slt i32 %16, %17
  br i1 %cmp.not.i3, label %entry.if.end_crit_edge.i, label %if.then.i4

entry.if.end_crit_edge.i:                         ; preds = %_ZN5adept5Stack17register_gradientEv.exit
  %statement_.phi.trans.insert.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %15, i64 0, i32 0
  %.pre.i = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i, align 8, !tbaa !38
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

if.then.i4:                                       ; preds = %_ZN5adept5Stack17register_gradientEv.exit
  %mul.i.i = shl nsw i32 %17, 1
  %conv.i.i = sext i32 %mul.i.i to i64
  %18 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i, i64 8)
  %19 = extractvalue { i64, i1 } %18, 1
  %20 = extractvalue { i64, i1 } %18, 0
  %21 = select i1 %19, i64 -1, i64 %20
  %call.i.i = tail call noalias nonnull i8* @_Znam(i64 %21) #34
  %22 = bitcast %"class.adept::internal::StackStorageOrig"* %15 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !38
  %conv5.i.i = sext i32 %16 to i64
  %mul6.i.i = shl nsw i64 %conv5.i.i, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call.i.i, i8* align 4 %23, i64 %mul6.i.i, i1 false)
  %isnull.i.i = icmp eq i8* %23, null
  br i1 %isnull.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %if.then.i4
  tail call void @_ZdaPv(i8* nonnull %23) #32
  %.pre7.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !43
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i: ; preds = %delete.notnull.i.i, %if.then.i4
  %.pre7.i = phi i32 [ %16, %if.then.i4 ], [ %.pre7.pre.i, %delete.notnull.i.i ]
  store i8* %call.i.i, i8** %22, align 8, !tbaa !38
  store i32 %mul.i.i, i32* %n_allocated_statements_.i, align 4, !tbaa !76
  %24 = bitcast i8* %call.i.i to %"struct.adept::internal::Statement"*
  %.pre6 = load i32, i32* %gradient_index_, align 4, !tbaa !49
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, %entry.if.end_crit_edge.i
  %25 = phi i32 [ %return_val.0.i, %entry.if.end_crit_edge.i ], [ %.pre6, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %26 = phi i32 [ %16, %entry.if.end_crit_edge.i ], [ %.pre7.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %27 = phi %"struct.adept::internal::Statement"* [ %.pre.i, %entry.if.end_crit_edge.i ], [ %24, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %idxprom.i = sext i32 %26 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %27, i64 %idxprom.i, i32 0
  store i32 %25, i32* %index.i, align 4, !tbaa !44
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %15, i64 0, i32 5
  %28 = load i32, i32* %n_operations_.i, align 8, !tbaa !77
  %inc.i5 = add nsw i32 %26, 1
  store i32 %inc.i5, i32* %n_statements_.i, align 8, !tbaa !43
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %27, i64 %idxprom.i, i32 1
  store i32 %28, i32* %end_plus_one.i, align 4, !tbaa !48
  ret void
}

; Function Attrs: nounwind
declare dso_local void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16)) local_unnamed_addr #2

; Function Attrs: uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(12) %"class.adept::Active"* @_ZN5adept6ActiveIdEaSIdNS_8internal15BinaryOperationIdS1_NS3_3AddENS3_19BinaryOpScalarRightIdNS6_IdS1_NS3_3PowEiEENS3_6DivideEdEEEEEENS3_9enable_ifIXaasrT0_9is_activeeqsrSD_4rankLi0EERS1_E4typeERKNS_10ExpressionIT_SD_EE(%"class.adept::Active"* nonnull dereferenceable(12) %this, %"struct.adept::Expression.35"* nonnull align 1 dereferenceable(1) %rhs) local_unnamed_addr #6 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !29
  %n_allocated_operations_.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %0, i64 0, i32 6
  %1 = load i32, i32* %n_allocated_operations_.i.i, align 4, !tbaa !78
  %n_operations_.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %0, i64 0, i32 5
  %2 = load i32, i32* %n_operations_.i.i, align 8, !tbaa !77
  %add.i.i = add nsw i32 %2, 2
  %cmp.not.i.i = icmp sgt i32 %1, %add.i.i
  %3 = bitcast %"class.adept::internal::StackStorageOrig"* %0 to %"class.adept::Stack"*
  br i1 %cmp.not.i.i, label %_ZN5adept8internal16StackStorageOrig18check_space_staticILi2EEEvv.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZN5adept8internal16StackStorageOrig20grow_operation_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %0, i32 2)
  %.pre = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !29
  %4 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %.pre, i64 0, i32 0
  br label %_ZN5adept8internal16StackStorageOrig18check_space_staticILi2EEEvv.exit

_ZN5adept8internal16StackStorageOrig18check_space_staticILi2EEEvv.exit: ; preds = %if.then.i.i, %entry
  %5 = phi %"class.adept::internal::StackStorageOrig"* [ %0, %entry ], [ %4, %if.then.i.i ]
  %6 = phi %"class.adept::Stack"* [ %3, %entry ], [ %.pre, %if.then.i.i ]
  %left.i.i.i = bitcast %"struct.adept::Expression.35"* %rhs to %"class.adept::Active"**
  %7 = load %"class.adept::Active"*, %"class.adept::Active"** %left.i.i.i, align 8, !tbaa !167
  %val_.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %7, i64 0, i32 0
  %8 = load double, double* %val_.i.i.i.i, align 8, !tbaa !154
  %right.i.i.i = getelementptr inbounds %"struct.adept::Expression.35", %"struct.adept::Expression.35"* %rhs, i64 8
  %9 = bitcast %"struct.adept::Expression.35"* %right.i.i.i to %"struct.adept::internal::BinaryOpScalarRight"**
  %10 = load %"struct.adept::internal::BinaryOpScalarRight"*, %"struct.adept::internal::BinaryOpScalarRight"** %9, align 8, !tbaa !169
  %left.i.i.i.i5.i = getelementptr inbounds %"struct.adept::internal::BinaryOpScalarRight", %"struct.adept::internal::BinaryOpScalarRight"* %10, i64 0, i32 0
  %11 = load %"struct.adept::internal::BinaryOpScalarRight.32"*, %"struct.adept::internal::BinaryOpScalarRight.32"** %left.i.i.i.i5.i, align 16, !tbaa !170
  %left.i.i.i.i.i.i.i = getelementptr inbounds %"struct.adept::internal::BinaryOpScalarRight.32", %"struct.adept::internal::BinaryOpScalarRight.32"* %11, i64 0, i32 0
  %12 = load %"class.adept::Active"*, %"class.adept::Active"** %left.i.i.i.i.i.i.i, align 8, !tbaa !173
  %val_.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %12, i64 0, i32 0
  %13 = load double, double* %val_.i.i.i.i.i.i.i.i, align 8, !tbaa !154
  %data.i.i.i.i.i.i.i.i = getelementptr inbounds %"struct.adept::internal::BinaryOpScalarRight.32", %"struct.adept::internal::BinaryOpScalarRight.32"* %11, i64 0, i32 1, i32 0
  %14 = load i32, i32* %data.i.i.i.i.i.i.i.i, align 4, !tbaa !176
  %15 = tail call fast double @llvm.powi.f64(double %13, i32 %14) #30
  %value_.i.i.i.i.i.i = getelementptr inbounds %"struct.adept::internal::BinaryOpScalarRight", %"struct.adept::internal::BinaryOpScalarRight"* %10, i64 0, i32 1, i32 0, i32 0, i64 0
  %16 = load double, double* %value_.i.i.i.i.i.i, align 16, !tbaa !15
  %div.i.i.i.i.i.i = fdiv fast double %15, %16
  %add.i.i.i.i = fadd fast double %div.i.i.i.i.i.i, %8
  %gradient_index_.i.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %7, i64 0, i32 1
  %multiplier_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %6, i64 0, i32 0, i32 1
  %17 = load double*, double** %multiplier_.i.i.i.i.i.i, align 8, !tbaa !40
  %n_operations_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %6, i64 0, i32 0, i32 5
  %18 = load i32, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !77
  %idxprom.i.i.i.i.i.i = sext i32 %18 to i64
  %arrayidx.i.i.i.i.i.i = getelementptr inbounds double, double* %17, i64 %idxprom.i.i.i.i.i.i
  store double 1.000000e+00, double* %arrayidx.i.i.i.i.i.i, align 8, !tbaa !46
  %19 = load i32, i32* %gradient_index_.i.i.i.i.i, align 8, !tbaa !49
  %index_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %6, i64 0, i32 0, i32 2
  %20 = load i32*, i32** %index_.i.i.i.i.i.i, align 8, !tbaa !41
  %inc.i.i.i.i.i.i = add nsw i32 %18, 1
  store i32 %inc.i.i.i.i.i.i, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !77
  %arrayidx4.i.i.i.i.i.i = getelementptr inbounds i32, i32* %20, i64 %idxprom.i.i.i.i.i.i
  store i32 %19, i32* %arrayidx4.i.i.i.i.i.i, align 4, !tbaa !49
  %gradient_index_.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %12, i64 0, i32 1
  %21 = load i32, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !77
  %idxprom.i.i.i.i.i.i.i.i.i.i.i.i = sext i32 %21 to i64
  %22 = load i32, i32* %gradient_index_.i.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !49
  %inc.i.i.i.i.i.i.i.i.i.i.i.i = add nsw i32 %21, 1
  store i32 %inc.i.i.i.i.i.i.i.i.i.i.i.i, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !77
  %arrayidx4.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds i32, i32* %20, i64 %idxprom.i.i.i.i.i.i.i.i.i.i.i.i
  store i32 %22, i32* %arrayidx4.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !tbaa !49
  %val_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 0
  store double %add.i.i.i.i, double* %val_, align 8, !tbaa !154
  %n_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %5, i64 0, i32 3
  %23 = load i32, i32* %n_statements_.i, align 8, !tbaa !43
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %5, i64 0, i32 4
  %24 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !76
  %cmp.not.i = icmp slt i32 %23, %24
  br i1 %cmp.not.i, label %entry.if.end_crit_edge.i, label %if.then.i

entry.if.end_crit_edge.i:                         ; preds = %_ZN5adept8internal16StackStorageOrig18check_space_staticILi2EEEvv.exit
  %statement_.phi.trans.insert.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %5, i64 0, i32 0
  %.pre.i = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i, align 8, !tbaa !38
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

if.then.i:                                        ; preds = %_ZN5adept8internal16StackStorageOrig18check_space_staticILi2EEEvv.exit
  %mul.i.i = shl nsw i32 %24, 1
  %conv.i.i = sext i32 %mul.i.i to i64
  %25 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i, i64 8)
  %26 = extractvalue { i64, i1 } %25, 1
  %27 = extractvalue { i64, i1 } %25, 0
  %28 = select i1 %26, i64 -1, i64 %27
  %call.i.i = tail call noalias nonnull i8* @_Znam(i64 %28) #34
  %29 = bitcast %"class.adept::internal::StackStorageOrig"* %5 to i8**
  %30 = load i8*, i8** %29, align 8, !tbaa !38
  %conv5.i.i = sext i32 %23 to i64
  %mul6.i.i = shl nsw i64 %conv5.i.i, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call.i.i, i8* align 4 %30, i64 %mul6.i.i, i1 false)
  %isnull.i.i = icmp eq i8* %30, null
  br i1 %isnull.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %if.then.i
  tail call void @_ZdaPv(i8* nonnull %30) #32
  %.pre7.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !43
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i: ; preds = %delete.notnull.i.i, %if.then.i
  %.pre7.i = phi i32 [ %23, %if.then.i ], [ %.pre7.pre.i, %delete.notnull.i.i ]
  store i8* %call.i.i, i8** %29, align 8, !tbaa !38
  store i32 %mul.i.i, i32* %n_allocated_statements_.i, align 4, !tbaa !76
  %31 = bitcast i8* %call.i.i to %"struct.adept::internal::Statement"*
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, %entry.if.end_crit_edge.i
  %32 = phi i32 [ %23, %entry.if.end_crit_edge.i ], [ %.pre7.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %33 = phi %"struct.adept::internal::Statement"* [ %.pre.i, %entry.if.end_crit_edge.i ], [ %31, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %gradient_index_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 1
  %34 = load i32, i32* %gradient_index_, align 4, !tbaa !49
  %idxprom.i = sext i32 %32 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %33, i64 %idxprom.i, i32 0
  store i32 %34, i32* %index.i, align 4, !tbaa !44
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %5, i64 0, i32 5
  %35 = load i32, i32* %n_operations_.i, align 8, !tbaa !77
  %inc.i = add nsw i32 %32, 1
  store i32 %inc.i, i32* %n_statements_.i, align 8, !tbaa !43
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %33, i64 %idxprom.i, i32 1
  store i32 %35, i32* %end_plus_one.i, align 4, !tbaa !48
  ret %"class.adept::Active"* %this
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %this, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %rhs) unnamed_addr #6 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %val_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 0
  store double 0.000000e+00, double* %val_, align 8, !tbaa !154
  %gradient_index_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 1
  %0 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !29
  %n_gradients_registered_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 9
  %1 = load i32, i32* %n_gradients_registered_.i, align 4, !tbaa !54
  %inc.i = add nsw i32 %1, 1
  store i32 %inc.i, i32* %n_gradients_registered_.i, align 4, !tbaa !54
  %gap_list_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 4
  %2 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %3 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i, align 8, !tbaa !31
  %cmp.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %3, %2
  %4 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 0
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %i_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 6
  %5 = load i32, i32* %i_gradient_.i, align 8, !tbaa !65
  %inc2.i = add nsw i32 %5, 1
  store i32 %inc2.i, i32* %i_gradient_.i, align 8, !tbaa !65
  %max_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 8
  %6 = load i32, i32* %max_gradient_.i, align 8, !tbaa !66
  %cmp.not.i = icmp slt i32 %5, %6
  br i1 %cmp.not.i, label %_ZN5adept5Stack17register_gradientEv.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  store i32 %inc2.i, i32* %max_gradient_.i, align 8, !tbaa !66
  br label %_ZN5adept5Stack17register_gradientEv.exit

if.else.i:                                        ; preds = %entry
  %7 = bitcast %"struct.std::__detail::_List_node_base"* %3 to %"struct.std::_List_node"*
  %_M_storage.i.i.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %3, i64 1
  %start.i = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i.i.i to i32*
  %8 = load i32, i32* %start.i, align 4, !tbaa !57
  %inc11.i = add nsw i32 %8, 1
  store i32 %inc11.i, i32* %start.i, align 4, !tbaa !57
  %end.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %7, i64 0, i32 1, i32 0, i64 4
  %9 = bitcast i8* %end.i to i32*
  %10 = load i32, i32* %9, align 4, !tbaa !55
  %cmp13.not.i = icmp slt i32 %8, %10
  br i1 %cmp13.not.i, label %_ZN5adept5Stack17register_gradientEv.exit, label %if.then14.i

if.then14.i:                                      ; preds = %if.else.i
  %_M_node.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 5, i32 0
  %11 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa !58
  %cmp.i35.i = icmp eq %"struct.std::__detail::_List_node_base"* %11, %3
  br i1 %cmp.i35.i, label %if.then18.i, label %if.end24.i

if.then18.i:                                      ; preds = %if.then14.i
  store %"struct.std::__detail::_List_node_base"* %2, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa.struct !63
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then18.i, %if.then14.i
  %_M_size.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %0, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %12 = load i64, i64* %_M_size.i.i.i.i, align 8, !tbaa !59
  %sub.i.i.i.i = add i64 %12, -1
  store i64 %sub.i.i.i.i, i64* %_M_size.i.i.i.i, align 8, !tbaa !59
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %3) #30
  %13 = bitcast %"struct.std::__detail::_List_node_base"* %3 to i8*
  tail call void @_ZdlPv(i8* nonnull %13) #30
  %.pre = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !29
  br label %_ZN5adept5Stack17register_gradientEv.exit

_ZN5adept5Stack17register_gradientEv.exit:        ; preds = %if.end24.i, %if.else.i, %if.then4.i, %if.then.i
  %14 = phi %"class.adept::internal::StackStorageOrig"* [ %.pre, %if.end24.i ], [ %4, %if.else.i ], [ %4, %if.then4.i ], [ %4, %if.then.i ]
  %return_val.0.i = phi i32 [ %8, %if.end24.i ], [ %8, %if.else.i ], [ %5, %if.then4.i ], [ %5, %if.then.i ]
  store i32 %return_val.0.i, i32* %gradient_index_, align 8, !tbaa !162
  %n_allocated_operations_.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %14, i64 0, i32 6
  %15 = load i32, i32* %n_allocated_operations_.i.i, align 4, !tbaa !78
  %n_operations_.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %14, i64 0, i32 5
  %16 = load i32, i32* %n_operations_.i.i, align 8, !tbaa !77
  %add.i.i = add nsw i32 %16, 1
  %cmp.not.i.i = icmp sgt i32 %15, %add.i.i
  %17 = bitcast %"class.adept::internal::StackStorageOrig"* %14 to %"class.adept::Stack"*
  br i1 %cmp.not.i.i, label %_ZN5adept6ActiveIdEaSERKS1_.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %_ZN5adept5Stack17register_gradientEv.exit
  tail call void @_ZN5adept8internal16StackStorageOrig20grow_operation_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %14, i32 1)
  %.pre.i = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !29
  %18 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %.pre.i, i64 0, i32 0
  br label %_ZN5adept6ActiveIdEaSERKS1_.exit

_ZN5adept6ActiveIdEaSERKS1_.exit:                 ; preds = %if.then.i.i, %_ZN5adept5Stack17register_gradientEv.exit
  %19 = phi %"class.adept::internal::StackStorageOrig"* [ %14, %_ZN5adept5Stack17register_gradientEv.exit ], [ %18, %if.then.i.i ]
  %20 = phi %"class.adept::Stack"* [ %17, %_ZN5adept5Stack17register_gradientEv.exit ], [ %.pre.i, %if.then.i.i ]
  %val_.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %rhs, i64 0, i32 0
  %21 = load double, double* %val_.i.i.i, align 8, !tbaa !154
  %gradient_index_.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %rhs, i64 0, i32 1
  %multiplier_.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %20, i64 0, i32 0, i32 1
  %22 = load double*, double** %multiplier_.i.i.i.i, align 8, !tbaa !40
  %n_operations_.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %20, i64 0, i32 0, i32 5
  %23 = load i32, i32* %n_operations_.i.i.i.i, align 8, !tbaa !77
  %idxprom.i.i.i.i = sext i32 %23 to i64
  %arrayidx.i.i.i.i = getelementptr inbounds double, double* %22, i64 %idxprom.i.i.i.i
  store double 1.000000e+00, double* %arrayidx.i.i.i.i, align 8, !tbaa !46
  %24 = load i32, i32* %gradient_index_.i.i.i, align 8, !tbaa !49
  %index_.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %20, i64 0, i32 0, i32 2
  %25 = load i32*, i32** %index_.i.i.i.i, align 8, !tbaa !41
  %inc.i.i.i.i = add nsw i32 %23, 1
  store i32 %inc.i.i.i.i, i32* %n_operations_.i.i.i.i, align 8, !tbaa !77
  %arrayidx4.i.i.i.i = getelementptr inbounds i32, i32* %25, i64 %idxprom.i.i.i.i
  store i32 %24, i32* %arrayidx4.i.i.i.i, align 4, !tbaa !49
  store double %21, double* %val_, align 8, !tbaa !154
  %n_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %19, i64 0, i32 3
  %26 = load i32, i32* %n_statements_.i, align 8, !tbaa !43
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %19, i64 0, i32 4
  %27 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !76
  %cmp.not.i3 = icmp slt i32 %26, %27
  br i1 %cmp.not.i3, label %entry.if.end_crit_edge.i, label %if.then.i5

entry.if.end_crit_edge.i:                         ; preds = %_ZN5adept6ActiveIdEaSERKS1_.exit
  %statement_.phi.trans.insert.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %19, i64 0, i32 0
  %.pre.i4 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i, align 8, !tbaa !38
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

if.then.i5:                                       ; preds = %_ZN5adept6ActiveIdEaSERKS1_.exit
  %mul.i.i = shl nsw i32 %27, 1
  %conv.i.i = sext i32 %mul.i.i to i64
  %28 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i, i64 8)
  %29 = extractvalue { i64, i1 } %28, 1
  %30 = extractvalue { i64, i1 } %28, 0
  %31 = select i1 %29, i64 -1, i64 %30
  %call.i.i = tail call noalias nonnull i8* @_Znam(i64 %31) #34
  %32 = bitcast %"class.adept::internal::StackStorageOrig"* %19 to i8**
  %33 = load i8*, i8** %32, align 8, !tbaa !38
  %conv5.i.i = sext i32 %26 to i64
  %mul6.i.i = shl nsw i64 %conv5.i.i, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call.i.i, i8* align 4 %33, i64 %mul6.i.i, i1 false)
  %isnull.i.i = icmp eq i8* %33, null
  br i1 %isnull.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %if.then.i5
  tail call void @_ZdaPv(i8* nonnull %33) #32
  %.pre7.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !43
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i: ; preds = %delete.notnull.i.i, %if.then.i5
  %.pre7.i = phi i32 [ %26, %if.then.i5 ], [ %.pre7.pre.i, %delete.notnull.i.i ]
  store i8* %call.i.i, i8** %32, align 8, !tbaa !38
  store i32 %mul.i.i, i32* %n_allocated_statements_.i, align 4, !tbaa !76
  %34 = bitcast i8* %call.i.i to %"struct.adept::internal::Statement"*
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, %entry.if.end_crit_edge.i
  %35 = phi i32 [ %26, %entry.if.end_crit_edge.i ], [ %.pre7.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %36 = phi %"struct.adept::internal::Statement"* [ %.pre.i4, %entry.if.end_crit_edge.i ], [ %34, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %37 = load i32, i32* %gradient_index_, align 4, !tbaa !49
  %idxprom.i = sext i32 %35 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %36, i64 %idxprom.i, i32 0
  store i32 %37, i32* %index.i, align 4, !tbaa !44
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %19, i64 0, i32 5
  %38 = load i32, i32* %n_operations_.i, align 8, !tbaa !77
  %inc.i6 = add nsw i32 %35, 1
  store i32 %inc.i6, i32* %n_statements_.i, align 8, !tbaa !43
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %36, i64 %idxprom.i, i32 1
  store i32 %38, i32* %end_plus_one.i, align 4, !tbaa !48
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept5Stack13set_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPKS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i32 %start, i32 %end_plus_one, double* %gradient) local_unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %gradients_initialized_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 10
  %0 = load i8, i8* %gradients_initialized_.i, align 8, !tbaa !42, !range !28
  %tobool.i.not = icmp eq i8 %0, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %max_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %1 = load i32, i32* %max_gradient_.i, align 8, !tbaa !66
  %cmp.i = icmp sgt i32 %1, 0
  br i1 %cmp.i, label %if.then.i, label %_ZN5adept5Stack20initialize_gradientsEv.exit

if.then.i:                                        ; preds = %if.then
  %n_allocated_gradients_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 7
  %2 = load i32, i32* %n_allocated_gradients_.i, align 4, !tbaa !74
  %cmp3.i = icmp slt i32 %2, %1
  %gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
  br i1 %cmp3.i, label %if.then4.i, label %if.then.i.for.body.lr.ph.i_crit_edge

if.then.i.for.body.lr.ph.i_crit_edge:             ; preds = %if.then.i
  %.phi.trans.insert = bitcast double** %gradient_.i to i8**
  %.pre = load i8*, i8** %.phi.trans.insert, align 8, !tbaa !30
  br label %for.body.lr.ph.i

if.then4.i:                                       ; preds = %if.then.i
  %3 = load double*, double** %gradient_.i, align 8, !tbaa !30
  %tobool.not.i = icmp eq double* %3, null
  br i1 %tobool.not.i, label %if.end11.i, label %delete.notnull.i

delete.notnull.i:                                 ; preds = %if.then4.i
  %4 = bitcast double* %3 to i8*
  tail call void @_ZdaPv(i8* %4) #32
  %.pre.i = load i32, i32* %max_gradient_.i, align 8, !tbaa !66
  br label %if.end11.i

if.end11.i:                                       ; preds = %delete.notnull.i, %if.then4.i
  %5 = phi i32 [ %.pre.i, %delete.notnull.i ], [ %1, %if.then4.i ]
  %conv.i = sext i32 %5 to i64
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i, i64 8)
  %7 = extractvalue { i64, i1 } %6, 1
  %8 = extractvalue { i64, i1 } %6, 0
  %9 = select i1 %7, i64 -1, i64 %8
  %call.i = tail call noalias nonnull i8* @_Znam(i64 %9) #34
  %10 = bitcast double** %gradient_.i to i8**
  store i8* %call.i, i8** %10, align 8, !tbaa !30
  store i32 %5, i32* %n_allocated_gradients_.i, align 4, !tbaa !74
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
  store i8 1, i8* %gradients_initialized_.i, align 8, !tbaa !42
  br label %if.end

if.end:                                           ; preds = %_ZN5adept5Stack20initialize_gradientsEv.exit, %entry
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %15 = load i32, i32* %max_gradient_, align 8, !tbaa !66
  %cmp = icmp slt i32 %15, %end_plus_one
  br i1 %cmp, label %if.then2, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cmp1029 = icmp sgt i32 %end_plus_one, %start
  br i1 %cmp1029, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
  %16 = load double*, double** %gradient_, align 8, !tbaa !30
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
  %wide.load = load <2 x double>, <2 x double>* %21, align 8, !tbaa !46, !alias.scope !177
  %22 = getelementptr inbounds double, double* %20, i64 2
  %23 = bitcast double* %22 to <2 x double>*
  %wide.load14 = load <2 x double>, <2 x double>* %23, align 8, !tbaa !46, !alias.scope !177
  %24 = getelementptr inbounds double, double* %16, i64 %offset.idx
  %25 = bitcast double* %24 to <2 x double>*
  store <2 x double> %wide.load, <2 x double>* %25, align 8, !tbaa !46, !alias.scope !180, !noalias !177
  %26 = getelementptr inbounds double, double* %24, i64 2
  %27 = bitcast double* %26 to <2 x double>*
  store <2 x double> %wide.load14, <2 x double>* %27, align 8, !tbaa !46, !alias.scope !180, !noalias !177
  %index.next = add i64 %index, 4
  %28 = icmp eq i64 %index.next, %n.vec
  br i1 %28, label %middle.block, label %vector.body, !llvm.loop !182

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %for.body.lr.ph, %middle.block
  %indvars.iv33.ph = phi i64 [ %17, %vector.memcheck ], [ %17, %for.body.lr.ph ], [ %ind.end, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  br label %for.body

if.then2:                                         ; preds = %if.end
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %29 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %29) #30
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %31 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %30, %union.anon** %31, align 8, !tbaa !12
  %32 = bitcast %union.anon* %30 to i8*
  %33 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %33) #30
  store i64 98, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i23 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.then2
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i23, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %34 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %34, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(98) %call5.i.i.i10.i23, i8* nonnull align 1 dereferenceable(98) getelementptr inbounds ([99 x i8], [99 x i8]* @.str.89, i64 0, i64 0), i64 98, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %34, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i23, i64 %34
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %33) #30
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %35 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %36 = getelementptr inbounds i8, i8* %exception, i64 24
  %37 = bitcast i8* %message_.i.i.i to i8**
  store i8* %36, i8** %37, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i.i24 = getelementptr inbounds i8, i8* %exception, i64 16
  %38 = bitcast i8* %_M_string_length.i.i.i.i.i.i24 to i64*
  store i64 0, i64* %38, align 8, !tbaa !8
  store i8 0, i8* %36, align 1, !tbaa !15
  %39 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21gradient_out_of_rangeE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %39, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %35, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont5 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %40 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %39, align 8, !tbaa !20
  %41 = load i8*, i8** %37, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %41, %36
  br i1 %cmp.i.i.i.i.i, label %lpad4.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %41) #30
  br label %lpad4.body

invoke.cont5:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21gradient_out_of_rangeE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad4.body.thread

ehcleanup.thread:                                 ; preds = %if.then2
  %42 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %29) #30
  br label %cleanup.action

lpad4.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %43 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %43) #30
  %44 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %44, %32
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad4.body
  call void @_ZdlPv(i8* %44) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %29) #30
  br label %cleanup.action

lpad4.body.thread:                                ; preds = %invoke.cont5
  %45 = landingpad { i8*, i32 }
          cleanup
  %46 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i37 = icmp eq i8* %46, %32
  br i1 %cmp.i.i.i37, label %ehcleanup.thread42, label %if.then.i.i

ehcleanup.thread42:                               ; preds = %lpad4.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %29) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad4.body.thread
  call void @_ZdlPv(i8* %46) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %29) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad4.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %29) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn28 = phi { i8*, i32 } [ %42, %ehcleanup.thread ], [ %40, %ehcleanup ], [ %40, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

for.cond.cleanup:                                 ; preds = %for.body, %middle.block, %for.cond.preheader
  ret void

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv33 = phi i64 [ %indvars.iv.next34, %for.body ], [ %indvars.iv33.ph, %for.body.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %arrayidx = getelementptr inbounds double, double* %gradient, i64 %indvars.iv
  %47 = load double, double* %arrayidx, align 8, !tbaa !46
  %arrayidx12 = getelementptr inbounds double, double* %16, i64 %indvars.iv33
  store double %47, double* %arrayidx12, align 8, !tbaa !46
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !183

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
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !20
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::gradient_out_of_range", %"class.adept::gradient_out_of_range"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !14
  %2 = getelementptr inbounds %"class.adept::gradient_out_of_range", %"class.adept::gradient_out_of_range"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #30
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::gradient_out_of_range", %"class.adept::gradient_out_of_range"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #30
  %4 = bitcast %"class.adept::gradient_out_of_range"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #32
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK5adept5Stack13get_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i32 %start, i32 %end_plus_one, double* %gradient) local_unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i57 = alloca i64, align 8
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp10 = alloca %"class.std::__cxx11::basic_string", align 8
  %gradients_initialized_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 10
  %0 = load i8, i8* %gradients_initialized_.i, align 8, !tbaa !42, !range !28
  %tobool.i.not = icmp eq i8 %0, 0
  br i1 %tobool.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %1 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #30
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %2, %union.anon** %3, align 8, !tbaa !12
  %4 = bitcast %union.anon* %2 to i8*
  %5 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #30
  store i64 106, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i42 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.then
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i42, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %6 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %6, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(106) %call5.i.i.i10.i42, i8* nonnull align 1 dereferenceable(106) getelementptr inbounds ([107 x i8], [107 x i8]* @.str.27, i64 0, i64 0), i64 106, i1 false) #30
  %_M_string_length.i.i.i.i.i.i41 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %6, i64* %_M_string_length.i.i.i.i.i.i41, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i42, i64 %6
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #30
  %message_.i.i.i43 = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i.i43 to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i.i43 to i8**
  store i8* %8, i8** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i.i44 = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i.i44 to i64*
  store i64 0, i64* %10, align 8, !tbaa !8
  store i8 0, i8* %8, align 1, !tbaa !15
  %11 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept25gradients_not_initializedE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %11, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad.i48

lpad.i48:                                         ; preds = %call5.i.i.i10.i.noexc
  %12 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %11, align 8, !tbaa !20
  %13 = load i8*, i8** %9, align 8, !tbaa !14
  %cmp.i.i.i.i.i47 = icmp eq i8* %13, %8
  br i1 %cmp.i.i.i.i.i47, label %lpad3.body, label %if.then.i.i.i.i49

if.then.i.i.i.i49:                                ; preds = %lpad.i48
  call void @_ZdlPv(i8* %13) #30
  br label %lpad3.body

invoke.cont4:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept25gradients_not_initializedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad3.body.thread

ehcleanup.thread:                                 ; preds = %if.then
  %14 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #30
  br label %cleanup.action

lpad3.body:                                       ; preds = %if.then.i.i.i.i49, %lpad.i48
  %15 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %15) #30
  %16 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i54 = icmp eq i8* %16, %4
  br i1 %cmp.i.i.i54, label %ehcleanup, label %if.then.i.i55.thread

if.then.i.i55.thread:                             ; preds = %lpad3.body
  call void @_ZdlPv(i8* %16) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #30
  br label %cleanup.action

lpad3.body.thread:                                ; preds = %invoke.cont4
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i5486 = icmp eq i8* %18, %4
  br i1 %cmp.i.i.i5486, label %ehcleanup.thread91, label %if.then.i.i55

ehcleanup.thread91:                               ; preds = %lpad3.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #30
  br label %eh.resume

if.then.i.i55:                                    ; preds = %lpad3.body.thread
  call void @_ZdlPv(i8* %18) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #30
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad3.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #30
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i55.thread, %ehcleanup.thread
  %.pn74 = phi { i8*, i32 } [ %14, %ehcleanup.thread ], [ %12, %ehcleanup ], [ %12, %if.then.i.i55.thread ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

if.end:                                           ; preds = %entry
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %19 = load i32, i32* %max_gradient_, align 8, !tbaa !66
  %cmp = icmp slt i32 %19, %end_plus_one
  br i1 %cmp, label %if.then8, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end
  %cmp2678 = icmp sgt i32 %end_plus_one, %start
  br i1 %cmp2678, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
  %20 = load double*, double** %gradient_, align 8, !tbaa !30
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
  %wide.load = load <2 x double>, <2 x double>* %25, align 8, !tbaa !46, !alias.scope !184
  %26 = getelementptr inbounds double, double* %24, i64 2
  %27 = bitcast double* %26 to <2 x double>*
  %wide.load14 = load <2 x double>, <2 x double>* %27, align 8, !tbaa !46, !alias.scope !184
  %28 = getelementptr inbounds double, double* %gradient, i64 %index
  %29 = bitcast double* %28 to <2 x double>*
  store <2 x double> %wide.load, <2 x double>* %29, align 8, !tbaa !46, !alias.scope !187, !noalias !184
  %30 = getelementptr inbounds double, double* %28, i64 2
  %31 = bitcast double* %30 to <2 x double>*
  store <2 x double> %wide.load14, <2 x double>* %31, align 8, !tbaa !46, !alias.scope !187, !noalias !184
  %index.next = add i64 %index, 4
  %32 = icmp eq i64 %index.next, %n.vec
  br i1 %32, label %middle.block, label %vector.body, !llvm.loop !189

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count
  br i1 %cmp.n, label %for.cond.cleanup, label %for.body.preheader

for.body.preheader:                               ; preds = %vector.memcheck, %for.body.lr.ph, %middle.block
  %indvars.iv82.ph = phi i64 [ %21, %vector.memcheck ], [ %21, %for.body.lr.ph ], [ %ind.end, %middle.block ]
  %indvars.iv.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %for.body.lr.ph ], [ %n.vec, %middle.block ]
  br label %for.body

if.then8:                                         ; preds = %if.end
  %exception9 = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %33 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %33) #30
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp10, i64 0, i32 2
  %35 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp10 to %union.anon**
  store %union.anon* %34, %union.anon** %35, align 8, !tbaa !12
  %36 = bitcast %union.anon* %34 to i8*
  %37 = bitcast i64* %__dnew.i.i.i.i57 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %37) #30
  store i64 98, i64* %__dnew.i.i.i.i57, align 8, !tbaa !13
  %call5.i.i.i10.i70 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp10, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i57, i64 0)
          to label %call5.i.i.i10.i.noexc69 unwind label %ehcleanup18.thread

call5.i.i.i10.i.noexc69:                          ; preds = %if.then8
  %_M_p.i13.i.i.i.i60 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp10, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i70, i8** %_M_p.i13.i.i.i.i60, align 8, !tbaa !14
  %38 = load i64, i64* %__dnew.i.i.i.i57, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp10, i64 0, i32 2, i32 0
  store i64 %38, i64* %_M_allocated_capacity.i.i.i.i.i61, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(98) %call5.i.i.i10.i70, i8* nonnull align 1 dereferenceable(98) getelementptr inbounds ([99 x i8], [99 x i8]* @.str.89, i64 0, i64 0), i64 98, i1 false) #30
  %_M_string_length.i.i.i.i.i.i67 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp10, i64 0, i32 1
  store i64 %38, i64* %_M_string_length.i.i.i.i.i.i67, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i68 = getelementptr inbounds i8, i8* %call5.i.i.i10.i70, i64 %38
  store i8 0, i8* %arrayidx.i.i.i.i.i68, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %37) #30
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception9, i64 8
  %39 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %40 = getelementptr inbounds i8, i8* %exception9, i64 24
  %41 = bitcast i8* %message_.i.i.i to i8**
  store i8* %40, i8** %41, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds i8, i8* %exception9, i64 16
  %42 = bitcast i8* %_M_string_length.i.i.i.i.i.i to i64*
  store i64 0, i64* %42, align 8, !tbaa !8
  store i8 0, i8* %40, align 1, !tbaa !15
  %43 = bitcast i8* %exception9 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21gradient_out_of_rangeE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %43, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %39, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp10)
          to label %invoke.cont15 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc69
  %44 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %43, align 8, !tbaa !20
  %45 = load i8*, i8** %41, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %45, %40
  br i1 %cmp.i.i.i.i.i, label %lpad14.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %45) #30
  br label %lpad14.body

invoke.cont15:                                    ; preds = %call5.i.i.i10.i.noexc69
  invoke void @__cxa_throw(i8* nonnull %exception9, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21gradient_out_of_rangeE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad14.body.thread

ehcleanup18.thread:                               ; preds = %if.then8
  %46 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #30
  br label %cleanup.action23

lpad14.body:                                      ; preds = %if.then.i.i.i.i, %lpad.i
  %47 = bitcast i8* %exception9 to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %47) #30
  %48 = load i8*, i8** %_M_p.i13.i.i.i.i60, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %48, %36
  br i1 %cmp.i.i.i, label %ehcleanup18, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad14.body
  call void @_ZdlPv(i8* %48) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #30
  br label %cleanup.action23

lpad14.body.thread:                               ; preds = %invoke.cont15
  %49 = landingpad { i8*, i32 }
          cleanup
  %50 = load i8*, i8** %_M_p.i13.i.i.i.i60, align 8, !tbaa !14
  %cmp.i.i.i96 = icmp eq i8* %50, %36
  br i1 %cmp.i.i.i96, label %ehcleanup18.thread101, label %if.then.i.i

ehcleanup18.thread101:                            ; preds = %lpad14.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #30
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad14.body.thread
  call void @_ZdlPv(i8* %50) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #30
  br label %eh.resume

ehcleanup18:                                      ; preds = %lpad14.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %33) #30
  br label %cleanup.action23

cleanup.action23:                                 ; preds = %ehcleanup18, %if.then.i.i.thread, %ehcleanup18.thread
  %.pn3877 = phi { i8*, i32 } [ %46, %ehcleanup18.thread ], [ %44, %ehcleanup18 ], [ %44, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception9) #30
  br label %eh.resume

for.cond.cleanup:                                 ; preds = %for.body, %middle.block, %for.cond.preheader
  ret void

for.body:                                         ; preds = %for.body.preheader, %for.body
  %indvars.iv82 = phi i64 [ %indvars.iv.next83, %for.body ], [ %indvars.iv82.ph, %for.body.preheader ]
  %indvars.iv = phi i64 [ %indvars.iv.next, %for.body ], [ %indvars.iv.ph, %for.body.preheader ]
  %arrayidx = getelementptr inbounds double, double* %20, i64 %indvars.iv82
  %51 = load double, double* %arrayidx, align 8, !tbaa !46
  %arrayidx28 = getelementptr inbounds double, double* %gradient, i64 %indvars.iv
  store double %51, double* %arrayidx28, align 8, !tbaa !46
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !190

eh.resume:                                        ; preds = %cleanup.action23, %if.then.i.i, %ehcleanup18.thread101, %cleanup.action, %if.then.i.i55, %ehcleanup.thread91
  %.pn38.pn = phi { i8*, i32 } [ %.pn3877, %cleanup.action23 ], [ %.pn74, %cleanup.action ], [ %17, %if.then.i.i55 ], [ %49, %if.then.i.i ], [ %17, %ehcleanup.thread91 ], [ %49, %ehcleanup18.thread101 ]
  resume { i8*, i32 } %.pn38.pn

unreachable:                                      ; preds = %invoke.cont15, %invoke.cont4
  unreachable
}

declare dso_local i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32), i64* nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #23

; Function Attrs: nounwind
declare dso_local void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216)) unnamed_addr #2

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #1

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull dereferenceable(264), i32) local_unnamed_addr #1

; Function Attrs: uwtable
declare dso_local void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8, %"class.std::__cxx11::basic_stringbuf"* nonnull dereferenceable(104)) local_unnamed_addr #6 align 2

declare dso_local nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32), i64, i64, i8*, i64) local_unnamed_addr #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull dereferenceable(8), double) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16), %"struct.std::__detail::_List_node_base"*) local_unnamed_addr #2

; Function Attrs: nobuiltin nofree allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) local_unnamed_addr #11

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIPKvEERSoT_(%"class.std::basic_ostream"* nonnull dereferenceable(8), i8*) local_unnamed_addr #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull dereferenceable(8), i64) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @posix_memalign(i8**, i64, i64) local_unnamed_addr #18

; Function Attrs: nounwind
declare dso_local void @_ZNSt9bad_allocD1Ev(%"class.std::bad_alloc"* nonnull dereferenceable(8)) unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #24

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) local_unnamed_addr #25

declare dso_local nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32), i8*, i64) local_unnamed_addr #1

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept5ArrayILi1EdLb0EE6resizeEPKib(%"class.adept::Array.28"* nonnull dereferenceable(24) %this, i32* %dim, i1 zeroext %force_contiguous) local_unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %result.i.i = alloca double*, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp6 = alloca %"class.std::__cxx11::basic_string", align 8
  %storage_ = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %this, i64 0, i32 1
  %0 = load %"class.adept::Storage.14"*, %"class.adept::Storage.14"** %storage_, align 8, !tbaa !141
  %tobool.not = icmp eq %"class.adept::Storage.14"* %0, null
  br i1 %tobool.not, label %for.body.critedge, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage.14"* nonnull dereferenceable(20) %0)
  store %"class.adept::Storage.14"* null, %"class.adept::Storage.14"** %storage_, align 8, !tbaa !141
  br label %for.body.critedge

for.body.critedge:                                ; preds = %if.then, %entry
  %1 = load i32, i32* %dim, align 4, !tbaa !49
  %cmp4 = icmp slt i32 %1, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.body.critedge
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %2 = bitcast i8* %exception to %"class.adept::invalid_dimension"*
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #30
  %4 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #30
  invoke void @_ZN5adept8internal18exception_locationB5cxx11EPKci(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp6, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.98, i64 0, i64 0), i32 1969)
          to label %invoke.cont unwind label %ehcleanup11.thread

invoke.cont:                                      ; preds = %if.then5
  %call3.i.i.i57 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp6, i64 0, i64 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.97, i64 0, i64 0), i64 34)
          to label %call3.i.i.i.noexc unwind label %lpad7

call3.i.i.i.noexc:                                ; preds = %invoke.cont
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %6 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !12, !alias.scope !191
  %_M_p.i.i25.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %_M_p.i.i25.i.i, align 8, !tbaa !14
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 2
  %arraydecay.i.i.i.i = bitcast %union.anon* %8 to i8*
  %cmp.i.i.i = icmp eq i8* %7, %arraydecay.i.i.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %call3.i.i.i.noexc
  %arraydecay.i.i.i = bitcast %union.anon* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %arraydecay.i.i.i, i8* nonnull align 8 dereferenceable(16) %7, i64 16, i1 false) #30
  br label %invoke.cont8

if.else.i.i:                                      ; preds = %call3.i.i.i.noexc
  %_M_p.i23.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %7, i8** %_M_p.i23.i.i, align 8, !tbaa !14, !alias.scope !191
  %_M_allocated_capacity.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 2, i32 0
  %9 = load i64, i64* %_M_allocated_capacity.i.i, align 8, !tbaa !15
  %_M_allocated_capacity.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %9, i64* %_M_allocated_capacity.i.i.i, align 8, !tbaa !15, !alias.scope !191
  br label %invoke.cont8

invoke.cont8:                                     ; preds = %if.else.i.i, %if.then.i.i
  %_M_string_length.i22.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 1
  %10 = load i64, i64* %_M_string_length.i22.i.i, align 8, !tbaa !8
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %10, i64* %_M_string_length.i.i.i, align 8, !tbaa !8, !alias.scope !191
  %11 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i57 to %union.anon**
  store %union.anon* %8, %union.anon** %11, align 8, !tbaa !14
  store i64 0, i64* %_M_string_length.i22.i.i, align 8, !tbaa !8
  store i8 0, i8* %arraydecay.i.i.i.i, align 8, !tbaa !15
  invoke void @_ZN5adept17invalid_dimensionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_dimension"* nonnull dereferenceable(40) %2, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont8
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_dimensionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad9

ehcleanup11.thread:                               ; preds = %if.then5
  %12 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #30
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
  %15 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !14
  %arraydecay.i.i.i.i58 = bitcast %union.anon* %5 to i8*
  %cmp.i.i.i59 = icmp eq i8* %15, %arraydecay.i.i.i.i58
  br i1 %cmp.i.i.i59, label %ehcleanup, label %if.then.i.i60

if.then.i.i60:                                    ; preds = %lpad9
  call void @_ZdlPv(i8* %15) #30
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i60, %lpad9, %lpad7
  %.pn = phi { i8*, i32 } [ %13, %lpad7 ], [ %14, %lpad9 ], [ %14, %if.then.i.i60 ]
  %cleanup.isactive.1 = phi i1 [ true, %lpad7 ], [ %cleanup.isactive.0, %lpad9 ], [ %cleanup.isactive.0, %if.then.i.i60 ]
  %_M_p.i.i.i.i61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp6, i64 0, i32 0, i32 0
  %16 = load i8*, i8** %_M_p.i.i.i.i61, align 8, !tbaa !14
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp6, i64 0, i32 2
  %arraydecay.i.i.i.i62 = bitcast %union.anon* %17 to i8*
  %cmp.i.i.i63 = icmp eq i8* %16, %arraydecay.i.i.i.i62
  br i1 %cmp.i.i.i63, label %ehcleanup11, label %if.then.i.i64

if.then.i.i64:                                    ; preds = %ehcleanup
  call void @_ZdlPv(i8* %16) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #30
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

ehcleanup11:                                      ; preds = %ehcleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #30
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

cleanup.action:                                   ; preds = %ehcleanup11, %if.then.i.i64, %ehcleanup11.thread
  %.pn.pn73 = phi { i8*, i32 } [ %12, %ehcleanup11.thread ], [ %.pn, %ehcleanup11 ], [ %.pn, %if.then.i.i64 ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

if.else:                                          ; preds = %for.body.critedge
  %cmp16 = icmp eq i32 %1, 0
  br i1 %cmp16, label %_ZN5adept5ArrayILi1EdLb0EE5clearEv.exit, label %for.end, !llvm.loop !194

_ZN5adept5ArrayILi1EdLb0EE5clearEv.exit:          ; preds = %if.else
  %data_.i = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %this, i64 0, i32 0
  store double* null, double** %data_.i, align 8, !tbaa !144
  %arrayidx.i.i = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %this, i64 0, i32 2, i32 0, i64 0
  store i32 0, i32* %arrayidx.i.i, align 4, !tbaa !49
  %arrayidx.i4.i = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %this, i64 0, i32 3, i32 0, i64 0
  store i32 0, i32* %arrayidx.i4.i, align 4, !tbaa !49
  br label %return

for.end:                                          ; preds = %if.else
  %arrayidx3.i = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %this, i64 0, i32 2, i32 0, i64 0
  store i32 %1, i32* %arrayidx3.i, align 4, !tbaa !49
  %18 = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %this, i64 0, i32 3, i32 0, i64 0
  store i32 1, i32* %18, align 4
  %call32 = tail call noalias nonnull dereferenceable(24) i8* @_Znwm(i64 24) #34
  %n_.i = getelementptr inbounds i8, i8* %call32, i64 8
  %19 = bitcast i8* %n_.i to i32*
  store i32 %1, i32* %19, align 8, !tbaa !195
  %n_links_.i = getelementptr inbounds i8, i8* %call32, i64 12
  %20 = bitcast i8* %n_links_.i to i32*
  store i32 1, i32* %20, align 4, !tbaa !197
  %gradient_index_.i = getelementptr inbounds i8, i8* %call32, i64 16
  %21 = bitcast i8* %gradient_index_.i to i32*
  store i32 -1, i32* %21, align 8, !tbaa !198
  %22 = bitcast double** %result.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #30
  %23 = bitcast double** %result.i.i to i8**
  %conv1.i.i74 = zext i32 %1 to i64
  %mul.i.i = shl nuw nsw i64 %conv1.i.i74, 3
  %call2.i.i = call i32 @posix_memalign(i8** nonnull %23, i64 16, i64 %mul.i.i) #30
  %cmp3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %cmp3.not.i.i, label %invoke.cont34, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %for.end
  %exception.i.i = call i8* @__cxa_allocate_exception(i64 8) #30
  %24 = bitcast i8* %exception.i.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt9bad_alloc, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %24, align 8, !tbaa !20
  invoke void @__cxa_throw(i8* nonnull %exception.i.i, i8* bitcast (i8** @_ZTISt9bad_alloc to i8*), i8* bitcast (void (%"class.std::bad_alloc"*)* @_ZNSt9bad_allocD1Ev to i8*)) #31
          to label %.noexc unwind label %lpad33

.noexc:                                           ; preds = %if.then4.i.i
  unreachable

invoke.cont34:                                    ; preds = %for.end
  %25 = load double*, double** %result.i.i, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #30
  %data_.i67 = bitcast i8* %call32 to double**
  store double* %25, double** %data_.i67, align 8, !tbaa !199
  %26 = load i32, i32* @_ZN5adept8internal26n_storage_objects_created_E, align 4, !tbaa !49
  %inc.i = add nsw i32 %26, 1
  store i32 %inc.i, i32* @_ZN5adept8internal26n_storage_objects_created_E, align 4, !tbaa !49
  %27 = bitcast %"class.adept::Storage.14"** %storage_ to i8**
  store i8* %call32, i8** %27, align 8, !tbaa !141
  %data_ = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %this, i64 0, i32 0
  store double* %25, double** %data_, align 8, !tbaa !144
  br label %return

return:                                           ; preds = %invoke.cont34, %_ZN5adept5ArrayILi1EdLb0EE5clearEv.exit
  ret void

lpad33:                                           ; preds = %if.then4.i.i
  %28 = landingpad { i8*, i32 }
          cleanup
  call void @_ZdlPv(i8* nonnull %call32) #32
  br label %eh.resume

eh.resume:                                        ; preds = %lpad33, %cleanup.action, %ehcleanup11, %if.then.i.i64
  %.pn.pn.pn = phi { i8*, i32 } [ %28, %lpad33 ], [ %.pn.pn73, %cleanup.action ], [ %.pn, %ehcleanup11 ], [ %.pn, %if.then.i.i64 ]
  resume { i8*, i32 } %.pn.pn.pn

unreachable:                                      ; preds = %invoke.cont10
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage.14"* nonnull dereferenceable(20) %this) local_unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp2 = alloca %"class.std::__cxx11::basic_string", align 8
  %n_links_ = getelementptr inbounds %"class.adept::Storage.14", %"class.adept::Storage.14"* %this, i64 0, i32 2
  %0 = load i32, i32* %n_links_, align 4, !tbaa !197
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #30
  %1 = bitcast i8* %exception to %"class.adept::invalid_operation"*
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #30
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #30
  invoke void @_ZN5adept8internal18exception_locationB5cxx11EPKci(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp2, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.100, i64 0, i64 0), i32 112)
          to label %invoke.cont unwind label %ehcleanup7.thread

invoke.cont:                                      ; preds = %if.then
  %call3.i.i.i17 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp2, i64 0, i64 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.99, i64 0, i64 0), i64 57)
          to label %call3.i.i.i.noexc unwind label %lpad3

call3.i.i.i.noexc:                                ; preds = %invoke.cont
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %5 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %4, %union.anon** %5, align 8, !tbaa !12, !alias.scope !200
  %_M_p.i.i25.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 0, i32 0
  %6 = load i8*, i8** %_M_p.i.i25.i.i, align 8, !tbaa !14
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 2
  %arraydecay.i.i.i.i = bitcast %union.anon* %7 to i8*
  %cmp.i.i.i = icmp eq i8* %6, %arraydecay.i.i.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %call3.i.i.i.noexc
  %arraydecay.i.i.i = bitcast %union.anon* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %arraydecay.i.i.i, i8* nonnull align 8 dereferenceable(16) %6, i64 16, i1 false) #30
  br label %invoke.cont4

if.else.i.i:                                      ; preds = %call3.i.i.i.noexc
  %_M_p.i23.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %6, i8** %_M_p.i23.i.i, align 8, !tbaa !14, !alias.scope !200
  %_M_allocated_capacity.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 2, i32 0
  %8 = load i64, i64* %_M_allocated_capacity.i.i, align 8, !tbaa !15
  %_M_allocated_capacity.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %8, i64* %_M_allocated_capacity.i.i.i, align 8, !tbaa !15, !alias.scope !200
  br label %invoke.cont4

invoke.cont4:                                     ; preds = %if.else.i.i, %if.then.i.i
  %_M_string_length.i22.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 1
  %9 = load i64, i64* %_M_string_length.i22.i.i, align 8, !tbaa !8
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %9, i64* %_M_string_length.i.i.i, align 8, !tbaa !8, !alias.scope !200
  %10 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i17 to %union.anon**
  store %union.anon* %7, %union.anon** %10, align 8, !tbaa !14
  store i64 0, i64* %_M_string_length.i22.i.i, align 8, !tbaa !8
  store i8 0, i8* %arraydecay.i.i.i.i, align 8, !tbaa !15
  invoke void @_ZN5adept17invalid_operationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %1, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont4
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_operationE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad5

ehcleanup7.thread:                                ; preds = %if.then
  %11 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #30
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
  %14 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !14
  %arraydecay.i.i.i.i18 = bitcast %union.anon* %4 to i8*
  %cmp.i.i.i19 = icmp eq i8* %14, %arraydecay.i.i.i.i18
  br i1 %cmp.i.i.i19, label %ehcleanup, label %if.then.i.i20

if.then.i.i20:                                    ; preds = %lpad5
  call void @_ZdlPv(i8* %14) #30
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i20, %lpad5, %lpad3
  %.pn = phi { i8*, i32 } [ %12, %lpad3 ], [ %13, %lpad5 ], [ %13, %if.then.i.i20 ]
  %cleanup.isactive.1 = phi i1 [ true, %lpad3 ], [ %cleanup.isactive.0, %lpad5 ], [ %cleanup.isactive.0, %if.then.i.i20 ]
  %_M_p.i.i.i.i21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp2, i64 0, i32 0, i32 0
  %15 = load i8*, i8** %_M_p.i.i.i.i21, align 8, !tbaa !14
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp2, i64 0, i32 2
  %arraydecay.i.i.i.i22 = bitcast %union.anon* %16 to i8*
  %cmp.i.i.i23 = icmp eq i8* %15, %arraydecay.i.i.i.i22
  br i1 %cmp.i.i.i23, label %ehcleanup7, label %if.then.i.i24

if.then.i.i24:                                    ; preds = %ehcleanup
  call void @_ZdlPv(i8* %15) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #30
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

ehcleanup7:                                       ; preds = %ehcleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #30
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

cleanup.action:                                   ; preds = %ehcleanup7, %if.then.i.i24, %ehcleanup7.thread
  %.pn.pn29 = phi { i8*, i32 } [ %11, %ehcleanup7.thread ], [ %.pn, %ehcleanup7 ], [ %.pn, %if.then.i.i24 ]
  call void @__cxa_free_exception(i8* %exception) #30
  br label %eh.resume

if.else:                                          ; preds = %entry
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %n_links_, align 4, !tbaa !197
  %cmp11.not = icmp eq i32 %dec, 0
  br i1 %cmp11.not, label %delete.notnull, label %if.end13

delete.notnull:                                   ; preds = %if.else
  %17 = bitcast %"class.adept::Storage.14"* %this to i8**
  %18 = load i8*, i8** %17, align 8, !tbaa !199
  tail call void @free(i8* %18) #30
  %gradient_index_.i = getelementptr inbounds %"class.adept::Storage.14", %"class.adept::Storage.14"* %this, i64 0, i32 3
  %19 = load i32, i32* %gradient_index_.i, align 8, !tbaa !198
  %cmp.i = icmp sgt i32 %19, -1
  br i1 %cmp.i, label %if.then.i, label %_ZN5adept7StorageIdED2Ev.exit

if.then.i:                                        ; preds = %delete.notnull
  %20 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !29
  %n_.i = getelementptr inbounds %"class.adept::Storage.14", %"class.adept::Storage.14"* %this, i64 0, i32 1
  invoke void @_ZN5adept5Stack20unregister_gradientsERKiS2_(%"class.adept::Stack"* nonnull dereferenceable(149) %20, i32* nonnull align 4 dereferenceable(4) %gradient_index_.i, i32* nonnull align 4 dereferenceable(4) %n_.i)
          to label %_ZN5adept7StorageIdED2Ev.exit unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %if.then.i
  %21 = landingpad { i8*, i32 }
          catch i8* null
  %22 = extractvalue { i8*, i32 } %21, 0
  tail call void @__clang_call_terminate(i8* %22) #35
  unreachable

_ZN5adept7StorageIdED2Ev.exit:                    ; preds = %if.then.i, %delete.notnull
  %23 = load i32, i32* @_ZN5adept8internal26n_storage_objects_deleted_E, align 4, !tbaa !49
  %inc.i = add nsw i32 %23, 1
  store i32 %inc.i, i32* @_ZN5adept8internal26n_storage_objects_deleted_E, align 4, !tbaa !49
  %24 = bitcast %"class.adept::Storage.14"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %24) #32
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
define linkonce_odr dso_local void @_ZN5adept8internal18exception_locationB5cxx11EPKci(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result, i8* %file, i32 %line) local_unnamed_addr #26 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %s = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %0 = bitcast %"class.std::__cxx11::basic_stringstream"* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 392, i8* nonnull %0) #30
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull dereferenceable(128) %s)
  %add.ptr = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1
  %1 = bitcast %"class.std::basic_ostream.base"* %add.ptr to %"class.std::basic_ostream"*
  %call1.i11 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.101, i64 0, i64 0), i64 5)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %tobool.not.i = icmp eq i8* %file, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %invoke.cont
  %2 = bitcast %"class.std::basic_ostream.base"* %add.ptr to i8**
  %vtable.i = load i8*, i8** %2, align 8, !tbaa !20
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i64 -24
  %3 = bitcast i8* %vbase.offset.ptr.i to i64*
  %vbase.offset.i = load i64, i64* %3, align 8
  %4 = bitcast %"class.std::basic_ostream.base"* %add.ptr to i8*
  %add.ptr.i = getelementptr inbounds i8, i8* %4, i64 %vbase.offset.i
  %5 = bitcast i8* %add.ptr.i to %"class.std::basic_ios"*
  %_M_streambuf_state.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 32
  %6 = bitcast i8* %_M_streambuf_state.i.i.i to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !203
  %or.i.i.i = or i32 %7, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull dereferenceable(264) %5, i32 %or.i.i.i)
          to label %invoke.cont1 unwind label %lpad

if.else.i:                                        ; preds = %invoke.cont
  %call.i.i12 = call i64 @strlen(i8* nonnull dereferenceable(1) %file) #30
  %call1.i13 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull %file, i64 %call.i.i12)
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %if.else.i, %if.then.i
  %call1.i18 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i64 1)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont1
  %call6 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %1, i32 %line)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont3
  %call1.i23 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call6, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.102, i64 0, i64 0), i64 1)
          to label %invoke.cont7 unwind label %lpad

invoke.cont7:                                     ; preds = %invoke.cont5
  %_M_stringbuf.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1
  invoke void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* sret(%"class.std::__cxx11::basic_string") align 8 %agg.result, %"class.std::__cxx11::basic_stringbuf"* nonnull dereferenceable(104) %_M_stringbuf.i)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %invoke.cont7
  %8 = load i32 (...)**, i32 (...)*** bitcast ([10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE to i32 (...)***), align 8
  %9 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** %8, i32 (...)*** %9, align 8, !tbaa !20
  %10 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i32 (...)***), align 8
  %vbase.offset.ptr4.i.i = getelementptr i32 (...)*, i32 (...)** %8, i64 -3
  %11 = bitcast i32 (...)** %vbase.offset.ptr4.i.i to i64*
  %vbase.offset.i.i = load i64, i64* %11, align 8
  %add.ptr.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i
  %12 = bitcast i8* %add.ptr.i.i to i32 (...)***
  store i32 (...)** %10, i32 (...)*** %12, align 8, !tbaa !20
  %13 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i32 (...)***), align 8
  %14 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** %13, i32 (...)*** %14, align 8, !tbaa !20
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %15, align 8, !tbaa !20
  %_M_p.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 0, i32 0
  %16 = load i8*, i8** %_M_p.i.i.i.i.i.i.i, align 8, !tbaa !14
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 2
  %arraydecay.i.i.i.i.i.i.i = bitcast %union.anon* %17 to i8*
  %cmp.i.i.i.i.i.i = icmp eq i8* %16, %arraydecay.i.i.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %invoke.cont9
  call void @_ZdlPv(i8* %16) #30
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %if.then.i.i.i.i.i, %invoke.cont9
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %15, align 8, !tbaa !20
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i) #30
  %18 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)***), align 8
  store i32 (...)** %18, i32 (...)*** %9, align 8, !tbaa !20
  %19 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr3.i.i.i.i = getelementptr i32 (...)*, i32 (...)** %18, i64 -3
  %20 = bitcast i32 (...)** %vbase.offset.ptr3.i.i.i.i to i64*
  %vbase.offset.i.i.i.i = load i64, i64* %20, align 8
  %add.ptr.i.i.i.i = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i.i.i
  %21 = bitcast i8* %add.ptr.i.i.i.i to i32 (...)***
  store i32 (...)** %19, i32 (...)*** %21, align 8, !tbaa !20
  %22 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %22, align 8, !tbaa !139
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216) %23) #30
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %0) #30
  ret void

lpad:                                             ; preds = %invoke.cont7, %invoke.cont5, %invoke.cont3, %invoke.cont1, %if.else.i, %if.then.i, %entry
  %24 = landingpad { i8*, i32 }
          cleanup
  %25 = load i32 (...)**, i32 (...)*** bitcast ([10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE to i32 (...)***), align 8
  %26 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** %25, i32 (...)*** %26, align 8, !tbaa !20
  %27 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 8) to i32 (...)***), align 8
  %vbase.offset.ptr4.i.i26 = getelementptr i32 (...)*, i32 (...)** %25, i64 -3
  %28 = bitcast i32 (...)** %vbase.offset.ptr4.i.i26 to i64*
  %vbase.offset.i.i27 = load i64, i64* %28, align 8
  %add.ptr.i.i28 = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i27
  %29 = bitcast i8* %add.ptr.i.i28 to i32 (...)***
  store i32 (...)** %27, i32 (...)*** %29, align 8, !tbaa !20
  %30 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 9) to i32 (...)***), align 8
  %31 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1, i32 0
  store i32 (...)** %30, i32 (...)*** %31, align 8, !tbaa !20
  %32 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %32, align 8, !tbaa !20
  %_M_p.i.i.i.i.i.i.i29 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 0, i32 0
  %33 = load i8*, i8** %_M_p.i.i.i.i.i.i.i29, align 8, !tbaa !14
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 2
  %arraydecay.i.i.i.i.i.i.i30 = bitcast %union.anon* %34 to i8*
  %cmp.i.i.i.i.i.i31 = icmp eq i8* %33, %arraydecay.i.i.i.i.i.i.i30
  br i1 %cmp.i.i.i.i.i.i31, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit37, label %if.then.i.i.i.i.i32

if.then.i.i.i.i.i32:                              ; preds = %lpad
  call void @_ZdlPv(i8* %33) #30
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit37

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit37: ; preds = %if.then.i.i.i.i.i32, %lpad
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %32, align 8, !tbaa !20
  %_M_buf_locale.i.i.i.i33 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i33) #30
  %35 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 2) to i32 (...)***), align 8
  store i32 (...)** %35, i32 (...)*** %26, align 8, !tbaa !20
  %36 = load i32 (...)**, i32 (...)*** bitcast (i8** getelementptr inbounds ([10 x i8*], [10 x i8*]* @_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE, i64 0, i64 3) to i32 (...)***), align 8
  %vbase.offset.ptr3.i.i.i.i34 = getelementptr i32 (...)*, i32 (...)** %35, i64 -3
  %37 = bitcast i32 (...)** %vbase.offset.ptr3.i.i.i.i34 to i64*
  %vbase.offset.i.i.i.i35 = load i64, i64* %37, align 8
  %add.ptr.i.i.i.i36 = getelementptr inbounds i8, i8* %0, i64 %vbase.offset.i.i.i.i35
  %38 = bitcast i8* %add.ptr.i.i.i.i36 to i32 (...)***
  store i32 (...)** %36, i32 (...)*** %38, align 8, !tbaa !20
  %39 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 0, i32 1
  store i64 0, i64* %39, align 8, !tbaa !139
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216) %40) #30
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %0) #30
  resume { i8*, i32 } %24
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept17invalid_dimensionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_dimension"* nonnull dereferenceable(40) %this, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %message) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #30
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !12
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #30
  store i64 27, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %call5.i.i.i10.i15 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %lpad

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i15, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !13
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(27) %call5.i.i.i10.i15, i8* nonnull align 1 dereferenceable(27) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.86, i64 0, i64 0), i64 27, i1 false) #30
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !8
  %6 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #30
  %7 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %message_.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1
  %8 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %message_.i.i to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !12
  %_M_string_length.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i.i, align 8, !tbaa !8
  %.cast.i.i.i = bitcast %union.anon* %8 to i8*
  store i8 0, i8* %.cast.i.i.i, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept15array_exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %10 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !20
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %11 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i.i.i = icmp eq i8* %11, %.cast.i.i.i
  br i1 %cmp.i.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %11) #30
  br label %_ZN5adept9exceptionD2Ev.exit.i

_ZN5adept9exceptionD2Ev.exit.i:                   ; preds = %if.then.i.i.i.i, %lpad.i
  %12 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %12) #30
  %13 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i18 = icmp eq i8* %13, %3
  br i1 %cmp.i.i.i18, label %ehcleanup, label %if.then.i.i19

invoke.cont4:                                     ; preds = %call5.i.i.i10.i.noexc
  %14 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i = icmp eq i8* %14, %3
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont4
  call void @_ZdlPv(i8* %14) #30
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %invoke.cont4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept17invalid_dimensionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %message)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret void

lpad:                                             ; preds = %entry
  %15 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

if.then.i.i19:                                    ; preds = %_ZN5adept9exceptionD2Ev.exit.i
  call void @_ZdlPv(i8* %13) #30
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i19, %lpad, %_ZN5adept9exceptionD2Ev.exit.i
  %.pn = phi { i8*, i32 } [ %15, %lpad ], [ %10, %_ZN5adept9exceptionD2Ev.exit.i ], [ %10, %if.then.i.i19 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #30
  br label %eh.resume

lpad7:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %16 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !20
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %17 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !14
  %cmp.i.i.i.i = icmp eq i8* %17, %.cast.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lpad7
  call void @_ZdlPv(i8* %17) #30
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %lpad7
  %18 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %18) #30
  br label %eh.resume

eh.resume:                                        ; preds = %_ZN5adept9exceptionD2Ev.exit, %ehcleanup
  %.pn12 = phi { i8*, i32 } [ %16, %_ZN5adept9exceptionD2Ev.exit ], [ %.pn, %ehcleanup ]
  resume { i8*, i32 } %.pn12
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept17invalid_dimensionD0Ev(%"class.adept::invalid_dimension"* nonnull dereferenceable(40) %this) unnamed_addr #19 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !20
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !14
  %2 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #30
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #30
  %4 = bitcast %"class.adept::invalid_dimension"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #32
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_taylorlog.cpp() #6 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1) @_ZStL8__ioinit)
  %0 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::ios_base::Init"*)* @_ZNSt8ios_base4InitD1Ev to void (i8*)*), i8* getelementptr inbounds (%"class.std::ios_base::Init", %"class.std::ios_base::Init"* @_ZStL8__ioinit, i64 0, i32 0), i8* nonnull @__dso_handle) #30
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E to %union.anon**), align 8, !tbaa !12
  store i16 8236, i16* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 2) to i16*), align 8
  store i64 2, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 2) to i8*), i64 2), align 2, !tbaa !15
  %1 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E to i8*), i8* nonnull @__dso_handle) #30
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E to %union.anon**), align 8, !tbaa !12
  store i8 123, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 2) to i8*), align 8, !tbaa !15
  store i64 1, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 2) to i8*), i64 1), align 1, !tbaa !15
  %2 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E to i8*), i8* nonnull @__dso_handle) #30
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E to %union.anon**), align 8, !tbaa !12
  store i8 125, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 2) to i8*), align 8, !tbaa !15
  store i64 1, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 2) to i8*), i64 1), align 1, !tbaa !15
  %3 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E to i8*), i8* nonnull @__dso_handle) #30
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E to %union.anon**), align 8, !tbaa !12
  store i8 123, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 2) to i8*), align 8, !tbaa !15
  store i64 1, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 2) to i8*), i64 1), align 1, !tbaa !15
  %4 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E to i8*), i8* nonnull @__dso_handle) #30
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E to %union.anon**), align 8, !tbaa !12
  store i8 125, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 2) to i8*), align 8, !tbaa !15
  store i64 1, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 2) to i8*), i64 1), align 1, !tbaa !15
  %5 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E to i8*), i8* nonnull @__dso_handle) #30
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E to %union.anon**), align 8, !tbaa !12
  store i16 8236, i16* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 2) to i16*), align 8
  store i64 2, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 2) to i8*), i64 2), align 2, !tbaa !15
  %6 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E to i8*), i8* nonnull @__dso_handle) #30
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E to %union.anon**), align 8, !tbaa !12
  store i16 2604, i16* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 2) to i16*), align 8
  store i64 2, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 2) to i8*), i64 2), align 2, !tbaa !15
  %7 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E to i8*), i8* nonnull @__dso_handle) #30
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E to %union.anon**), align 8, !tbaa !12
  store i16 31498, i16* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 2) to i16*), align 8
  store i64 2, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 2) to i8*), i64 2), align 2, !tbaa !15
  %8 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E to i8*), i8* nonnull @__dso_handle) #30
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E to %union.anon**), align 8, !tbaa !12
  store i8 125, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 2) to i8*), align 8, !tbaa !15
  store i64 1, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 2) to i8*), i64 1), align 1, !tbaa !15
  %9 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E to i8*), i8* nonnull @__dso_handle) #30
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E to %union.anon**), align 8, !tbaa !12
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(12) bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 2) to i8*), i8* nonnull align 1 dereferenceable(12) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i64 12, i1 false) #30
  store i64 12, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  store i8 0, i8* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 2, i32 1, i64 4), align 4, !tbaa !15
  %10 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E to i8*), i8* nonnull @__dso_handle) #30
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E to %union.anon**), align 8, !tbaa !12
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(7) bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 2) to i8*), i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i64 7, i1 false) #30
  store i64 7, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !8
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 2) to i8*), i64 7), align 1, !tbaa !15
  %11 = tail call i32 @__cxa_atexit(void (i8*)* bitcast (void (%"class.std::__cxx11::basic_string"*)* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev to void (i8*)*), i8* bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E to i8*), i8* nonnull @__dso_handle) #30
  ret void
}

; Function Attrs: uwtable willreturn
define weak_odr hidden %"class.adept::Stack"** @_ZTWN5adept21_stack_current_threadE() local_unnamed_addr #27 comdat {
  ret %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(i8* nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.powi.f64(double, i32) #10

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #28

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #29

attributes #0 = { norecurse nounwind readonly uwtable willreturn mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nofree nounwind }
attributes #4 = { argmemonly nofree nosync nounwind willreturn }
attributes #5 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #8 = { norecurse nounwind readnone uwtable willreturn mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #9 = { uwtable mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #10 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nobuiltin nofree allocsize(0) "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #12 = { noreturn uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #13 = { nofree norecurse nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #14 = { nofree nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #15 = { uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #16 = { nofree nounwind uwtable willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #17 = { norecurse uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #18 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #19 = { inlinehint nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #20 = { nounwind uwtable willreturn mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #21 = { noinline noreturn nounwind }
attributes #22 = { nofree nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #23 = { argmemonly nofree nounwind readonly willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #24 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #25 = { noreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #26 = { inlinehint uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #27 = { uwtable willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #28 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #29 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #30 = { nounwind }
attributes #31 = { noreturn }
attributes #32 = { builtin nounwind }
attributes #33 = { allocsize(0) }
attributes #34 = { builtin allocsize(0) }
attributes #35 = { noreturn nounwind }

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
!8 = !{!9, !4, i64 8}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !4, i64 8, !5, i64 16}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!10, !11, i64 0}
!13 = !{!4, !4, i64 0}
!14 = !{!9, !11, i64 0}
!15 = !{!5, !5, i64 0}
!16 = !{!17, !17, i64 0}
!17 = !{!"bool", !5, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"_ZTSN5adept15ArrayPrintStyleE", !5, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"vtable pointer", !6, i64 0}
!22 = !{!23, !17, i64 145}
!23 = !{!"_ZTSN5adept5StackE", !11, i64 40, !24, i64 48, !24, i64 72, !25, i64 96, !26, i64 120, !27, i64 128, !27, i64 132, !27, i64 136, !27, i64 140, !17, i64 144, !17, i64 145, !17, i64 146, !17, i64 147, !17, i64 148}
!24 = !{!"_ZTSSt6vectorIiSaIiEE"}
!25 = !{!"_ZTSNSt7__cxx114listIN5adept3GapESaIS2_EEE"}
!26 = !{!"_ZTSSt14_List_iteratorIN5adept3GapEE", !11, i64 0}
!27 = !{!"int", !5, i64 0}
!28 = !{i8 0, i8 2}
!29 = !{!11, !11, i64 0}
!30 = !{!23, !11, i64 40}
!31 = !{!32, !11, i64 0}
!32 = !{!"_ZTSNSt8__detail15_List_node_baseE", !11, i64 0, !11, i64 8}
!33 = distinct !{!33, !34, !35}
!34 = !{!"llvm.loop.mustprogress"}
!35 = !{!"llvm.loop.unroll.disable"}
!36 = !{!37, !11, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!38 = !{!39, !11, i64 0}
!39 = !{!"_ZTSN5adept8internal16StackStorageOrigE", !11, i64 0, !11, i64 8, !11, i64 16, !27, i64 24, !27, i64 28, !27, i64 32, !27, i64 36}
!40 = !{!39, !11, i64 8}
!41 = !{!39, !11, i64 16}
!42 = !{!23, !17, i64 144}
!43 = !{!39, !27, i64 24}
!44 = !{!45, !27, i64 0}
!45 = !{!"_ZTSN5adept8internal9StatementE", !27, i64 0, !27, i64 4}
!46 = !{!47, !47, i64 0}
!47 = !{!"double", !5, i64 0}
!48 = !{!45, !27, i64 4}
!49 = !{!27, !27, i64 0}
!50 = distinct !{!50, !34, !35}
!51 = distinct !{!51, !34, !35}
!52 = distinct !{!52, !34, !35}
!53 = distinct !{!53, !34, !35}
!54 = !{!23, !27, i64 140}
!55 = !{!56, !27, i64 4}
!56 = !{!"_ZTSN5adept3GapE", !27, i64 0, !27, i64 4}
!57 = !{!56, !27, i64 0}
!58 = !{!26, !11, i64 0}
!59 = !{!60, !4, i64 16}
!60 = !{!"_ZTSNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EEE", !61, i64 0}
!61 = !{!"_ZTSNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EE10_List_implE", !62, i64 0}
!62 = !{!"_ZTSNSt8__detail17_List_node_headerE", !4, i64 16}
!63 = !{i64 0, i64 8, !29}
!64 = distinct !{!64, !34, !35}
!65 = !{!23, !27, i64 128}
!66 = !{!23, !27, i64 136}
!67 = distinct !{!67, !34, !35}
!68 = !{!32, !11, i64 8}
!69 = distinct !{!69, !34, !35}
!70 = distinct !{!70, !34, !35}
!71 = distinct !{!71, !34, !35}
!72 = distinct !{!72, !34, !35}
!73 = distinct !{!73, !34, !35}
!74 = !{!23, !27, i64 132}
!75 = !{!23, !17, i64 146}
!76 = !{!39, !27, i64 28}
!77 = !{!39, !27, i64 32}
!78 = !{!39, !27, i64 36}
!79 = !{!37, !11, i64 8}
!80 = distinct !{!80, !34, !35}
!81 = distinct !{!81, !34, !35}
!82 = !{!83}
!83 = distinct !{!83, !84, !"_ZNK5adept8internal6PacketIdE3putEPd: %d"}
!84 = distinct !{!84, !"_ZNK5adept8internal6PacketIdE3putEPd"}
!85 = distinct !{!85, !34, !35}
!86 = distinct !{!86, !34, !35}
!87 = distinct !{!87, !34, !35, !88}
!88 = !{!"llvm.loop.isvectorized", i32 1}
!89 = distinct !{!89, !34, !35}
!90 = distinct !{!90, !34, !35, !88}
!91 = distinct !{!91, !34, !35}
!92 = !{!93}
!93 = distinct !{!93, !94, !"_ZNK5adept5Stack23jacobian_forward_kernelEPd: %gradient_multipass_b"}
!94 = distinct !{!94, !"_ZNK5adept5Stack23jacobian_forward_kernelEPd"}
!95 = !{!96, !93}
!96 = distinct !{!96, !97, !"_ZNK5adept8internal6PacketIdE3putEPd: %d"}
!97 = distinct !{!97, !"_ZNK5adept8internal6PacketIdE3putEPd"}
!98 = distinct !{!98, !34, !35}
!99 = distinct !{!99, !34, !35}
!100 = distinct !{!100, !34, !35}
!101 = distinct !{!101, !34, !35}
!102 = !{!103}
!103 = distinct !{!103, !104, !"_ZNK5adept5Stack23jacobian_forward_kernelEPd: %gradient_multipass_b"}
!104 = distinct !{!104, !"_ZNK5adept5Stack23jacobian_forward_kernelEPd"}
!105 = !{!106, !103}
!106 = distinct !{!106, !107, !"_ZNK5adept8internal6PacketIdE3putEPd: %d"}
!107 = distinct !{!107, !"_ZNK5adept8internal6PacketIdE3putEPd"}
!108 = distinct !{!108, !34, !35}
!109 = distinct !{!109, !34, !35}
!110 = !{!111}
!111 = distinct !{!111, !112, !"_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi: %gradient_multipass_b"}
!112 = distinct !{!112, !"_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi"}
!113 = distinct !{!113, !34, !35}
!114 = distinct !{!114, !34, !35}
!115 = distinct !{!115, !34, !35}
!116 = distinct !{!116, !34, !35}
!117 = distinct !{!117, !34, !35}
!118 = distinct !{!118, !34, !35}
!119 = distinct !{!119, !34, !35}
!120 = distinct !{!120, !34, !35}
!121 = distinct !{!121, !34, !35}
!122 = distinct !{!122, !34, !35}
!123 = distinct !{!123, !34, !35}
!124 = distinct !{!124, !34, !35}
!125 = distinct !{!125, !34, !35}
!126 = distinct !{!126, !34, !35}
!127 = distinct !{!127, !34, !35}
!128 = distinct !{!128, !34, !35}
!129 = distinct !{!129, !34, !35}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN5adept7versionB5cxx11Ev: %agg.result"}
!132 = distinct !{!132, !"_ZN5adept7versionB5cxx11Ev"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZN5adept16compiler_versionB5cxx11Ev: %agg.result"}
!135 = distinct !{!135, !"_ZN5adept16compiler_versionB5cxx11Ev"}
!136 = !{!137}
!137 = distinct !{!137, !138, !"_ZN5adept14compiler_flagsB5cxx11Ev: %agg.result"}
!138 = distinct !{!138, !"_ZN5adept14compiler_flagsB5cxx11Ev"}
!139 = !{!140, !4, i64 8}
!140 = !{!"_ZTSSi", !4, i64 8}
!141 = !{!142, !11, i64 8}
!142 = !{!"_ZTSN5adept5ArrayILi1EdLb0EEE", !11, i64 0, !11, i64 8, !143, i64 16, !143, i64 20}
!143 = !{!"_ZTSN5adept14ExpressionSizeILi1EEE", !5, i64 0}
!144 = !{!142, !11, i64 0}
!145 = distinct !{!145, !34, !35}
!146 = distinct !{!146, !34, !35}
!147 = !{!148}
!148 = distinct !{!148, !149, !"_ZL6sincosN5adept6ActiveIdEE: %agg.result"}
!149 = distinct !{!149, !"_ZL6sincosN5adept6ActiveIdEE"}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZN5adeptdvINS_8internal19BinaryOpScalarRightIdNS_6ActiveIdEENS1_3PowEiEEiEENS1_9enable_ifIXaasr8internal17is_not_expressionIT0_EE5valuentsr17is_floating_pointIS8_EE5valueENS2_INS1_7promoteINT_4typeES8_E4typeESA_NS1_6DivideESD_EEE4typeERKNS_10ExpressionISB_SA_EERKS8_: %agg.result"}
!152 = distinct !{!152, !"_ZN5adeptdvINS_8internal19BinaryOpScalarRightIdNS_6ActiveIdEENS1_3PowEiEEiEENS1_9enable_ifIXaasr8internal17is_not_expressionIT0_EE5valuentsr17is_floating_pointIS8_EE5valueENS2_INS1_7promoteINT_4typeES8_E4typeESA_NS1_6DivideESD_EEE4typeERKNS_10ExpressionISB_SA_EERKS8_"}
!153 = distinct !{!153, !34, !35}
!154 = !{!155, !47, i64 0}
!155 = !{!"_ZTSN5adept6ActiveIdEE", !47, i64 0, !27, i64 8}
!156 = !{!157}
!157 = distinct !{!157, !158, !"_ZL6sincosN5adept6ActiveIdEE: %agg.result"}
!158 = distinct !{!158, !"_ZL6sincosN5adept6ActiveIdEE"}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZN5adeptdvINS_8internal19BinaryOpScalarRightIdNS_6ActiveIdEENS1_3PowEiEEiEENS1_9enable_ifIXaasr8internal17is_not_expressionIT0_EE5valuentsr17is_floating_pointIS8_EE5valueENS2_INS1_7promoteINT_4typeES8_E4typeESA_NS1_6DivideESD_EEE4typeERKNS_10ExpressionISB_SA_EERKS8_: %agg.result"}
!161 = distinct !{!161, !"_ZN5adeptdvINS_8internal19BinaryOpScalarRightIdNS_6ActiveIdEENS1_3PowEiEEiEENS1_9enable_ifIXaasr8internal17is_not_expressionIT0_EE5valuentsr17is_floating_pointIS8_EE5valueENS2_INS1_7promoteINT_4typeES8_E4typeESA_NS1_6DivideESD_EEE4typeERKNS_10ExpressionISB_SA_EERKS8_"}
!162 = !{!155, !27, i64 8}
!163 = distinct !{!163, !34, !35}
!164 = !{!62, !4, i64 16}
!165 = !{!23, !17, i64 147}
!166 = !{!23, !17, i64 148}
!167 = !{!168, !11, i64 0}
!168 = !{!"_ZTSN5adept8internal15BinaryOperationIdNS_6ActiveIdEENS0_3AddENS0_19BinaryOpScalarRightIdNS5_IdS3_NS0_3PowEiEENS0_6DivideEdEEEE", !11, i64 0, !11, i64 8}
!169 = !{!168, !11, i64 8}
!170 = !{!171, !11, i64 0}
!171 = !{!"_ZTSN5adept8internal19BinaryOpScalarRightIdNS1_IdNS_6ActiveIdEENS0_3PowEiEENS0_6DivideEdEE", !11, i64 0, !172, i64 16}
!172 = !{!"_ZTSN5adept8internal6PacketIdEE", !5, i64 0}
!173 = !{!174, !11, i64 0}
!174 = !{!"_ZTSN5adept8internal19BinaryOpScalarRightIdNS_6ActiveIdEENS0_3PowEiEE", !11, i64 0, !175, i64 8}
!175 = !{!"_ZTSN5adept8internal6PacketIiEE", !27, i64 0}
!176 = !{!175, !27, i64 0}
!177 = !{!178}
!178 = distinct !{!178, !179}
!179 = distinct !{!179, !"LVerDomain"}
!180 = !{!181}
!181 = distinct !{!181, !179}
!182 = distinct !{!182, !34, !35, !88}
!183 = distinct !{!183, !34, !35, !88}
!184 = !{!185}
!185 = distinct !{!185, !186}
!186 = distinct !{!186, !"LVerDomain"}
!187 = !{!188}
!188 = distinct !{!188, !186}
!189 = distinct !{!189, !34, !35, !88}
!190 = distinct !{!190, !34, !35, !88}
!191 = !{!192}
!192 = distinct !{!192, !193, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: %agg.result"}
!193 = distinct !{!193, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!194 = distinct !{!194, !34, !35}
!195 = !{!196, !27, i64 8}
!196 = !{!"_ZTSN5adept7StorageIdEE", !11, i64 0, !27, i64 8, !27, i64 12, !27, i64 16}
!197 = !{!196, !27, i64 12}
!198 = !{!196, !27, i64 16}
!199 = !{!196, !11, i64 0}
!200 = !{!201}
!201 = distinct !{!201, !202, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: %agg.result"}
!202 = distinct !{!202, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!203 = !{!204, !206, i64 32}
!204 = !{!"_ZTSSt8ios_base", !4, i64 8, !4, i64 16, !205, i64 24, !206, i64 28, !206, i64 32, !11, i64 40, !207, i64 48, !5, i64 64, !27, i64 192, !11, i64 200, !208, i64 208}
!205 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!206 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!207 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !4, i64 8}
!208 = !{!"_ZTSSt6locale", !11, i64 0}
