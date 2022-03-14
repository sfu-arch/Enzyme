; ModuleID = 'fft-raw.ll'
source_filename = "fft.cpp"
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
%"class.adept::stack_already_active" = type { %"class.adept::autodiff_exception" }
%"class.adept::autodiff_exception" = type { %"class.adept::exception" }
%"class.adept::gradients_not_initialized" = type { %"class.adept::autodiff_exception" }
%"class.adept::feature_not_available" = type { %"class.adept::exception" }
%"class.adept::dependents_or_independents_not_identified" = type { %"class.adept::autodiff_exception" }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"class.adept::invalid_dimension" = type { %"class.adept::array_exception" }

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

$_ZN5adept17invalid_operationD0Ev = comdat any

$_ZNK5adept9exception4whatEv = comdat any

$_ZN5adept15array_exceptionD0Ev = comdat any

$_ZN5adept9exceptionD0Ev = comdat any

$__clang_call_terminate = comdat any

$_ZN5adept20stack_already_activeD0Ev = comdat any

$_ZN5adept25gradients_not_initializedD0Ev = comdat any

$_ZN5adept21feature_not_availableD0Ev = comdat any

$_ZN5adept41dependents_or_independents_not_identifiedD0Ev = comdat any

$_ZN5adept5ArrayILi1EdLb0EE6resizeEPKib = comdat any

$_ZN5adept7StorageIdE11remove_linkEv = comdat any

$_ZN5adept8internal18exception_locationB5cxx11EPKci = comdat any

$_ZN5adept17invalid_dimensionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN5adept9exceptionD2Ev = comdat any

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

$_ZTSN5adept17invalid_dimensionE = comdat any

$_ZTIN5adept17invalid_dimensionE = comdat any

$_ZTVN5adept17invalid_dimensionE = comdat any

@_ZStL8__ioinit = internal global %"class.std::ios_base::Init" zeroinitializer, align 1
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
@enzyme_dupnoneed = dso_local local_unnamed_addr global i32 0, align 4
@.str.83 = private unnamed_addr constant [33 x i8] c"usage %s n [must be power of 2]\0A\00", align 1
@.str.84 = private unnamed_addr constant [10 x i8] c"iters=%d\0A\00", align 1
@.str.85 = private unnamed_addr constant [28 x i8] c"A misuse of arrays occurred\00", align 1
@_ZTVN5adept17invalid_operationE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_operationE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::invalid_operation"*)* @_ZN5adept17invalid_operationD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTVN5adept15array_exceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept15array_exceptionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::array_exception"*)* @_ZN5adept15array_exceptionD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTVN5adept9exceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept9exceptionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTVN5adept20stack_already_activeE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept20stack_already_activeE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::stack_already_active"*)* @_ZN5adept20stack_already_activeD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTVN5adept25gradients_not_initializedE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept25gradients_not_initializedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::gradients_not_initialized"*)* @_ZN5adept25gradients_not_initializedD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTVN5adept21feature_not_availableE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::feature_not_available"*)* @_ZN5adept21feature_not_availableD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTVN5adept41dependents_or_independents_not_identifiedE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept41dependents_or_independents_not_identifiedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::dependents_or_independents_not_identified"*)* @_ZN5adept41dependents_or_independents_not_identifiedD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@.str.86 = private unnamed_addr constant [26 x i8] c"Enzyme real %0.6f res=%f\0A\00", align 1
@.str.87 = private unnamed_addr constant [29 x i8] c"Enzyme forward %0.6f res=%f\0A\00", align 1
@.str.88 = private unnamed_addr constant [31 x i8] c"Enzyme combined %0.6f res'=%f\0A\00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x i8*], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTISt9bad_alloc = external dso_local constant i8*
@_ZTVSt9bad_alloc = external dso_local unnamed_addr constant { [5 x i8*] }, align 8
@.str.92 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.94 = private unnamed_addr constant [35 x i8] c"Negative array dimension requested\00", align 1
@.str.95 = private unnamed_addr constant [89 x i8] c"/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src/adept2/include/adept/Array.h\00", align 1
@_ZTSN5adept17invalid_dimensionE = linkonce_odr dso_local constant [28 x i8] c"N5adept17invalid_dimensionE\00", comdat, align 1
@_ZTIN5adept17invalid_dimensionE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_ZTSN5adept17invalid_dimensionE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept15array_exceptionE to i8*) }, comdat, align 8
@.str.96 = private unnamed_addr constant [58 x i8] c"Attempt to remove more links to a storage object than set\00", align 1
@.str.97 = private unnamed_addr constant [91 x i8] c"/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src/adept2/include/adept/Storage.h\00", align 1
@.str.98 = private unnamed_addr constant [6 x i8] c" (in \00", align 1
@.str.99 = private unnamed_addr constant [2 x i8] c")\00", align 1
@_ZTVN5adept17invalid_dimensionE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_dimensionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::invalid_dimension"*)* @_ZN5adept17invalid_dimensionD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@llvm.global_ctors = appending global [1 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_fft.cpp, i8* null }]

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

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZStL8__ioinit() #3 section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitD1Ev(%"class.std::ios_base::Init"* @_ZStL8__ioinit)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @atexit(void ()*) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #5

declare dso_local i32 @__gxx_personality_v0(...)

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #5

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZN5adept8internal16vector_separatorB5cxx11E() #3 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 0, i32 0), align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %0, bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 2) to i8*)
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %0) #4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZN5adept8internal19vector_print_beforeB5cxx11E() #3 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 0, i32 0), align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %0, bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 2) to i8*)
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %0) #4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZN5adept8internal18vector_print_afterB5cxx11E() #3 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 0, i32 0), align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %0, bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 2) to i8*)
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %0) #4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZN5adept8internal21array_opening_bracketB5cxx11E() #3 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 0, i32 0), align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %0, bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 2) to i8*)
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %0) #4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZN5adept8internal21array_closing_bracketB5cxx11E() #3 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 0, i32 0), align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %0, bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 2) to i8*)
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %0) #4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZN5adept8internal26array_contiguous_separatorB5cxx11E() #3 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 0, i32 0), align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %0, bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 2) to i8*)
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %0) #4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZN5adept8internal30array_non_contiguous_separatorB5cxx11E() #3 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 0, i32 0), align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %0, bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 2) to i8*)
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %0) #4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZN5adept8internal18array_print_beforeB5cxx11E() #3 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 0, i32 0), align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %0, bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 2) to i8*)
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %0) #4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZN5adept8internal17array_print_afterB5cxx11E() #3 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 0, i32 0), align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %0, bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 2) to i8*)
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %0) #4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZN5adept8internal24array_print_empty_beforeB5cxx11E() #3 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 0, i32 0), align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %0, bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 2) to i8*)
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %0) #4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZN5adept8internal23array_print_empty_afterB5cxx11E() #3 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 0, i32 0), align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %0, bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 2) to i8*)
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %0) #4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  ret void
}

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
  %0 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i64 %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %1 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i57 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i64 %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %2 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i59 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i64 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %3 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i61 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i64 %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %4 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i63 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i64 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %5 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i65 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i64 %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %6 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i67 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i64 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
  %7 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i69 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i64 %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %8 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i71 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i64 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %9 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i73 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i64 %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i64 12)
  %10 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i75 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i64 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i64 7)
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %11 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i77 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i64 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2)
  %12 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i79 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i64 %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %13 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i81 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i64 %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %14 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i83 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i64 %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %15 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i85 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i64 %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %16 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i87 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i64 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2)
  %17 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i89 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i64 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
  %18 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i91 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i64 %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %19 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i93 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i64 %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %20 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i95 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i64 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i64 5)
  %21 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i97 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i64 %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %22 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i99 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i64 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %23 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i101 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i64 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1)
  %24 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i103 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i64 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i64 1)
  %25 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i105 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i64 %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %26 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i107 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i64 %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %27 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i109 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i64 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %28 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i111 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i64 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i64 2)
  %29 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i113 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i64 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1)
  %30 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i115 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i64 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i64 1)
  %31 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i117 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i64 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1)
  %32 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i119 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i64 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i64 1)
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  %33 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i121 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i64 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2)
  %34 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i123 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i64 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 1)
  %35 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i125 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i64 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
  %36 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i127 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i64 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 1)
  %37 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i129 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i64 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
  %38 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i131 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i64 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2)
  %39 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i133 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i64 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 2)
  %40 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i135 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i64 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i64 2)
  %41 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i137 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i64 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
  %42 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i139 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i64 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i64 12)
  %43 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  %call3.i.i141 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i64 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i64 7)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %44 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %44) #4
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %46 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %45, %union.anon** %46, align 8, !tbaa !13
  %47 = bitcast %union.anon* %45 to i8*
  %48 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48) #4
  store i64 32, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i142 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %sw.default
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i142, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %49 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %49, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(32) %call5.i.i.i10.i142, i8* nonnull align 1 dereferenceable(32) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0), i64 32, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %49, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %50 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %50, i64 %49
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48) #4
  %51 = bitcast i8* %exception to %"class.adept::invalid_operation"*
  invoke void @_ZN5adept17invalid_operationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %51, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont49 unwind label %lpad48

invoke.cont49:                                    ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_operationE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad48

ehcleanup.thread:                                 ; preds = %sw.default
  %52 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %44) #4
  br label %cleanup.action

lpad48:                                           ; preds = %invoke.cont49, %call5.i.i.i10.i.noexc
  %cleanup.isactive.0 = phi i1 [ false, %invoke.cont49 ], [ true, %call5.i.i.i10.i.noexc ]
  %53 = landingpad { i8*, i32 }
          cleanup
  %54 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %54, %47
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i

if.then.i.i:                                      ; preds = %lpad48
  call void @_ZdlPv(i8* %54) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %44) #4
  br i1 %cleanup.isactive.0, label %cleanup.action, label %eh.resume

ehcleanup:                                        ; preds = %lpad48
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %44) #4
  br i1 %cleanup.isactive.0, label %cleanup.action, label %eh.resume

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i, %ehcleanup.thread
  %.pn146 = phi { i8*, i32 } [ %52, %ehcleanup.thread ], [ %53, %ehcleanup ], [ %53, %if.then.i.i ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 27, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i15 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %lpad

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i15, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(27) %call5.i.i.i10.i15, i8* nonnull align 1 dereferenceable(27) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.85, i64 0, i64 0), i64 27, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %6 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %7 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %message_.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1
  %8 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %message_.i.i to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i.i, align 8, !tbaa !12
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
  %11 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %11, %.cast.i.i.i
  br i1 %cmp.i.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %11) #4
  br label %_ZN5adept9exceptionD2Ev.exit.i

_ZN5adept9exceptionD2Ev.exit.i:                   ; preds = %if.then.i.i.i.i, %lpad.i
  %12 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %12) #4
  %13 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i18 = icmp eq i8* %13, %3
  br i1 %cmp.i.i.i18, label %ehcleanup, label %if.then.i.i19

invoke.cont4:                                     ; preds = %call5.i.i.i10.i.noexc
  %14 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %14, %3
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont4
  call void @_ZdlPv(i8* %14) #4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %invoke.cont4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
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
  call void @_ZdlPv(i8* %13) #4
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i19, %lpad, %_ZN5adept9exceptionD2Ev.exit.i
  %.pn = phi { i8*, i32 } [ %15, %lpad ], [ %10, %_ZN5adept9exceptionD2Ev.exit.i ], [ %10, %if.then.i.i19 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

lpad7:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %16 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !20
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %17 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i.i = icmp eq i8* %17, %.cast.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lpad7
  call void @_ZdlPv(i8* %17) #4
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %lpad7
  %18 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %18) #4
  br label %eh.resume

eh.resume:                                        ; preds = %_ZN5adept9exceptionD2Ev.exit, %ehcleanup
  %.pn12 = phi { i8*, i32 } [ %16, %_ZN5adept9exceptionD2Ev.exit ], [ %.pn, %ehcleanup ]
  resume { i8*, i32 } %.pn12
}

declare dso_local void @__cxa_throw(i8*, i8*, i8*) local_unnamed_addr

declare dso_local void @__cxa_free_exception(i8*) local_unnamed_addr

; Function Attrs: nounwind uwtable
define dso_local void @_ZN5adept5StackD2Ev(%"class.adept::Stack"* nonnull readonly dereferenceable(149) %this) unnamed_addr #3 align 2 personality i32 (...)* @__gxx_personality_v0 {
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

while.body.i.i:                                   ; preds = %while.body.i.i, %if.end10
  %__cur.013.i.i = phi %"struct.std::__detail::_List_node_base"* [ %8, %while.body.i.i ], [ %7, %if.end10 ]
  %_M_next4.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %__cur.013.i.i, i64 0, i32 0
  %8 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next4.i.i, align 8, !tbaa !31
  %9 = bitcast %"struct.std::__detail::_List_node_base"* %__cur.013.i.i to i8*
  tail call void @_ZdlPv(i8* %9) #4
  %cmp.not.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %8, %6
  br i1 %cmp.not.i.i, label %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit, label %while.body.i.i, !llvm.loop !33

_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit: ; preds = %while.body.i.i, %if.end10
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %10 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
  %tobool.not.i.i.i = icmp eq i32* %10, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit
  %11 = bitcast i32* %10 to i8*
  tail call void @_ZdlPv(i8* nonnull %11) #4
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %if.then.i.i.i, %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit
  %_M_start.i.i11 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %12 = load i32*, i32** %_M_start.i.i11, align 8, !tbaa !36
  %tobool.not.i.i.i12 = icmp eq i32* %12, null
  br i1 %tobool.not.i.i.i12, label %_ZNSt6vectorIiSaIiEED2Ev.exit14, label %if.then.i.i.i13

if.then.i.i.i13:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %13 = bitcast i32* %12 to i8*
  tail call void @_ZdlPv(i8* nonnull %13) #4
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
define dso_local void @_ZN5adept8internal16StackStorageOrigD2Ev(%"class.adept::internal::StackStorageOrig"* nocapture nonnull readonly dereferenceable(40) %this) unnamed_addr #3 align 2 {
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #4
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %5 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %4, %union.anon** %5, align 8, !tbaa !13
  %6 = bitcast %union.anon* %4 to i8*
  %7 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #4
  store i64 77, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i26 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.then
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i26, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %8 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %8, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(77) %call5.i.i.i10.i26, i8* nonnull align 1 dereferenceable(77) getelementptr inbounds ([78 x i8], [78 x i8]* @.str.26, i64 0, i64 0), i64 77, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %8, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i26, i64 %8
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #4
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %9 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %10 = getelementptr inbounds i8, i8* %exception, i64 24
  %11 = bitcast i8* %message_.i.i.i to i8**
  store i8* %10, i8** %11, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i.i27 = getelementptr inbounds i8, i8* %exception, i64 16
  %12 = bitcast i8* %_M_string_length.i.i.i.i.i.i27 to i64*
  store i64 0, i64* %12, align 8, !tbaa !12
  store i8 0, i8* %10, align 1, !tbaa !15
  %13 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept20stack_already_activeE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %13, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %9, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont12 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %14 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %13, align 8, !tbaa !20
  %15 = load i8*, i8** %11, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %15, %10
  br i1 %cmp.i.i.i.i.i, label %lpad11.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %15) #4
  br label %lpad11.body

invoke.cont12:                                    ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept20stack_already_activeE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad11.body.thread

ehcleanup.thread:                                 ; preds = %if.then
  %16 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #4
  br label %cleanup.action

lpad11.body:                                      ; preds = %if.then.i.i.i.i, %lpad.i
  %17 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %17) #4
  %18 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %18, %6
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad11.body
  call void @_ZdlPv(i8* %18) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #4
  br label %cleanup.action

lpad11.body.thread:                               ; preds = %invoke.cont12
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i34 = icmp eq i8* %20, %6
  br i1 %cmp.i.i.i34, label %ehcleanup.thread39, label %if.then.i.i

ehcleanup.thread39:                               ; preds = %lpad11.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad11.body.thread
  call void @_ZdlPv(i8* %20) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad11.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn31 = phi { i8*, i32 } [ %16, %ehcleanup.thread ], [ %14, %ehcleanup ], [ %14, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end, %if.then
  ret void

for.body:                                         ; preds = %if.end, %for.body.lr.ph
  %indvars.iv62 = phi i64 [ %4, %for.body.lr.ph ], [ %indvars.iv.next63, %if.end ]
  %ist.0.in60 = phi i32 [ %1, %for.body.lr.ph ], [ %ist.061, %if.end ]
  %ist.061 = add nsw i32 %ist.0.in60, -1
  %idxprom = sext i32 %ist.061 to i64
  %index = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %2, i64 %idxprom, i32 0
  %5 = load i32, i32* %index, align 4, !tbaa !44
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds double, double* %3, i64 %idxprom2
  %6 = load double, double* %arrayidx3, align 8, !tbaa !46
  store double 0.000000e+00, double* %arrayidx3, align 8, !tbaa !46
  %cmp8 = fcmp fast une double %6, 0.000000e+00
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %for.body
  %sub11 = add nsw i32 %ist.0.in60, -2
  %7 = zext i32 %sub11 to i64
  %end_plus_one = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %2, i64 %7, i32 1
  %8 = load i32, i32* %end_plus_one, align 4, !tbaa !48
  %end_plus_one15 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %2, i64 %idxprom, i32 1
  %9 = load i32, i32* %end_plus_one15, align 4, !tbaa !48
  %cmp1656 = icmp slt i32 %8, %9
  br i1 %cmp1656, label %for.body18.lr.ph, label %if.end

for.body18.lr.ph:                                 ; preds = %if.then9
  %10 = load double*, double** %multiplier_, align 8, !tbaa !40
  %11 = load i32*, i32** %index_, align 8, !tbaa !41
  %12 = sext i32 %8 to i64
  %13 = sext i32 %9 to i64
  br label %for.body18

for.body18:                                       ; preds = %for.body18, %for.body18.lr.ph
  %indvars.iv = phi i64 [ %12, %for.body18.lr.ph ], [ %indvars.iv.next, %for.body18 ]
  %arrayidx20 = getelementptr inbounds double, double* %10, i64 %indvars.iv
  %14 = load double, double* %arrayidx20, align 8, !tbaa !46
  %mul = fmul fast double %14, %6
  %arrayidx23 = getelementptr inbounds i32, i32* %11, i64 %indvars.iv
  %15 = load i32, i32* %arrayidx23, align 4, !tbaa !49
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds double, double* %3, i64 %idxprom24
  %16 = load double, double* %arrayidx25, align 8, !tbaa !46
  %add = fadd fast double %16, %mul
  store double %add, double* %arrayidx25, align 8, !tbaa !46
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp16 = icmp slt i64 %indvars.iv.next, %13
  br i1 %cmp16, label %for.body18, label %if.end, !llvm.loop !50

if.end:                                           ; preds = %for.body18, %if.then9, %for.body
  %cmp = icmp sgt i64 %indvars.iv62, 2
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, -1
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !51

if.else:                                          ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %17 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #4
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %19 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %18, %union.anon** %19, align 8, !tbaa !13
  %20 = bitcast %union.anon* %18 to i8*
  %21 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #4
  store i64 106, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i51 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.else
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i51, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %22 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %22, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(106) %call5.i.i.i10.i51, i8* nonnull align 1 dereferenceable(106) getelementptr inbounds ([107 x i8], [107 x i8]* @.str.27, i64 0, i64 0), i64 106, i1 false) #4
  %_M_string_length.i.i.i.i.i.i50 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %22, i64* %_M_string_length.i.i.i.i.i.i50, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i51, i64 %22
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #4
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %23 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %24 = getelementptr inbounds i8, i8* %exception, i64 24
  %25 = bitcast i8* %message_.i.i.i to i8**
  store i8* %24, i8** %25, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %26 = bitcast i8* %_M_string_length.i.i.i.i.i.i to i64*
  store i64 0, i64* %26, align 8, !tbaa !12
  store i8 0, i8* %24, align 1, !tbaa !15
  %27 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept25gradients_not_initializedE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %27, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %23, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont30 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %28 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %27, align 8, !tbaa !20
  %29 = load i8*, i8** %25, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %29, %24
  br i1 %cmp.i.i.i.i.i, label %lpad29.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %29) #4
  br label %lpad29.body

invoke.cont30:                                    ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept25gradients_not_initializedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad29.body.thread

ehcleanup.thread:                                 ; preds = %if.else
  %30 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #4
  br label %cleanup.action

lpad29.body:                                      ; preds = %if.then.i.i.i.i, %lpad.i
  %31 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %31) #4
  %32 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %32, %20
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad29.body
  call void @_ZdlPv(i8* %32) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #4
  br label %cleanup.action

lpad29.body.thread:                               ; preds = %invoke.cont30
  %33 = landingpad { i8*, i32 }
          cleanup
  %34 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i66 = icmp eq i8* %34, %20
  br i1 %cmp.i.i.i66, label %ehcleanup.thread71, label %if.then.i.i

ehcleanup.thread71:                               ; preds = %lpad29.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad29.body.thread
  call void @_ZdlPv(i8* %34) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad29.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn55 = phi { i8*, i32 } [ %30, %ehcleanup.thread ], [ %28, %ehcleanup ], [ %28, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread71
  %.pn54 = phi { i8*, i32 } [ %.pn55, %cleanup.action ], [ %33, %if.then.i.i ], [ %33, %ehcleanup.thread71 ]
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
  %cmp7 = icmp slt i64 %indvars.iv.next, %9
  br i1 %cmp7, label %for.body9, label %for.cond.cleanup8, !llvm.loop !53

if.else:                                          ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %14 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #4
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %16 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %15, %union.anon** %16, align 8, !tbaa !13
  %17 = bitcast %union.anon* %15 to i8*
  %18 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #4
  store i64 106, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i43 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.else
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i43, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %19 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %19, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(106) %call5.i.i.i10.i43, i8* nonnull align 1 dereferenceable(106) getelementptr inbounds ([107 x i8], [107 x i8]* @.str.27, i64 0, i64 0), i64 106, i1 false) #4
  %_M_string_length.i.i.i.i.i.i42 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %19, i64* %_M_string_length.i.i.i.i.i.i42, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i43, i64 %19
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #4
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %20 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %21 = getelementptr inbounds i8, i8* %exception, i64 24
  %22 = bitcast i8* %message_.i.i.i to i8**
  store i8* %21, i8** %22, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %23 = bitcast i8* %_M_string_length.i.i.i.i.i.i to i64*
  store i64 0, i64* %23, align 8, !tbaa !12
  store i8 0, i8* %21, align 1, !tbaa !15
  %24 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept25gradients_not_initializedE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %24, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %20, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont24 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %25 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %24, align 8, !tbaa !20
  %26 = load i8*, i8** %22, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %26, %21
  br i1 %cmp.i.i.i.i.i, label %lpad23.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %26) #4
  br label %lpad23.body

invoke.cont24:                                    ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept25gradients_not_initializedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad23.body.thread

ehcleanup.thread:                                 ; preds = %if.else
  %27 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #4
  br label %cleanup.action

lpad23.body:                                      ; preds = %if.then.i.i.i.i, %lpad.i
  %28 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %28) #4
  %29 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %29, %17
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad23.body
  call void @_ZdlPv(i8* %29) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #4
  br label %cleanup.action

lpad23.body.thread:                               ; preds = %invoke.cont24
  %30 = landingpad { i8*, i32 }
          cleanup
  %31 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i58 = icmp eq i8* %31, %17
  br i1 %cmp.i.i.i58, label %ehcleanup.thread63, label %if.then.i.i

ehcleanup.thread63:                               ; preds = %lpad23.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad23.body.thread
  call void @_ZdlPv(i8* %31) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad23.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn47 = phi { i8*, i32 } [ %27, %ehcleanup.thread ], [ %25, %ehcleanup ], [ %25, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread63
  %.pn46 = phi { i8*, i32 } [ %.pn47, %cleanup.action ], [ %30, %if.then.i.i ], [ %30, %ehcleanup.thread63 ]
  resume { i8*, i32 } %.pn46

unreachable:                                      ; preds = %invoke.cont24
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local i32 @_ZN5adept5Stack21do_register_gradientsERKi(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i32* nocapture nonnull readonly align 4 dereferenceable(4) %n) local_unnamed_addr #3 align 2 personality i32 (...)* @__gxx_personality_v0 {
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

for.body:                                         ; preds = %for.inc, %entry
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
  %add16 = add nsw i32 %.pre, %6
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
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %it.sroa.0.0110) #4
  %9 = bitcast %"struct.std::__detail::_List_node_base"* %it.sroa.0.0110 to i8*
  tail call void @_ZdlPv(i8* nonnull %9) #4
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
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #5

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
  br i1 %cmp.i165.not, label %for.body.lr.ph, label %if.then

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

for.body.lr.ph:                                   ; preds = %if.else, %land.rhs
  %8 = load i32, i32* %gradient_index, align 4, !tbaa !49
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
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %17, %"struct.std::__detail::_List_node_base"* nonnull %it.sroa.0.0263) #4
  %_M_size.i.i.i203 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %18 = load i64, i64* %_M_size.i.i.i203, align 8, !tbaa !59
  %add.i.i.i204 = add i64 %18, 1
  store i64 %add.i.i.i204, i64* %_M_size.i.i.i203, align 8, !tbaa !59
  %ref.tmp49.sroa.0.0..sroa_idx = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5, i32 0
  %19 = bitcast %"struct.std::__detail::_List_node_base"** %ref.tmp49.sroa.0.0..sroa_idx to i8**
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
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %23, %"struct.std::__detail::_List_node_base"* nonnull %0) #4
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
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %31) #4
  %37 = bitcast %"struct.std::__detail::_List_node_base"* %31 to i8*
  tail call void @_ZdlPv(i8* nonnull %37) #4
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
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %39) #4
  %46 = bitcast %"struct.std::__detail::_List_node_base"* %39 to i8*
  tail call void @_ZdlPv(i8* nonnull %46) #4
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
  %add = add nsw i32 %3, %2
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
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %11) #4
  %15 = bitcast %"struct.std::_List_node"* %8 to i8*
  tail call void @_ZdlPv(i8* nonnull %15) #4
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

for.body.preheader:                               ; preds = %if.else42, %land.rhs
  br label %for.body

if.then46:                                        ; preds = %if.else42
  %add48 = add nsw i32 %22, %3
  store i32 %add48, i32* %21, align 4, !tbaa !55
  br label %if.then157

for.body:                                         ; preds = %for.inc, %for.body.preheader
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
  %add85 = add nsw i32 %3, %24
  store i32 %add85, i32* %end64.le, align 4, !tbaa !55
  %most_recent_gap_86 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5
  %27 = bitcast %"struct.std::_List_iterator"* %most_recent_gap_86 to i64*
  %28 = ptrtoint %"struct.std::__detail::_List_node_base"* %it54.sroa.0.0338 to i64
  store i64 %28, i64* %27, align 8, !tbaa !29
  %29 = bitcast %"struct.std::__detail::_List_node_base"* %it54.sroa.0.0338 to %"struct.std::_List_node"*
  br label %if.then157

if.else87:                                        ; preds = %if.else77
  %add91 = add i32 %2, -1
  %sub92 = add i32 %add91, %3
  %call2.i.i.i.i.i.i266 = tail call noalias nonnull i8* @_Znwm(i64 24) #33
  %_M_storage.i.i.i.i267 = getelementptr inbounds i8, i8* %call2.i.i.i.i.i.i266, i64 16
  %30 = bitcast i8* %_M_storage.i.i.i.i267 to i64*
  %ref.tmp90.sroa.4.0.insert.ext = zext i32 %sub92 to i64
  %ref.tmp90.sroa.4.0.insert.shift = shl nuw i64 %ref.tmp90.sroa.4.0.insert.ext, 32
  %ref.tmp90.sroa.0.0.insert.ext = zext i32 %2 to i64
  %ref.tmp90.sroa.0.0.insert.insert = or i64 %ref.tmp90.sroa.4.0.insert.shift, %ref.tmp90.sroa.0.0.insert.ext
  store i64 %ref.tmp90.sroa.0.0.insert.insert, i64* %30, align 4
  %31 = bitcast i8* %call2.i.i.i.i.i.i266 to %"struct.std::__detail::_List_node_base"*
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %31, %"struct.std::__detail::_List_node_base"* nonnull %it54.sroa.0.0338) #4
  %_M_size.i.i.i268 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %32 = load i64, i64* %_M_size.i.i.i268, align 8, !tbaa !59
  %add.i.i.i269 = add i64 %32, 1
  store i64 %add.i.i.i269, i64* %_M_size.i.i.i268, align 8, !tbaa !59
  %ref.tmp88.sroa.0.0..sroa_idx = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5, i32 0
  %33 = bitcast %"struct.std::__detail::_List_node_base"** %ref.tmp88.sroa.0.0..sroa_idx to i8**
  store i8* %call2.i.i.i.i.i.i266, i8** %33, align 8, !tbaa.struct !63
  br label %if.end192

for.inc:                                          ; preds = %for.body
  %_M_next.i265 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it54.sroa.0.0338, i64 0, i32 0
  %34 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i265, align 8, !tbaa !31
  %cmp.i285.not = icmp eq %"struct.std::__detail::_List_node_base"* %34, %16
  br i1 %cmp.i285.not, label %if.then104, label %for.body, !llvm.loop !69

if.then104:                                       ; preds = %for.inc, %if.else
  %add107 = add i32 %2, -1
  %sub108 = add i32 %add107, %3
  %call2.i.i.i.i.i.i = tail call noalias nonnull i8* @_Znwm(i64 24) #33
  %_M_storage.i.i.i.i = getelementptr inbounds i8, i8* %call2.i.i.i.i.i.i, i64 16
  %35 = bitcast i8* %_M_storage.i.i.i.i to i64*
  %ref.tmp106.sroa.4.0.insert.ext = zext i32 %sub108 to i64
  %ref.tmp106.sroa.4.0.insert.shift = shl nuw i64 %ref.tmp106.sroa.4.0.insert.ext, 32
  %ref.tmp106.sroa.0.0.insert.ext = zext i32 %2 to i64
  %ref.tmp106.sroa.0.0.insert.insert = or i64 %ref.tmp106.sroa.4.0.insert.shift, %ref.tmp106.sroa.0.0.insert.ext
  store i64 %ref.tmp106.sroa.0.0.insert.insert, i64* %35, align 4
  %36 = bitcast i8* %call2.i.i.i.i.i.i to %"struct.std::__detail::_List_node_base"*
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %36, %"struct.std::__detail::_List_node_base"* nonnull %16) #4
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
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %44) #4
  %50 = bitcast %"struct.std::__detail::_List_node_base"* %44 to i8*
  tail call void @_ZdlPv(i8* nonnull %50) #4
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
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %52) #4
  %59 = bitcast %"struct.std::__detail::_List_node_base"* %52 to i8*
  tail call void @_ZdlPv(i8* nonnull %59) #4
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
define dso_local void @_ZNK5adept5Stack10print_gapsERSo(%"class.adept::Stack"* nonnull dereferenceable(149) %this, %"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os) local_unnamed_addr #6 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %gap_list_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4
  %_M_next.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %it.sroa.0.022 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i, align 8, !tbaa !31
  %0 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0
  %cmp.i.not23 = icmp eq %"struct.std::__detail::_List_node_base"* %it.sroa.0.022, %0
  br i1 %cmp.i.not23, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %for.body, %entry
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
  br i1 %cmp3, label %if.then4, label %for.body.lr.ph

if.then4:                                         ; preds = %if.then
  %gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
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

for.body.lr.ph:                                   ; preds = %if.end11, %if.then
  %10 = phi i32 [ %4, %if.end11 ], [ %0, %if.then ]
  %gradient_14 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
  %11 = bitcast double** %gradient_14 to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !30
  %13 = zext i32 %10 to i64
  %14 = shl nuw nsw i64 %13, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 %14, i1 false)
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

for.body.i:                                       ; preds = %for.body.i, %if.else49
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

for.body:                                         ; preds = %for.body, %if.then85
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

for.body99:                                       ; preds = %for.body99, %for.cond.cleanup
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 73, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(73) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(73) getelementptr inbounds ([74 x i8], [74 x i8]* @.str.65, i64 0, i64 0), i64 73, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_gemmEbcciiifPKfiS2_ifPfi(i1 zeroext %Order, i8 signext %TransA, i8 signext %TransB, i32 %M, i32 %N, i32 %K, float %alpha, float* nocapture readnone %A, i32 %lda, float* nocapture readnone %B, i32 %ldb, float %beta, float* nocapture readnone %C, i32 %ldc) local_unnamed_addr #12 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 73, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(73) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(73) getelementptr inbounds ([74 x i8], [74 x i8]* @.str.65, i64 0, i64 0), i64 73, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 73, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(73) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(73) getelementptr inbounds ([74 x i8], [74 x i8]* @.str.66, i64 0, i64 0), i64 73, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 73, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(73) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(73) getelementptr inbounds ([74 x i8], [74 x i8]* @.str.66, i64 0, i64 0), i64 73, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 83, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(83) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(83) getelementptr inbounds ([84 x i8], [84 x i8]* @.str.67, i64 0, i64 0), i64 83, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 83, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(83) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(83) getelementptr inbounds ([84 x i8], [84 x i8]* @.str.67, i64 0, i64 0), i64 83, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 83, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(83) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(83) getelementptr inbounds ([84 x i8], [84 x i8]* @.str.68, i64 0, i64 0), i64 83, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 83, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(83) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(83) getelementptr inbounds ([84 x i8], [84 x i8]* @.str.68, i64 0, i64 0), i64 83, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 78, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(78) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(78) getelementptr inbounds ([79 x i8], [79 x i8]* @.str.69, i64 0, i64 0), i64 78, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 78, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(78) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(78) getelementptr inbounds ([79 x i8], [79 x i8]* @.str.69, i64 0, i64 0), i64 78, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: nofree nounwind uwtable
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
  %cmp7 = icmp slt i64 %indvars.iv.next, %7
  br i1 %cmp7, label %for.body9, label %for.cond.cleanup8, !llvm.loop !86
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
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.cond.cleanup28, %entry
  ret void

for.body:                                         ; preds = %for.cond.cleanup28, %for.body.lr.ph
  %4 = phi i32 [ %.pre, %for.body.lr.ph ], [ %5, %for.cond.cleanup28 ]
  %indvars.iv80 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next81, %for.cond.cleanup28 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %a76) #4
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %a76, i8 0, i64 16, i1 false) #4
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
  br label %for.body13

for.cond.cleanup12:                               ; preds = %for.body13, %for.cond10.preheader
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, 1
  %cmp7 = icmp slt i64 %indvars.iv.next74, %7
  br i1 %cmp7, label %for.cond10.preheader, label %for.cond26.preheader, !llvm.loop !87

for.body13:                                       ; preds = %for.body13, %for.body13.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body13.lr.ph ], [ %indvars.iv.next, %for.body13 ]
  %16 = add nsw i64 %indvars.iv, %15
  %arrayidx19 = getelementptr inbounds double, double* %gradient_multipass_b, i64 %16
  %17 = load double, double* %arrayidx19, align 8, !tbaa !46
  %mul20 = fmul fast double %17, %12
  %arrayidx.i62 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %a, i64 0, i32 0, i64 %indvars.iv
  %18 = load double, double* %arrayidx.i62, align 8, !tbaa !46
  %add21 = fadd fast double %18, %mul20
  store double %add21, double* %arrayidx.i62, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %for.cond.cleanup12, label %for.body13, !llvm.loop !88

for.cond.cleanup28:                               ; preds = %for.body29.lr.ph, %for.cond26.preheader
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %a76) #4
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %for.cond.cleanup, label %for.body, !llvm.loop !89
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
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  %5 = bitcast double** %result.i to i8**
  %conv1.i = sext i32 %mul to i64
  %mul.i111 = shl nsw i64 %conv1.i, 3
  %call2.i = call i32 @posix_memalign(i8** nonnull %5, i64 16, i64 %mul.i111) #4
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit, label %if.then4.i

if.then4.i:                                       ; preds = %entry
  %exception.i = call i8* @__cxa_allocate_exception(i64 8) #4
  %6 = bitcast i8* %exception.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt9bad_alloc, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  call void @__cxa_throw(i8* %exception.i, i8* bitcast (i8** @_ZTISt9bad_alloc to i8*), i8* bitcast (void (%"class.std::bad_alloc"*)* @_ZNSt9bad_allocD1Ev to i8*)) #31
  unreachable

_ZN5adept8internal13alloc_alignedIdEEPT_i.exit:   ; preds = %entry
  %7 = load double*, double** %result.i, align 8, !tbaa !29
  %8 = bitcast double* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %cmp123 = icmp sgt i32 %conv.i, 0
  br i1 %cmp123, label %for.body.lr.ph, label %for.end55

for.body.lr.ph:                                   ; preds = %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit
  %sub5 = add nsw i32 %div, -1
  %9 = and i32 %conv.i, -2147483647
  %cmp7 = icmp eq i32 %9, 1
  %cmp9112 = icmp sgt i32 %3, 0
  %n_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %10 = load i32, i32* %n_statements_.i, align 8, !tbaa !43, !noalias !90
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
  call void @llvm.experimental.noalias.scope.decl(metadata !90)
  br i1 %cmp45.i, label %for.body.lr.ph.i, label %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.cleanup14
  %19 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i, align 8, !tbaa !38, !noalias !90
  %end_plus_one.phi.trans.insert.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %19, i64 0, i32 1
  %.pre.i = load i32, i32* %end_plus_one.phi.trans.insert.i, align 4, !tbaa !48, !noalias !90
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.cleanup8.i, %for.body.lr.ph.i
  %20 = phi i32 [ %.pre.i, %for.body.lr.ph.i ], [ %21, %for.cond.cleanup8.i ]
  %indvars.iv47.i = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next48.i, %for.cond.cleanup8.i ]
  %end_plus_one6.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %19, i64 %indvars.iv47.i, i32 1
  %21 = load i32, i32* %end_plus_one6.i, align 4, !tbaa !48, !noalias !90
  %cmp742.i = icmp slt i32 %20, %21
  br i1 %cmp742.i, label %for.body9.lr.ph.i, label %for.cond.cleanup8.i

for.body9.lr.ph.i:                                ; preds = %for.body.i
  %22 = load i32*, i32** %index_.i, align 8, !tbaa !41, !noalias !90
  %23 = load double*, double** %multiplier_.i, align 8, !tbaa !40, !noalias !90
  %24 = sext i32 %20 to i64
  %25 = sext i32 %21 to i64
  br label %for.body9.i

for.cond.cleanup8.i:                              ; preds = %for.body9.i, %for.body.i
  %a.sroa.0.0.lcssa.i = phi <2 x double> [ zeroinitializer, %for.body.i ], [ %add.i.i.i, %for.body9.i ]
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %19, i64 %indvars.iv47.i, i32 0
  %26 = load i32, i32* %index.i, align 4, !tbaa !44, !noalias !90
  %mul15.i = shl nsw i32 %26, 1
  %idx.ext16.i = sext i32 %mul15.i to i64
  %add.ptr17.i = getelementptr inbounds double, double* %7, i64 %idx.ext16.i
  %27 = bitcast double* %add.ptr17.i to <2 x double>*
  store <2 x double> %a.sroa.0.0.lcssa.i, <2 x double>* %27, align 16, !tbaa !15, !alias.scope !93
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next48.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit, label %for.body.i, !llvm.loop !85

for.body9.i:                                      ; preds = %for.body9.i, %for.body9.lr.ph.i
  %indvars.iv.i = phi i64 [ %24, %for.body9.lr.ph.i ], [ %indvars.iv.next.i, %for.body9.i ]
  %a.sroa.0.043.i = phi <2 x double> [ zeroinitializer, %for.body9.lr.ph.i ], [ %add.i.i.i, %for.body9.i ]
  %arrayidx11.i = getelementptr inbounds i32, i32* %22, i64 %indvars.iv.i
  %28 = load i32, i32* %arrayidx11.i, align 4, !tbaa !49, !noalias !90
  %mul.i = shl nsw i32 %28, 1
  %idx.ext.i = sext i32 %mul.i to i64
  %add.ptr.i110 = getelementptr inbounds double, double* %7, i64 %idx.ext.i
  %29 = bitcast double* %add.ptr.i110 to <2 x double>*
  %30 = load <2 x double>, <2 x double>* %29, align 16, !tbaa !15, !alias.scope !90
  %arrayidx13.i = getelementptr inbounds double, double* %23, i64 %indvars.iv.i
  %31 = load double, double* %arrayidx13.i, align 8, !tbaa !46, !noalias !90
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
  br i1 %exitcond.not, label %for.cond.cleanup14, label %for.body15, !llvm.loop !96

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
  br i1 %exitcond145.not, label %for.end55, label %for.body, !llvm.loop !97

for.cond.cleanup33:                               ; preds = %for.body34
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %for.cond.cleanup28, label %for.cond31.preheader, !llvm.loop !98

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
  br i1 %exitcond134.not, label %for.cond.cleanup33, label %for.body34, !llvm.loop !99

for.end55:                                        ; preds = %for.cond.cleanup28, %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit
  call void @free(i8* %8) #4
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack16jacobian_forwardEPd(%"class.adept::Stack"* nonnull readonly dereferenceable(149) %this, double* nocapture %jacobian_out) local_unnamed_addr #15 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %4 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #4
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %6 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !13
  %7 = bitcast %union.anon* %5 to i8*
  %8 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #4
  store i64 79, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i230 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.then
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i230, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %9 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %9, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(79) %call5.i.i.i10.i230, i8* nonnull align 1 dereferenceable(79) getelementptr inbounds ([80 x i8], [80 x i8]* @.str.71, i64 0, i64 0), i64 79, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %9, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i230, i64 %9
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #4
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %10 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %11 = getelementptr inbounds i8, i8* %exception, i64 24
  %12 = bitcast i8* %message_.i.i.i to i8**
  store i8* %11, i8** %12, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i.i231 = getelementptr inbounds i8, i8* %exception, i64 16
  %13 = bitcast i8* %_M_string_length.i.i.i.i.i.i231 to i64*
  store i64 0, i64* %13, align 8, !tbaa !12
  store i8 0, i8* %11, align 1, !tbaa !15
  %14 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept41dependents_or_independents_not_identifiedE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %14, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %10, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont5 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %15 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %14, align 8, !tbaa !20
  %16 = load i8*, i8** %12, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %16, %11
  br i1 %cmp.i.i.i.i.i, label %lpad4.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %16) #4
  br label %lpad4.body

invoke.cont5:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept41dependents_or_independents_not_identifiedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad4.body.thread

ehcleanup.thread:                                 ; preds = %if.then
  %17 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #4
  br label %cleanup.action

lpad4.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %18 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %18) #4
  %19 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %19, %7
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad4.body
  call void @_ZdlPv(i8* %19) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #4
  br label %cleanup.action

lpad4.body.thread:                                ; preds = %invoke.cont5
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i299 = icmp eq i8* %21, %7
  br i1 %cmp.i.i.i299, label %ehcleanup.thread304, label %if.then.i.i

ehcleanup.thread304:                              ; preds = %lpad4.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad4.body.thread
  call void @_ZdlPv(i8* %21) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad4.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn247 = phi { i8*, i32 } [ %17, %ehcleanup.thread ], [ %15, %ehcleanup ], [ %15, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #4
  %25 = bitcast double** %result.i to i8**
  %conv1.i = sext i32 %mul to i64
  %mul.i229 = shl nsw i64 %conv1.i, 3
  %call2.i = call i32 @posix_memalign(i8** nonnull %25, i64 16, i64 %mul.i229) #4
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.end
  %exception.i = call i8* @__cxa_allocate_exception(i64 8) #4
  %26 = bitcast i8* %exception.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt9bad_alloc, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %26, align 8, !tbaa !20
  call void @__cxa_throw(i8* %exception.i, i8* bitcast (i8** @_ZTISt9bad_alloc to i8*), i8* bitcast (void (%"class.std::bad_alloc"*)* @_ZNSt9bad_allocD1Ev to i8*)) #31
  unreachable

_ZN5adept8internal13alloc_alignedIdEEPT_i.exit:   ; preds = %if.end
  %27 = load double*, double** %result.i, align 8, !tbaa !29
  %28 = bitcast double* %27 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #4
  %cmp268 = icmp sgt i32 %conv.i237, 1
  br i1 %cmp268, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit
  %cmp14257 = icmp sgt i32 %23, 0
  %n_statements_.i213 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %29 = load i32, i32* %n_statements_.i213, align 8, !tbaa !43, !noalias !100
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
  call void @llvm.experimental.noalias.scope.decl(metadata !100)
  br i1 %cmp45.i, label %for.body.lr.ph.i219, label %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit

for.body.lr.ph.i219:                              ; preds = %for.cond18.preheader
  %39 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i214, align 8, !tbaa !38, !noalias !100
  %end_plus_one.phi.trans.insert.i217 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %39, i64 0, i32 1
  %.pre.i218 = load i32, i32* %end_plus_one.phi.trans.insert.i217, align 4, !tbaa !48, !noalias !100
  br label %for.body.i221

for.body.i221:                                    ; preds = %for.cond.cleanup8.i, %for.body.lr.ph.i219
  %40 = phi i32 [ %.pre.i218, %for.body.lr.ph.i219 ], [ %41, %for.cond.cleanup8.i ]
  %indvars.iv47.i = phi i64 [ 1, %for.body.lr.ph.i219 ], [ %indvars.iv.next48.i, %for.cond.cleanup8.i ]
  %end_plus_one6.i220 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %39, i64 %indvars.iv47.i, i32 1
  %41 = load i32, i32* %end_plus_one6.i220, align 4, !tbaa !48, !noalias !100
  %cmp742.i = icmp slt i32 %40, %41
  br i1 %cmp742.i, label %for.body9.lr.ph.i, label %for.cond.cleanup8.i

for.body9.lr.ph.i:                                ; preds = %for.body.i221
  %42 = load i32*, i32** %index_.i215, align 8, !tbaa !41, !noalias !100
  %43 = load double*, double** %multiplier_.i216, align 8, !tbaa !40, !noalias !100
  %44 = sext i32 %40 to i64
  %45 = sext i32 %41 to i64
  br label %for.body9.i

for.cond.cleanup8.i:                              ; preds = %for.body9.i, %for.body.i221
  %a.sroa.0.0.lcssa.i = phi <2 x double> [ zeroinitializer, %for.body.i221 ], [ %add.i.i.i, %for.body9.i ]
  %index.i222 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %39, i64 %indvars.iv47.i, i32 0
  %46 = load i32, i32* %index.i222, align 4, !tbaa !44, !noalias !100
  %mul15.i = shl nsw i32 %46, 1
  %idx.ext16.i = sext i32 %mul15.i to i64
  %add.ptr17.i = getelementptr inbounds double, double* %27, i64 %idx.ext16.i
  %47 = bitcast double* %add.ptr17.i to <2 x double>*
  store <2 x double> %a.sroa.0.0.lcssa.i, <2 x double>* %47, align 16, !tbaa !15, !alias.scope !103
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1
  %exitcond.not.i223 = icmp eq i64 %indvars.iv.next48.i, %wide.trip.count.i
  br i1 %exitcond.not.i223, label %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit, label %for.body.i221, !llvm.loop !85

for.body9.i:                                      ; preds = %for.body9.i, %for.body9.lr.ph.i
  %indvars.iv.i224 = phi i64 [ %44, %for.body9.lr.ph.i ], [ %indvars.iv.next.i227, %for.body9.i ]
  %a.sroa.0.043.i = phi <2 x double> [ zeroinitializer, %for.body9.lr.ph.i ], [ %add.i.i.i, %for.body9.i ]
  %arrayidx11.i = getelementptr inbounds i32, i32* %42, i64 %indvars.iv.i224
  %48 = load i32, i32* %arrayidx11.i, align 4, !tbaa !49, !noalias !100
  %mul.i225 = shl nsw i32 %48, 1
  %idx.ext.i = sext i32 %mul.i225 to i64
  %add.ptr.i226 = getelementptr inbounds double, double* %27, i64 %idx.ext.i
  %49 = bitcast double* %add.ptr.i226 to <2 x double>*
  %50 = load <2 x double>, <2 x double>* %49, align 16, !tbaa !15, !alias.scope !100
  %arrayidx13.i = getelementptr inbounds double, double* %43, i64 %indvars.iv.i224
  %51 = load double, double* %arrayidx13.i, align 8, !tbaa !46, !noalias !100
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
  br label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %for.cond37.preheader, %for.cond37.preheader.lr.ph
  %indvars.iv287 = phi i64 [ 0, %for.cond37.preheader.lr.ph ], [ %indvars.iv.next288, %for.cond37.preheader ]
  %add.ptr.i204 = getelementptr inbounds i32, i32* %53, i64 %indvars.iv287
  %56 = load i32, i32* %add.ptr.i204, align 4, !tbaa !49
  %mul44 = shl nsw i32 %56, 1
  %57 = sext i32 %mul44 to i64
  %arrayidx47 = getelementptr inbounds double, double* %27, i64 %57
  %58 = load double, double* %arrayidx47, align 8, !tbaa !46
  %59 = mul nsw i64 %34, %55
  %60 = add nsw i64 %59, %indvars.iv287
  %arrayidx53 = getelementptr inbounds double, double* %jacobian_out, i64 %60
  store double %58, double* %arrayidx53, align 8, !tbaa !46
  %61 = or i64 %57, 1
  %arrayidx47.c = getelementptr inbounds double, double* %27, i64 %61
  %62 = load double, double* %arrayidx47.c, align 8, !tbaa !46
  %63 = or i64 %34, 1
  %64 = mul nsw i64 %63, %55
  %65 = add nsw i64 %64, %indvars.iv287
  %arrayidx53.c = getelementptr inbounds double, double* %jacobian_out, i64 %65
  store double %62, double* %arrayidx53.c, align 8, !tbaa !46
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1
  %exitcond291.not = icmp eq i64 %indvars.iv.next288, %wide.trip.count290
  br i1 %exitcond291.not, label %for.cond.cleanup34, label %for.cond37.preheader, !llvm.loop !106

for.cond.cleanup34:                               ; preds = %for.cond37.preheader, %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1
  %exitcond296.not = icmp eq i64 %indvars.iv.next293, %wide.trip.count295
  br i1 %exitcond296.not, label %for.cond.cleanup, label %for.body, !llvm.loop !107

if.then65:                                        ; preds = %for.cond.cleanup
  %mul67 = shl nsw i32 %div, 1
  %cmp70255 = icmp sgt i32 %23, 0
  br i1 %cmp70255, label %for.body72.preheader, label %for.body82

for.body72.preheader:                             ; preds = %if.then65
  %66 = icmp sgt i32 %mul, 1
  %smax271 = select i1 %66, i32 %mul, i32 1
  %67 = zext i32 %smax271 to i64
  %68 = shl nuw nsw i64 %67, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %28, i8 0, i64 %68, i1 false)
  br label %for.body82

for.body82:                                       ; preds = %for.body72.preheader, %if.then65
  %conv85 = sext i32 %mul67 to i64
  %69 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
  %add.ptr.i196 = getelementptr inbounds i32, i32* %69, i64 %conv85
  %70 = load i32, i32* %add.ptr.i196, align 4, !tbaa !49
  %mul87 = shl nsw i32 %70, 1
  %idxprom89 = sext i32 %mul87 to i64
  %arrayidx90 = getelementptr inbounds double, double* %27, i64 %idxprom89
  store double 1.000000e+00, double* %arrayidx90, align 8, !tbaa !46
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %n_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %71 = load i32, i32* %n_statements_.i, align 8, !tbaa !43, !noalias !108
  %cmp70.i = icmp sgt i32 %71, 1
  br i1 %cmp70.i, label %for.body.lr.ph.i, label %_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi.exit

for.body.lr.ph.i:                                 ; preds = %for.body82
  %statement_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %72 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i, align 8, !tbaa !38, !noalias !108
  %multiplier_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %index_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %wide.trip.count83.i = zext i32 %71 to i64
  %end_plus_one.phi.trans.insert.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %72, i64 0, i32 1
  %.pre.i = load i32, i32* %end_plus_one.phi.trans.insert.i, align 4, !tbaa !48, !noalias !108
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond26.preheader.i, %for.body.lr.ph.i
  %73 = phi i32 [ %.pre.i, %for.body.lr.ph.i ], [ %74, %for.cond26.preheader.i ]
  %indvars.iv80.i = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next81.i, %for.cond26.preheader.i ]
  %end_plus_one6.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %72, i64 %indvars.iv80.i, i32 1
  %74 = load i32, i32* %end_plus_one6.i, align 4, !tbaa !48, !noalias !108
  %cmp765.i = icmp slt i32 %73, %74
  br i1 %cmp765.i, label %for.cond10.preheader.lr.ph.i, label %for.cond26.preheader.i

for.cond10.preheader.lr.ph.i:                     ; preds = %for.body.i
  %75 = sext i32 %73 to i64
  %76 = sext i32 %74 to i64
  %77 = load double*, double** %multiplier_.i, align 8, !tbaa !40, !noalias !108
  %78 = load i32*, i32** %index_.i, align 8, !tbaa !41, !noalias !108
  br label %for.cond.cleanup12.i

for.cond26.preheader.i.loopexit:                  ; preds = %for.cond.cleanup12.i
  %79 = bitcast double %add21.i to i64
  br label %for.cond26.preheader.i

for.cond26.preheader.i:                           ; preds = %for.cond26.preheader.i.loopexit, %for.body.i
  %80 = phi i64 [ 0, %for.body.i ], [ %79, %for.cond26.preheader.i.loopexit ]
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %72, i64 %indvars.iv80.i, i32 0
  %81 = load i32, i32* %index.i, align 4, !tbaa !44, !noalias !108
  %82 = shl i32 %81, 1
  %83 = sext i32 %82 to i64
  %scevgep.i = getelementptr double, double* %27, i64 %83
  %84 = bitcast double* %scevgep.i to i64*
  store i64 %80, i64* %84, align 8
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1
  %exitcond84.not.i = icmp eq i64 %indvars.iv.next81.i, %wide.trip.count83.i
  br i1 %exitcond84.not.i, label %_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi.exit, label %for.body.i, !llvm.loop !89

for.cond.cleanup12.i:                             ; preds = %for.cond.cleanup12.i, %for.cond10.preheader.lr.ph.i
  %85 = phi double [ 0.000000e+00, %for.cond10.preheader.lr.ph.i ], [ %add21.i, %for.cond.cleanup12.i ]
  %indvars.iv73.i = phi i64 [ %75, %for.cond10.preheader.lr.ph.i ], [ %indvars.iv.next74.i, %for.cond.cleanup12.i ]
  %arrayidx15.i = getelementptr inbounds double, double* %77, i64 %indvars.iv73.i
  %86 = load double, double* %arrayidx15.i, align 8, !tbaa !46, !noalias !108
  %arrayidx17.i = getelementptr inbounds i32, i32* %78, i64 %indvars.iv73.i
  %87 = load i32, i32* %arrayidx17.i, align 4, !tbaa !49, !noalias !108
  %mul.i = shl nsw i32 %87, 1
  %88 = sext i32 %mul.i to i64
  %arrayidx19.i = getelementptr inbounds double, double* %27, i64 %88
  %89 = load double, double* %arrayidx19.i, align 8, !tbaa !46, !alias.scope !108
  %mul20.i = fmul fast double %89, %86
  %add21.i = fadd fast double %85, %mul20.i
  %indvars.iv.next74.i = add nsw i64 %indvars.iv73.i, 1
  %exitcond270.not = icmp eq i64 %indvars.iv.next74.i, %76
  br i1 %exitcond270.not, label %for.cond26.preheader.i.loopexit, label %for.cond.cleanup12.i, !llvm.loop !87

_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi.exit: ; preds = %for.cond26.preheader.i, %for.body82
  %90 = load i32*, i32** %_M_finish.i.i185, align 8, !tbaa !79
  %91 = load i32*, i32** %_M_start.i.i184, align 8, !tbaa !36
  %sub.ptr.lhs.cast.i.i191248 = ptrtoint i32* %90 to i64
  %sub.ptr.rhs.cast.i.i192249 = ptrtoint i32* %91 to i64
  %sub.ptr.sub.i.i193250 = sub i64 %sub.ptr.lhs.cast.i.i191248, %sub.ptr.rhs.cast.i.i192249
  %92 = lshr exact i64 %sub.ptr.sub.i.i193250, 2
  %conv.i194251 = trunc i64 %92 to i32
  %cmp97252 = icmp sgt i32 %conv.i194251, 0
  br i1 %cmp97252, label %for.body104.lr.ph, label %if.end124

for.body104.lr.ph:                                ; preds = %_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi.exit
  %wide.trip.count = and i64 %92, 4294967295
  %mul114 = mul nsw i32 %mul67, %conv.i194251
  br label %for.body104

for.body104:                                      ; preds = %for.body104, %for.body104.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body104.lr.ph ], [ %indvars.iv.next, %for.body104 ]
  %add.ptr.i = getelementptr inbounds i32, i32* %91, i64 %indvars.iv
  %93 = load i32, i32* %add.ptr.i, align 4, !tbaa !49
  %mul108 = shl nsw i32 %93, 1
  %idxprom110 = sext i32 %mul108 to i64
  %arrayidx111 = getelementptr inbounds double, double* %27, i64 %idxprom110
  %94 = load double, double* %arrayidx111, align 8, !tbaa !46
  %95 = trunc i64 %indvars.iv to i32
  %add115 = add nsw i32 %mul114, %95
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds double, double* %jacobian_out, i64 %idxprom116
  store double %94, double* %arrayidx117, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end124, label %for.body104, !llvm.loop !111

if.end124:                                        ; preds = %for.body104, %_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi.exit, %for.cond.cleanup
  call void @free(i8* %28) #4
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
  tail call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i64 0, i64 0)) #31
  unreachable

_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %entry
  %cmp.not.i.i.i.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i.i.i.i, label %invoke.cont.thread, label %invoke.cont

invoke.cont:                                      ; preds = %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %mul.i.i.i.i.i.i = shl nuw nsw i64 %conv, 4
  %call2.i.i.i.i3.i.i243 = tail call noalias nonnull i8* @_Znwm(i64 %mul.i.i.i.i.i.i) #33
  %4 = bitcast i8* %call2.i.i.i.i3.i.i243 to %"struct.adept::Block"*
  %add.ptr.i.i.i = getelementptr %"struct.adept::Block", %"struct.adept::Block"* %4, i64 %conv
  tail call void @llvm.memset.p0i8.i64(i8* nonnull align 8 %call2.i.i.i.i3.i.i243, i8 0, i64 %mul.i.i.i.i.i.i, i1 false)
  %phi.cast = ptrtoint %"struct.adept::Block"* %add.ptr.i.i.i to i64
  %cmp287 = icmp sgt i32 %conv.i, 0
  br i1 %cmp287, label %for.body.lr.ph, label %if.then.i.i.i

invoke.cont.thread:                               ; preds = %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %cmp287329 = icmp sgt i32 %conv.i, 0
  br i1 %cmp287329, label %for.body.lr.ph, label %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EED2Ev.exit

for.body.lr.ph:                                   ; preds = %invoke.cont.thread, %invoke.cont
  %cond.i.i.i.i267289333 = phi i8* [ null, %invoke.cont.thread ], [ %call2.i.i.i.i3.i.i243, %invoke.cont ]
  %__cur.0.lcssa.i.i.i.i.i332 = phi i64 [ 0, %invoke.cont.thread ], [ %phi.cast, %invoke.cont ]
  %cond.i.i.i.i267330 = phi %"struct.adept::Block"* [ null, %invoke.cont.thread ], [ %4, %invoke.cont ]
  %sub3 = add nsw i32 %div, -1
  %5 = and i32 %conv.i, -2147483647
  %cmp5 = icmp eq i32 %5, 1
  %sub.ptr.rhs.cast.i = ptrtoint %"struct.adept::Block"* %cond.i.i.i.i267330 to i64
  %sub.ptr.sub.i = sub i64 %__cur.0.lcssa.i.i.i.i.i332, %sub.ptr.rhs.cast.i
  %cmp8268.not = icmp eq i64 %sub.ptr.sub.i, 0
  %6 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
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
  %sub.ptr.rhs.cast.i.i212 = ptrtoint i32* %6 to i64
  %wide.trip.count317 = and i64 %11, 4294967295
  br label %for.body

for.body:                                         ; preds = %for.cond.cleanup106, %for.body.lr.ph
  %indvars.iv319 = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next320, %for.cond.cleanup106 ]
  %23 = shl nuw nsw i64 %indvars.iv319, 1
  %cmp4 = icmp eq i64 %indvars.iv319, %21
  %or.cond = and i1 %cmp5, %cmp4
  %spec.select = select i1 %or.cond, i32 1, i32 2
  br i1 %cmp8268.not, label %for.cond14.preheader, label %for.body9.preheader

for.body9.preheader:                              ; preds = %for.body
  call void @llvm.memset.p0i8.i64(i8* align 8 %cond.i.i.i.i267289333, i8 0, i64 %19, i1 false)
  br label %for.cond14.preheader

for.cond14.preheader:                             ; preds = %for.body9.preheader, %for.body
  %24 = icmp ugt i32 %spec.select, 1
  %umax292 = select i1 %24, i32 %spec.select, i32 1
  %wide.trip.count = zext i32 %umax292 to i64
  br label %for.body17

for.cond.cleanup16:                               ; preds = %for.body17
  br i1 %cmp31277, label %for.body33.lr.ph, label %for.cond101.preheader

for.body33.lr.ph:                                 ; preds = %for.cond.cleanup16
  %25 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !38
  br label %for.body33

for.body17:                                       ; preds = %for.body17, %for.cond14.preheader
  %indvars.iv = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next, %for.body17 ]
  %26 = add nuw nsw i64 %indvars.iv, %23
  %add.ptr.i239 = getelementptr inbounds i32, i32* %6, i64 %26
  %27 = load i32, i32* %add.ptr.i239, align 4, !tbaa !49
  %conv21 = sext i32 %27 to i64
  %arrayidx.i235 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i267330, i64 %conv21, i32 0, i64 %indvars.iv
  store double 1.000000e+00, double* %arrayidx.i235, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup16, label %for.body17, !llvm.loop !112

for.cond101.preheader:                            ; preds = %if.end95, %for.cond.cleanup16
  br i1 %cmp105285, label %for.cond109.preheader.lr.ph, label %for.cond.cleanup106

for.cond109.preheader.lr.ph:                      ; preds = %for.cond101.preheader
  %28 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !79
  %sub.ptr.lhs.cast.i.i211 = ptrtoint i32* %28 to i64
  %sub.ptr.sub.i.i213 = sub i64 %sub.ptr.lhs.cast.i.i211, %sub.ptr.rhs.cast.i.i212
  %29 = lshr exact i64 %sub.ptr.sub.i.i213, 2
  %30 = and i64 %29, 4294967295
  br label %for.cond109.preheader

for.body33:                                       ; preds = %if.end95, %for.body33.lr.ph
  %indvars.iv306 = phi i64 [ %20, %for.body33.lr.ph ], [ %indvars.iv.next307, %if.end95 ]
  %ist.0.in278 = phi i32 [ %7, %for.body33.lr.ph ], [ %ist.0279, %if.end95 ]
  %ist.0279 = add nsw i32 %ist.0.in278, -1
  %idxprom = sext i32 %ist.0279 to i64
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #4
  %index = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %25, i64 %idxprom, i32 0
  %31 = load i32, i32* %index, align 4, !tbaa !44
  %conv39 = sext i32 %31 to i64
  br label %for.body38

for.cond.cleanup37:                               ; preds = %for.body38
  %tobool.not = icmp eq i32 %n_non_zero.1, 0
  br i1 %tobool.not, label %if.end95, label %if.then59

for.body38:                                       ; preds = %for.body38, %for.body33
  %indvars.iv296 = phi i64 [ 0, %for.body33 ], [ %indvars.iv.next297, %for.body38 ]
  %n_non_zero.0271 = phi i32 [ 0, %for.body33 ], [ %n_non_zero.1, %for.body38 ]
  %arrayidx.i231 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i267330, i64 %conv39, i32 0, i64 %indvars.iv296
  %32 = load double, double* %arrayidx.i231, align 8, !tbaa !46
  %arrayidx45 = getelementptr inbounds [2 x double], [2 x double]* %a, i64 0, i64 %indvars.iv296
  store double %32, double* %arrayidx45, align 8, !tbaa !46
  store double 0.000000e+00, double* %arrayidx.i231, align 8, !tbaa !46
  %cmp53 = fcmp fast une double %32, 0.000000e+00
  %n_non_zero.1 = select i1 %cmp53, i32 1, i32 %n_non_zero.0271
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1
  %exitcond299.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count
  br i1 %exitcond299.not, label %for.cond.cleanup37, label %for.body38, !llvm.loop !113

if.then59:                                        ; preds = %for.cond.cleanup37
  %sub61 = add nsw i32 %ist.0.in278, -2
  %33 = zext i32 %sub61 to i64
  %end_plus_one = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %25, i64 %33, i32 1
  %34 = load i32, i32* %end_plus_one, align 4, !tbaa !48
  %end_plus_one65 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %25, i64 %idxprom, i32 1
  %35 = load i32, i32* %end_plus_one65, align 4, !tbaa !48
  %cmp66274 = icmp slt i32 %34, %35
  br i1 %cmp66274, label %for.body68.lr.ph, label %if.end95

for.body68.lr.ph:                                 ; preds = %if.then59
  %36 = load double*, double** %multiplier_, align 8, !tbaa !40
  %37 = load i32*, i32** %index_, align 8, !tbaa !41
  %38 = sext i32 %34 to i64
  %39 = sext i32 %35 to i64
  br label %for.body68

for.body68:                                       ; preds = %for.cond.cleanup81, %for.body68.lr.ph
  %indvars.iv304 = phi i64 [ %38, %for.body68.lr.ph ], [ %indvars.iv.next305, %for.cond.cleanup81 ]
  %arrayidx70 = getelementptr inbounds double, double* %36, i64 %indvars.iv304
  %40 = load double, double* %arrayidx70, align 8, !tbaa !46
  %arrayidx72 = getelementptr inbounds i32, i32* %37, i64 %indvars.iv304
  %41 = load i32, i32* %arrayidx72, align 4, !tbaa !49
  %conv73 = sext i32 %41 to i64
  br label %for.body82

for.cond.cleanup81:                               ; preds = %for.body82
  %indvars.iv.next305 = add nsw i64 %indvars.iv304, 1
  %cmp66 = icmp slt i64 %indvars.iv.next305, %39
  br i1 %cmp66, label %for.body68, label %if.end95, !llvm.loop !114

for.body82:                                       ; preds = %for.body82, %for.body68
  %indvars.iv300 = phi i64 [ 0, %for.body68 ], [ %indvars.iv.next301, %for.body82 ]
  %arrayidx84 = getelementptr inbounds [2 x double], [2 x double]* %a, i64 0, i64 %indvars.iv300
  %42 = load double, double* %arrayidx84, align 8, !tbaa !46
  %mul85 = fmul fast double %42, %40
  %arrayidx87 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i267330, i64 %conv73, i32 0, i64 %indvars.iv300
  %43 = load double, double* %arrayidx87, align 8, !tbaa !46
  %add88 = fadd fast double %43, %mul85
  store double %add88, double* %arrayidx87, align 8, !tbaa !46
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 1
  %exitcond303.not = icmp eq i64 %indvars.iv.next301, %wide.trip.count
  br i1 %exitcond303.not, label %for.cond.cleanup81, label %for.body82, !llvm.loop !115

if.end95:                                         ; preds = %for.cond.cleanup81, %if.then59, %for.cond.cleanup37
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #4
  %cmp31 = icmp sgt i64 %indvars.iv306, 2
  %indvars.iv.next307 = add nsw i64 %indvars.iv306, -1
  br i1 %cmp31, label %for.body33, label %for.cond101.preheader, !llvm.loop !116

for.cond109.preheader:                            ; preds = %for.cond.cleanup111, %for.cond109.preheader.lr.ph
  %indvars.iv313 = phi i64 [ 0, %for.cond109.preheader.lr.ph ], [ %indvars.iv.next314, %for.cond.cleanup111 ]
  %add.ptr.i216 = getelementptr inbounds i32, i32* %10, i64 %indvars.iv313
  %44 = load i32, i32* %add.ptr.i216, align 4, !tbaa !49
  %conv115 = sext i32 %44 to i64
  %45 = mul i64 %indvars.iv313, %30
  br label %for.body112

for.cond.cleanup106:                              ; preds = %for.cond.cleanup111, %for.cond101.preheader
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1
  %exitcond324.not = icmp eq i64 %indvars.iv.next320, %wide.trip.count323
  br i1 %exitcond324.not, label %if.then.i.i.i, label %for.body, !llvm.loop !117

for.cond.cleanup111:                              ; preds = %for.body112
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1
  %exitcond318.not = icmp eq i64 %indvars.iv.next314, %wide.trip.count317
  br i1 %exitcond318.not, label %for.cond.cleanup106, label %for.cond109.preheader, !llvm.loop !118

for.body112:                                      ; preds = %for.body112, %for.cond109.preheader
  %indvars.iv308 = phi i64 [ 0, %for.cond109.preheader ], [ %indvars.iv.next309, %for.body112 ]
  %arrayidx.i = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i267330, i64 %conv115, i32 0, i64 %indvars.iv308
  %46 = load double, double* %arrayidx.i, align 8, !tbaa !46
  %47 = add nuw nsw i64 %indvars.iv308, %23
  %add124 = add i64 %47, %45
  %sext = shl i64 %add124, 32
  %idxprom125 = ashr exact i64 %sext, 32
  %arrayidx126 = getelementptr inbounds double, double* %jacobian_out, i64 %idxprom125
  store double %46, double* %arrayidx126, align 8, !tbaa !46
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1
  %exitcond312.not = icmp eq i64 %indvars.iv.next309, %wide.trip.count
  br i1 %exitcond312.not, label %for.cond.cleanup111, label %for.body112, !llvm.loop !119

if.then.i.i.i:                                    ; preds = %for.cond.cleanup106, %invoke.cont
  %cond.i.i.i.i267289334 = phi i8* [ %call2.i.i.i.i3.i.i243, %invoke.cont ], [ %cond.i.i.i.i267289333, %for.cond.cleanup106 ]
  tail call void @_ZdlPv(i8* nonnull %cond.i.i.i.i267289334) #4
  br label %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EED2Ev.exit: ; preds = %if.then.i.i.i, %invoke.cont.thread
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack16jacobian_reverseEPd(%"class.adept::Stack"* nonnull readonly dereferenceable(149) %this, double* nocapture %jacobian_out) local_unnamed_addr #6 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %a = alloca [2 x double], align 16
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %4 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #4
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %6 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !13
  %7 = bitcast %union.anon* %5 to i8*
  %8 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #4
  store i64 79, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i513 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.then
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i513, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %9 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %9, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(79) %call5.i.i.i10.i513, i8* nonnull align 1 dereferenceable(79) getelementptr inbounds ([80 x i8], [80 x i8]* @.str.71, i64 0, i64 0), i64 79, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %9, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i513, i64 %9
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #4
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %10 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %11 = getelementptr inbounds i8, i8* %exception, i64 24
  %12 = bitcast i8* %message_.i.i.i to i8**
  store i8* %11, i8** %12, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i.i514 = getelementptr inbounds i8, i8* %exception, i64 16
  %13 = bitcast i8* %_M_string_length.i.i.i.i.i.i514 to i64*
  store i64 0, i64* %13, align 8, !tbaa !12
  store i8 0, i8* %11, align 1, !tbaa !15
  %14 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept41dependents_or_independents_not_identifiedE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %14, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %10, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont5 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %15 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %14, align 8, !tbaa !20
  %16 = load i8*, i8** %12, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %16, %11
  br i1 %cmp.i.i.i.i.i, label %lpad4.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %16) #4
  br label %lpad4.body

invoke.cont5:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept41dependents_or_independents_not_identifiedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad4.body.thread

ehcleanup.thread:                                 ; preds = %if.then
  %17 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #4
  br label %cleanup.action

lpad4.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %18 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %18) #4
  %19 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %19, %7
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i515.thread

if.then.i.i515.thread:                            ; preds = %lpad4.body
  call void @_ZdlPv(i8* %19) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #4
  br label %cleanup.action

lpad4.body.thread:                                ; preds = %invoke.cont5
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i640 = icmp eq i8* %21, %7
  br i1 %cmp.i.i.i640, label %ehcleanup.thread645, label %if.then.i.i515

ehcleanup.thread645:                              ; preds = %lpad4.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #4
  br label %eh.resume

if.then.i.i515:                                   ; preds = %lpad4.body.thread
  call void @_ZdlPv(i8* %21) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad4.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i515.thread, %ehcleanup.thread
  %.pn549 = phi { i8*, i32 } [ %17, %ehcleanup.thread ], [ %15, %ehcleanup ], [ %15, %if.then.i.i515.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
  br label %eh.resume

if.end:                                           ; preds = %lor.lhs.false
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %22 = load i32, i32* %max_gradient_, align 8, !tbaa !66
  %conv = sext i32 %22 to i64
  %cmp.i.i511 = icmp slt i32 %22, 0
  br i1 %cmp.i.i511, label %if.then.i.i, label %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

if.then.i.i:                                      ; preds = %if.end
  tail call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.92, i64 0, i64 0)) #31
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
  %28 = bitcast [2 x double]* %a to i8*
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
  br label %for.cond20.preheader

for.cond20.preheader:                             ; preds = %for.cond.cleanup126, %for.cond20.preheader.lr.ph
  %indvars.iv632 = phi i64 [ 0, %for.cond20.preheader.lr.ph ], [ %indvars.iv.next633, %for.cond.cleanup126 ]
  %indvar = phi i64 [ 0, %for.cond20.preheader.lr.ph ], [ %indvar.next, %for.cond.cleanup126 ]
  %42 = shl nuw nsw i64 %indvar, 1
  br i1 %cmp22572.not, label %for.body33, label %for.body24.preheader

for.body24.preheader:                             ; preds = %for.cond20.preheader
  call void @llvm.memset.p0i8.i64(i8* align 8 %cond.i.i.i.i552600, i8 0, i64 %39, i1 false)
  br label %for.body33

for.cond.cleanup.loopexit:                        ; preds = %for.cond.cleanup126
  %43 = trunc i64 %indvars.iv.next633 to i32
  br label %for.cond.cleanup

for.cond.cleanup:                                 ; preds = %for.cond.cleanup.loopexit, %invoke.cont11
  %i_dependent.0.lcssa = phi i32 [ 0, %invoke.cont11 ], [ %43, %for.cond.cleanup.loopexit ]
  %44 = and i32 %conv.i510, -2147483647
  %cmp161 = icmp eq i32 %44, 1
  br i1 %cmp161, label %for.cond164.preheader, label %if.end324

for.cond164.preheader:                            ; preds = %for.cond.cleanup
  %sub.ptr.rhs.cast.i = ptrtoint %"struct.adept::Block"* %cond.i.i.i.i552 to i64
  %sub.ptr.sub.i = sub i64 %__cur.0.lcssa.i.i.i.i.i, %sub.ptr.rhs.cast.i
  %cmp166570.not = icmp eq i64 %sub.ptr.sub.i, 0
  br i1 %cmp166570.not, label %for.body180, label %for.body168.preheader

for.body168.preheader:                            ; preds = %for.cond164.preheader
  %45 = icmp sgt i64 %sub.ptr.sub.i, -1
  %smax601 = select i1 %45, i64 %sub.ptr.sub.i, i64 -1
  %46 = icmp slt i64 %smax601, 1
  %smin = select i1 %46, i64 %smax601, i64 1
  %47 = sub i64 %sub.ptr.rhs.cast.i, %__cur.0.lcssa.i.i.i.i.i
  %48 = icmp sgt i64 %47, %sub.ptr.sub.i
  %smax602 = select i1 %48, i64 %47, i64 %sub.ptr.sub.i
  %49 = lshr i64 %smax602, 4
  %50 = mul nsw i64 %smin, %49
  %51 = icmp ugt i64 %50, 1
  %umax = select i1 %51, i64 %50, i64 1
  %52 = shl nuw i64 %umax, 4
  call void @llvm.memset.p0i8.i64(i8* align 8 %cond.i.i.i.i552600, i8 0, i64 %52, i1 false)
  br label %for.body180

for.body49.lr.ph:                                 ; preds = %for.body33
  %53 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !38
  br label %for.body49

for.body33:                                       ; preds = %for.body24.preheader, %for.cond20.preheader
  %add.ptr.i489 = getelementptr inbounds i32, i32* %24, i64 %indvars.iv632
  %54 = load i32, i32* %add.ptr.i489, align 4, !tbaa !49
  %conv37 = sext i32 %54 to i64
  %arrayidx.i485 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv37, i32 0, i64 0
  store double 1.000000e+00, double* %arrayidx.i485, align 8, !tbaa !46
  %55 = or i64 %indvars.iv632, 1
  %add.ptr.i489.c = getelementptr inbounds i32, i32* %24, i64 %55
  %56 = load i32, i32* %add.ptr.i489.c, align 4, !tbaa !49
  %conv37.c = sext i32 %56 to i64
  %arrayidx.i485.c = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv37.c, i32 0, i64 1
  store double 1.000000e+00, double* %arrayidx.i485.c, align 8, !tbaa !46
  br i1 %cmp47581, label %for.body49.lr.ph, label %for.cond121.preheader

for.cond121.preheader:                            ; preds = %if.end114, %for.body33
  br i1 %cmp125589, label %for.cond129.preheader.lr.ph, label %for.cond.cleanup126

for.cond129.preheader.lr.ph:                      ; preds = %for.cond121.preheader
  %57 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
  %58 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !79
  %sub.ptr.lhs.cast.i.i469 = ptrtoint i32* %58 to i64
  %sub.ptr.rhs.cast.i.i470 = ptrtoint i32* %57 to i64
  %sub.ptr.sub.i.i471 = sub i64 %sub.ptr.lhs.cast.i.i469, %sub.ptr.rhs.cast.i.i470
  %59 = lshr exact i64 %sub.ptr.sub.i.i471, 2
  %conv.i472 = trunc i64 %59 to i32
  %60 = icmp sgt i32 %conv.i472, 1
  %.op = and i64 %59, 4294967295
  %wide.trip.count630 = select i1 %60, i64 %.op, i64 1
  br label %for.cond129.preheader

for.body49:                                       ; preds = %if.end114, %for.body49.lr.ph
  %indvars.iv619 = phi i64 [ %40, %for.body49.lr.ph ], [ %indvars.iv.next620, %if.end114 ]
  %ist.0.in582 = phi i32 [ %27, %for.body49.lr.ph ], [ %ist.0583, %if.end114 ]
  %ist.0583 = add nsw i32 %ist.0.in582, -1
  %idxprom = sext i32 %ist.0583 to i64
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #4
  %index = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %53, i64 %idxprom, i32 0
  %61 = load i32, i32* %index, align 4, !tbaa !44
  %conv55 = sext i32 %61 to i64
  br label %for.body54

for.cond.cleanup53:                               ; preds = %for.body54
  %tobool.not = icmp eq i32 %n_non_zero.1, 0
  br i1 %tobool.not, label %if.end114, label %if.then76

for.body54:                                       ; preds = %for.body54, %for.body49
  %cmp52 = phi i1 [ true, %for.body49 ], [ false, %for.body54 ]
  %indvars.iv613 = phi i64 [ 0, %for.body49 ], [ 1, %for.body54 ]
  %n_non_zero.0575 = phi i32 [ 0, %for.body49 ], [ %n_non_zero.1, %for.body54 ]
  %arrayidx.i481 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv55, i32 0, i64 %indvars.iv613
  %62 = load double, double* %arrayidx.i481, align 8, !tbaa !46
  %arrayidx61 = getelementptr inbounds [2 x double], [2 x double]* %a, i64 0, i64 %indvars.iv613
  store double %62, double* %arrayidx61, align 8, !tbaa !46
  store double 0.000000e+00, double* %arrayidx.i481, align 8, !tbaa !46
  %cmp69 = fcmp fast une double %62, 0.000000e+00
  %n_non_zero.1 = select i1 %cmp69, i32 1, i32 %n_non_zero.0575
  br i1 %cmp52, label %for.body54, label %for.cond.cleanup53, !llvm.loop !120

if.then76:                                        ; preds = %for.cond.cleanup53
  %sub78 = add nsw i32 %ist.0.in582, -2
  %63 = zext i32 %sub78 to i64
  %end_plus_one = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %53, i64 %63, i32 1
  %64 = load i32, i32* %end_plus_one, align 4, !tbaa !48
  %end_plus_one82 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %53, i64 %idxprom, i32 1
  %65 = load i32, i32* %end_plus_one82, align 4, !tbaa !48
  %cmp83578 = icmp slt i32 %64, %65
  br i1 %cmp83578, label %for.body85.lr.ph, label %if.end114

for.body85.lr.ph:                                 ; preds = %if.then76
  %66 = load double*, double** %multiplier_, align 8, !tbaa !40
  %67 = load i32*, i32** %index_, align 8, !tbaa !41
  %68 = sext i32 %64 to i64
  %69 = sext i32 %65 to i64
  br label %for.body85

for.body85:                                       ; preds = %for.body85, %for.body85.lr.ph
  %indvars.iv617 = phi i64 [ %68, %for.body85.lr.ph ], [ %indvars.iv.next618, %for.body85 ]
  %arrayidx87 = getelementptr inbounds double, double* %66, i64 %indvars.iv617
  %70 = load double, double* %arrayidx87, align 8, !tbaa !46
  %arrayidx89 = getelementptr inbounds i32, i32* %67, i64 %indvars.iv617
  %71 = load i32, i32* %arrayidx89, align 4, !tbaa !49
  %conv90 = sext i32 %71 to i64
  %arrayidx101 = getelementptr inbounds [2 x double], [2 x double]* %a, i64 0, i64 0
  %72 = load double, double* %arrayidx101, align 16, !tbaa !46
  %mul = fmul fast double %72, %70
  %arrayidx103 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv90, i32 0, i64 0
  %73 = load double, double* %arrayidx103, align 8, !tbaa !46
  %add104 = fadd fast double %73, %mul
  store double %add104, double* %arrayidx103, align 8, !tbaa !46
  %arrayidx101.c = getelementptr inbounds [2 x double], [2 x double]* %a, i64 0, i64 1
  %74 = load double, double* %arrayidx101.c, align 8, !tbaa !46
  %mul.c = fmul fast double %74, %70
  %arrayidx103.c = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv90, i32 0, i64 1
  %75 = load double, double* %arrayidx103.c, align 8, !tbaa !46
  %add104.c = fadd fast double %75, %mul.c
  store double %add104.c, double* %arrayidx103.c, align 8, !tbaa !46
  %indvars.iv.next618 = add nsw i64 %indvars.iv617, 1
  %cmp83 = icmp slt i64 %indvars.iv.next618, %69
  br i1 %cmp83, label %for.body85, label %if.end114, !llvm.loop !121

if.end114:                                        ; preds = %for.body85, %if.then76, %for.cond.cleanup53
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #4
  %cmp47 = icmp sgt i64 %indvars.iv619, 2
  %indvars.iv.next620 = add nsw i64 %indvars.iv619, -1
  br i1 %cmp47, label %for.body49, label %for.cond121.preheader, !llvm.loop !122

for.cond129.preheader:                            ; preds = %for.cond129.preheader, %for.cond129.preheader.lr.ph
  %indvar621 = phi i64 [ 0, %for.cond129.preheader.lr.ph ], [ %indvar.next622, %for.cond129.preheader ]
  %76 = mul nsw i64 %41, %indvar621
  %77 = add nsw i64 %42, %76
  %scevgep = getelementptr double, double* %jacobian_out, i64 %77
  %scevgep623 = bitcast double* %scevgep to i8*
  %add.ptr.i466 = getelementptr inbounds i32, i32* %57, i64 %indvar621
  %78 = load i32, i32* %add.ptr.i466, align 4, !tbaa !49
  %conv136 = sext i32 %78 to i64
  %scevgep624 = getelementptr %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv136
  %scevgep624625 = bitcast %"struct.adept::Block"* %scevgep624 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %scevgep623, i8* nonnull align 8 dereferenceable(16) %scevgep624625, i64 16, i1 false)
  %indvar.next622 = add nuw nsw i64 %indvar621, 1
  %exitcond631.not = icmp eq i64 %indvar.next622, %wide.trip.count630
  br i1 %exitcond631.not, label %for.cond.cleanup126, label %for.cond129.preheader, !llvm.loop !123

for.cond.cleanup126:                              ; preds = %for.cond129.preheader, %for.cond121.preheader
  %indvars.iv.next633 = add nuw nsw i64 %indvars.iv632, 2
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond635.not = icmp eq i64 %indvar.next, %div651
  br i1 %exitcond635.not, label %for.cond.cleanup.loopexit, label %for.cond20.preheader, !llvm.loop !124

for.body180:                                      ; preds = %for.body168.preheader, %for.cond164.preheader
  %conv183 = zext i32 %i_dependent.0.lcssa to i64
  %79 = load i32*, i32** %_M_start.i.i426, align 8, !tbaa !36
  %add.ptr.i452 = getelementptr inbounds i32, i32* %79, i64 %conv183
  %80 = load i32, i32* %add.ptr.i452, align 4, !tbaa !49
  %conv185 = sext i32 %80 to i64
  %arrayidx.i448 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv185, i32 0, i64 0
  store double 1.000000e+00, double* %arrayidx.i448, align 8, !tbaa !46
  %n_statements_195 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %81 = load i32, i32* %n_statements_195, align 8, !tbaa !43
  %cmp198567 = icmp sgt i32 %81, 1
  br i1 %cmp198567, label %for.body200.lr.ph, label %for.cond289.preheader

for.body200.lr.ph:                                ; preds = %for.body180
  %statement_202 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %82 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_202, align 8, !tbaa !38
  %multiplier_248 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %index_252 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %83 = zext i32 %81 to i64
  br label %for.body200

for.cond289.preheader:                            ; preds = %if.end280, %for.body180
  %84 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !79
  %85 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !36
  %sub.ptr.lhs.cast.i.i435557 = ptrtoint i32* %84 to i64
  %sub.ptr.rhs.cast.i.i436558 = ptrtoint i32* %85 to i64
  %sub.ptr.sub.i.i437559 = sub i64 %sub.ptr.lhs.cast.i.i435557, %sub.ptr.rhs.cast.i.i436558
  %86 = lshr exact i64 %sub.ptr.sub.i.i437559, 2
  %conv.i438560 = trunc i64 %86 to i32
  %cmp293561 = icmp sgt i32 %conv.i438560, 0
  br i1 %cmp293561, label %for.body300.lr.ph, label %if.then.i.i.i

for.body300.lr.ph:                                ; preds = %for.cond289.preheader
  %sext = shl i64 %sub.ptr.sub.i.i509, 30
  %87 = ashr i64 %sext, 32
  %88 = sext i32 %i_dependent.0.lcssa to i64
  %wide.trip.count = and i64 %86, 4294967295
  br label %for.body300

for.body200:                                      ; preds = %if.end280, %for.body200.lr.ph
  %indvars.iv598 = phi i64 [ %83, %for.body200.lr.ph ], [ %indvars.iv.next599, %if.end280 ]
  %ist194.0.in568 = phi i32 [ %81, %for.body200.lr.ph ], [ %ist194.0569, %if.end280 ]
  %ist194.0569 = add nsw i32 %ist194.0.in568, -1
  %idxprom203 = sext i32 %ist194.0569 to i64
  %index212 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %82, i64 %idxprom203, i32 0
  %89 = load i32, i32* %index212, align 4, !tbaa !44
  %conv213 = sext i32 %89 to i64
  %arrayidx.i445 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv213, i32 0, i64 0
  %arrayidx.i445.promoted = load double, double* %arrayidx.i445, align 8, !tbaa !46
  %cmp227 = fcmp fast oeq double %arrayidx.i445.promoted, 0.000000e+00
  store double 0.000000e+00, double* %arrayidx.i445, align 8, !tbaa !46
  br i1 %cmp227, label %if.end280, label %if.then235

if.then235:                                       ; preds = %for.body200
  %sub238 = add nsw i32 %ist194.0.in568, -2
  %90 = zext i32 %sub238 to i64
  %end_plus_one241 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %82, i64 %90, i32 1
  %91 = load i32, i32* %end_plus_one241, align 4, !tbaa !48
  %end_plus_one243 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %82, i64 %idxprom203, i32 1
  %92 = load i32, i32* %end_plus_one243, align 4, !tbaa !48
  %cmp244564 = icmp slt i32 %91, %92
  br i1 %cmp244564, label %for.body246.lr.ph, label %if.end280

for.body246.lr.ph:                                ; preds = %if.then235
  %93 = load double*, double** %multiplier_248, align 8, !tbaa !40
  %94 = load i32*, i32** %index_252, align 8, !tbaa !41
  %95 = sext i32 %91 to i64
  %96 = sext i32 %92 to i64
  br label %for.body246

for.body246:                                      ; preds = %for.body246, %for.body246.lr.ph
  %indvars.iv596 = phi i64 [ %95, %for.body246.lr.ph ], [ %indvars.iv.next597, %for.body246 ]
  %arrayidx250 = getelementptr inbounds double, double* %93, i64 %indvars.iv596
  %97 = load double, double* %arrayidx250, align 8, !tbaa !46
  %arrayidx254 = getelementptr inbounds i32, i32* %94, i64 %indvars.iv596
  %98 = load i32, i32* %arrayidx254, align 4, !tbaa !49
  %conv255 = sext i32 %98 to i64
  %arrayidx.i439 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv255, i32 0, i64 0
  %mul267 = fmul fast double %97, %arrayidx.i445.promoted
  %99 = load double, double* %arrayidx.i439, align 8, !tbaa !46
  %add270 = fadd fast double %99, %mul267
  store double %add270, double* %arrayidx.i439, align 8, !tbaa !46
  %indvars.iv.next597 = add nsw i64 %indvars.iv596, 1
  %cmp244 = icmp slt i64 %indvars.iv.next597, %96
  br i1 %cmp244, label %for.body246, label %if.end280, !llvm.loop !125

if.end280:                                        ; preds = %for.body246, %if.then235, %for.body200
  %cmp198 = icmp sgt i64 %indvars.iv598, 2
  %indvars.iv.next599 = add nsw i64 %indvars.iv598, -1
  br i1 %cmp198, label %for.body200, label %for.cond289.preheader, !llvm.loop !126

for.body300:                                      ; preds = %for.body300, %for.body300.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body300.lr.ph ], [ %indvars.iv.next, %for.body300 ]
  %add.ptr.i432 = getelementptr inbounds i32, i32* %85, i64 %indvars.iv
  %100 = load i32, i32* %add.ptr.i432, align 4, !tbaa !49
  %conv304 = sext i32 %100 to i64
  %arrayidx.i = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv304, i32 0, i64 0
  %101 = load double, double* %arrayidx.i, align 8, !tbaa !46
  %102 = mul nsw i64 %indvars.iv, %87
  %103 = add nsw i64 %102, %88
  %arrayidx315 = getelementptr inbounds double, double* %jacobian_out, i64 %103
  store double %101, double* %arrayidx315, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.then.i.i.i, label %for.body300, !llvm.loop !127

if.end324:                                        ; preds = %for.cond.cleanup
  %tobool.not.i.i.i = icmp eq %"struct.adept::Block"* %cond.i.i.i.i552, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end324, %for.body300, %for.cond289.preheader
  tail call void @_ZdlPv(i8* nonnull %cond.i.i.i.i552600) #4
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
define dso_local void @_ZN5adept5Stack8jacobianEPd(%"class.adept::Stack"* nonnull readonly dereferenceable(149) %this, double* nocapture %jacobian_out) local_unnamed_addr #9 align 2 {
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

; Function Attrs: uwtable
define dso_local void @_ZN5adept7versionB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result) local_unnamed_addr #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2
  %1 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to %union.anon**
  store %union.anon* %0, %union.anon** %1, align 8, !tbaa !13
  %2 = bitcast %union.anon* %0 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(5) %2, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), i64 5, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1
  store i64 5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %2, i64 5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept16compiler_versionB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result) local_unnamed_addr #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i:
  %0 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2
  %1 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to %union.anon**
  store %union.anon* %0, %union.anon** %1, align 8, !tbaa !13
  %2 = bitcast %union.anon* %0 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(7) %2, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i64 7, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1
  store i64 7, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %2, i64 7
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  %call2.i.i7 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %agg.result, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i64 8)
          to label %nrvo.skipdtor unwind label %lpad1

lpad1:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  %3 = landingpad { i8*, i32 }
          cleanup
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 0, i32 0
  %4 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %4, %2
  br i1 %cmp.i.i.i, label %eh.resume, label %if.then.i.i

if.then.i.i:                                      ; preds = %lpad1
  tail call void @_ZdlPv(i8* %4) #4
  br label %eh.resume

nrvo.skipdtor:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  ret void

eh.resume:                                        ; preds = %if.then.i.i, %lpad1
  resume { i8*, i32 } %3
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept14compiler_flagsB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result) local_unnamed_addr #6 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2
  %1 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to %union.anon**
  store %union.anon* %0, %union.anon** %1, align 8, !tbaa !13
  %2 = bitcast %union.anon* %0 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(7) %2, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i64 7, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1
  store i64 7, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
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
  call void @llvm.lifetime.start.p0i8(i64 392, i8* nonnull %0) #4
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull dereferenceable(128) %s)
  %add.ptr = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1
  %1 = bitcast %"class.std::basic_ostream.base"* %add.ptr to %"class.std::basic_ostream"*
  %call1.i52 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i64 0, i64 0), i64 14)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %entry
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #4
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %4 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %3, %union.anon** %4, align 8, !tbaa !13, !alias.scope !128
  %5 = bitcast %union.anon* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(5) %5, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), i64 5, i1 false) #4
  %_M_string_length.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 5, i64* %_M_string_length.i.i.i.i.i.i.i, align 8, !tbaa !12, !alias.scope !128
  %arrayidx.i.i.i.i.i.i = getelementptr inbounds i8, i8* %5, i64 5
  store i8 0, i8* %arrayidx.i.i.i.i.i.i, align 1, !tbaa !15, !alias.scope !128
  %_M_p.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  %call2.i53 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull %5, i64 5)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont2
  %call1.i55 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call2.i53, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.76, i64 0, i64 0), i64 2)
          to label %invoke.cont6 unwind label %lpad3

invoke.cont6:                                     ; preds = %invoke.cont4
  %6 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %6, %5
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont6
  call void @_ZdlPv(i8* %6) #4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %invoke.cont6
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #4
  %call1.i58 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i64 0, i64 0), i64 16)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %7 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #4
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp11, i64 0, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp11 to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !13, !alias.scope !131
  %10 = bitcast %union.anon* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(7) %10, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i64 7, i1 false) #4
  %_M_string_length.i.i.i.i.i.i.i60 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp11, i64 0, i32 1
  store i64 7, i64* %_M_string_length.i.i.i.i.i.i.i60, align 8, !tbaa !12, !alias.scope !131
  %arrayidx.i.i.i.i.i.i61 = getelementptr inbounds i8, i8* %10, i64 7
  store i8 0, i8* %arrayidx.i.i.i.i.i.i61, align 1, !tbaa !15, !alias.scope !131
  %call2.i.i7.i = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i64 8)
          to label %invoke.cont13 unwind label %lpad1.i

lpad1.i:                                          ; preds = %invoke.cont9
  %11 = landingpad { i8*, i32 }
          cleanup
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp11, i64 0, i32 0, i32 0
  %12 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !8, !alias.scope !131
  %cmp.i.i.i.i = icmp eq i8* %12, %10
  br i1 %cmp.i.i.i.i, label %ehcleanup20, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lpad1.i
  call void @_ZdlPv(i8* %12) #4
  br label %ehcleanup20

invoke.cont13:                                    ; preds = %invoke.cont9
  %_M_p.i.i.i62 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp11, i64 0, i32 0, i32 0
  %13 = load i8*, i8** %_M_p.i.i.i62, align 8, !tbaa !8
  %14 = load i64, i64* %_M_string_length.i.i.i.i.i.i.i60, align 8, !tbaa !12
  %call2.i64 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* %13, i64 %14)
          to label %invoke.cont15 unwind label %lpad14

invoke.cont15:                                    ; preds = %invoke.cont13
  %call1.i67 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call2.i64, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
          to label %invoke.cont17 unwind label %lpad14

invoke.cont17:                                    ; preds = %invoke.cont15
  %15 = load i8*, i8** %_M_p.i.i.i62, align 8, !tbaa !8
  %cmp.i.i.i71 = icmp eq i8* %15, %10
  br i1 %cmp.i.i.i71, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, label %if.then.i.i72

if.then.i.i72:                                    ; preds = %invoke.cont17
  call void @_ZdlPv(i8* %15) #4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %if.then.i.i72, %invoke.cont17
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #4
  %call1.i75 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.78, i64 0, i64 0), i64 18)
          to label %invoke.cont26 unwind label %lpad

invoke.cont26:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %16 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #4
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp24, i64 0, i32 2
  %18 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp24 to %union.anon**
  store %union.anon* %17, %union.anon** %18, align 8, !tbaa !13, !alias.scope !134
  %19 = bitcast %union.anon* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(7) %19, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i64 7, i1 false) #4
  %_M_string_length.i.i.i.i.i.i.i77 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp24, i64 0, i32 1
  store i64 7, i64* %_M_string_length.i.i.i.i.i.i.i77, align 8, !tbaa !12, !alias.scope !134
  %arrayidx.i.i.i.i.i.i78 = getelementptr inbounds i8, i8* %19, i64 7
  store i8 0, i8* %arrayidx.i.i.i.i.i.i78, align 1, !tbaa !15, !alias.scope !134
  %_M_p.i.i.i79 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp24, i64 0, i32 0, i32 0
  %call2.i81 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull %19, i64 7)
          to label %invoke.cont28 unwind label %lpad27

invoke.cont28:                                    ; preds = %invoke.cont26
  %call1.i84 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call2.i81, i8* nonnull getelementptr inbounds ([3 x i8], [3 x i8]* @.str.79, i64 0, i64 0), i64 2)
          to label %invoke.cont30 unwind label %lpad27

invoke.cont30:                                    ; preds = %invoke.cont28
  %20 = load i8*, i8** %_M_p.i.i.i79, align 8, !tbaa !8
  %cmp.i.i.i88 = icmp eq i8* %20, %19
  br i1 %cmp.i.i.i88, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %if.then.i.i89

if.then.i.i89:                                    ; preds = %invoke.cont30
  call void @_ZdlPv(i8* %20) #4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %if.then.i.i89, %invoke.cont30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #4
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
  %29 = load i8*, i8** %_M_p.i.i.i.i.i.i.i, align 8, !tbaa !8
  %30 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 2
  %arraydecay.i.i.i.i.i.i.i = bitcast %union.anon* %30 to i8*
  %cmp.i.i.i.i.i.i = icmp eq i8* %29, %arraydecay.i.i.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %invoke.cont41
  call void @_ZdlPv(i8* %29) #4
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %if.then.i.i.i.i.i, %invoke.cont41
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %28, align 8, !tbaa !20
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i) #4
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
  store i64 0, i64* %35, align 8, !tbaa !137
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216) %36) #4
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %0) #4
  ret void

lpad:                                             ; preds = %invoke.cont39, %invoke.cont37, %invoke.cont35, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %entry
  %37 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup42

lpad3:                                            ; preds = %invoke.cont4, %invoke.cont2
  %38 = landingpad { i8*, i32 }
          cleanup
  %39 = load i8*, i8** %_M_p.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i99 = icmp eq i8* %39, %5
  br i1 %cmp.i.i.i99, label %ehcleanup, label %if.then.i.i100

if.then.i.i100:                                   ; preds = %lpad3
  call void @_ZdlPv(i8* %39) #4
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i100, %lpad3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #4
  br label %ehcleanup42

lpad14:                                           ; preds = %invoke.cont15, %invoke.cont13
  %40 = landingpad { i8*, i32 }
          cleanup
  %41 = load i8*, i8** %_M_p.i.i.i62, align 8, !tbaa !8
  %cmp.i.i.i104 = icmp eq i8* %41, %10
  br i1 %cmp.i.i.i104, label %ehcleanup20, label %if.then.i.i105

if.then.i.i105:                                   ; preds = %lpad14
  call void @_ZdlPv(i8* %41) #4
  br label %ehcleanup20

ehcleanup20:                                      ; preds = %if.then.i.i105, %lpad14, %if.then.i.i.i, %lpad1.i
  %.pn46 = phi { i8*, i32 } [ %11, %if.then.i.i.i ], [ %11, %lpad1.i ], [ %40, %lpad14 ], [ %40, %if.then.i.i105 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #4
  br label %ehcleanup42

lpad27:                                           ; preds = %invoke.cont28, %invoke.cont26
  %42 = landingpad { i8*, i32 }
          cleanup
  %43 = load i8*, i8** %_M_p.i.i.i79, align 8, !tbaa !8
  %cmp.i.i.i109 = icmp eq i8* %43, %19
  br i1 %cmp.i.i.i109, label %ehcleanup33, label %if.then.i.i110

if.then.i.i110:                                   ; preds = %lpad27
  call void @_ZdlPv(i8* %43) #4
  br label %ehcleanup33

ehcleanup33:                                      ; preds = %if.then.i.i110, %lpad27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #4
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
  %52 = load i8*, i8** %_M_p.i.i.i.i.i.i.i115, align 8, !tbaa !8
  %53 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 2
  %arraydecay.i.i.i.i.i.i.i116 = bitcast %union.anon* %53 to i8*
  %cmp.i.i.i.i.i.i117 = icmp eq i8* %52, %arraydecay.i.i.i.i.i.i.i116
  br i1 %cmp.i.i.i.i.i.i117, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit123, label %if.then.i.i.i.i.i118

if.then.i.i.i.i.i118:                             ; preds = %ehcleanup42
  call void @_ZdlPv(i8* %52) #4
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit123

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit123: ; preds = %if.then.i.i.i.i.i118, %ehcleanup42
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %51, align 8, !tbaa !20
  %_M_buf_locale.i.i.i.i119 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i119) #4
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
  store i64 0, i64* %58, align 8, !tbaa !137
  %59 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216) %59) #4
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %0) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !12
  store i8 0, i8* %8, align 1, !tbaa !15
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !20
  %12 = load i8*, i8** %9, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #4
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #4
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #4
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
  store %"class.adept::Storage.14"* null, %"class.adept::Storage.14"** %storage_.i, align 8, !tbaa !139
  %0 = bitcast [7 x i32]* %dim.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #4
  %arrayinit.begin.i.i = getelementptr inbounds [7 x i32], [7 x i32]* %dim.i.i, i64 0, i64 0
  store i32 %n, i32* %arrayinit.begin.i.i, align 16, !tbaa !49
  %arrayinit.element.i.i = getelementptr inbounds [7 x i32], [7 x i32]* %dim.i.i, i64 0, i64 1
  %1 = bitcast i32* %arrayinit.element.i.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(24) %1, i8 -1, i64 24, i1 false)
  call void @_ZN5adept5ArrayILi1EdLb0EE6resizeEPKib(%"class.adept::Array.28"* nonnull dereferenceable(24) %agg.result, i32* nonnull %arrayinit.begin.i.i, i1 zeroext false)
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #4
  %cmp = icmp sgt i32 %n, 1
  br i1 %cmp, label %invoke.cont.lr.ph, label %if.else

invoke.cont.lr.ph:                                ; preds = %entry
  %data_.i = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %agg.result, i64 0, i32 0
  %2 = load double*, double** %data_.i, align 8, !tbaa !142
  %arrayidx.i4.i = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %agg.result, i64 0, i32 3, i32 0, i64 0
  %3 = load i32, i32* %arrayidx.i4.i, align 4, !tbaa !49
  %sub = fsub fast double %x2, %x1
  %sub2 = add nsw i32 %n, -1
  %conv3 = sitofp i32 %sub2 to double
  %4 = sext i32 %3 to i64
  %wide.trip.count = zext i32 %n to i64
  br label %invoke.cont

invoke.cont:                                      ; preds = %invoke.cont, %invoke.cont.lr.ph
  %indvars.iv = phi i64 [ 0, %invoke.cont.lr.ph ], [ %indvars.iv.next, %invoke.cont ]
  %5 = mul nsw i64 %indvars.iv, %4
  %arrayidx.i = getelementptr inbounds double, double* %2, i64 %5
  %6 = trunc i64 %indvars.iv to i32
  %conv = sitofp i32 %6 to double
  %mul = fmul fast double %sub, %conv
  %7 = fdiv fast double %mul, %conv3
  %add = fadd fast double %7, %x1
  store double %add, double* %arrayidx.i, align 8, !tbaa !46
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %nrvo.skipdtor, label %invoke.cont, !llvm.loop !143

if.else:                                          ; preds = %entry
  %cmp4 = icmp eq i32 %n, 1
  %cmp5 = fcmp fast oeq double %x1, %x2
  %or.cond = and i1 %cmp5, %cmp4
  br i1 %or.cond, label %invoke.cont8, label %if.else10

invoke.cont8:                                     ; preds = %if.else
  %data_.i43 = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %agg.result, i64 0, i32 0
  %8 = load double*, double** %data_.i43, align 8, !tbaa !142
  store double %x1, double* %8, align 8, !tbaa !46
  br label %nrvo.skipdtor

if.else10:                                        ; preds = %if.else
  br i1 %cmp4, label %if.then12, label %nrvo.skipdtor

if.then12:                                        ; preds = %if.else10
  %exception = call i8* @__cxa_allocate_exception(i64 40) #4
  %9 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #4
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %11 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %10, %union.anon** %11, align 8, !tbaa !13
  %12 = bitcast %union.anon* %10 to i8*
  %13 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #4
  store i64 46, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i45 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.then12
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i45, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %14 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %14, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(46) %call5.i.i.i10.i45, i8* nonnull align 1 dereferenceable(46) getelementptr inbounds ([47 x i8], [47 x i8]* @.str.82, i64 0, i64 0), i64 46, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %14, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i45, i64 %14
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #4
  %15 = bitcast i8* %exception to %"class.adept::invalid_operation"*
  invoke void @_ZN5adept17invalid_operationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %15, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont17 unwind label %lpad16

invoke.cont17:                                    ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_operationE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad16

ehcleanup.thread:                                 ; preds = %if.then12
  %16 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #4
  br label %cleanup.action

lpad16:                                           ; preds = %invoke.cont17, %call5.i.i.i10.i.noexc
  %cleanup.isactive.0 = phi i1 [ false, %invoke.cont17 ], [ true, %call5.i.i.i10.i.noexc ]
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %18, %12
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i

if.then.i.i:                                      ; preds = %lpad16
  call void @_ZdlPv(i8* %18) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #4
  br i1 %cleanup.isactive.0, label %cleanup.action, label %ehcleanup23

ehcleanup:                                        ; preds = %lpad16
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #4
  br i1 %cleanup.isactive.0, label %cleanup.action, label %ehcleanup23

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i, %ehcleanup.thread
  %.pn48 = phi { i8*, i32 } [ %16, %ehcleanup.thread ], [ %17, %ehcleanup ], [ %17, %if.then.i.i ]
  call void @__cxa_free_exception(i8* %exception) #4
  br label %ehcleanup23

nrvo.skipdtor:                                    ; preds = %if.else10, %invoke.cont8, %invoke.cont
  ret void

ehcleanup23:                                      ; preds = %cleanup.action, %ehcleanup, %if.then.i.i
  %.pn40 = phi { i8*, i32 } [ %.pn48, %cleanup.action ], [ %17, %ehcleanup ], [ %17, %if.then.i.i ]
  %19 = load %"class.adept::Storage.14"*, %"class.adept::Storage.14"** %storage_.i, align 8, !tbaa !139
  %tobool.not.i = icmp eq %"class.adept::Storage.14"* %19, null
  br i1 %tobool.not.i, label %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit, label %if.then.i

if.then.i:                                        ; preds = %ehcleanup23
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage.14"* nonnull dereferenceable(20) %19)
          to label %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %if.then.i
  %20 = landingpad { i8*, i32 }
          catch i8* null
  %21 = extractvalue { i8*, i32 } %20, 0
  call void @__clang_call_terminate(i8* %21) #35
  unreachable

_ZN5adept5ArrayILi1EdLb0EED2Ev.exit:              ; preds = %if.then.i, %ehcleanup23
  resume { i8*, i32 } %.pn40

unreachable:                                      ; preds = %invoke.cont17
  unreachable
}

; Function Attrs: uwtable mustprogress
define dso_local void @foobar_b(double* readnone %data, double* %datab, i32 %len) local_unnamed_addr #9 {
entry:
  %scale.i.i = alloca double, align 8
  %0 = bitcast double* %scale.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %0) #4
  %conv.i.i = uitofp i32 %len to double
  %div.i.i = fdiv fast double 1.000000e+00, %conv.i.i
  store double %div.i.i, double* %scale.i.i, align 8, !tbaa !46
  tail call void @pushReal8(double %div.i.i)
  call void @popReal8(double* nonnull %scale.i.i)
  %mul.i.i = shl i32 %len, 1
  %i.02.i.i = add i32 %mul.i.i, -1
  %cmp3.i.i = icmp sgt i32 %i.02.i.i, -1
  br i1 %cmp3.i.i, label %for.body.lr.ph.i.i, label %_ZL6ifft_bPdS_j.exit

for.body.lr.ph.i.i:                               ; preds = %entry
  %1 = load double, double* %scale.i.i, align 8, !tbaa !46
  %2 = zext i32 %i.02.i.i to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body.i.i ], [ %2, %for.body.lr.ph.i.i ]
  %arrayidx.i.i = getelementptr inbounds double, double* %datab, i64 %indvars.iv.i
  %3 = load double, double* %arrayidx.i.i, align 8, !tbaa !46
  %mul1.i.i = fmul fast double %3, %1
  store double %mul1.i.i, double* %arrayidx.i.i, align 8, !tbaa !46
  %cmp.i.i = icmp sgt i64 %indvars.iv.i, 0
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1
  br i1 %cmp.i.i, label %for.body.i.i, label %_ZL6ifft_bPdS_j.exit, !llvm.loop !144

_ZL6ifft_bPdS_j.exit:                             ; preds = %for.body.i.i, %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %0) #4
  call fastcc void @_ZL16recursiveApply_bPdS_ij(double* %data, double* %datab, i32 -1, i32 %len)
  call fastcc void @_ZL10scramble_bPdS_j(double* %data, double* %datab, i32 %len)
  call fastcc void @_ZL16recursiveApply_bPdS_ij(double* %data, double* %datab, i32 1, i32 %len)
  call fastcc void @_ZL10scramble_bPdS_j(double* %data, double* %datab, i32 %len)
  ret void
}

; Function Attrs: nofree nounwind uwtable mustprogress
define dso_local void @_Z6foobarPdj(double* %data, i32 %len) #16 {
entry:
  %mul.i.i = shl i32 %len, 1
  %cmp39.not.i.i = icmp eq i32 %mul.i.i, 0
  br i1 %cmp39.not.i.i, label %_ZL8scramblePdj.exit.thread.i, label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %entry
  %cmp934.i.i = icmp sgt i32 %len, 1
  %0 = zext i32 %mul.i.i to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %while.end.i.i, %for.body.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 1, %for.body.lr.ph.i.i ], [ %indvars.iv.next.i.i, %while.end.i.i ]
  %j.040.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %add.i.i, %while.end.i.i ]
  %1 = sext i32 %j.040.i.i to i64
  %cmp1.i.i = icmp slt i64 %indvars.iv.i.i, %1
  br i1 %cmp1.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %sub.i.i = add nsw i32 %j.040.i.i, -1
  %idxprom.i.i = sext i32 %sub.i.i to i64
  %arrayidx.i.i = getelementptr inbounds double, double* %data, i64 %idxprom.i.i
  %2 = add nsw i64 %indvars.iv.i.i, -1
  %arrayidx4.i.i = getelementptr inbounds double, double* %data, i64 %2
  %3 = load double, double* %arrayidx.i.i, align 8, !tbaa !46
  %4 = load double, double* %arrayidx4.i.i, align 8, !tbaa !46
  store double %4, double* %arrayidx.i.i, align 8, !tbaa !46
  store double %3, double* %arrayidx4.i.i, align 8, !tbaa !46
  %arrayidx6.i.i = getelementptr inbounds double, double* %data, i64 %1
  %arrayidx8.i.i = getelementptr inbounds double, double* %data, i64 %indvars.iv.i.i
  %5 = load double, double* %arrayidx6.i.i, align 8, !tbaa !46
  %6 = load double, double* %arrayidx8.i.i, align 8, !tbaa !46
  store double %6, double* %arrayidx6.i.i, align 8, !tbaa !46
  store double %5, double* %arrayidx8.i.i, align 8, !tbaa !46
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i
  %cmp1035.i.i = icmp sgt i32 %j.040.i.i, %len
  %7 = and i1 %cmp934.i.i, %cmp1035.i.i
  br i1 %7, label %while.body.i.i, label %while.end.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %if.end.i.i
  %m.037.i.i = phi i32 [ %shr33.i.i, %while.body.i.i ], [ %len, %if.end.i.i ]
  %j.136.i.i = phi i32 [ %sub11.i.i, %while.body.i.i ], [ %j.040.i.i, %if.end.i.i ]
  %sub11.i.i = sub nsw i32 %j.136.i.i, %m.037.i.i
  %shr33.i.i = lshr i32 %m.037.i.i, 1
  %cmp9.i.i = icmp ugt i32 %m.037.i.i, 3
  %cmp10.i.i = icmp sgt i32 %sub11.i.i, %shr33.i.i
  %8 = and i1 %cmp9.i.i, %cmp10.i.i
  br i1 %8, label %while.body.i.i, label %while.end.i.i, !llvm.loop !145

while.end.i.i:                                    ; preds = %while.body.i.i, %if.end.i.i
  %j.1.lcssa.i.i = phi i32 [ %j.040.i.i, %if.end.i.i ], [ %sub11.i.i, %while.body.i.i ]
  %m.0.lcssa.i.i = phi i32 [ %len, %if.end.i.i ], [ %shr33.i.i, %while.body.i.i ]
  %add.i.i = add nsw i32 %m.0.lcssa.i.i, %j.1.lcssa.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 2
  %cmp.i.i = icmp ult i64 %indvars.iv.next.i.i, %0
  br i1 %cmp.i.i, label %for.body.i.i, label %for.body.lr.ph.i.i6, !llvm.loop !146

_ZL8scramblePdj.exit.thread.i:                    ; preds = %entry
  tail call fastcc void @_ZL14recursiveApplyPdij(double* %data, i32 1, i32 %len) #4
  tail call fastcc void @_ZL14recursiveApplyPdij(double* %data, i32 -1, i32 %len) #4
  br label %_ZL4ifftPdj.exit

for.body.lr.ph.i.i6:                              ; preds = %while.end.i.i
  tail call fastcc void @_ZL14recursiveApplyPdij(double* %data, i32 1, i32 %len) #4
  br label %for.body.i.i10

for.body.i.i10:                                   ; preds = %while.end.i.i32, %for.body.lr.ph.i.i6
  %indvars.iv.i.i7 = phi i64 [ 1, %for.body.lr.ph.i.i6 ], [ %indvars.iv.next.i.i30, %while.end.i.i32 ]
  %j.040.i.i8 = phi i32 [ 1, %for.body.lr.ph.i.i6 ], [ %add.i.i29, %while.end.i.i32 ]
  %9 = sext i32 %j.040.i.i8 to i64
  %cmp1.i.i9 = icmp slt i64 %indvars.iv.i.i7, %9
  br i1 %cmp1.i.i9, label %if.then.i.i17, label %if.end.i.i19

if.then.i.i17:                                    ; preds = %for.body.i.i10
  %sub.i.i11 = add nsw i32 %j.040.i.i8, -1
  %idxprom.i.i12 = sext i32 %sub.i.i11 to i64
  %arrayidx.i.i13 = getelementptr inbounds double, double* %data, i64 %idxprom.i.i12
  %10 = add nsw i64 %indvars.iv.i.i7, -1
  %arrayidx4.i.i14 = getelementptr inbounds double, double* %data, i64 %10
  %11 = load double, double* %arrayidx.i.i13, align 8, !tbaa !46
  %12 = load double, double* %arrayidx4.i.i14, align 8, !tbaa !46
  store double %12, double* %arrayidx.i.i13, align 8, !tbaa !46
  store double %11, double* %arrayidx4.i.i14, align 8, !tbaa !46
  %arrayidx6.i.i15 = getelementptr inbounds double, double* %data, i64 %9
  %arrayidx8.i.i16 = getelementptr inbounds double, double* %data, i64 %indvars.iv.i.i7
  %13 = load double, double* %arrayidx6.i.i15, align 8, !tbaa !46
  %14 = load double, double* %arrayidx8.i.i16, align 8, !tbaa !46
  store double %14, double* %arrayidx6.i.i15, align 8, !tbaa !46
  store double %13, double* %arrayidx8.i.i16, align 8, !tbaa !46
  br label %if.end.i.i19

if.end.i.i19:                                     ; preds = %if.then.i.i17, %for.body.i.i10
  %cmp1035.i.i18 = icmp sgt i32 %j.040.i.i8, %len
  %15 = and i1 %cmp934.i.i, %cmp1035.i.i18
  br i1 %15, label %while.body.i.i26, label %while.end.i.i32

while.body.i.i26:                                 ; preds = %while.body.i.i26, %if.end.i.i19
  %m.037.i.i20 = phi i32 [ %shr33.i.i23, %while.body.i.i26 ], [ %len, %if.end.i.i19 ]
  %j.136.i.i21 = phi i32 [ %sub11.i.i22, %while.body.i.i26 ], [ %j.040.i.i8, %if.end.i.i19 ]
  %sub11.i.i22 = sub nsw i32 %j.136.i.i21, %m.037.i.i20
  %shr33.i.i23 = lshr i32 %m.037.i.i20, 1
  %cmp9.i.i24 = icmp ugt i32 %m.037.i.i20, 3
  %cmp10.i.i25 = icmp sgt i32 %sub11.i.i22, %shr33.i.i23
  %16 = and i1 %cmp9.i.i24, %cmp10.i.i25
  br i1 %16, label %while.body.i.i26, label %while.end.i.i32, !llvm.loop !145

while.end.i.i32:                                  ; preds = %while.body.i.i26, %if.end.i.i19
  %j.1.lcssa.i.i27 = phi i32 [ %j.040.i.i8, %if.end.i.i19 ], [ %sub11.i.i22, %while.body.i.i26 ]
  %m.0.lcssa.i.i28 = phi i32 [ %len, %if.end.i.i19 ], [ %shr33.i.i23, %while.body.i.i26 ]
  %add.i.i29 = add nsw i32 %m.0.lcssa.i.i28, %j.1.lcssa.i.i27
  %indvars.iv.next.i.i30 = add nuw nsw i64 %indvars.iv.i.i7, 2
  %cmp.i.i31 = icmp ult i64 %indvars.iv.next.i.i30, %0
  br i1 %cmp.i.i31, label %for.body.i.i10, label %for.body.lr.ph.i6.i, !llvm.loop !146

for.body.lr.ph.i6.i:                              ; preds = %while.end.i.i32
  tail call fastcc void @_ZL14recursiveApplyPdij(double* %data, i32 -1, i32 %len) #4
  %conv.i.i = uitofp i32 %len to double
  br label %for.body.i10.i

for.body.i10.i:                                   ; preds = %for.body.i10.i, %for.body.lr.ph.i6.i
  %indvars.iv.i7.i = phi i64 [ 0, %for.body.lr.ph.i6.i ], [ %indvars.iv.next.i9.i, %for.body.i10.i ]
  %arrayidx.i8.i = getelementptr inbounds double, double* %data, i64 %indvars.iv.i7.i
  %17 = load double, double* %arrayidx.i8.i, align 8, !tbaa !46
  %18 = fdiv fast double %17, %conv.i.i
  store double %18, double* %arrayidx.i8.i, align 8, !tbaa !46
  %indvars.iv.next.i9.i = add nuw nsw i64 %indvars.iv.i7.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i9.i, %0
  br i1 %exitcond.not.i.i, label %_ZL4ifftPdj.exit, label %for.body.i10.i, !llvm.loop !147

_ZL4ifftPdj.exit:                                 ; preds = %for.body.i10.i, %_ZL8scramblePdj.exit.thread.i
  ret void
}

; Function Attrs: nounwind readnone uwtable willreturn mustprogress
define dso_local zeroext i1 @_Z12isPowerOfTwoi(i32 %x) local_unnamed_addr #17 {
entry:
  %tobool.not = icmp eq i32 %x, 0
  br i1 %tobool.not, label %land.end, label %land.rhs

land.rhs:                                         ; preds = %entry
  %0 = tail call i32 @llvm.ctpop.i32(i32 %x), !range !148
  %tobool1.not = icmp ult i32 %0, 2
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %1 = phi i1 [ false, %entry ], [ %tobool1.not, %land.rhs ]
  ret i1 %1
}

; Function Attrs: norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local i32 @_Z3maxjj(i32 %A, i32 %B) local_unnamed_addr #8 {
entry:
  %cmp = icmp ugt i32 %A, %B
  %retval.0 = select i1 %cmp, i32 %A, i32 %B
  ret i32 %retval.0
}

; Function Attrs: norecurse uwtable mustprogress
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #18 {
entry:
  %start.i = alloca %struct.timeval, align 8
  %end.i = alloca %struct.timeval, align 8
  %start8.i = alloca %struct.timeval, align 8
  %end9.i = alloca %struct.timeval, align 8
  %start35.i = alloca %struct.timeval, align 8
  %end36.i = alloca %struct.timeval, align 8
  %cmp = icmp slt i32 %argc, 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %0 = load i8*, i8** %argv, align 8, !tbaa !29
  %call = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.83, i64 0, i64 0), i8* %0)
  br label %cleanup.cont

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr inbounds i8*, i8** %argv, i64 1
  %1 = load i8*, i8** %arrayidx1, align 8, !tbaa !29
  %call.i = tail call i64 @strtol(i8* nocapture nonnull %1, i8** null, i32 10) #4
  %conv.i = trunc i64 %call.i to i32
  %2 = tail call i32 @llvm.ctpop.i32(i32 %conv.i) #4, !range !148
  %3 = icmp eq i32 %2, 1
  br i1 %3, label %if.end7, label %if.then4

if.then4:                                         ; preds = %if.end
  %4 = load i8*, i8** %argv, align 8, !tbaa !29
  %call6 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.83, i64 0, i64 0), i8* %4)
  br label %cleanup.cont

if.end7:                                          ; preds = %if.end
  %shr = lshr i32 %conv.i, 5
  %cmp.i = icmp eq i32 %shr, 0
  %retval.0.i = select i1 %cmp.i, i32 1, i32 %shr
  %cmp9.not23 = icmp ugt i32 %retval.0.i, %conv.i
  br i1 %cmp9.not23, label %cleanup.cont, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end7
  %5 = bitcast %struct.timeval* %start.i to i8*
  %6 = bitcast %struct.timeval* %end.i to i8*
  %tv_sec.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i, i64 0, i32 0
  %tv_sec1.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i, i64 0, i32 0
  %tv_usec.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end.i, i64 0, i32 1
  %tv_usec2.i.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start.i, i64 0, i32 1
  %7 = bitcast %struct.timeval* %start8.i to i8*
  %8 = bitcast %struct.timeval* %end9.i to i8*
  %tv_sec.i14.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end9.i, i64 0, i32 0
  %tv_sec1.i15.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start8.i, i64 0, i32 0
  %tv_usec.i18.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end9.i, i64 0, i32 1
  %tv_usec2.i19.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start8.i, i64 0, i32 1
  %9 = bitcast %struct.timeval* %start35.i to i8*
  %10 = bitcast %struct.timeval* %end36.i to i8*
  %tv_sec.i1.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end36.i, i64 0, i32 0
  %tv_sec1.i2.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start35.i, i64 0, i32 0
  %tv_usec.i5.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end36.i, i64 0, i32 1
  %tv_usec2.i6.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start35.i, i64 0, i32 1
  br label %for.body

for.body:                                         ; preds = %_ZL13enzyme_sincosdj.exit, %for.body.lr.ph
  %iters.024 = phi i32 [ %retval.0.i, %for.body.lr.ph ], [ %mul.i, %_ZL13enzyme_sincosdj.exit ]
  %call10 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.84, i64 0, i64 0), i32 %iters.024)
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #4
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #4
  %call.i21 = call i32 @gettimeofday(%struct.timeval* nonnull %start.i, i8* null) #4
  %mul.i = shl i32 %iters.024, 1
  %conv.i22 = zext i32 %mul.i to i64
  %11 = shl nuw nsw i64 %conv.i22, 3
  %call1.i = tail call noalias nonnull i8* @_Znam(i64 %11) #34
  %12 = bitcast i8* %call1.i to double*
  %cmp27.not.i = icmp eq i32 %mul.i, 0
  br i1 %cmp27.not.i, label %for.cond.cleanup.i, label %for.body.i

for.cond.cleanup.i:                               ; preds = %for.body.i, %for.body
  tail call void @_Z6foobarPdj(double* nonnull %12, i32 %iters.024)
  %13 = load double, double* %12, align 8, !tbaa !46
  %call4.i = call i32 @gettimeofday(%struct.timeval* nonnull %end.i, i8* null) #4
  %14 = load i64, i64* %tv_sec.i.i, align 8, !tbaa !2
  %15 = load i64, i64* %tv_sec1.i.i, align 8, !tbaa !2
  %sub.i.i = sub nsw i64 %14, %15
  %conv.i.i = sitofp i64 %sub.i.i to double
  %16 = load i64, i64* %tv_usec.i.i, align 8, !tbaa !7
  %17 = load i64, i64* %tv_usec2.i.i, align 8, !tbaa !7
  %sub3.i.i = sub nsw i64 %16, %17
  %conv4.i.i = sitofp i64 %sub3.i.i to double
  %mul.i.i = fmul fast double %conv4.i.i, 0x3EB0C6F7A0B5ED8D
  %add.i.i = fadd fast double %mul.i.i, %conv.i.i
  %conv5.i.i = fptrunc double %add.i.i to float
  %conv6.i = fpext float %conv5.i.i to double
  %call7.i = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.86, i64 0, i64 0), double %conv6.i, double %13)
  tail call void @_ZdaPv(i8* nonnull %call1.i) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #4
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #4
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #4
  %call10.i = call i32 @gettimeofday(%struct.timeval* nonnull %start8.i, i8* null) #4
  %call14.i = tail call noalias nonnull i8* @_Znam(i64 %11) #34
  %18 = bitcast i8* %call14.i to double*
  br i1 %cmp27.not.i, label %for.cond.cleanup19.i, label %for.body20.i

for.body.i:                                       ; preds = %for.body.i, %for.body
  %indvars.iv29.i = phi i64 [ %indvars.iv.next30.i, %for.body.i ], [ 0, %for.body ]
  %arrayidx.i = getelementptr inbounds double, double* %12, i64 %indvars.iv29.i
  store double 2.000000e+00, double* %arrayidx.i, align 8, !tbaa !46
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1
  %exitcond32.not.i = icmp eq i64 %indvars.iv.next30.i, %conv.i22
  br i1 %exitcond32.not.i, label %for.cond.cleanup.i, label %for.body.i, !llvm.loop !149

for.cond.cleanup19.i:                             ; preds = %for.body20.i, %for.cond.cleanup.i
  tail call void @_Z6foobarPdj(double* nonnull %18, i32 %iters.024)
  %19 = load double, double* %18, align 8, !tbaa !46
  %call28.i = call i32 @gettimeofday(%struct.timeval* nonnull %end9.i, i8* null) #4
  %20 = load i64, i64* %tv_sec.i14.i, align 8, !tbaa !2
  %21 = load i64, i64* %tv_sec1.i15.i, align 8, !tbaa !2
  %sub.i16.i = sub nsw i64 %20, %21
  %conv.i17.i = sitofp i64 %sub.i16.i to double
  %22 = load i64, i64* %tv_usec.i18.i, align 8, !tbaa !7
  %23 = load i64, i64* %tv_usec2.i19.i, align 8, !tbaa !7
  %sub3.i20.i = sub nsw i64 %22, %23
  %conv4.i21.i = sitofp i64 %sub3.i20.i to double
  %mul.i22.i = fmul fast double %conv4.i21.i, 0x3EB0C6F7A0B5ED8D
  %add.i23.i = fadd fast double %mul.i22.i, %conv.i17.i
  %conv5.i24.i = fptrunc double %add.i23.i to float
  %conv30.i = fpext float %conv5.i24.i to double
  %call31.i = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([29 x i8], [29 x i8]* @.str.87, i64 0, i64 0), double %conv30.i, double %19)
  tail call void @_ZdaPv(i8* nonnull %call14.i) #32
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #4
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #4
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %10) #4
  %call37.i = call i32 @gettimeofday(%struct.timeval* nonnull %start35.i, i8* null) #4
  %call.i.i = tail call noalias nonnull i8* @_Znam(i64 %11) #34
  %24 = bitcast i8* %call.i.i to double*
  br i1 %cmp27.not.i, label %for.cond.cleanup.thread.i.i, label %for.body.i.i

for.cond.cleanup.thread.i.i:                      ; preds = %for.cond.cleanup19.i
  %call446.i.i = tail call noalias nonnull i8* @_Znam(i64 %11) #34
  %25 = bitcast i8* %call446.i.i to double*
  br label %_ZL13enzyme_sincosdj.exit

for.body10.i.preheader.i:                         ; preds = %for.body.i.i
  %call4.i.i = tail call noalias nonnull i8* @_Znam(i64 %11) #34
  %26 = bitcast i8* %call4.i.i to double*
  br label %for.body10.i.i

for.body.i.i:                                     ; preds = %for.body.i.i, %for.cond.cleanup19.i
  %indvars.iv42.i.i = phi i64 [ %indvars.iv.next43.i.i, %for.body.i.i ], [ 0, %for.cond.cleanup19.i ]
  %arrayidx.i.i = getelementptr inbounds double, double* %24, i64 %indvars.iv42.i.i
  store double 2.000000e+00, double* %arrayidx.i.i, align 8, !tbaa !46
  %indvars.iv.next43.i.i = add nuw nsw i64 %indvars.iv42.i.i, 1
  %exitcond45.not.i.i = icmp eq i64 %indvars.iv.next43.i.i, %conv.i22
  br i1 %exitcond45.not.i.i, label %for.body10.i.preheader.i, label %for.body.i.i, !llvm.loop !150

for.body10.i.i:                                   ; preds = %for.body10.i.i, %for.body10.i.preheader.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %for.body10.i.i ], [ 0, %for.body10.i.preheader.i ]
  %arrayidx12.i.i = getelementptr inbounds double, double* %26, i64 %indvars.iv.i.i
  store double 1.000000e+00, double* %arrayidx12.i.i, align 8, !tbaa !46
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %conv.i22
  br i1 %exitcond.not.i.i, label %_ZL13enzyme_sincosdj.exit, label %for.body10.i.i, !llvm.loop !151

for.body20.i:                                     ; preds = %for.body20.i, %for.cond.cleanup.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %for.body20.i ], [ 0, %for.cond.cleanup.i ]
  %arrayidx22.i = getelementptr inbounds double, double* %18, i64 %indvars.iv.i
  store double 2.000000e+00, double* %arrayidx22.i, align 8, !tbaa !46
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %conv.i22
  br i1 %exitcond.not.i, label %for.cond.cleanup19.i, label %for.body20.i, !llvm.loop !152

_ZL13enzyme_sincosdj.exit:                        ; preds = %for.body10.i.i, %for.cond.cleanup.thread.i.i
  %27 = phi double* [ %25, %for.cond.cleanup.thread.i.i ], [ %26, %for.body10.i.i ]
  %call447.i.i = phi i8* [ %call446.i.i, %for.cond.cleanup.thread.i.i ], [ %call4.i.i, %for.body10.i.i ]
  %28 = load i32, i32* @enzyme_dupnoneed, align 4, !tbaa !49
  call void @diffe_Z6foobarPdj(double* %24, double* %27, i32 %iters.024)
  %29 = load double, double* %27, align 8, !tbaa !46
  tail call void @_ZdaPv(i8* nonnull %call447.i.i) #32
  tail call void @_ZdaPv(i8* nonnull %call.i.i) #32
  %call39.i = call i32 @gettimeofday(%struct.timeval* nonnull %end36.i, i8* null) #4
  %30 = load i64, i64* %tv_sec.i1.i, align 8, !tbaa !2
  %31 = load i64, i64* %tv_sec1.i2.i, align 8, !tbaa !2
  %sub.i3.i = sub nsw i64 %30, %31
  %conv.i4.i = sitofp i64 %sub.i3.i to double
  %32 = load i64, i64* %tv_usec.i5.i, align 8, !tbaa !7
  %33 = load i64, i64* %tv_usec2.i6.i, align 8, !tbaa !7
  %sub3.i7.i = sub nsw i64 %32, %33
  %conv4.i8.i = sitofp i64 %sub3.i7.i to double
  %mul.i9.i = fmul fast double %conv4.i8.i, 0x3EB0C6F7A0B5ED8D
  %add.i10.i = fadd fast double %mul.i9.i, %conv.i4.i
  %conv5.i11.i = fptrunc double %add.i10.i to float
  %conv41.i = fpext float %conv5.i11.i to double
  %call42.i = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.88, i64 0, i64 0), double %conv41.i, double %29)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %10) #4
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #4
  %cmp9.not = icmp ugt i32 %mul.i, %conv.i
  br i1 %cmp9.not, label %cleanup.cont, label %for.body, !llvm.loop !153

cleanup.cont:                                     ; preds = %_ZL13enzyme_sincosdj.exit, %if.end7, %if.then4, %if.then
  %retval.1 = phi i32 [ 1, %if.then ], [ 1, %if.then4 ], [ 0, %if.end7 ], [ 0, %_ZL13enzyme_sincosdj.exit ]
  ret i32 %retval.1
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #19

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept17invalid_operationD0Ev(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %this) unnamed_addr #20 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !20
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !8
  %2 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #4
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #4
  %4 = bitcast %"class.adept::invalid_operation"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #32
  ret void
}

; Function Attrs: nounwind uwtable willreturn mustprogress
define linkonce_odr dso_local i8* @_ZNK5adept9exception4whatEv(%"class.adept::exception"* nonnull dereferenceable(40) %this) unnamed_addr #21 comdat align 2 {
entry:
  %_M_p.i.i = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 0, i32 0
  %0 = load i8*, i8** %_M_p.i.i, align 8, !tbaa !8
  ret i8* %0
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept15array_exceptionD0Ev(%"class.adept::array_exception"* nonnull dereferenceable(40) %this) unnamed_addr #20 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::array_exception", %"class.adept::array_exception"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !20
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::array_exception", %"class.adept::array_exception"* %this, i64 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !8
  %2 = getelementptr inbounds %"class.adept::array_exception", %"class.adept::array_exception"* %this, i64 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #4
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::array_exception", %"class.adept::array_exception"* %this, i64 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #4
  %4 = bitcast %"class.adept::array_exception"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #32
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept9exceptionD0Ev(%"class.adept::exception"* nonnull dereferenceable(40) %this) unnamed_addr #3 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !20
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !8
  %2 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #4
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #4
  %4 = bitcast %"class.adept::exception"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #32
  ret void
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) local_unnamed_addr #22 comdat {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #4
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
define linkonce_odr dso_local void @_ZN5adept20stack_already_activeD0Ev(%"class.adept::stack_already_active"* nonnull dereferenceable(40) %this) unnamed_addr #20 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::stack_already_active", %"class.adept::stack_already_active"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !20
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::stack_already_active", %"class.adept::stack_already_active"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !8
  %2 = getelementptr inbounds %"class.adept::stack_already_active", %"class.adept::stack_already_active"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #4
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::stack_already_active", %"class.adept::stack_already_active"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #4
  %4 = bitcast %"class.adept::stack_already_active"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #32
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept25gradients_not_initializedD0Ev(%"class.adept::gradients_not_initialized"* nonnull dereferenceable(40) %this) unnamed_addr #20 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::gradients_not_initialized", %"class.adept::gradients_not_initialized"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !20
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::gradients_not_initialized", %"class.adept::gradients_not_initialized"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !8
  %2 = getelementptr inbounds %"class.adept::gradients_not_initialized", %"class.adept::gradients_not_initialized"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #4
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::gradients_not_initialized", %"class.adept::gradients_not_initialized"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #4
  %4 = bitcast %"class.adept::gradients_not_initialized"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #32
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept21feature_not_availableD0Ev(%"class.adept::feature_not_available"* nonnull dereferenceable(40) %this) unnamed_addr #20 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::feature_not_available", %"class.adept::feature_not_available"* %this, i64 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !20
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::feature_not_available", %"class.adept::feature_not_available"* %this, i64 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !8
  %2 = getelementptr inbounds %"class.adept::feature_not_available", %"class.adept::feature_not_available"* %this, i64 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #4
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::feature_not_available", %"class.adept::feature_not_available"* %this, i64 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #4
  %4 = bitcast %"class.adept::feature_not_available"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #32
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept41dependents_or_independents_not_identifiedD0Ev(%"class.adept::dependents_or_independents_not_identified"* nonnull dereferenceable(40) %this) unnamed_addr #20 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::dependents_or_independents_not_identified", %"class.adept::dependents_or_independents_not_identified"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !20
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::dependents_or_independents_not_identified", %"class.adept::dependents_or_independents_not_identified"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !8
  %2 = getelementptr inbounds %"class.adept::dependents_or_independents_not_identified", %"class.adept::dependents_or_independents_not_identified"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #4
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::dependents_or_independents_not_identified", %"class.adept::dependents_or_independents_not_identified"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #4
  %4 = bitcast %"class.adept::dependents_or_independents_not_identified"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #32
  ret void
}

; Function Attrs: uwtable mustprogress
define internal fastcc void @_ZL16recursiveApply_bPdS_ij(double* readnone %data, double* %datab, i32 %iSign, i32 %N) unnamed_addr #9 {
entry:
  %arg1 = alloca i32, align 4
  %arg10b = alloca double*, align 8
  %arg2 = alloca i32, align 4
  %wr = alloca double, align 8
  %wi = alloca double, align 8
  %iN45 = alloca i32, align 4
  %0 = bitcast i32* %arg1 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  %1 = bitcast double** %arg10b to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #4
  %2 = bitcast i32* %arg2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4
  %cmp.not = icmp eq i32 %N, 1
  br i1 %cmp.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %div = lshr i32 %N, 1
  store i32 %div, i32* %arg1, align 4, !tbaa !49
  %idx.ext = zext i32 %N to i64
  %add.ptr = getelementptr inbounds double, double* %datab, i64 %idx.ext
  store double* %add.ptr, double** %arg10b, align 8, !tbaa !29
  store i32 %div, i32* %arg2, align 4, !tbaa !49
  %conv = sitofp i32 %iSign to double
  %conv4 = uitofp i32 %N to double
  %div5 = fdiv fast double 0x400921FB544486E0, %conv4
  %3 = tail call fast double @llvm.sin.f64(double %div5)
  %mul = fmul fast double %3, %conv
  %sub = sub nsw i32 0, %iSign
  %conv6 = sitofp i32 %sub to double
  %div8 = fdiv fast double 0x401921FB544486E0, %conv4
  %4 = tail call fast double @llvm.sin.f64(double %div8)
  %mul9 = fmul fast double %4, %conv6
  %5 = fmul fast double %mul, %mul
  %mul11 = fmul fast double %5, -2.000000e+00
  %6 = bitcast double* %wr to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %6) #4
  %7 = bitcast double* %wi to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #4
  %sub12 = add i32 %N, -1
  %8 = bitcast double* %add.ptr to i8*
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.body
  %add.ptr2 = getelementptr inbounds double, double* %data, i64 %idx.ext
  store double %add31, double* %wr, align 8, !tbaa !46
  store double %add35, double* %wi, align 8, !tbaa !46
  %9 = bitcast double** %arg10b to i8**
  tail call void @pushPointer8(i8* %8)
  tail call void @pushInteger4(i32 %div)
  tail call void @pushInteger4(i32 %div)
  call void @popInteger4(i32* nonnull %arg1)
  call void @popInteger4(i32* nonnull %arg2)
  call void @popPointer8(i8** nonnull %9)
  %rem = and i32 %sub12, 1
  %10 = xor i32 %rem, -1
  %sub40 = add i32 %10, %N
  %cmp42171 = icmp sgt i32 %sub40, -1
  br i1 %cmp42171, label %for.body44.lr.ph, label %for.cond.cleanup43

for.body44.lr.ph:                                 ; preds = %for.cond.cleanup
  %11 = bitcast i32* %iN45 to i8*
  br label %for.body44

for.body:                                         ; preds = %for.body, %if.then
  %add35175 = phi double [ 0.000000e+00, %if.then ], [ %add35, %for.body ]
  %add31174 = phi double [ 1.000000e+00, %if.then ], [ %add31, %for.body ]
  %i.0173 = phi i32 [ 0, %if.then ], [ %add36, %for.body ]
  %add = add i32 %i.0173, %N
  tail call void @pushReal8(double %add31174)
  %mul28 = fmul fast double %add31174, %mul11
  %sub30 = fadd fast double %mul28, %add31174
  %12 = fmul fast double %add35175, %mul9
  %add31 = fsub fast double %sub30, %12
  tail call void @pushReal8(double %add35175)
  %mul32 = fmul fast double %add35175, %mul11
  %mul33 = fmul fast double %add31174, %mul9
  %add34 = fadd fast double %add35175, %mul33
  %add35 = fadd fast double %add34, %mul32
  tail call void @pushInteger4(i32 %add)
  %add36 = add nuw nsw i32 %i.0173, 2
  %cmp13.not = icmp ugt i32 %add36, %sub12
  br i1 %cmp13.not, label %for.cond.cleanup, label %for.body, !llvm.loop !154

for.cond.cleanup43:                               ; preds = %for.body44, %for.cond.cleanup
  %13 = load double*, double** %arg10b, align 8, !tbaa !29
  %14 = load i32, i32* %arg2, align 4, !tbaa !49
  call fastcc void @_ZL16recursiveApply_bPdS_ij(double* %add.ptr2, double* %13, i32 %iSign, i32 %14)
  %15 = load i32, i32* %arg1, align 4, !tbaa !49
  call fastcc void @_ZL16recursiveApply_bPdS_ij(double* %data, double* %datab, i32 %iSign, i32 %15)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %6) #4
  br label %if.end

for.body44:                                       ; preds = %for.body44, %for.body44.lr.ph
  %i37.0172 = phi i32 [ %sub40, %for.body44.lr.ph ], [ %sub96, %for.body44 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %11) #4
  call void @popInteger4(i32* nonnull %iN45)
  %16 = load i32, i32* %iN45, align 4, !tbaa !49
  %add48 = add nsw i32 %16, 1
  %idxprom49 = sext i32 %add48 to i64
  %arrayidx50 = getelementptr inbounds double, double* %datab, i64 %idxprom49
  %17 = load double, double* %arrayidx50, align 8, !tbaa !46
  call void @popReal8(double* nonnull %wi)
  call void @popReal8(double* nonnull %wr)
  %add51 = add nuw nsw i32 %i37.0172, 1
  %idxprom52 = sext i32 %add51 to i64
  %arrayidx53 = getelementptr inbounds double, double* %datab, i64 %idxprom52
  %18 = load double, double* %arrayidx53, align 8, !tbaa !46
  %sub54 = fsub fast double %18, %17
  %idxprom55170 = zext i32 %i37.0172 to i64
  %arrayidx56 = getelementptr inbounds double, double* %datab, i64 %idxprom55170
  %19 = load double, double* %arrayidx56, align 8, !tbaa !46
  %20 = load i32, i32* %iN45, align 4, !tbaa !49
  %add57 = add nsw i32 %20, 1
  %idxprom58 = sext i32 %add57 to i64
  %arrayidx59 = getelementptr inbounds double, double* %datab, i64 %idxprom58
  store double 0.000000e+00, double* %arrayidx59, align 8, !tbaa !46
  %21 = load double, double* %arrayidx53, align 8, !tbaa !46
  %add63 = fadd fast double %21, %17
  store double %add63, double* %arrayidx53, align 8, !tbaa !46
  %idxprom67 = sext i32 %20 to i64
  %arrayidx68 = getelementptr inbounds double, double* %datab, i64 %idxprom67
  %22 = load double, double* %arrayidx68, align 8, !tbaa !46
  store double 0.000000e+00, double* %arrayidx68, align 8, !tbaa !46
  %23 = load double, double* %arrayidx56, align 8, !tbaa !46
  %add73 = fadd fast double %23, %22
  store double %add73, double* %arrayidx56, align 8, !tbaa !46
  %sub76 = fsub fast double %19, %22
  %24 = load double, double* %arrayidx59, align 8, !tbaa !46
  %25 = load double, double* %wr, align 8, !tbaa !46
  %mul80 = fmul fast double %25, %sub54
  %add81 = fadd fast double %mul80, %24
  %26 = load double, double* %wi, align 8, !tbaa !46
  %27 = fmul fast double %26, %sub76
  %sub83 = fsub fast double %add81, %27
  store double %sub83, double* %arrayidx59, align 8, !tbaa !46
  %28 = load double, double* %arrayidx68, align 8, !tbaa !46
  %mul89 = fmul fast double %26, %sub54
  %mul91 = fmul fast double %25, %sub76
  %add90 = fadd fast double %mul89, %mul91
  %add92 = fadd fast double %add90, %28
  store double %add92, double* %arrayidx68, align 8, !tbaa !46
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %11) #4
  %sub96 = add nsw i32 %i37.0172, -2
  %cmp42 = icmp sgt i32 %i37.0172, 1
  br i1 %cmp42, label %for.body44, label %for.cond.cleanup43, !llvm.loop !155

if.end:                                           ; preds = %for.cond.cleanup43, %entry
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #4
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret void
}

; Function Attrs: uwtable mustprogress
define internal fastcc void @_ZL10scramble_bPdS_j(double* nocapture readnone %data, double* nocapture %datab, i32 %N) unnamed_addr #9 {
for.body.lr.ph:
  %j = alloca i32, align 4
  %branch = alloca i32, align 4
  %adCount18 = alloca i32, align 4
  %0 = bitcast i32* %j to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %0) #4
  %1 = bitcast i32* %branch to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #4
  %mul = shl i32 %N, 1
  %sub = add i32 %mul, -1
  %cmp283 = icmp sgt i32 %N, 1
  br label %for.body

for.cond13.preheader:                             ; preds = %while.end
  store i32 %add5, i32* %j, align 4
  %cmp1480 = icmp sgt i32 %sub, 0
  br i1 %cmp1480, label %for.body16.lr.ph, label %for.cond.cleanup15

for.body16.lr.ph:                                 ; preds = %for.cond13.preheader
  %2 = bitcast i32* %adCount18 to i8*
  br label %for.body16

for.body:                                         ; preds = %while.end, %for.body.lr.ph
  %sub4.lcssa93 = phi i32 [ 1, %for.body.lr.ph ], [ %add5, %while.end ]
  %i.089 = phi i32 [ 1, %for.body.lr.ph ], [ %add6, %while.end ]
  %cmp1 = icmp sle i32 %sub4.lcssa93, %i.089
  %.sink = zext i1 %cmp1 to i32
  tail call void @pushControl1b(i32 %.sink)
  %cmp384 = icmp sgt i32 %sub4.lcssa93, %N
  %3 = and i1 %cmp283, %cmp384
  br i1 %3, label %while.body, label %while.end

while.body:                                       ; preds = %while.body, %for.body
  %sub491 = phi i32 [ %sub4, %while.body ], [ %sub4.lcssa93, %for.body ]
  %m.086 = phi i32 [ %shr77, %while.body ], [ %N, %for.body ]
  %adCount.085 = phi i32 [ %add, %while.body ], [ 0, %for.body ]
  tail call void @pushInteger4(i32 %sub491)
  %sub4 = sub nsw i32 %sub491, %m.086
  %shr77 = lshr i32 %m.086, 1
  %add = add nuw nsw i32 %adCount.085, 1
  %cmp2 = icmp ugt i32 %m.086, 3
  %cmp3 = icmp sgt i32 %sub4, %shr77
  %4 = and i1 %cmp2, %cmp3
  br i1 %4, label %while.body, label %while.end, !llvm.loop !156

while.end:                                        ; preds = %while.body, %for.body
  %sub4.lcssa94 = phi i32 [ %sub4.lcssa93, %for.body ], [ %sub4, %while.body ]
  %adCount.0.lcssa = phi i32 [ 0, %for.body ], [ %add, %while.body ]
  %m.0.lcssa = phi i32 [ %N, %for.body ], [ %shr77, %while.body ]
  tail call void @pushInteger4(i32 %adCount.0.lcssa)
  tail call void @pushInteger4(i32 %sub4.lcssa94)
  %add5 = add nsw i32 %sub4.lcssa94, %m.0.lcssa
  %add6 = add nuw nsw i32 %i.089, 2
  %cmp.not = icmp ugt i32 %add6, %sub
  br i1 %cmp.not, label %for.cond13.preheader, label %for.body, !llvm.loop !157

for.cond.cleanup15:                               ; preds = %if.end45, %for.cond13.preheader
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #4
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %0) #4
  ret void

for.body16:                                       ; preds = %if.end45, %for.body16.lr.ph
  %i7.081 = phi i32 [ %sub, %for.body16.lr.ph ], [ %sub47, %if.end45 ]
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %2) #4
  call void @popInteger4(i32* nonnull %j)
  call void @popInteger4(i32* nonnull %adCount18)
  %5 = load i32, i32* %adCount18, align 4, !tbaa !49
  %cmp21.not78 = icmp slt i32 %5, 1
  br i1 %cmp21.not78, label %for.end24, label %for.body22

for.body22:                                       ; preds = %for.body22, %for.body16
  %i0.079 = phi i32 [ %inc, %for.body22 ], [ 1, %for.body16 ]
  call void @popInteger4(i32* nonnull %j)
  %inc = add nuw nsw i32 %i0.079, 1
  %6 = load i32, i32* %adCount18, align 4, !tbaa !49
  %cmp21.not.not = icmp slt i32 %i0.079, %6
  br i1 %cmp21.not.not, label %for.body22, label %for.end24, !llvm.loop !158

for.end24:                                        ; preds = %for.body22, %for.body16
  call void @popControl1b(i32* nonnull %branch)
  %7 = load i32, i32* %branch, align 4, !tbaa !49
  %cmp25 = icmp eq i32 %7, 0
  br i1 %cmp25, label %if.then26, label %if.end45

if.then26:                                        ; preds = %for.end24
  %8 = load i32, i32* %j, align 4, !tbaa !49
  %idxprom = sext i32 %8 to i64
  %arrayidx28 = getelementptr inbounds double, double* %datab, i64 %idxprom
  %idxprom29 = sext i32 %i7.081 to i64
  %arrayidx32 = getelementptr inbounds double, double* %datab, i64 %idxprom29
  %9 = load double, double* %arrayidx32, align 8, !tbaa !46
  %10 = load double, double* %arrayidx28, align 8, !tbaa !46
  store double %10, double* %arrayidx32, align 8, !tbaa !46
  store double %9, double* %arrayidx28, align 8, !tbaa !46
  %sub33 = add nsw i32 %8, -1
  %idxprom34 = sext i32 %sub33 to i64
  %arrayidx38 = getelementptr inbounds double, double* %datab, i64 %idxprom34
  %sub39 = add nsw i32 %i7.081, -1
  %11 = zext i32 %sub39 to i64
  %arrayidx44 = getelementptr inbounds double, double* %datab, i64 %11
  %12 = load double, double* %arrayidx44, align 8, !tbaa !46
  %13 = load double, double* %arrayidx38, align 8, !tbaa !46
  store double %13, double* %arrayidx44, align 8, !tbaa !46
  store double %12, double* %arrayidx38, align 8, !tbaa !46
  br label %if.end45

if.end45:                                         ; preds = %if.then26, %for.end24
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %2) #4
  %sub47 = add nsw i32 %i7.081, -2
  %cmp14 = icmp sgt i32 %i7.081, 2
  br i1 %cmp14, label %for.body16, label %for.cond.cleanup15, !llvm.loop !159
}

declare dso_local void @pushReal8(double) local_unnamed_addr #1

declare dso_local void @popReal8(double*) local_unnamed_addr #1

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare double @llvm.sin.f64(double) #10

declare dso_local void @pushInteger4(i32) local_unnamed_addr #1

declare dso_local void @pushPointer8(i8*) local_unnamed_addr #1

declare dso_local void @popInteger4(i32*) local_unnamed_addr #1

declare dso_local void @popPointer8(i8**) local_unnamed_addr #1

declare dso_local void @pushControl1b(i32) local_unnamed_addr #1

declare dso_local void @popControl1b(i32*) local_unnamed_addr #1

; Function Attrs: nofree nounwind uwtable mustprogress
define internal fastcc void @_ZL14recursiveApplyPdij(double* %data, i32 %iSign, i32 %N) unnamed_addr #16 {
entry:
  %cmp = icmp eq i32 %N, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %div = lshr i32 %N, 1
  tail call fastcc void @_ZL14recursiveApplyPdij(double* %data, i32 %iSign, i32 %div)
  %idx.ext = zext i32 %N to i64
  %add.ptr = getelementptr inbounds double, double* %data, i64 %idx.ext
  tail call fastcc void @_ZL14recursiveApplyPdij(double* %add.ptr, i32 %iSign, i32 %div)
  %conv = sitofp i32 %iSign to double
  %conv2 = uitofp i32 %N to double
  %div3 = fdiv fast double 0x400921FB54442D18, %conv2
  %0 = tail call fast double @llvm.sin.f64(double %div3)
  %mul = fmul fast double %0, %conv
  %sub = sub nsw i32 0, %iSign
  %conv4 = sitofp i32 %sub to double
  %div6 = fdiv fast double 0x401921FB54442D18, %conv2
  %1 = tail call fast double @llvm.sin.f64(double %div6)
  %mul7 = fmul fast double %1, %conv4
  %2 = fmul fast double %mul, %mul
  %mul9 = fmul fast double %2, -2.000000e+00
  %cmp10108.not = icmp eq i32 %N, 0
  br i1 %cmp10108.not, label %return, label %for.body

for.body:                                         ; preds = %for.body, %if.end
  %wr.0111 = phi double [ %add47, %for.body ], [ 1.000000e+00, %if.end ]
  %wi.0110 = phi double [ %add51, %for.body ], [ 0.000000e+00, %if.end ]
  %i.0109 = phi i32 [ %add52, %for.body ], [ 0, %if.end ]
  %add = add i32 %i.0109, %N
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds double, double* %data, i64 %idxprom
  %3 = load double, double* %arrayidx, align 8, !tbaa !46
  %mul11 = fmul fast double %3, %wr.0111
  %add12 = add nsw i32 %add, 1
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds double, double* %data, i64 %idxprom13
  %4 = load double, double* %arrayidx14, align 8, !tbaa !46
  %mul15 = fmul fast double %4, %wi.0110
  %sub16 = fsub fast double %mul11, %mul15
  %mul19 = fmul fast double %3, %wi.0110
  %mul23 = fmul fast double %4, %wr.0111
  %add24 = fadd fast double %mul23, %mul19
  %idxprom25 = zext i32 %i.0109 to i64
  %arrayidx26 = getelementptr inbounds double, double* %data, i64 %idxprom25
  %5 = load double, double* %arrayidx26, align 8, !tbaa !46
  %sub27 = fsub fast double %5, %sub16
  store double %sub27, double* %arrayidx, align 8, !tbaa !46
  %add30 = or i32 %i.0109, 1
  %idxprom31 = zext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds double, double* %data, i64 %idxprom31
  %6 = load double, double* %arrayidx32, align 8, !tbaa !46
  %sub33 = fsub fast double %6, %add24
  store double %sub33, double* %arrayidx14, align 8, !tbaa !46
  %7 = load double, double* %arrayidx26, align 8, !tbaa !46
  %add39 = fadd fast double %7, %sub16
  store double %add39, double* %arrayidx26, align 8, !tbaa !46
  %8 = load double, double* %arrayidx32, align 8, !tbaa !46
  %add43 = fadd fast double %8, %add24
  store double %add43, double* %arrayidx32, align 8, !tbaa !46
  %mul44 = fmul fast double %wr.0111, %mul9
  %9 = fmul fast double %wi.0110, %mul7
  %sub46 = fsub fast double %wr.0111, %9
  %add47 = fadd fast double %sub46, %mul44
  %mul48 = fmul fast double %wi.0110, %mul9
  %mul49 = fmul fast double %wr.0111, %mul7
  %add50 = fadd fast double %mul48, %wi.0110
  %add51 = fadd fast double %add50, %mul49
  %add52 = add i32 %i.0109, 2
  %cmp10 = icmp ult i32 %add52, %N
  br i1 %cmp10, label %for.body, label %return, !llvm.loop !160

return:                                           ; preds = %for.body, %if.end, %entry
  ret void
}

; Function Attrs: nofree nounwind willreturn
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #23

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #19

declare dso_local void @_Z17__enzyme_autodiffIvJPFvPdjEiS0_S0_jEET_DpT0_(void (double*, i32)*, i32, double*, double*, i32) local_unnamed_addr #1

declare dso_local i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32), i64* nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #24

; Function Attrs: nounwind
declare dso_local void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8)) unnamed_addr #2

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216)) unnamed_addr #2

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #1

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull dereferenceable(264), i32) local_unnamed_addr #1

; Function Attrs: uwtable
declare dso_local void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8, %"class.std::__cxx11::basic_stringbuf"* nonnull dereferenceable(104)) local_unnamed_addr #6 align 2

declare dso_local nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32), i64, i64, i8*, i64) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16)) local_unnamed_addr #2

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull dereferenceable(8), double) local_unnamed_addr #1

; Function Attrs: nounwind
declare dso_local void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16), %"struct.std::__detail::_List_node_base"*) local_unnamed_addr #2

; Function Attrs: nobuiltin nofree allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) local_unnamed_addr #11

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIPKvEERSoT_(%"class.std::basic_ostream"* nonnull dereferenceable(8), i8*) local_unnamed_addr #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull dereferenceable(8), i64) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare dso_local i32 @posix_memalign(i8**, i64, i64) local_unnamed_addr #19

; Function Attrs: nounwind
declare dso_local void @_ZNSt9bad_allocD1Ev(%"class.std::bad_alloc"* nonnull dereferenceable(8)) unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) local_unnamed_addr #25

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) local_unnamed_addr #26

declare dso_local nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32), i8*, i64) local_unnamed_addr #1

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept5ArrayILi1EdLb0EE6resizeEPKib(%"class.adept::Array.28"* nonnull dereferenceable(24) %this, i32* %dim, i1 zeroext %force_contiguous) local_unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %result.i.i = alloca double*, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp6 = alloca %"class.std::__cxx11::basic_string", align 8
  %storage_ = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %this, i64 0, i32 1
  %0 = load %"class.adept::Storage.14"*, %"class.adept::Storage.14"** %storage_, align 8, !tbaa !139
  %tobool.not = icmp eq %"class.adept::Storage.14"* %0, null
  br i1 %tobool.not, label %for.body.critedge, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage.14"* nonnull dereferenceable(20) %0)
  store %"class.adept::Storage.14"* null, %"class.adept::Storage.14"** %storage_, align 8, !tbaa !139
  br label %for.body.critedge

for.body.critedge:                                ; preds = %if.then, %entry
  %1 = load i32, i32* %dim, align 4, !tbaa !49
  %cmp4 = icmp slt i32 %1, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.body.critedge
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %2 = bitcast i8* %exception to %"class.adept::invalid_dimension"*
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #4
  %4 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #4
  invoke void @_ZN5adept8internal18exception_locationB5cxx11EPKci(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp6, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.95, i64 0, i64 0), i32 1969)
          to label %invoke.cont unwind label %ehcleanup11.thread

invoke.cont:                                      ; preds = %if.then5
  %call3.i.i.i57 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp6, i64 0, i64 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.94, i64 0, i64 0), i64 34)
          to label %call3.i.i.i.noexc unwind label %lpad7

call3.i.i.i.noexc:                                ; preds = %invoke.cont
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %6 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !13, !alias.scope !161
  %_M_p.i.i25.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %_M_p.i.i25.i.i, align 8, !tbaa !8
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 2
  %arraydecay.i.i.i.i = bitcast %union.anon* %8 to i8*
  %cmp.i.i.i = icmp eq i8* %7, %arraydecay.i.i.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %call3.i.i.i.noexc
  %arraydecay.i.i.i = bitcast %union.anon* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %arraydecay.i.i.i, i8* nonnull align 8 dereferenceable(16) %7, i64 16, i1 false) #4
  br label %invoke.cont8

if.else.i.i:                                      ; preds = %call3.i.i.i.noexc
  %_M_p.i23.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %7, i8** %_M_p.i23.i.i, align 8, !tbaa !8, !alias.scope !161
  %_M_allocated_capacity.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 2, i32 0
  %9 = load i64, i64* %_M_allocated_capacity.i.i, align 8, !tbaa !15
  %_M_allocated_capacity.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %9, i64* %_M_allocated_capacity.i.i.i, align 8, !tbaa !15, !alias.scope !161
  br label %invoke.cont8

invoke.cont8:                                     ; preds = %if.else.i.i, %if.then.i.i
  %_M_string_length.i22.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 1
  %10 = load i64, i64* %_M_string_length.i22.i.i, align 8, !tbaa !12
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %10, i64* %_M_string_length.i.i.i, align 8, !tbaa !12, !alias.scope !161
  %11 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i57 to %union.anon**
  store %union.anon* %8, %union.anon** %11, align 8, !tbaa !8
  store i64 0, i64* %_M_string_length.i22.i.i, align 8, !tbaa !12
  store i8 0, i8* %arraydecay.i.i.i.i, align 8, !tbaa !15
  invoke void @_ZN5adept17invalid_dimensionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_dimension"* nonnull dereferenceable(40) %2, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont8
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_dimensionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad9

ehcleanup11.thread:                               ; preds = %if.then5
  %12 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #4
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
  %15 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !8
  %arraydecay.i.i.i.i58 = bitcast %union.anon* %5 to i8*
  %cmp.i.i.i59 = icmp eq i8* %15, %arraydecay.i.i.i.i58
  br i1 %cmp.i.i.i59, label %ehcleanup, label %if.then.i.i60

if.then.i.i60:                                    ; preds = %lpad9
  call void @_ZdlPv(i8* %15) #4
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i60, %lpad9, %lpad7
  %.pn = phi { i8*, i32 } [ %13, %lpad7 ], [ %14, %lpad9 ], [ %14, %if.then.i.i60 ]
  %cleanup.isactive.1 = phi i1 [ true, %lpad7 ], [ %cleanup.isactive.0, %lpad9 ], [ %cleanup.isactive.0, %if.then.i.i60 ]
  %_M_p.i.i.i.i61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp6, i64 0, i32 0, i32 0
  %16 = load i8*, i8** %_M_p.i.i.i.i61, align 8, !tbaa !8
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp6, i64 0, i32 2
  %arraydecay.i.i.i.i62 = bitcast %union.anon* %17 to i8*
  %cmp.i.i.i63 = icmp eq i8* %16, %arraydecay.i.i.i.i62
  br i1 %cmp.i.i.i63, label %ehcleanup11, label %if.then.i.i64

if.then.i.i64:                                    ; preds = %ehcleanup
  call void @_ZdlPv(i8* %16) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #4
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

ehcleanup11:                                      ; preds = %ehcleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #4
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

cleanup.action:                                   ; preds = %ehcleanup11, %if.then.i.i64, %ehcleanup11.thread
  %.pn.pn73 = phi { i8*, i32 } [ %12, %ehcleanup11.thread ], [ %.pn, %ehcleanup11 ], [ %.pn, %if.then.i.i64 ]
  call void @__cxa_free_exception(i8* %exception) #4
  br label %eh.resume

if.else:                                          ; preds = %for.body.critedge
  %cmp16 = icmp eq i32 %1, 0
  br i1 %cmp16, label %_ZN5adept5ArrayILi1EdLb0EE5clearEv.exit, label %for.end, !llvm.loop !164

_ZN5adept5ArrayILi1EdLb0EE5clearEv.exit:          ; preds = %if.else
  %data_.i = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %this, i64 0, i32 0
  store double* null, double** %data_.i, align 8, !tbaa !142
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
  store i32 %1, i32* %19, align 8, !tbaa !165
  %n_links_.i = getelementptr inbounds i8, i8* %call32, i64 12
  %20 = bitcast i8* %n_links_.i to i32*
  store i32 1, i32* %20, align 4, !tbaa !167
  %gradient_index_.i = getelementptr inbounds i8, i8* %call32, i64 16
  %21 = bitcast i8* %gradient_index_.i to i32*
  store i32 -1, i32* %21, align 8, !tbaa !168
  %22 = bitcast double** %result.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #4
  %23 = bitcast double** %result.i.i to i8**
  %conv1.i.i74 = zext i32 %1 to i64
  %mul.i.i = shl nuw nsw i64 %conv1.i.i74, 3
  %call2.i.i = call i32 @posix_memalign(i8** nonnull %23, i64 16, i64 %mul.i.i) #4
  %cmp3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %cmp3.not.i.i, label %invoke.cont34, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %for.end
  %exception.i.i = call i8* @__cxa_allocate_exception(i64 8) #4
  %24 = bitcast i8* %exception.i.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt9bad_alloc, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %24, align 8, !tbaa !20
  invoke void @__cxa_throw(i8* nonnull %exception.i.i, i8* bitcast (i8** @_ZTISt9bad_alloc to i8*), i8* bitcast (void (%"class.std::bad_alloc"*)* @_ZNSt9bad_allocD1Ev to i8*)) #31
          to label %.noexc unwind label %lpad33

.noexc:                                           ; preds = %if.then4.i.i
  unreachable

invoke.cont34:                                    ; preds = %for.end
  %25 = load double*, double** %result.i.i, align 8, !tbaa !29
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #4
  %data_.i67 = bitcast i8* %call32 to double**
  store double* %25, double** %data_.i67, align 8, !tbaa !169
  %26 = load i32, i32* @_ZN5adept8internal26n_storage_objects_created_E, align 4, !tbaa !49
  %inc.i = add nsw i32 %26, 1
  store i32 %inc.i, i32* @_ZN5adept8internal26n_storage_objects_created_E, align 4, !tbaa !49
  %27 = bitcast %"class.adept::Storage.14"** %storage_ to i8**
  store i8* %call32, i8** %27, align 8, !tbaa !139
  %data_ = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %this, i64 0, i32 0
  store double* %25, double** %data_, align 8, !tbaa !142
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
  %0 = load i32, i32* %n_links_, align 4, !tbaa !167
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #4
  %1 = bitcast i8* %exception to %"class.adept::invalid_operation"*
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #4
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #4
  invoke void @_ZN5adept8internal18exception_locationB5cxx11EPKci(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp2, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.97, i64 0, i64 0), i32 112)
          to label %invoke.cont unwind label %ehcleanup7.thread

invoke.cont:                                      ; preds = %if.then
  %call3.i.i.i17 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp2, i64 0, i64 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.96, i64 0, i64 0), i64 57)
          to label %call3.i.i.i.noexc unwind label %lpad3

call3.i.i.i.noexc:                                ; preds = %invoke.cont
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %5 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %4, %union.anon** %5, align 8, !tbaa !13, !alias.scope !170
  %_M_p.i.i25.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 0, i32 0
  %6 = load i8*, i8** %_M_p.i.i25.i.i, align 8, !tbaa !8
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 2
  %arraydecay.i.i.i.i = bitcast %union.anon* %7 to i8*
  %cmp.i.i.i = icmp eq i8* %6, %arraydecay.i.i.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %call3.i.i.i.noexc
  %arraydecay.i.i.i = bitcast %union.anon* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %arraydecay.i.i.i, i8* nonnull align 8 dereferenceable(16) %6, i64 16, i1 false) #4
  br label %invoke.cont4

if.else.i.i:                                      ; preds = %call3.i.i.i.noexc
  %_M_p.i23.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %6, i8** %_M_p.i23.i.i, align 8, !tbaa !8, !alias.scope !170
  %_M_allocated_capacity.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 2, i32 0
  %8 = load i64, i64* %_M_allocated_capacity.i.i, align 8, !tbaa !15
  %_M_allocated_capacity.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %8, i64* %_M_allocated_capacity.i.i.i, align 8, !tbaa !15, !alias.scope !170
  br label %invoke.cont4

invoke.cont4:                                     ; preds = %if.else.i.i, %if.then.i.i
  %_M_string_length.i22.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 1
  %9 = load i64, i64* %_M_string_length.i22.i.i, align 8, !tbaa !12
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %9, i64* %_M_string_length.i.i.i, align 8, !tbaa !12, !alias.scope !170
  %10 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i17 to %union.anon**
  store %union.anon* %7, %union.anon** %10, align 8, !tbaa !8
  store i64 0, i64* %_M_string_length.i22.i.i, align 8, !tbaa !12
  store i8 0, i8* %arraydecay.i.i.i.i, align 8, !tbaa !15
  invoke void @_ZN5adept17invalid_operationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %1, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont4
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_operationE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #31
          to label %unreachable unwind label %lpad5

ehcleanup7.thread:                                ; preds = %if.then
  %11 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #4
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
  %14 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !8
  %arraydecay.i.i.i.i18 = bitcast %union.anon* %4 to i8*
  %cmp.i.i.i19 = icmp eq i8* %14, %arraydecay.i.i.i.i18
  br i1 %cmp.i.i.i19, label %ehcleanup, label %if.then.i.i20

if.then.i.i20:                                    ; preds = %lpad5
  call void @_ZdlPv(i8* %14) #4
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i20, %lpad5, %lpad3
  %.pn = phi { i8*, i32 } [ %12, %lpad3 ], [ %13, %lpad5 ], [ %13, %if.then.i.i20 ]
  %cleanup.isactive.1 = phi i1 [ true, %lpad3 ], [ %cleanup.isactive.0, %lpad5 ], [ %cleanup.isactive.0, %if.then.i.i20 ]
  %_M_p.i.i.i.i21 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp2, i64 0, i32 0, i32 0
  %15 = load i8*, i8** %_M_p.i.i.i.i21, align 8, !tbaa !8
  %16 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp2, i64 0, i32 2
  %arraydecay.i.i.i.i22 = bitcast %union.anon* %16 to i8*
  %cmp.i.i.i23 = icmp eq i8* %15, %arraydecay.i.i.i.i22
  br i1 %cmp.i.i.i23, label %ehcleanup7, label %if.then.i.i24

if.then.i.i24:                                    ; preds = %ehcleanup
  call void @_ZdlPv(i8* %15) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #4
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

ehcleanup7:                                       ; preds = %ehcleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #4
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

cleanup.action:                                   ; preds = %ehcleanup7, %if.then.i.i24, %ehcleanup7.thread
  %.pn.pn29 = phi { i8*, i32 } [ %11, %ehcleanup7.thread ], [ %.pn, %ehcleanup7 ], [ %.pn, %if.then.i.i24 ]
  call void @__cxa_free_exception(i8* %exception) #4
  br label %eh.resume

if.else:                                          ; preds = %entry
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %n_links_, align 4, !tbaa !167
  %cmp11.not = icmp eq i32 %dec, 0
  br i1 %cmp11.not, label %delete.notnull, label %if.end13

delete.notnull:                                   ; preds = %if.else
  %17 = bitcast %"class.adept::Storage.14"* %this to i8**
  %18 = load i8*, i8** %17, align 8, !tbaa !169
  tail call void @free(i8* %18) #4
  %gradient_index_.i = getelementptr inbounds %"class.adept::Storage.14", %"class.adept::Storage.14"* %this, i64 0, i32 3
  %19 = load i32, i32* %gradient_index_.i, align 8, !tbaa !168
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
define linkonce_odr dso_local void @_ZN5adept8internal18exception_locationB5cxx11EPKci(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result, i8* %file, i32 %line) local_unnamed_addr #27 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %s = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %0 = bitcast %"class.std::__cxx11::basic_stringstream"* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 392, i8* nonnull %0) #4
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull dereferenceable(128) %s)
  %add.ptr = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1
  %1 = bitcast %"class.std::basic_ostream.base"* %add.ptr to %"class.std::basic_ostream"*
  %call1.i11 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.98, i64 0, i64 0), i64 5)
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
  %7 = load i32, i32* %6, align 8, !tbaa !173
  %or.i.i.i = or i32 %7, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull dereferenceable(264) %5, i32 %or.i.i.i)
          to label %invoke.cont1 unwind label %lpad

if.else.i:                                        ; preds = %invoke.cont
  %call.i.i12 = call i64 @strlen(i8* nonnull dereferenceable(1) %file) #4
  %call1.i13 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull %file, i64 %call.i.i12)
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %if.else.i, %if.then.i
  %call1.i18 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i64 1)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont1
  %call6 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %1, i32 %line)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont3
  %call1.i23 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call6, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.99, i64 0, i64 0), i64 1)
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
  %16 = load i8*, i8** %_M_p.i.i.i.i.i.i.i, align 8, !tbaa !8
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 2
  %arraydecay.i.i.i.i.i.i.i = bitcast %union.anon* %17 to i8*
  %cmp.i.i.i.i.i.i = icmp eq i8* %16, %arraydecay.i.i.i.i.i.i.i
  br i1 %cmp.i.i.i.i.i.i, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %invoke.cont9
  call void @_ZdlPv(i8* %16) #4
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %if.then.i.i.i.i.i, %invoke.cont9
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %15, align 8, !tbaa !20
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i) #4
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
  store i64 0, i64* %22, align 8, !tbaa !137
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216) %23) #4
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %0) #4
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
  %33 = load i8*, i8** %_M_p.i.i.i.i.i.i.i29, align 8, !tbaa !8
  %34 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 2, i32 2
  %arraydecay.i.i.i.i.i.i.i30 = bitcast %union.anon* %34 to i8*
  %cmp.i.i.i.i.i.i31 = icmp eq i8* %33, %arraydecay.i.i.i.i.i.i.i30
  br i1 %cmp.i.i.i.i.i.i31, label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit37, label %if.then.i.i.i.i.i32

if.then.i.i.i.i.i32:                              ; preds = %lpad
  call void @_ZdlPv(i8* %33) #4
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit37

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit37: ; preds = %if.then.i.i.i.i.i32, %lpad
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %32, align 8, !tbaa !20
  %_M_buf_locale.i.i.i.i33 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i33) #4
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
  store i64 0, i64* %39, align 8, !tbaa !137
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216) %40) #4
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %0) #4
  resume { i8*, i32 } %24
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept17invalid_dimensionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_dimension"* nonnull dereferenceable(40) %this, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %message) unnamed_addr #6 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #4
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !13
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #4
  store i64 27, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %call5.i.i.i10.i15 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %lpad

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i15, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !14
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !15
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(27) %call5.i.i.i10.i15, i8* nonnull align 1 dereferenceable(27) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.85, i64 0, i64 0), i64 27, i1 false) #4
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !12
  %6 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #4
  %7 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %message_.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1
  %8 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %message_.i.i to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !13
  %_M_string_length.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i.i, align 8, !tbaa !12
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
  %11 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i.i.i = icmp eq i8* %11, %.cast.i.i.i
  br i1 %cmp.i.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %11) #4
  br label %_ZN5adept9exceptionD2Ev.exit.i

_ZN5adept9exceptionD2Ev.exit.i:                   ; preds = %if.then.i.i.i.i, %lpad.i
  %12 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %12) #4
  %13 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i18 = icmp eq i8* %13, %3
  br i1 %cmp.i.i.i18, label %ehcleanup, label %if.then.i.i19

invoke.cont4:                                     ; preds = %call5.i.i.i10.i.noexc
  %14 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i = icmp eq i8* %14, %3
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont4
  call void @_ZdlPv(i8* %14) #4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %invoke.cont4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
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
  call void @_ZdlPv(i8* %13) #4
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i19, %lpad, %_ZN5adept9exceptionD2Ev.exit.i
  %.pn = phi { i8*, i32 } [ %15, %lpad ], [ %10, %_ZN5adept9exceptionD2Ev.exit.i ], [ %10, %if.then.i.i19 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #4
  br label %eh.resume

lpad7:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %16 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !20
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %17 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !8
  %cmp.i.i.i.i = icmp eq i8* %17, %.cast.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lpad7
  call void @_ZdlPv(i8* %17) #4
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %lpad7
  %18 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %18) #4
  br label %eh.resume

eh.resume:                                        ; preds = %_ZN5adept9exceptionD2Ev.exit, %ehcleanup
  %.pn12 = phi { i8*, i32 } [ %16, %_ZN5adept9exceptionD2Ev.exit ], [ %.pn, %ehcleanup ]
  resume { i8*, i32 } %.pn12
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept9exceptionD2Ev(%"class.adept::exception"* nonnull dereferenceable(40) %this) unnamed_addr #3 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !20
  %_M_p.i.i.i.i = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i, align 8, !tbaa !8
  %2 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 2
  %arraydecay.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #4
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #4
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept17invalid_dimensionD0Ev(%"class.adept::invalid_dimension"* nonnull dereferenceable(40) %this) unnamed_addr #20 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %0, align 8, !tbaa !20
  %_M_p.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %1 = load i8*, i8** %_M_p.i.i.i.i.i, align 8, !tbaa !8
  %2 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %arraydecay.i.i.i.i.i = bitcast %union.anon* %2 to i8*
  %cmp.i.i.i.i = icmp eq i8* %1, %arraydecay.i.i.i.i.i
  br i1 %cmp.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZdlPv(i8* %1) #4
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::invalid_dimension", %"class.adept::invalid_dimension"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #4
  %4 = bitcast %"class.adept::invalid_dimension"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #32
  ret void
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_fft.cpp() #6 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(%"class.std::ios_base::Init"* nonnull dereferenceable(1) @_ZStL8__ioinit)
  %0 = tail call i32 @atexit(void ()* nonnull @__dtor__ZStL8__ioinit) #4
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E to %union.anon**), align 8, !tbaa !13
  store i16 8236, i16* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 2) to i16*), align 8
  store i64 2, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 2) to i8*), i64 2), align 2, !tbaa !15
  %1 = tail call i32 @atexit(void ()* nonnull @__dtor__ZN5adept8internal16vector_separatorB5cxx11E) #4
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E to %union.anon**), align 8, !tbaa !13
  store i8 123, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 2) to i8*), align 8, !tbaa !15
  store i64 1, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 2) to i8*), i64 1), align 1, !tbaa !15
  %2 = tail call i32 @atexit(void ()* nonnull @__dtor__ZN5adept8internal19vector_print_beforeB5cxx11E) #4
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E to %union.anon**), align 8, !tbaa !13
  store i8 125, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 2) to i8*), align 8, !tbaa !15
  store i64 1, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 2) to i8*), i64 1), align 1, !tbaa !15
  %3 = tail call i32 @atexit(void ()* nonnull @__dtor__ZN5adept8internal18vector_print_afterB5cxx11E) #4
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E to %union.anon**), align 8, !tbaa !13
  store i8 123, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 2) to i8*), align 8, !tbaa !15
  store i64 1, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 2) to i8*), i64 1), align 1, !tbaa !15
  %4 = tail call i32 @atexit(void ()* nonnull @__dtor__ZN5adept8internal21array_opening_bracketB5cxx11E) #4
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E to %union.anon**), align 8, !tbaa !13
  store i8 125, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 2) to i8*), align 8, !tbaa !15
  store i64 1, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 2) to i8*), i64 1), align 1, !tbaa !15
  %5 = tail call i32 @atexit(void ()* nonnull @__dtor__ZN5adept8internal21array_closing_bracketB5cxx11E) #4
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E to %union.anon**), align 8, !tbaa !13
  store i16 8236, i16* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 2) to i16*), align 8
  store i64 2, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 2) to i8*), i64 2), align 2, !tbaa !15
  %6 = tail call i32 @atexit(void ()* nonnull @__dtor__ZN5adept8internal26array_contiguous_separatorB5cxx11E) #4
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E to %union.anon**), align 8, !tbaa !13
  store i16 2604, i16* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 2) to i16*), align 8
  store i64 2, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 2) to i8*), i64 2), align 2, !tbaa !15
  %7 = tail call i32 @atexit(void ()* nonnull @__dtor__ZN5adept8internal30array_non_contiguous_separatorB5cxx11E) #4
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E to %union.anon**), align 8, !tbaa !13
  store i16 31498, i16* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 2) to i16*), align 8
  store i64 2, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 2) to i8*), i64 2), align 2, !tbaa !15
  %8 = tail call i32 @atexit(void ()* nonnull @__dtor__ZN5adept8internal18array_print_beforeB5cxx11E) #4
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E to %union.anon**), align 8, !tbaa !13
  store i8 125, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 2) to i8*), align 8, !tbaa !15
  store i64 1, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 2) to i8*), i64 1), align 1, !tbaa !15
  %9 = tail call i32 @atexit(void ()* nonnull @__dtor__ZN5adept8internal17array_print_afterB5cxx11E) #4
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E to %union.anon**), align 8, !tbaa !13
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(12) bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 2) to i8*), i8* nonnull align 1 dereferenceable(12) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i64 12, i1 false) #4
  store i64 12, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  store i8 0, i8* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 2, i32 1, i64 4), align 4, !tbaa !15
  %10 = tail call i32 @atexit(void ()* nonnull @__dtor__ZN5adept8internal24array_print_empty_beforeB5cxx11E) #4
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E to %union.anon**), align 8, !tbaa !13
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(7) bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 2) to i8*), i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i64 7, i1 false) #4
  store i64 7, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !12
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 2) to i8*), i64 7), align 1, !tbaa !15
  %11 = tail call i32 @atexit(void ()* nonnull @__dtor__ZN5adept8internal23array_print_empty_afterB5cxx11E) #4
  ret void
}

; Function Attrs: uwtable willreturn
define weak_odr hidden %"class.adept::Stack"** @_ZTWN5adept21_stack_current_threadE() local_unnamed_addr #28 comdat {
  ret %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #29

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #30

; Function Attrs: nofree nounwind uwtable mustprogress
define dso_local void @preprocess__Z6foobarPdj(double* %data, i32 %len) #16 {
entry:
  %mul.i.i = shl i32 %len, 1
  %cmp39.not.i.i = icmp eq i32 %mul.i.i, 0
  br i1 %cmp39.not.i.i, label %_ZL8scramblePdj.exit.thread.i, label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %entry
  %cmp934.i.i = icmp sgt i32 %len, 1
  %0 = zext i32 %mul.i.i to i64
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %while.end.i.i, %for.body.lr.ph.i.i
  %tiv3 = phi i64 [ %tiv.next4, %while.end.i.i ], [ 0, %for.body.lr.ph.i.i ]
  %j.040.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %add.i.i, %while.end.i.i ]
  %1 = shl nuw nsw i64 %tiv3, 1
  %2 = add i64 %1, 1
  %tiv.next4 = add nuw nsw i64 %tiv3, 1
  %3 = sext i32 %j.040.i.i to i64
  %cmp1.i.i = icmp slt i64 %2, %3
  br i1 %cmp1.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %sub.i.i = add nsw i32 %j.040.i.i, -1
  %idxprom.i.i = sext i32 %sub.i.i to i64
  %arrayidx.i.i = getelementptr inbounds double, double* %data, i64 %idxprom.i.i
  %4 = add nsw i64 %2, -1
  %arrayidx4.i.i = getelementptr inbounds double, double* %data, i64 %4
  %5 = load double, double* %arrayidx.i.i, align 8, !tbaa !46
  %6 = load double, double* %arrayidx4.i.i, align 8, !tbaa !46
  store double %6, double* %arrayidx.i.i, align 8, !tbaa !46
  store double %5, double* %arrayidx4.i.i, align 8, !tbaa !46
  %arrayidx6.i.i = getelementptr inbounds double, double* %data, i64 %3
  %arrayidx8.i.i = getelementptr inbounds double, double* %data, i64 %2
  %7 = load double, double* %arrayidx6.i.i, align 8, !tbaa !46
  %8 = load double, double* %arrayidx8.i.i, align 8, !tbaa !46
  store double %8, double* %arrayidx6.i.i, align 8, !tbaa !46
  store double %7, double* %arrayidx8.i.i, align 8, !tbaa !46
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i
  %cmp1035.i.i = icmp sgt i32 %j.040.i.i, %len
  %9 = and i1 %cmp934.i.i, %cmp1035.i.i
  br i1 %9, label %while.body.i.i.preheader, label %while.end.i.i

while.body.i.i.preheader:                         ; preds = %if.end.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %while.body.i.i.preheader
  %m.037.i.i = phi i32 [ %shr33.i.i, %while.body.i.i ], [ %len, %while.body.i.i.preheader ]
  %j.136.i.i = phi i32 [ %sub11.i.i, %while.body.i.i ], [ %j.040.i.i, %while.body.i.i.preheader ]
  %sub11.i.i = sub nsw i32 %j.136.i.i, %m.037.i.i
  %shr33.i.i = lshr i32 %m.037.i.i, 1
  %cmp9.i.i = icmp ugt i32 %m.037.i.i, 3
  %cmp10.i.i = icmp sgt i32 %sub11.i.i, %shr33.i.i
  %10 = and i1 %cmp9.i.i, %cmp10.i.i
  br i1 %10, label %while.body.i.i, label %while.end.i.i.loopexit, !llvm.loop !145

while.end.i.i.loopexit:                           ; preds = %while.body.i.i
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.end.i.i.loopexit, %if.end.i.i
  %j.1.lcssa.i.i = phi i32 [ %j.040.i.i, %if.end.i.i ], [ %sub11.i.i, %while.end.i.i.loopexit ]
  %m.0.lcssa.i.i = phi i32 [ %len, %if.end.i.i ], [ %shr33.i.i, %while.end.i.i.loopexit ]
  %add.i.i = add nsw i32 %m.0.lcssa.i.i, %j.1.lcssa.i.i
  %indvars.iv.next.i.i = add nuw nsw i64 %2, 2
  %cmp.i.i = icmp ult i64 %indvars.iv.next.i.i, %0
  br i1 %cmp.i.i, label %for.body.i.i, label %for.body.lr.ph.i.i6, !llvm.loop !146

_ZL8scramblePdj.exit.thread.i:                    ; preds = %entry
  tail call fastcc void @_ZL14recursiveApplyPdij(double* %data, i32 1, i32 %len) #4
  tail call fastcc void @_ZL14recursiveApplyPdij(double* %data, i32 -1, i32 %len) #4
  br label %_ZL4ifftPdj.exit

for.body.lr.ph.i.i6:                              ; preds = %while.end.i.i
  tail call fastcc void @_ZL14recursiveApplyPdij(double* %data, i32 1, i32 %len) #4
  br label %for.body.i.i10

for.body.i.i10:                                   ; preds = %while.end.i.i32, %for.body.lr.ph.i.i6
  %tiv1 = phi i64 [ %tiv.next2, %while.end.i.i32 ], [ 0, %for.body.lr.ph.i.i6 ]
  %j.040.i.i8 = phi i32 [ 1, %for.body.lr.ph.i.i6 ], [ %add.i.i29, %while.end.i.i32 ]
  %11 = shl nuw nsw i64 %tiv1, 1
  %12 = add i64 %11, 1
  %tiv.next2 = add nuw nsw i64 %tiv1, 1
  %13 = sext i32 %j.040.i.i8 to i64
  %cmp1.i.i9 = icmp slt i64 %12, %13
  br i1 %cmp1.i.i9, label %if.then.i.i17, label %if.end.i.i19

if.then.i.i17:                                    ; preds = %for.body.i.i10
  %sub.i.i11 = add nsw i32 %j.040.i.i8, -1
  %idxprom.i.i12 = sext i32 %sub.i.i11 to i64
  %arrayidx.i.i13 = getelementptr inbounds double, double* %data, i64 %idxprom.i.i12
  %14 = add nsw i64 %12, -1
  %arrayidx4.i.i14 = getelementptr inbounds double, double* %data, i64 %14
  %15 = load double, double* %arrayidx.i.i13, align 8, !tbaa !46
  %16 = load double, double* %arrayidx4.i.i14, align 8, !tbaa !46
  store double %16, double* %arrayidx.i.i13, align 8, !tbaa !46
  store double %15, double* %arrayidx4.i.i14, align 8, !tbaa !46
  %arrayidx6.i.i15 = getelementptr inbounds double, double* %data, i64 %13
  %arrayidx8.i.i16 = getelementptr inbounds double, double* %data, i64 %12
  %17 = load double, double* %arrayidx6.i.i15, align 8, !tbaa !46
  %18 = load double, double* %arrayidx8.i.i16, align 8, !tbaa !46
  store double %18, double* %arrayidx6.i.i15, align 8, !tbaa !46
  store double %17, double* %arrayidx8.i.i16, align 8, !tbaa !46
  br label %if.end.i.i19

if.end.i.i19:                                     ; preds = %if.then.i.i17, %for.body.i.i10
  %cmp1035.i.i18 = icmp sgt i32 %j.040.i.i8, %len
  %19 = and i1 %cmp934.i.i, %cmp1035.i.i18
  br i1 %19, label %while.body.i.i26.preheader, label %while.end.i.i32

while.body.i.i26.preheader:                       ; preds = %if.end.i.i19
  br label %while.body.i.i26

while.body.i.i26:                                 ; preds = %while.body.i.i26, %while.body.i.i26.preheader
  %m.037.i.i20 = phi i32 [ %shr33.i.i23, %while.body.i.i26 ], [ %len, %while.body.i.i26.preheader ]
  %j.136.i.i21 = phi i32 [ %sub11.i.i22, %while.body.i.i26 ], [ %j.040.i.i8, %while.body.i.i26.preheader ]
  %sub11.i.i22 = sub nsw i32 %j.136.i.i21, %m.037.i.i20
  %shr33.i.i23 = lshr i32 %m.037.i.i20, 1
  %cmp9.i.i24 = icmp ugt i32 %m.037.i.i20, 3
  %cmp10.i.i25 = icmp sgt i32 %sub11.i.i22, %shr33.i.i23
  %20 = and i1 %cmp9.i.i24, %cmp10.i.i25
  br i1 %20, label %while.body.i.i26, label %while.end.i.i32.loopexit, !llvm.loop !145

while.end.i.i32.loopexit:                         ; preds = %while.body.i.i26
  br label %while.end.i.i32

while.end.i.i32:                                  ; preds = %while.end.i.i32.loopexit, %if.end.i.i19
  %j.1.lcssa.i.i27 = phi i32 [ %j.040.i.i8, %if.end.i.i19 ], [ %sub11.i.i22, %while.end.i.i32.loopexit ]
  %m.0.lcssa.i.i28 = phi i32 [ %len, %if.end.i.i19 ], [ %shr33.i.i23, %while.end.i.i32.loopexit ]
  %add.i.i29 = add nsw i32 %m.0.lcssa.i.i28, %j.1.lcssa.i.i27
  %indvars.iv.next.i.i30 = add nuw nsw i64 %12, 2
  %cmp.i.i31 = icmp ult i64 %indvars.iv.next.i.i30, %0
  br i1 %cmp.i.i31, label %for.body.i.i10, label %for.body.lr.ph.i6.i, !llvm.loop !146

for.body.lr.ph.i6.i:                              ; preds = %while.end.i.i32
  tail call fastcc void @_ZL14recursiveApplyPdij(double* %data, i32 -1, i32 %len) #4
  %conv.i.i = uitofp i32 %len to double
  br label %for.body.i10.i

for.body.i10.i:                                   ; preds = %for.body.i10.i, %for.body.lr.ph.i6.i
  %tiv = phi i64 [ %tiv.next, %for.body.i10.i ], [ 0, %for.body.lr.ph.i6.i ]
  %tiv.next = add nuw nsw i64 %tiv, 1
  %arrayidx.i8.i = getelementptr inbounds double, double* %data, i64 %tiv
  %21 = load double, double* %arrayidx.i8.i, align 8, !tbaa !46
  %22 = fdiv fast double %21, %conv.i.i
  store double %22, double* %arrayidx.i8.i, align 8, !tbaa !46
  %indvars.iv.next.i9.i = add nuw nsw i64 %tiv, 1
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i9.i, %0
  br i1 %exitcond.not.i.i, label %_ZL4ifftPdj.exit.loopexit, label %for.body.i10.i, !llvm.loop !147

_ZL4ifftPdj.exit.loopexit:                        ; preds = %for.body.i10.i
  br label %_ZL4ifftPdj.exit

_ZL4ifftPdj.exit:                                 ; preds = %_ZL4ifftPdj.exit.loopexit, %_ZL8scramblePdj.exit.thread.i
  ret void
}

; Function Attrs: nofree nounwind uwtable mustprogress
define internal void @diffe_Z6foobarPdj(double* %data, double* %"data'", i32 %len) #16 {
entry:
  %"iv'ac" = alloca i64, align 8
  %"iv1'ac" = alloca i64, align 8
  %"iv3'ac" = alloca i64, align 8
  %"iv6'ac" = alloca i64, align 8
  %"iv8'ac" = alloca i64, align 8
  %"'de" = alloca double, align 8
  store double 0.000000e+00, double* %"'de", align 8
  %j.040.i.i_cache = alloca i32*, align 8
  %"'de16" = alloca double, align 8
  store double 0.000000e+00, double* %"'de16", align 8
  %"'de19" = alloca double, align 8
  store double 0.000000e+00, double* %"'de19", align 8
  %"'de20" = alloca double, align 8
  store double 0.000000e+00, double* %"'de20", align 8
  %tapeld_cache = alloca { i8*, i8*, double*, double* }, align 32, !node !179
  %tapeld40_cache = alloca { i8*, i8*, double*, double* }, align 32, !node !179
  %"'de48" = alloca double, align 8
  store double 0.000000e+00, double* %"'de48", align 8
  %j.040.i.i8_cache = alloca i32*, align 8
  %"'de58" = alloca double, align 8
  store double 0.000000e+00, double* %"'de58", align 8
  %"'de62" = alloca double, align 8
  store double 0.000000e+00, double* %"'de62", align 8
  %"'de63" = alloca double, align 8
  store double 0.000000e+00, double* %"'de63", align 8
  %"'de88" = alloca double, align 8
  store double 0.000000e+00, double* %"'de88", align 8
  %"'de90" = alloca double, align 8
  store double 0.000000e+00, double* %"'de90", align 8
  %mul.i.i = shl i32 %len, 1, !node !179
  %cmp39.not.i.i = icmp eq i32 %mul.i.i, 0
  br i1 %cmp39.not.i.i, label %_ZL8scramblePdj.exit.thread.i, label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %entry
  %cmp934.i.i = icmp sgt i32 %len, 1
  %0 = zext i32 %mul.i.i to i64, !node !179
  %1 = icmp ugt i64 %0, 3
  %umax = select i1 %1, i64 %0, i64 3
  %2 = add nsw i64 %umax, -2
  %3 = lshr i64 %2, 1
  %4 = add nuw i64 %3, 1
  %mallocsize = mul nuw nsw i64 %4, 4
  %malloccall = tail call noalias nonnull i8* @malloc(i64 %mallocsize)
  %j.040.i.i_malloccache = bitcast i8* %malloccall to i32*
  store i32* %j.040.i.i_malloccache, i32** %j.040.i.i_cache, align 4, !invariant.group !180
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %while.end.i.i, %for.body.lr.ph.i.i
  %iv = phi i64 [ %iv.next, %while.end.i.i ], [ 0, %for.body.lr.ph.i.i ]
  %j.040.i.i = phi i32 [ 1, %for.body.lr.ph.i.i ], [ %add.i.i, %while.end.i.i ], !node !179
  %5 = load i32*, i32** %j.040.i.i_cache, align 8, !dereferenceable !181, !invariant.group !180
  %6 = getelementptr inbounds i32, i32* %5, i64 %iv, !node !179
  store i32 %j.040.i.i, i32* %6, align 4, !invariant.group !182
  %iv.next = add nuw nsw i64 %iv, 1
  %7 = shl nuw nsw i64 %iv, 1
  %8 = add i64 %7, 1
  %9 = sext i32 %j.040.i.i to i64, !node !179
  %cmp1.i.i = icmp slt i64 %8, %9
  br i1 %cmp1.i.i, label %if.then.i.i, label %if.end.i.i

if.then.i.i:                                      ; preds = %for.body.i.i
  %sub.i.i = add nsw i32 %j.040.i.i, -1, !node !179
  %idxprom.i.i = sext i32 %sub.i.i to i64, !node !179
  %"arrayidx.i.i'ipg" = getelementptr inbounds double, double* %"data'", i64 %idxprom.i.i, !node !179
  %10 = add nsw i64 %8, -1
  %"arrayidx4.i.i'ipg" = getelementptr inbounds double, double* %"data'", i64 %10, !node !179
  %"arrayidx6.i.i'ipg" = getelementptr inbounds double, double* %"data'", i64 %9, !node !179
  %"arrayidx8.i.i'ipg" = getelementptr inbounds double, double* %"data'", i64 %8, !node !179
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %if.then.i.i, %for.body.i.i
  %cmp1035.i.i = icmp sgt i32 %j.040.i.i, %len
  %11 = and i1 %cmp934.i.i, %cmp1035.i.i
  br i1 %11, label %while.body.i.i.preheader, label %while.end.i.i

while.body.i.i.preheader:                         ; preds = %if.end.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %while.body.i.i.preheader
  %iv1 = phi i64 [ %iv.next2, %while.body.i.i ], [ 0, %while.body.i.i.preheader ]
  %m.037.i.i = phi i32 [ %shr33.i.i, %while.body.i.i ], [ %len, %while.body.i.i.preheader ], !node !179
  %j.136.i.i = phi i32 [ %sub11.i.i, %while.body.i.i ], [ %j.040.i.i, %while.body.i.i.preheader ], !node !179
  %iv.next2 = add nuw nsw i64 %iv1, 1
  %sub11.i.i = sub nsw i32 %j.136.i.i, %m.037.i.i, !node !179
  %shr33.i.i = lshr i32 %m.037.i.i, 1, !node !179
  %cmp9.i.i = icmp ugt i32 %m.037.i.i, 3
  %cmp10.i.i = icmp sgt i32 %sub11.i.i, %shr33.i.i
  %12 = and i1 %cmp9.i.i, %cmp10.i.i
  br i1 %12, label %while.body.i.i, label %while.end.i.i.loopexit, !llvm.loop !145

while.end.i.i.loopexit:                           ; preds = %while.body.i.i
  br label %while.end.i.i

while.end.i.i:                                    ; preds = %while.end.i.i.loopexit, %if.end.i.i
  %j.1.lcssa.i.i = phi i32 [ %j.040.i.i, %if.end.i.i ], [ %sub11.i.i, %while.end.i.i.loopexit ], !node !179
  %m.0.lcssa.i.i = phi i32 [ %len, %if.end.i.i ], [ %shr33.i.i, %while.end.i.i.loopexit ], !node !179
  %add.i.i = add nsw i32 %m.0.lcssa.i.i, %j.1.lcssa.i.i, !node !179
  %indvars.iv.next.i.i = add nuw nsw i64 %8, 2
  %cmp.i.i = icmp ult i64 %indvars.iv.next.i.i, %0
  br i1 %cmp.i.i, label %for.body.i.i, label %for.body.lr.ph.i.i6, !llvm.loop !146

_ZL8scramblePdj.exit.thread.i:                    ; preds = %entry
  %_augmented = call fastcc i8* @augmented__ZL14recursiveApplyPdij.4(double* %data, double* %"data'", i32 1, i32 %len), !node !179
  %13 = bitcast i8* %_augmented to { i8*, i8*, double*, double* }*, !node !179
  %tapeld = load { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %13, align 8, !node !179, !enzyme_mustcache !183
  store { i8*, i8*, double*, double* } %tapeld, { i8*, i8*, double*, double* }* %tapeld_cache, align 32, !invariant.group !184
  tail call void @free(i8* nonnull %_augmented), !node !179
  br label %_ZL4ifftPdj.exit

for.body.lr.ph.i.i6:                              ; preds = %while.end.i.i
  %_augmented39 = call fastcc i8* @augmented__ZL14recursiveApplyPdij.4(double* %data, double* %"data'", i32 1, i32 %len), !node !179
  %14 = bitcast i8* %_augmented39 to { i8*, i8*, double*, double* }*, !node !179
  %tapeld40 = load { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %14, align 8, !node !179, !enzyme_mustcache !183
  store { i8*, i8*, double*, double* } %tapeld40, { i8*, i8*, double*, double* }* %tapeld40_cache, align 32, !invariant.group !185
  tail call void @free(i8* nonnull %_augmented39), !node !179
  %15 = icmp ugt i64 %0, 3
  %umax5 = select i1 %15, i64 %0, i64 3
  %16 = add nsw i64 %umax5, -2
  %17 = lshr i64 %16, 1
  %18 = add nuw i64 %17, 1
  %mallocsize49 = mul nuw nsw i64 %18, 4
  %malloccall50 = tail call noalias nonnull i8* @malloc(i64 %mallocsize49)
  %j.040.i.i8_malloccache = bitcast i8* %malloccall50 to i32*
  store i32* %j.040.i.i8_malloccache, i32** %j.040.i.i8_cache, align 4, !invariant.group !186
  br label %for.body.i.i10

for.body.i.i10:                                   ; preds = %while.end.i.i32, %for.body.lr.ph.i.i6
  %iv3 = phi i64 [ %iv.next4, %while.end.i.i32 ], [ 0, %for.body.lr.ph.i.i6 ]
  %j.040.i.i8 = phi i32 [ 1, %for.body.lr.ph.i.i6 ], [ %add.i.i29, %while.end.i.i32 ], !node !179
  %19 = load i32*, i32** %j.040.i.i8_cache, align 8, !dereferenceable !181, !invariant.group !186
  %20 = getelementptr inbounds i32, i32* %19, i64 %iv3, !node !179
  store i32 %j.040.i.i8, i32* %20, align 4, !invariant.group !187
  %iv.next4 = add nuw nsw i64 %iv3, 1
  %21 = shl nuw nsw i64 %iv3, 1
  %22 = add i64 %21, 1
  %23 = sext i32 %j.040.i.i8 to i64, !node !179
  %cmp1.i.i9 = icmp slt i64 %22, %23
  br i1 %cmp1.i.i9, label %if.then.i.i17, label %if.end.i.i19

if.then.i.i17:                                    ; preds = %for.body.i.i10
  %sub.i.i11 = add nsw i32 %j.040.i.i8, -1, !node !179
  %idxprom.i.i12 = sext i32 %sub.i.i11 to i64, !node !179
  %"arrayidx.i.i13'ipg" = getelementptr inbounds double, double* %"data'", i64 %idxprom.i.i12, !node !179
  %24 = add nsw i64 %22, -1
  %"arrayidx4.i.i14'ipg" = getelementptr inbounds double, double* %"data'", i64 %24, !node !179
  %"arrayidx6.i.i15'ipg" = getelementptr inbounds double, double* %"data'", i64 %23, !node !179
  %"arrayidx8.i.i16'ipg" = getelementptr inbounds double, double* %"data'", i64 %22, !node !179
  br label %if.end.i.i19

if.end.i.i19:                                     ; preds = %if.then.i.i17, %for.body.i.i10
  %cmp1035.i.i18 = icmp sgt i32 %j.040.i.i8, %len
  %25 = and i1 %cmp934.i.i, %cmp1035.i.i18
  br i1 %25, label %while.body.i.i26.preheader, label %while.end.i.i32

while.body.i.i26.preheader:                       ; preds = %if.end.i.i19
  br label %while.body.i.i26

while.body.i.i26:                                 ; preds = %while.body.i.i26, %while.body.i.i26.preheader
  %iv6 = phi i64 [ %iv.next7, %while.body.i.i26 ], [ 0, %while.body.i.i26.preheader ]
  %m.037.i.i20 = phi i32 [ %shr33.i.i23, %while.body.i.i26 ], [ %len, %while.body.i.i26.preheader ], !node !179
  %j.136.i.i21 = phi i32 [ %sub11.i.i22, %while.body.i.i26 ], [ %j.040.i.i8, %while.body.i.i26.preheader ], !node !179
  %iv.next7 = add nuw nsw i64 %iv6, 1
  %sub11.i.i22 = sub nsw i32 %j.136.i.i21, %m.037.i.i20, !node !179
  %shr33.i.i23 = lshr i32 %m.037.i.i20, 1, !node !179
  %cmp9.i.i24 = icmp ugt i32 %m.037.i.i20, 3
  %cmp10.i.i25 = icmp sgt i32 %sub11.i.i22, %shr33.i.i23
  %26 = and i1 %cmp9.i.i24, %cmp10.i.i25
  br i1 %26, label %while.body.i.i26, label %while.end.i.i32.loopexit, !llvm.loop !145

while.end.i.i32.loopexit:                         ; preds = %while.body.i.i26
  br label %while.end.i.i32

while.end.i.i32:                                  ; preds = %while.end.i.i32.loopexit, %if.end.i.i19
  %j.1.lcssa.i.i27 = phi i32 [ %j.040.i.i8, %if.end.i.i19 ], [ %sub11.i.i22, %while.end.i.i32.loopexit ], !node !179
  %m.0.lcssa.i.i28 = phi i32 [ %len, %if.end.i.i19 ], [ %shr33.i.i23, %while.end.i.i32.loopexit ], !node !179
  %add.i.i29 = add nsw i32 %m.0.lcssa.i.i28, %j.1.lcssa.i.i27, !node !179
  %indvars.iv.next.i.i30 = add nuw nsw i64 %22, 2
  %cmp.i.i31 = icmp ult i64 %indvars.iv.next.i.i30, %0
  br i1 %cmp.i.i31, label %for.body.i.i10, label %for.body.lr.ph.i6.i, !llvm.loop !146

for.body.lr.ph.i6.i:                              ; preds = %while.end.i.i32
  %conv.i.i = uitofp i32 %len to double, !node !179
  %27 = add nsw i64 %0, -1, !node !179
  br label %for.body.i10.i

for.body.i10.i:                                   ; preds = %for.body.i10.i, %for.body.lr.ph.i6.i
  %iv8 = phi i64 [ %iv.next9, %for.body.i10.i ], [ 0, %for.body.lr.ph.i6.i ]
  %iv.next9 = add nuw nsw i64 %iv8, 1
  %"arrayidx.i8.i'ipg" = getelementptr inbounds double, double* %"data'", i64 %iv8, !node !179
  %exitcond.not.i.i = icmp eq i64 %iv.next9, %0
  br i1 %exitcond.not.i.i, label %_ZL4ifftPdj.exit.loopexit, label %for.body.i10.i, !llvm.loop !147

_ZL4ifftPdj.exit.loopexit:                        ; preds = %for.body.i10.i
  br label %_ZL4ifftPdj.exit

_ZL4ifftPdj.exit:                                 ; preds = %_ZL4ifftPdj.exit.loopexit, %_ZL8scramblePdj.exit.thread.i
  br label %invert_ZL4ifftPdj.exit

invertentry:                                      ; preds = %invert_ZL8scramblePdj.exit.thread.i, %invertfor.body.lr.ph.i.i
  ret void

invertfor.body.lr.ph.i.i:                         ; preds = %invertfor.body.i.i
  %28 = load i64, i64* %"iv'ac", align 8
  %forfree = load i32*, i32** %j.040.i.i_cache, align 4, !dereferenceable !188, !invariant.group !180
  %29 = bitcast i32* %forfree to i8*
  tail call void @free(i8* nonnull %29)
  br label %invertentry

invertfor.body.i.i:                               ; preds = %invertif.end.i.i, %invertif.then.i.i
  %30 = load i64, i64* %"iv'ac", align 8
  %31 = icmp eq i64 %30, 0
  %32 = xor i1 %31, true
  br i1 %31, label %invertfor.body.lr.ph.i.i, label %incinvertfor.body.i.i

incinvertfor.body.i.i:                            ; preds = %invertfor.body.i.i
  %33 = load i64, i64* %"iv'ac", align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %"iv'ac", align 8
  br label %invertwhile.end.i.i

invertif.then.i.i:                                ; preds = %invertif.end.i.i
  %35 = load i64, i64* %"iv'ac", align 8
  %_unwrap = shl nuw nsw i64 %35, 1
  %_unwrap10 = add i64 %_unwrap, 1
  %"arrayidx8.i.i'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %_unwrap10
  %36 = load double, double* %"arrayidx8.i.i'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx8.i.i'ipg_unwrap", align 8
  %37 = load double, double* %"'de", align 8
  %38 = fadd fast double %37, %36
  store double %38, double* %"'de", align 8
  %39 = load i64, i64* %"iv'ac", align 8
  %mul.i.i_unwrap = shl i32 %len, 1
  %_unwrap11 = zext i32 %mul.i.i_unwrap to i64
  %_unwrap12 = icmp ugt i64 %_unwrap11, 3
  %umax_unwrap = select i1 %_unwrap12, i64 %_unwrap11, i64 3
  %_unwrap13 = add nsw i64 %umax_unwrap, -2
  %_unwrap14 = lshr i64 %_unwrap13, 1
  %40 = add nuw i64 %_unwrap14, 1
  %41 = load i32*, i32** %j.040.i.i_cache, align 8, !dereferenceable !181, !invariant.group !180
  %42 = load i64, i64* %"iv'ac", align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4, !invariant.group !182
  %_unwrap15 = sext i32 %44 to i64
  %"arrayidx6.i.i'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %_unwrap15
  %45 = load double, double* %"arrayidx6.i.i'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx6.i.i'ipg_unwrap", align 8
  %46 = load double, double* %"'de16", align 8
  %47 = fadd fast double %46, %45
  store double %47, double* %"'de16", align 8
  %48 = load double, double* %"'de16", align 8
  store double 0.000000e+00, double* %"'de16", align 8
  %49 = load double, double* %"arrayidx8.i.i'ipg_unwrap", align 8
  %50 = fadd fast double %49, %48
  store double %50, double* %"arrayidx8.i.i'ipg_unwrap", align 8
  %51 = load double, double* %"'de", align 8
  store double 0.000000e+00, double* %"'de", align 8
  %52 = load double, double* %"arrayidx6.i.i'ipg_unwrap", align 8
  %53 = fadd fast double %52, %51
  store double %53, double* %"arrayidx6.i.i'ipg_unwrap", align 8
  %54 = load i64, i64* %"iv'ac", align 8
  %_unwrap18 = add nsw i64 %_unwrap10, -1
  %"arrayidx4.i.i'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %_unwrap18
  %55 = load double, double* %"arrayidx4.i.i'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx4.i.i'ipg_unwrap", align 8
  %56 = load double, double* %"'de19", align 8
  %57 = fadd fast double %56, %55
  store double %57, double* %"'de19", align 8
  %58 = load i64, i64* %"iv'ac", align 8
  %sub.i.i_unwrap = add nsw i32 %44, -1
  %idxprom.i.i_unwrap = sext i32 %sub.i.i_unwrap to i64
  %"arrayidx.i.i'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %idxprom.i.i_unwrap
  %59 = load double, double* %"arrayidx.i.i'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx.i.i'ipg_unwrap", align 8
  %60 = load double, double* %"'de20", align 8
  %61 = fadd fast double %60, %59
  store double %61, double* %"'de20", align 8
  %62 = load double, double* %"'de20", align 8
  store double 0.000000e+00, double* %"'de20", align 8
  %63 = load double, double* %"arrayidx4.i.i'ipg_unwrap", align 8
  %64 = fadd fast double %63, %62
  store double %64, double* %"arrayidx4.i.i'ipg_unwrap", align 8
  %65 = load double, double* %"'de19", align 8
  store double 0.000000e+00, double* %"'de19", align 8
  %66 = load double, double* %"arrayidx.i.i'ipg_unwrap", align 8
  %67 = fadd fast double %66, %65
  store double %67, double* %"arrayidx.i.i'ipg_unwrap", align 8
  br label %invertfor.body.i.i

invertif.end.i.i:                                 ; preds = %invertwhile.end.i.i, %invertwhile.body.i.i.preheader
  %68 = load i64, i64* %"iv'ac", align 8
  %_unwrap23 = shl nuw nsw i64 %68, 1
  %_unwrap24 = add i64 %_unwrap23, 1
  %mul.i.i_unwrap25 = shl i32 %len, 1
  %_unwrap26 = zext i32 %mul.i.i_unwrap25 to i64
  %_unwrap27 = icmp ugt i64 %_unwrap26, 3
  %umax_unwrap28 = select i1 %_unwrap27, i64 %_unwrap26, i64 3
  %_unwrap29 = add nsw i64 %umax_unwrap28, -2
  %_unwrap30 = lshr i64 %_unwrap29, 1
  %69 = add nuw i64 %_unwrap30, 1
  %70 = load i32*, i32** %j.040.i.i_cache, align 8, !dereferenceable !181, !invariant.group !180
  %71 = load i64, i64* %"iv'ac", align 8
  %72 = getelementptr inbounds i32, i32* %70, i64 %71
  %73 = load i32, i32* %72, align 4, !invariant.group !182
  %_unwrap31 = sext i32 %73 to i64
  %cmp1.i.i_unwrap = icmp slt i64 %_unwrap24, %_unwrap31
  br i1 %cmp1.i.i_unwrap, label %invertif.then.i.i, label %invertfor.body.i.i

invertwhile.body.i.i.preheader:                   ; preds = %invertwhile.body.i.i
  br label %invertif.end.i.i

invertwhile.body.i.i:                             ; preds = %mergeinvertwhile.body.i.i_while.end.i.i.loopexit, %incinvertwhile.body.i.i
  %74 = load i64, i64* %"iv1'ac", align 8
  %75 = icmp eq i64 %74, 0
  %76 = xor i1 %75, true
  br i1 %75, label %invertwhile.body.i.i.preheader, label %incinvertwhile.body.i.i

incinvertwhile.body.i.i:                          ; preds = %invertwhile.body.i.i
  %77 = load i64, i64* %"iv1'ac", align 8
  %78 = add nsw i64 %77, -1
  store i64 %78, i64* %"iv1'ac", align 8
  br label %invertwhile.body.i.i

invertwhile.end.i.i.loopexit:                     ; preds = %invertwhile.end.i.i
  br label %mergeinvertwhile.body.i.i_while.end.i.i.loopexit

mergeinvertwhile.body.i.i_while.end.i.i.loopexit: ; preds = %invertwhile.end.i.i.loopexit
  store i64 0, i64* %"iv1'ac", align 8
  br label %invertwhile.body.i.i

invertwhile.end.i.i:                              ; preds = %mergeinvertfor.body.i.i_for.body.lr.ph.i.i6, %incinvertfor.body.i.i
  %79 = load i64, i64* %"iv'ac", align 8
  %cmp934.i.i_unwrap = icmp sgt i32 %len, 1
  %mul.i.i_unwrap32 = shl i32 %len, 1
  %_unwrap33 = zext i32 %mul.i.i_unwrap32 to i64
  %_unwrap34 = icmp ugt i64 %_unwrap33, 3
  %umax_unwrap35 = select i1 %_unwrap34, i64 %_unwrap33, i64 3
  %_unwrap36 = add nsw i64 %umax_unwrap35, -2
  %_unwrap37 = lshr i64 %_unwrap36, 1
  %80 = add nuw i64 %_unwrap37, 1
  %81 = load i32*, i32** %j.040.i.i_cache, align 8, !dereferenceable !181, !invariant.group !180
  %82 = load i64, i64* %"iv'ac", align 8
  %83 = getelementptr inbounds i32, i32* %81, i64 %82
  %84 = load i32, i32* %83, align 4, !invariant.group !182
  %cmp1035.i.i_unwrap = icmp sgt i32 %84, %len
  %_unwrap38 = and i1 %cmp934.i.i_unwrap, %cmp1035.i.i_unwrap
  br i1 %_unwrap38, label %invertwhile.end.i.i.loopexit, label %invertif.end.i.i

invert_ZL8scramblePdj.exit.thread.i:              ; preds = %invert_ZL4ifftPdj.exit
  call fastcc void @diffe_ZL14recursiveApplyPdij(double* %data, double* %"data'", i32 -1, i32 %len)
  %85 = load { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %tapeld_cache, align 32, !invariant.group !184
  call fastcc void @diffe_ZL14recursiveApplyPdij.5(double* %data, double* %"data'", i32 1, i32 %len, { i8*, i8*, double*, double* } %85)
  br label %invertentry

invertfor.body.lr.ph.i.i6:                        ; preds = %invertfor.body.i.i10
  %86 = load { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %tapeld40_cache, align 32, !invariant.group !185
  call fastcc void @diffe_ZL14recursiveApplyPdij.5(double* %data, double* %"data'", i32 1, i32 %len, { i8*, i8*, double*, double* } %86)
  %_unwrap41 = zext i32 %mul.i.i to i64
  %_unwrap42 = icmp ugt i64 %_unwrap41, 3
  %umax_unwrap43 = select i1 %_unwrap42, i64 %_unwrap41, i64 3
  %_unwrap44 = add nsw i64 %umax_unwrap43, -2
  %_unwrap45 = lshr i64 %_unwrap44, 1
  %87 = load i64, i64* %"iv3'ac", align 8
  %forfree51 = load i32*, i32** %j.040.i.i8_cache, align 4, !dereferenceable !188, !invariant.group !186
  %88 = bitcast i32* %forfree51 to i8*
  tail call void @free(i8* nonnull %88)
  br label %mergeinvertfor.body.i.i_for.body.lr.ph.i.i6

mergeinvertfor.body.i.i_for.body.lr.ph.i.i6:      ; preds = %invertfor.body.lr.ph.i.i6
  store i64 %_unwrap45, i64* %"iv'ac", align 8
  br label %invertwhile.end.i.i

invertfor.body.i.i10:                             ; preds = %invertif.end.i.i19, %invertif.then.i.i17
  %89 = load i64, i64* %"iv3'ac", align 8
  %90 = icmp eq i64 %89, 0
  %91 = xor i1 %90, true
  br i1 %90, label %invertfor.body.lr.ph.i.i6, label %incinvertfor.body.i.i10

incinvertfor.body.i.i10:                          ; preds = %invertfor.body.i.i10
  %92 = load i64, i64* %"iv3'ac", align 8
  %93 = add nsw i64 %92, -1
  store i64 %93, i64* %"iv3'ac", align 8
  br label %invertwhile.end.i.i32

invertif.then.i.i17:                              ; preds = %invertif.end.i.i19
  %94 = load i64, i64* %"iv3'ac", align 8
  %_unwrap46 = shl nuw nsw i64 %94, 1
  %_unwrap47 = add i64 %_unwrap46, 1
  %"arrayidx8.i.i16'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %_unwrap47
  %95 = load double, double* %"arrayidx8.i.i16'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx8.i.i16'ipg_unwrap", align 8
  %96 = load double, double* %"'de48", align 8
  %97 = fadd fast double %96, %95
  store double %97, double* %"'de48", align 8
  %98 = load i64, i64* %"iv3'ac", align 8
  %mul.i.i_unwrap52 = shl i32 %len, 1
  %_unwrap53 = zext i32 %mul.i.i_unwrap52 to i64
  %_unwrap54 = icmp ugt i64 %_unwrap53, 3
  %umax5_unwrap = select i1 %_unwrap54, i64 %_unwrap53, i64 3
  %_unwrap55 = add nsw i64 %umax5_unwrap, -2
  %_unwrap56 = lshr i64 %_unwrap55, 1
  %99 = add nuw i64 %_unwrap56, 1
  %100 = load i32*, i32** %j.040.i.i8_cache, align 8, !dereferenceable !181, !invariant.group !186
  %101 = load i64, i64* %"iv3'ac", align 8
  %102 = getelementptr inbounds i32, i32* %100, i64 %101
  %103 = load i32, i32* %102, align 4, !invariant.group !187
  %_unwrap57 = sext i32 %103 to i64
  %"arrayidx6.i.i15'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %_unwrap57
  %104 = load double, double* %"arrayidx6.i.i15'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx6.i.i15'ipg_unwrap", align 8
  %105 = load double, double* %"'de58", align 8
  %106 = fadd fast double %105, %104
  store double %106, double* %"'de58", align 8
  %107 = load double, double* %"'de58", align 8
  store double 0.000000e+00, double* %"'de58", align 8
  %108 = load double, double* %"arrayidx8.i.i16'ipg_unwrap", align 8
  %109 = fadd fast double %108, %107
  store double %109, double* %"arrayidx8.i.i16'ipg_unwrap", align 8
  %110 = load double, double* %"'de48", align 8
  store double 0.000000e+00, double* %"'de48", align 8
  %111 = load double, double* %"arrayidx6.i.i15'ipg_unwrap", align 8
  %112 = fadd fast double %111, %110
  store double %112, double* %"arrayidx6.i.i15'ipg_unwrap", align 8
  %113 = load i64, i64* %"iv3'ac", align 8
  %_unwrap61 = add nsw i64 %_unwrap47, -1
  %"arrayidx4.i.i14'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %_unwrap61
  %114 = load double, double* %"arrayidx4.i.i14'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx4.i.i14'ipg_unwrap", align 8
  %115 = load double, double* %"'de62", align 8
  %116 = fadd fast double %115, %114
  store double %116, double* %"'de62", align 8
  %117 = load i64, i64* %"iv3'ac", align 8
  %sub.i.i11_unwrap = add nsw i32 %103, -1
  %idxprom.i.i12_unwrap = sext i32 %sub.i.i11_unwrap to i64
  %"arrayidx.i.i13'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %idxprom.i.i12_unwrap
  %118 = load double, double* %"arrayidx.i.i13'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx.i.i13'ipg_unwrap", align 8
  %119 = load double, double* %"'de63", align 8
  %120 = fadd fast double %119, %118
  store double %120, double* %"'de63", align 8
  %121 = load double, double* %"'de63", align 8
  store double 0.000000e+00, double* %"'de63", align 8
  %122 = load double, double* %"arrayidx4.i.i14'ipg_unwrap", align 8
  %123 = fadd fast double %122, %121
  store double %123, double* %"arrayidx4.i.i14'ipg_unwrap", align 8
  %124 = load double, double* %"'de62", align 8
  store double 0.000000e+00, double* %"'de62", align 8
  %125 = load double, double* %"arrayidx.i.i13'ipg_unwrap", align 8
  %126 = fadd fast double %125, %124
  store double %126, double* %"arrayidx.i.i13'ipg_unwrap", align 8
  br label %invertfor.body.i.i10

invertif.end.i.i19:                               ; preds = %invertwhile.end.i.i32, %invertwhile.body.i.i26.preheader
  %127 = load i64, i64* %"iv3'ac", align 8
  %_unwrap66 = shl nuw nsw i64 %127, 1
  %_unwrap67 = add i64 %_unwrap66, 1
  %mul.i.i_unwrap68 = shl i32 %len, 1
  %_unwrap69 = zext i32 %mul.i.i_unwrap68 to i64
  %_unwrap70 = icmp ugt i64 %_unwrap69, 3
  %umax5_unwrap71 = select i1 %_unwrap70, i64 %_unwrap69, i64 3
  %_unwrap72 = add nsw i64 %umax5_unwrap71, -2
  %_unwrap73 = lshr i64 %_unwrap72, 1
  %128 = add nuw i64 %_unwrap73, 1
  %129 = load i32*, i32** %j.040.i.i8_cache, align 8, !dereferenceable !181, !invariant.group !186
  %130 = load i64, i64* %"iv3'ac", align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4, !invariant.group !187
  %_unwrap74 = sext i32 %132 to i64
  %cmp1.i.i9_unwrap = icmp slt i64 %_unwrap67, %_unwrap74
  br i1 %cmp1.i.i9_unwrap, label %invertif.then.i.i17, label %invertfor.body.i.i10

invertwhile.body.i.i26.preheader:                 ; preds = %invertwhile.body.i.i26
  br label %invertif.end.i.i19

invertwhile.body.i.i26:                           ; preds = %mergeinvertwhile.body.i.i26_while.end.i.i32.loopexit, %incinvertwhile.body.i.i26
  %133 = load i64, i64* %"iv6'ac", align 8
  %134 = icmp eq i64 %133, 0
  %135 = xor i1 %134, true
  br i1 %134, label %invertwhile.body.i.i26.preheader, label %incinvertwhile.body.i.i26

incinvertwhile.body.i.i26:                        ; preds = %invertwhile.body.i.i26
  %136 = load i64, i64* %"iv6'ac", align 8
  %137 = add nsw i64 %136, -1
  store i64 %137, i64* %"iv6'ac", align 8
  br label %invertwhile.body.i.i26

invertwhile.end.i.i32.loopexit:                   ; preds = %invertwhile.end.i.i32
  br label %mergeinvertwhile.body.i.i26_while.end.i.i32.loopexit

mergeinvertwhile.body.i.i26_while.end.i.i32.loopexit: ; preds = %invertwhile.end.i.i32.loopexit
  store i64 0, i64* %"iv6'ac", align 8
  br label %invertwhile.body.i.i26

invertwhile.end.i.i32:                            ; preds = %mergeinvertfor.body.i.i10_for.body.lr.ph.i6.i, %incinvertfor.body.i.i10
  %138 = load i64, i64* %"iv3'ac", align 8
  %cmp934.i.i_unwrap75 = icmp sgt i32 %len, 1
  %mul.i.i_unwrap76 = shl i32 %len, 1
  %_unwrap77 = zext i32 %mul.i.i_unwrap76 to i64
  %_unwrap78 = icmp ugt i64 %_unwrap77, 3
  %umax5_unwrap79 = select i1 %_unwrap78, i64 %_unwrap77, i64 3
  %_unwrap80 = add nsw i64 %umax5_unwrap79, -2
  %_unwrap81 = lshr i64 %_unwrap80, 1
  %139 = add nuw i64 %_unwrap81, 1
  %140 = load i32*, i32** %j.040.i.i8_cache, align 8, !dereferenceable !181, !invariant.group !186
  %141 = load i64, i64* %"iv3'ac", align 8
  %142 = getelementptr inbounds i32, i32* %140, i64 %141
  %143 = load i32, i32* %142, align 4, !invariant.group !187
  %cmp1035.i.i18_unwrap = icmp sgt i32 %143, %len
  %_unwrap82 = and i1 %cmp934.i.i_unwrap75, %cmp1035.i.i18_unwrap
  br i1 %_unwrap82, label %invertwhile.end.i.i32.loopexit, label %invertif.end.i.i19

invertfor.body.lr.ph.i6.i:                        ; preds = %invertfor.body.i10.i
  call fastcc void @diffe_ZL14recursiveApplyPdij.1(double* %data, double* %"data'", i32 -1, i32 %len)
  %_unwrap83 = zext i32 %mul.i.i to i64
  %_unwrap84 = icmp ugt i64 %_unwrap83, 3
  %umax5_unwrap85 = select i1 %_unwrap84, i64 %_unwrap83, i64 3
  %_unwrap86 = add nsw i64 %umax5_unwrap85, -2
  %_unwrap87 = lshr i64 %_unwrap86, 1
  br label %mergeinvertfor.body.i.i10_for.body.lr.ph.i6.i

mergeinvertfor.body.i.i10_for.body.lr.ph.i6.i:    ; preds = %invertfor.body.lr.ph.i6.i
  store i64 %_unwrap87, i64* %"iv3'ac", align 8
  br label %invertwhile.end.i.i32

invertfor.body.i10.i:                             ; preds = %mergeinvertfor.body.i10.i__ZL4ifftPdj.exit.loopexit, %incinvertfor.body.i10.i
  %144 = load i64, i64* %"iv8'ac", align 8
  %"arrayidx.i8.i'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %144
  %145 = load double, double* %"arrayidx.i8.i'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx.i8.i'ipg_unwrap", align 8
  %146 = load double, double* %"'de88", align 8
  %147 = fadd fast double %146, %145
  store double %147, double* %"'de88", align 8
  %148 = load double, double* %"'de88", align 8
  %149 = load i64, i64* %"iv8'ac", align 8
  %conv.i.i_unwrap = uitofp i32 %len to double
  %d0diffe = fdiv fast double %148, %conv.i.i_unwrap
  store double 0.000000e+00, double* %"'de88", align 8
  %150 = load double, double* %"'de90", align 8
  %151 = fadd fast double %150, %d0diffe
  store double %151, double* %"'de90", align 8
  %152 = load double, double* %"'de90", align 8
  store double 0.000000e+00, double* %"'de90", align 8
  %153 = load double, double* %"arrayidx.i8.i'ipg_unwrap", align 8
  %154 = fadd fast double %153, %152
  store double %154, double* %"arrayidx.i8.i'ipg_unwrap", align 8
  %155 = load i64, i64* %"iv8'ac", align 8
  %156 = icmp eq i64 %155, 0
  %157 = xor i1 %156, true
  br i1 %156, label %invertfor.body.lr.ph.i6.i, label %incinvertfor.body.i10.i

incinvertfor.body.i10.i:                          ; preds = %invertfor.body.i10.i
  %158 = load i64, i64* %"iv8'ac", align 8
  %159 = add nsw i64 %158, -1
  store i64 %159, i64* %"iv8'ac", align 8
  br label %invertfor.body.i10.i

invert_ZL4ifftPdj.exit.loopexit:                  ; preds = %invert_ZL4ifftPdj.exit
  %_unwrap92 = zext i32 %mul.i.i to i64
  %_unwrap93 = add nsw i64 %_unwrap92, -1
  br label %mergeinvertfor.body.i10.i__ZL4ifftPdj.exit.loopexit

mergeinvertfor.body.i10.i__ZL4ifftPdj.exit.loopexit: ; preds = %invert_ZL4ifftPdj.exit.loopexit
  store i64 %_unwrap93, i64* %"iv8'ac", align 8
  br label %invertfor.body.i10.i

invert_ZL4ifftPdj.exit:                           ; preds = %_ZL4ifftPdj.exit
  br i1 %cmp39.not.i.i, label %invert_ZL8scramblePdj.exit.thread.i, label %invert_ZL4ifftPdj.exit.loopexit
}

declare noalias i8* @malloc(i64)

; Function Attrs: nofree nounwind uwtable mustprogress
define internal fastcc void @preprocess__ZL14recursiveApplyPdij(double* %data, i32 %iSign, i32 %N) unnamed_addr #16 {
entry:
  %cmp = icmp eq i32 %N, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %div = lshr i32 %N, 1
  tail call fastcc void @_ZL14recursiveApplyPdij(double* %data, i32 %iSign, i32 %div)
  %idx.ext = zext i32 %N to i64
  %add.ptr = getelementptr inbounds double, double* %data, i64 %idx.ext
  tail call fastcc void @_ZL14recursiveApplyPdij(double* %add.ptr, i32 %iSign, i32 %div)
  %conv = sitofp i32 %iSign to double
  %conv2 = uitofp i32 %N to double
  %div3 = fdiv fast double 0x400921FB54442D18, %conv2
  %0 = tail call fast double @llvm.sin.f64(double %div3)
  %mul = fmul fast double %0, %conv
  %sub = sub nsw i32 0, %iSign
  %conv4 = sitofp i32 %sub to double
  %div6 = fdiv fast double 0x401921FB54442D18, %conv2
  %1 = tail call fast double @llvm.sin.f64(double %div6)
  %mul7 = fmul fast double %1, %conv4
  %2 = fmul fast double %mul, %mul
  %mul9 = fmul fast double %2, -2.000000e+00
  %cmp10108.not = icmp eq i32 %N, 0
  br i1 %cmp10108.not, label %return, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %tiv = phi i64 [ 0, %for.body.preheader ], [ %tiv.next, %for.body ]
  %wr.0111 = phi double [ %add47, %for.body ], [ 1.000000e+00, %for.body.preheader ]
  %wi.0110 = phi double [ %add51, %for.body ], [ 0.000000e+00, %for.body.preheader ]
  %3 = shl nuw i64 %tiv, 1
  %4 = trunc i64 %3 to i32
  %tiv.next = add nuw nsw i64 %tiv, 1
  %add = add i32 %4, %N
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds double, double* %data, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8, !tbaa !46
  %mul11 = fmul fast double %5, %wr.0111
  %add12 = add nsw i32 %add, 1
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds double, double* %data, i64 %idxprom13
  %6 = load double, double* %arrayidx14, align 8, !tbaa !46
  %mul15 = fmul fast double %6, %wi.0110
  %sub16 = fsub fast double %mul11, %mul15
  %mul19 = fmul fast double %5, %wi.0110
  %mul23 = fmul fast double %6, %wr.0111
  %add24 = fadd fast double %mul23, %mul19
  %idxprom25 = zext i32 %4 to i64
  %arrayidx26 = getelementptr inbounds double, double* %data, i64 %idxprom25
  %7 = load double, double* %arrayidx26, align 8, !tbaa !46
  %sub27 = fsub fast double %7, %sub16
  store double %sub27, double* %arrayidx, align 8, !tbaa !46
  %add30 = or i32 %4, 1
  %idxprom31 = zext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds double, double* %data, i64 %idxprom31
  %8 = load double, double* %arrayidx32, align 8, !tbaa !46
  %sub33 = fsub fast double %8, %add24
  store double %sub33, double* %arrayidx14, align 8, !tbaa !46
  %9 = load double, double* %arrayidx26, align 8, !tbaa !46
  %add39 = fadd fast double %9, %sub16
  store double %add39, double* %arrayidx26, align 8, !tbaa !46
  %10 = load double, double* %arrayidx32, align 8, !tbaa !46
  %add43 = fadd fast double %10, %add24
  store double %add43, double* %arrayidx32, align 8, !tbaa !46
  %mul44 = fmul fast double %wr.0111, %mul9
  %11 = fmul fast double %wi.0110, %mul7
  %sub46 = fsub fast double %wr.0111, %11
  %add47 = fadd fast double %sub46, %mul44
  %mul48 = fmul fast double %wi.0110, %mul9
  %mul49 = fmul fast double %wr.0111, %mul7
  %add50 = fadd fast double %mul48, %wi.0110
  %add51 = fadd fast double %add50, %mul49
  %add52 = add i32 %4, 2
  %cmp10 = icmp ult i32 %add52, %N
  br i1 %cmp10, label %for.body, label %return.loopexit, !llvm.loop !160

return.loopexit:                                  ; preds = %for.body
  br label %return

return:                                           ; preds = %return.loopexit, %if.end, %entry
  ret void
}

; Function Attrs: nofree nounwind uwtable mustprogress
define internal fastcc void @diffe_ZL14recursiveApplyPdij(double* %data, double* %"data'", i32 %iSign, i32 %N) unnamed_addr #16 {
entry:
  %"iv'ac" = alloca i64, align 8
  %tapeld_cache = alloca { i8*, i8*, double*, double* }, align 32, !node !179
  %"add43'de" = alloca double, align 8
  store double 0.000000e+00, double* %"add43'de", align 8
  %"'de" = alloca double, align 8
  store double 0.000000e+00, double* %"'de", align 8
  %"add24'de" = alloca double, align 8
  store double 0.000000e+00, double* %"add24'de", align 8
  %"add39'de" = alloca double, align 8
  store double 0.000000e+00, double* %"add39'de", align 8
  %"'de2" = alloca double, align 8
  store double 0.000000e+00, double* %"'de2", align 8
  %"sub16'de" = alloca double, align 8
  store double 0.000000e+00, double* %"sub16'de", align 8
  %"sub33'de" = alloca double, align 8
  store double 0.000000e+00, double* %"sub33'de", align 8
  %"'de4" = alloca double, align 8
  store double 0.000000e+00, double* %"'de4", align 8
  %"sub27'de" = alloca double, align 8
  store double 0.000000e+00, double* %"sub27'de", align 8
  %"'de6" = alloca double, align 8
  store double 0.000000e+00, double* %"'de6", align 8
  %"mul23'de" = alloca double, align 8
  store double 0.000000e+00, double* %"mul23'de", align 8
  %"mul19'de" = alloca double, align 8
  store double 0.000000e+00, double* %"mul19'de", align 8
  %wr.0111_cache = alloca double*, align 8, !node !179
  %"'de11" = alloca double, align 8
  store double 0.000000e+00, double* %"'de11", align 8
  %wi.0110_cache = alloca double*, align 8, !node !179
  %"'de16" = alloca double, align 8
  store double 0.000000e+00, double* %"'de16", align 8
  %"mul11'de" = alloca double, align 8
  store double 0.000000e+00, double* %"mul11'de", align 8
  %"mul15'de" = alloca double, align 8
  store double 0.000000e+00, double* %"mul15'de", align 8
  %cmp = icmp eq i32 %N, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %div = lshr i32 %N, 1, !node !179
  %_augmented = call fastcc i8* @augmented__ZL14recursiveApplyPdij(double* %data, double* %"data'", i32 %iSign, i32 %div), !node !179
  %0 = bitcast i8* %_augmented to { i8*, i8*, double*, double* }*, !node !179
  %tapeld = load { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %0, align 8, !node !179, !enzyme_mustcache !183
  store { i8*, i8*, double*, double* } %tapeld, { i8*, i8*, double*, double* }* %tapeld_cache, align 32, !invariant.group !189
  tail call void @free(i8* nonnull %_augmented), !node !179
  %idx.ext = zext i32 %N to i64, !node !179
  %"add.ptr'ipg" = getelementptr inbounds double, double* %"data'", i64 %idx.ext, !node !179
  %add.ptr = getelementptr inbounds double, double* %data, i64 %idx.ext, !node !179
  %conv = sitofp i32 %iSign to double, !node !179
  %conv2 = uitofp i32 %N to double, !node !179
  %div3 = fdiv fast double 0x400921FB54442D18, %conv2, !node !179
  %1 = tail call fast double @llvm.sin.f64(double %div3), !node !179
  %mul = fmul fast double %1, %conv, !node !179
  %sub = sub nsw i32 0, %iSign, !node !179
  %conv4 = sitofp i32 %sub to double, !node !179
  %div6 = fdiv fast double 0x401921FB54442D18, %conv2, !node !179
  %2 = tail call fast double @llvm.sin.f64(double %div6), !node !179
  %mul7 = fmul fast double %2, %conv4, !node !179
  %3 = fmul fast double %mul, %mul, !node !179
  %mul9 = fmul fast double %3, -2.000000e+00, !node !179
  %cmp10108.not = icmp eq i32 %N, 0
  br i1 %cmp10108.not, label %return, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %4 = add i32 %N, -1, !node !179
  %5 = zext i32 %4 to i64, !node !179
  %6 = lshr i64 %5, 1, !node !179
  %7 = add nuw i64 %6, 1, !node !179
  %mallocsize = mul nuw nsw i64 %7, 8, !node !179
  %malloccall = tail call noalias nonnull i8* @malloc(i64 %mallocsize), !node !179
  %wr.0111_malloccache = bitcast i8* %malloccall to double*, !node !179
  store double* %wr.0111_malloccache, double** %wr.0111_cache, align 8, !invariant.group !190
  %mallocsize12 = mul nuw nsw i64 %7, 8, !node !179
  %malloccall13 = tail call noalias nonnull i8* @malloc(i64 %mallocsize12), !node !179
  %wi.0110_malloccache = bitcast i8* %malloccall13 to double*, !node !179
  store double* %wi.0110_malloccache, double** %wi.0110_cache, align 8, !invariant.group !191
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %iv = phi i64 [ %iv.next, %for.body ], [ 0, %for.body.preheader ]
  %wr.0111 = phi double [ %add47, %for.body ], [ 1.000000e+00, %for.body.preheader ], !node !179
  %wi.0110 = phi double [ %add51, %for.body ], [ 0.000000e+00, %for.body.preheader ], !node !179
  %8 = load double*, double** %wr.0111_cache, align 8, !dereferenceable !181, !invariant.group !190, !node !179
  %9 = getelementptr inbounds double, double* %8, i64 %iv, !node !179
  store double %wr.0111, double* %9, align 8, !invariant.group !192
  %10 = load double*, double** %wi.0110_cache, align 8, !dereferenceable !181, !invariant.group !191, !node !179
  %11 = getelementptr inbounds double, double* %10, i64 %iv, !node !179
  store double %wi.0110, double* %11, align 8, !invariant.group !193
  %iv.next = add nuw nsw i64 %iv, 1
  %12 = shl nuw i64 %iv, 1
  %13 = trunc i64 %12 to i32
  %add = add i32 %13, %N, !node !179
  %idxprom = sext i32 %add to i64, !node !179
  %"arrayidx'ipg" = getelementptr inbounds double, double* %"data'", i64 %idxprom, !node !179
  %add12 = add nsw i32 %add, 1, !node !179
  %idxprom13 = sext i32 %add12 to i64, !node !179
  %"arrayidx14'ipg" = getelementptr inbounds double, double* %"data'", i64 %idxprom13, !node !179
  %idxprom25 = zext i32 %13 to i64
  %"arrayidx26'ipg" = getelementptr inbounds double, double* %"data'", i64 %idxprom25, !node !179
  %add30 = or i32 %13, 1
  %idxprom31 = zext i32 %add30 to i64
  %"arrayidx32'ipg" = getelementptr inbounds double, double* %"data'", i64 %idxprom31, !node !179
  %mul44 = fmul fast double %wr.0111, %mul9, !node !179
  %14 = fmul fast double %wi.0110, %mul7, !node !179
  %sub46 = fsub fast double %wr.0111, %14, !node !179
  %add47 = fadd fast double %sub46, %mul44, !node !179
  %mul48 = fmul fast double %wi.0110, %mul9, !node !179
  %mul49 = fmul fast double %wr.0111, %mul7, !node !179
  %add50 = fadd fast double %mul48, %wi.0110, !node !179
  %add51 = fadd fast double %add50, %mul49, !node !179
  %add52 = add i32 %13, 2
  %cmp10 = icmp ult i32 %add52, %N
  br i1 %cmp10, label %for.body, label %return.loopexit, !llvm.loop !160

return.loopexit:                                  ; preds = %for.body
  br label %return

return:                                           ; preds = %return.loopexit, %if.end, %entry
  br label %invertreturn

invertentry:                                      ; preds = %invertreturn, %invertif.end
  ret void

invertif.end:                                     ; preds = %staging, %invertfor.body.preheader
  %idx.ext_unwrap = zext i32 %N to i64
  %add.ptr_unwrap = getelementptr inbounds double, double* %data, i64 %idx.ext_unwrap
  %"add.ptr'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %idx.ext_unwrap
  %div_unwrap = lshr i32 %N, 1
  call fastcc void @diffe_ZL14recursiveApplyPdij.1(double* %add.ptr_unwrap, double* %"add.ptr'ipg_unwrap", i32 %iSign, i32 %div_unwrap)
  %15 = load { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %tapeld_cache, align 32, !invariant.group !189
  call fastcc void @diffe_ZL14recursiveApplyPdij.3(double* %data, double* %"data'", i32 %iSign, i32 %div_unwrap, { i8*, i8*, double*, double* } %15)
  br label %invertentry

invertfor.body.preheader:                         ; preds = %invertfor.body
  %16 = load i64, i64* %"iv'ac", align 8
  %forfree = load double*, double** %wr.0111_cache, align 8, !dereferenceable !181, !invariant.group !190
  %17 = bitcast double* %forfree to i8*
  tail call void @free(i8* nonnull %17)
  %18 = load i64, i64* %"iv'ac", align 8
  %forfree14 = load double*, double** %wi.0110_cache, align 8, !dereferenceable !181, !invariant.group !191
  %19 = bitcast double* %forfree14 to i8*
  tail call void @free(i8* nonnull %19)
  br label %invertif.end

invertfor.body:                                   ; preds = %mergeinvertfor.body_return.loopexit, %incinvertfor.body
  %20 = load i64, i64* %"iv'ac", align 8
  %_unwrap = shl nuw i64 %20, 1
  %_unwrap1 = trunc i64 %_unwrap to i32
  %add30_unwrap = or i32 %_unwrap1, 1
  %idxprom31_unwrap = zext i32 %add30_unwrap to i64
  %"arrayidx32'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %idxprom31_unwrap
  %21 = load double, double* %"arrayidx32'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx32'ipg_unwrap", align 8
  %22 = load double, double* %"add43'de", align 8
  %23 = fadd fast double %22, %21
  store double %23, double* %"add43'de", align 8
  %24 = load double, double* %"add43'de", align 8
  store double 0.000000e+00, double* %"add43'de", align 8
  %25 = load double, double* %"'de", align 8
  %26 = fadd fast double %25, %24
  store double %26, double* %"'de", align 8
  %27 = load double, double* %"add24'de", align 8
  %28 = fadd fast double %27, %24
  store double %28, double* %"add24'de", align 8
  %29 = load double, double* %"'de", align 8
  store double 0.000000e+00, double* %"'de", align 8
  %30 = load double, double* %"arrayidx32'ipg_unwrap", align 8
  %31 = fadd fast double %30, %29
  store double %31, double* %"arrayidx32'ipg_unwrap", align 8
  %32 = load i64, i64* %"iv'ac", align 8
  %idxprom25_unwrap = zext i32 %_unwrap1 to i64
  %"arrayidx26'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %idxprom25_unwrap
  %33 = load double, double* %"arrayidx26'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx26'ipg_unwrap", align 8
  %34 = load double, double* %"add39'de", align 8
  %35 = fadd fast double %34, %33
  store double %35, double* %"add39'de", align 8
  %36 = load double, double* %"add39'de", align 8
  store double 0.000000e+00, double* %"add39'de", align 8
  %37 = load double, double* %"'de2", align 8
  %38 = fadd fast double %37, %36
  store double %38, double* %"'de2", align 8
  %39 = load double, double* %"sub16'de", align 8
  %40 = fadd fast double %39, %36
  store double %40, double* %"sub16'de", align 8
  %41 = load double, double* %"'de2", align 8
  store double 0.000000e+00, double* %"'de2", align 8
  %42 = load double, double* %"arrayidx26'ipg_unwrap", align 8
  %43 = fadd fast double %42, %41
  store double %43, double* %"arrayidx26'ipg_unwrap", align 8
  %44 = load i64, i64* %"iv'ac", align 8
  %add_unwrap = add i32 %_unwrap1, %N
  %add12_unwrap = add nsw i32 %add_unwrap, 1
  %idxprom13_unwrap = sext i32 %add12_unwrap to i64
  %"arrayidx14'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %idxprom13_unwrap
  %45 = load double, double* %"arrayidx14'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx14'ipg_unwrap", align 8
  %46 = load double, double* %"sub33'de", align 8
  %47 = fadd fast double %46, %45
  store double %47, double* %"sub33'de", align 8
  %48 = load double, double* %"sub33'de", align 8
  %49 = fneg fast double %48
  store double 0.000000e+00, double* %"sub33'de", align 8
  %50 = load double, double* %"'de4", align 8
  %51 = fadd fast double %50, %48
  store double %51, double* %"'de4", align 8
  %52 = load double, double* %"add24'de", align 8
  %53 = fadd fast double %52, %49
  store double %53, double* %"add24'de", align 8
  %54 = load double, double* %"'de4", align 8
  store double 0.000000e+00, double* %"'de4", align 8
  %55 = load double, double* %"arrayidx32'ipg_unwrap", align 8
  %56 = fadd fast double %55, %54
  store double %56, double* %"arrayidx32'ipg_unwrap", align 8
  %57 = load i64, i64* %"iv'ac", align 8
  %idxprom_unwrap = sext i32 %add_unwrap to i64
  %"arrayidx'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %idxprom_unwrap
  %58 = load double, double* %"arrayidx'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx'ipg_unwrap", align 8
  %59 = load double, double* %"sub27'de", align 8
  %60 = fadd fast double %59, %58
  store double %60, double* %"sub27'de", align 8
  %61 = load double, double* %"sub27'de", align 8
  %62 = fneg fast double %61
  store double 0.000000e+00, double* %"sub27'de", align 8
  %63 = load double, double* %"'de6", align 8
  %64 = fadd fast double %63, %61
  store double %64, double* %"'de6", align 8
  %65 = load double, double* %"sub16'de", align 8
  %66 = fadd fast double %65, %62
  store double %66, double* %"sub16'de", align 8
  %67 = load double, double* %"'de6", align 8
  store double 0.000000e+00, double* %"'de6", align 8
  %68 = load double, double* %"arrayidx26'ipg_unwrap", align 8
  %69 = fadd fast double %68, %67
  store double %69, double* %"arrayidx26'ipg_unwrap", align 8
  %70 = load double, double* %"add24'de", align 8
  store double 0.000000e+00, double* %"add24'de", align 8
  %71 = load double, double* %"mul23'de", align 8
  %72 = fadd fast double %71, %70
  store double %72, double* %"mul23'de", align 8
  %73 = load double, double* %"mul19'de", align 8
  %74 = fadd fast double %73, %70
  store double %74, double* %"mul19'de", align 8
  %75 = load double, double* %"mul23'de", align 8
  %76 = load i64, i64* %"iv'ac", align 8
  %_unwrap8 = add i32 %N, -1
  %_unwrap9 = zext i32 %_unwrap8 to i64
  %_unwrap10 = lshr i64 %_unwrap9, 1
  %77 = add nuw i64 %_unwrap10, 1
  %78 = load double*, double** %wr.0111_cache, align 8, !dereferenceable !181, !invariant.group !190
  %79 = load i64, i64* %"iv'ac", align 8
  %80 = getelementptr inbounds double, double* %78, i64 %79
  %81 = load double, double* %80, align 8, !invariant.group !192
  %m0diffe = fmul fast double %75, %81
  store double 0.000000e+00, double* %"mul23'de", align 8
  %82 = load double, double* %"'de11", align 8
  %83 = fadd fast double %82, %m0diffe
  store double %83, double* %"'de11", align 8
  %84 = load double, double* %"mul19'de", align 8
  %85 = load i64, i64* %"iv'ac", align 8
  %86 = add nuw i64 %_unwrap10, 1
  %87 = load double*, double** %wi.0110_cache, align 8, !dereferenceable !181, !invariant.group !191
  %88 = load i64, i64* %"iv'ac", align 8
  %89 = getelementptr inbounds double, double* %87, i64 %88
  %90 = load double, double* %89, align 8, !invariant.group !193
  %m0diffe15 = fmul fast double %84, %90
  store double 0.000000e+00, double* %"mul19'de", align 8
  %91 = load double, double* %"'de16", align 8
  %92 = fadd fast double %91, %m0diffe15
  store double %92, double* %"'de16", align 8
  %93 = load double, double* %"sub16'de", align 8
  %94 = fneg fast double %93
  store double 0.000000e+00, double* %"sub16'de", align 8
  %95 = load double, double* %"mul11'de", align 8
  %96 = fadd fast double %95, %93
  store double %96, double* %"mul11'de", align 8
  %97 = load double, double* %"mul15'de", align 8
  %98 = fadd fast double %97, %94
  store double %98, double* %"mul15'de", align 8
  %99 = load double, double* %"mul15'de", align 8
  %m0diffe17 = fmul fast double %99, %90
  store double 0.000000e+00, double* %"mul15'de", align 8
  %100 = load double, double* %"'de11", align 8
  %101 = fadd fast double %100, %m0diffe17
  store double %101, double* %"'de11", align 8
  %102 = load double, double* %"'de11", align 8
  store double 0.000000e+00, double* %"'de11", align 8
  %103 = load double, double* %"arrayidx14'ipg_unwrap", align 8
  %104 = fadd fast double %103, %102
  store double %104, double* %"arrayidx14'ipg_unwrap", align 8
  %105 = load double, double* %"mul11'de", align 8
  %m0diffe19 = fmul fast double %105, %81
  store double 0.000000e+00, double* %"mul11'de", align 8
  %106 = load double, double* %"'de16", align 8
  %107 = fadd fast double %106, %m0diffe19
  store double %107, double* %"'de16", align 8
  %108 = load double, double* %"'de16", align 8
  store double 0.000000e+00, double* %"'de16", align 8
  %109 = load double, double* %"arrayidx'ipg_unwrap", align 8
  %110 = fadd fast double %109, %108
  store double %110, double* %"arrayidx'ipg_unwrap", align 8
  %111 = load i64, i64* %"iv'ac", align 8
  %112 = icmp eq i64 %111, 0
  %113 = xor i1 %112, true
  br i1 %112, label %invertfor.body.preheader, label %incinvertfor.body

incinvertfor.body:                                ; preds = %invertfor.body
  %114 = load i64, i64* %"iv'ac", align 8
  %115 = add nsw i64 %114, -1
  store i64 %115, i64* %"iv'ac", align 8
  br label %invertfor.body

invertreturn.loopexit:                            ; preds = %staging
  %_unwrap21 = add i32 %N, -1
  %_unwrap22 = zext i32 %_unwrap21 to i64
  %_unwrap23 = lshr i64 %_unwrap22, 1
  br label %mergeinvertfor.body_return.loopexit

mergeinvertfor.body_return.loopexit:              ; preds = %invertreturn.loopexit
  store i64 %_unwrap23, i64* %"iv'ac", align 8
  br label %invertfor.body

invertreturn:                                     ; preds = %return
  %cmp10108.not_unwrap = icmp eq i32 %N, 0
  br i1 %cmp, label %invertentry, label %staging

staging:                                          ; preds = %invertreturn
  br i1 %cmp10108.not_unwrap, label %invertif.end, label %invertreturn.loopexit
}

; Function Attrs: nofree nounwind uwtable mustprogress
define internal fastcc void @diffe_ZL14recursiveApplyPdij.1(double* %data, double* %"data'", i32 %iSign, i32 %N) unnamed_addr #16 {
entry:
  %"iv'ac" = alloca i64, align 8
  %tapeld_cache = alloca { i8*, i8*, double*, double* }, align 32, !node !179
  %"add43'de" = alloca double, align 8
  store double 0.000000e+00, double* %"add43'de", align 8
  %"'de" = alloca double, align 8
  store double 0.000000e+00, double* %"'de", align 8
  %"add24'de" = alloca double, align 8
  store double 0.000000e+00, double* %"add24'de", align 8
  %"add39'de" = alloca double, align 8
  store double 0.000000e+00, double* %"add39'de", align 8
  %"'de2" = alloca double, align 8
  store double 0.000000e+00, double* %"'de2", align 8
  %"sub16'de" = alloca double, align 8
  store double 0.000000e+00, double* %"sub16'de", align 8
  %"sub33'de" = alloca double, align 8
  store double 0.000000e+00, double* %"sub33'de", align 8
  %"'de4" = alloca double, align 8
  store double 0.000000e+00, double* %"'de4", align 8
  %"sub27'de" = alloca double, align 8
  store double 0.000000e+00, double* %"sub27'de", align 8
  %"'de6" = alloca double, align 8
  store double 0.000000e+00, double* %"'de6", align 8
  %"mul23'de" = alloca double, align 8
  store double 0.000000e+00, double* %"mul23'de", align 8
  %"mul19'de" = alloca double, align 8
  store double 0.000000e+00, double* %"mul19'de", align 8
  %wr.0111_cache = alloca double*, align 8, !node !179
  %"'de11" = alloca double, align 8
  store double 0.000000e+00, double* %"'de11", align 8
  %wi.0110_cache = alloca double*, align 8, !node !179
  %"'de16" = alloca double, align 8
  store double 0.000000e+00, double* %"'de16", align 8
  %"mul11'de" = alloca double, align 8
  store double 0.000000e+00, double* %"mul11'de", align 8
  %"mul15'de" = alloca double, align 8
  store double 0.000000e+00, double* %"mul15'de", align 8
  %cmp = icmp eq i32 %N, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %div = lshr i32 %N, 1, !node !179
  %_augmented = call fastcc i8* @augmented__ZL14recursiveApplyPdij(double* %data, double* %"data'", i32 %iSign, i32 %div), !node !179
  %0 = bitcast i8* %_augmented to { i8*, i8*, double*, double* }*, !node !179
  %tapeld = load { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %0, align 8, !node !179, !enzyme_mustcache !183
  store { i8*, i8*, double*, double* } %tapeld, { i8*, i8*, double*, double* }* %tapeld_cache, align 32, !invariant.group !194
  tail call void @free(i8* nonnull %_augmented), !node !179
  %idx.ext = zext i32 %N to i64, !node !179
  %"add.ptr'ipg" = getelementptr inbounds double, double* %"data'", i64 %idx.ext, !node !179
  %add.ptr = getelementptr inbounds double, double* %data, i64 %idx.ext, !node !179
  %conv = sitofp i32 %iSign to double, !node !179
  %conv2 = uitofp i32 %N to double, !node !179
  %div3 = fdiv fast double 0x400921FB54442D18, %conv2, !node !179
  %1 = tail call fast double @llvm.sin.f64(double %div3), !node !179
  %mul = fmul fast double %1, %conv, !node !179
  %sub = sub nsw i32 0, %iSign, !node !179
  %conv4 = sitofp i32 %sub to double, !node !179
  %div6 = fdiv fast double 0x401921FB54442D18, %conv2, !node !179
  %2 = tail call fast double @llvm.sin.f64(double %div6), !node !179
  %mul7 = fmul fast double %2, %conv4, !node !179
  %3 = fmul fast double %mul, %mul, !node !179
  %mul9 = fmul fast double %3, -2.000000e+00, !node !179
  %cmp10108.not = icmp eq i32 %N, 0
  br i1 %cmp10108.not, label %return, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %4 = add i32 %N, -1, !node !179
  %5 = zext i32 %4 to i64, !node !179
  %6 = lshr i64 %5, 1, !node !179
  %7 = add nuw i64 %6, 1, !node !179
  %mallocsize = mul nuw nsw i64 %7, 8, !node !179
  %malloccall = tail call noalias nonnull i8* @malloc(i64 %mallocsize), !node !179
  %wr.0111_malloccache = bitcast i8* %malloccall to double*, !node !179
  store double* %wr.0111_malloccache, double** %wr.0111_cache, align 8, !invariant.group !195
  %mallocsize12 = mul nuw nsw i64 %7, 8, !node !179
  %malloccall13 = tail call noalias nonnull i8* @malloc(i64 %mallocsize12), !node !179
  %wi.0110_malloccache = bitcast i8* %malloccall13 to double*, !node !179
  store double* %wi.0110_malloccache, double** %wi.0110_cache, align 8, !invariant.group !196
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %iv = phi i64 [ %iv.next, %for.body ], [ 0, %for.body.preheader ]
  %wr.0111 = phi double [ %add47, %for.body ], [ 1.000000e+00, %for.body.preheader ], !node !179
  %wi.0110 = phi double [ %add51, %for.body ], [ 0.000000e+00, %for.body.preheader ], !node !179
  %8 = load double*, double** %wr.0111_cache, align 8, !dereferenceable !181, !invariant.group !195, !node !179
  %9 = getelementptr inbounds double, double* %8, i64 %iv, !node !179
  store double %wr.0111, double* %9, align 8, !invariant.group !197
  %10 = load double*, double** %wi.0110_cache, align 8, !dereferenceable !181, !invariant.group !196, !node !179
  %11 = getelementptr inbounds double, double* %10, i64 %iv, !node !179
  store double %wi.0110, double* %11, align 8, !invariant.group !198
  %iv.next = add nuw nsw i64 %iv, 1
  %12 = shl nuw i64 %iv, 1
  %13 = trunc i64 %12 to i32
  %add = add i32 %13, %N, !node !179
  %idxprom = sext i32 %add to i64, !node !179
  %"arrayidx'ipg" = getelementptr inbounds double, double* %"data'", i64 %idxprom, !node !179
  %add12 = add nsw i32 %add, 1, !node !179
  %idxprom13 = sext i32 %add12 to i64, !node !179
  %"arrayidx14'ipg" = getelementptr inbounds double, double* %"data'", i64 %idxprom13, !node !179
  %idxprom25 = zext i32 %13 to i64
  %"arrayidx26'ipg" = getelementptr inbounds double, double* %"data'", i64 %idxprom25, !node !179
  %add30 = or i32 %13, 1
  %idxprom31 = zext i32 %add30 to i64
  %"arrayidx32'ipg" = getelementptr inbounds double, double* %"data'", i64 %idxprom31, !node !179
  %mul44 = fmul fast double %wr.0111, %mul9, !node !179
  %14 = fmul fast double %wi.0110, %mul7, !node !179
  %sub46 = fsub fast double %wr.0111, %14, !node !179
  %add47 = fadd fast double %sub46, %mul44, !node !179
  %mul48 = fmul fast double %wi.0110, %mul9, !node !179
  %mul49 = fmul fast double %wr.0111, %mul7, !node !179
  %add50 = fadd fast double %mul48, %wi.0110, !node !179
  %add51 = fadd fast double %add50, %mul49, !node !179
  %add52 = add i32 %13, 2
  %cmp10 = icmp ult i32 %add52, %N
  br i1 %cmp10, label %for.body, label %return.loopexit, !llvm.loop !160

return.loopexit:                                  ; preds = %for.body
  br label %return

return:                                           ; preds = %return.loopexit, %if.end, %entry
  br label %invertreturn

invertentry:                                      ; preds = %invertreturn, %invertif.end
  ret void

invertif.end:                                     ; preds = %staging, %invertfor.body.preheader
  %idx.ext_unwrap = zext i32 %N to i64
  %add.ptr_unwrap = getelementptr inbounds double, double* %data, i64 %idx.ext_unwrap
  %"add.ptr'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %idx.ext_unwrap
  %div_unwrap = lshr i32 %N, 1
  call fastcc void @diffe_ZL14recursiveApplyPdij.1(double* %add.ptr_unwrap, double* %"add.ptr'ipg_unwrap", i32 %iSign, i32 %div_unwrap)
  %15 = load { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %tapeld_cache, align 32, !invariant.group !194
  call fastcc void @diffe_ZL14recursiveApplyPdij.3(double* %data, double* %"data'", i32 %iSign, i32 %div_unwrap, { i8*, i8*, double*, double* } %15)
  br label %invertentry

invertfor.body.preheader:                         ; preds = %invertfor.body
  %16 = load i64, i64* %"iv'ac", align 8
  %forfree = load double*, double** %wr.0111_cache, align 8, !dereferenceable !181, !invariant.group !195
  %17 = bitcast double* %forfree to i8*
  tail call void @free(i8* nonnull %17)
  %18 = load i64, i64* %"iv'ac", align 8
  %forfree14 = load double*, double** %wi.0110_cache, align 8, !dereferenceable !181, !invariant.group !196
  %19 = bitcast double* %forfree14 to i8*
  tail call void @free(i8* nonnull %19)
  br label %invertif.end

invertfor.body:                                   ; preds = %mergeinvertfor.body_return.loopexit, %incinvertfor.body
  %20 = load i64, i64* %"iv'ac", align 8
  %_unwrap = shl nuw i64 %20, 1
  %_unwrap1 = trunc i64 %_unwrap to i32
  %add30_unwrap = or i32 %_unwrap1, 1
  %idxprom31_unwrap = zext i32 %add30_unwrap to i64
  %"arrayidx32'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %idxprom31_unwrap
  %21 = load double, double* %"arrayidx32'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx32'ipg_unwrap", align 8
  %22 = load double, double* %"add43'de", align 8
  %23 = fadd fast double %22, %21
  store double %23, double* %"add43'de", align 8
  %24 = load double, double* %"add43'de", align 8
  store double 0.000000e+00, double* %"add43'de", align 8
  %25 = load double, double* %"'de", align 8
  %26 = fadd fast double %25, %24
  store double %26, double* %"'de", align 8
  %27 = load double, double* %"add24'de", align 8
  %28 = fadd fast double %27, %24
  store double %28, double* %"add24'de", align 8
  %29 = load double, double* %"'de", align 8
  store double 0.000000e+00, double* %"'de", align 8
  %30 = load double, double* %"arrayidx32'ipg_unwrap", align 8
  %31 = fadd fast double %30, %29
  store double %31, double* %"arrayidx32'ipg_unwrap", align 8
  %32 = load i64, i64* %"iv'ac", align 8
  %idxprom25_unwrap = zext i32 %_unwrap1 to i64
  %"arrayidx26'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %idxprom25_unwrap
  %33 = load double, double* %"arrayidx26'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx26'ipg_unwrap", align 8
  %34 = load double, double* %"add39'de", align 8
  %35 = fadd fast double %34, %33
  store double %35, double* %"add39'de", align 8
  %36 = load double, double* %"add39'de", align 8
  store double 0.000000e+00, double* %"add39'de", align 8
  %37 = load double, double* %"'de2", align 8
  %38 = fadd fast double %37, %36
  store double %38, double* %"'de2", align 8
  %39 = load double, double* %"sub16'de", align 8
  %40 = fadd fast double %39, %36
  store double %40, double* %"sub16'de", align 8
  %41 = load double, double* %"'de2", align 8
  store double 0.000000e+00, double* %"'de2", align 8
  %42 = load double, double* %"arrayidx26'ipg_unwrap", align 8
  %43 = fadd fast double %42, %41
  store double %43, double* %"arrayidx26'ipg_unwrap", align 8
  %44 = load i64, i64* %"iv'ac", align 8
  %add_unwrap = add i32 %_unwrap1, %N
  %add12_unwrap = add nsw i32 %add_unwrap, 1
  %idxprom13_unwrap = sext i32 %add12_unwrap to i64
  %"arrayidx14'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %idxprom13_unwrap
  %45 = load double, double* %"arrayidx14'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx14'ipg_unwrap", align 8
  %46 = load double, double* %"sub33'de", align 8
  %47 = fadd fast double %46, %45
  store double %47, double* %"sub33'de", align 8
  %48 = load double, double* %"sub33'de", align 8
  %49 = fneg fast double %48
  store double 0.000000e+00, double* %"sub33'de", align 8
  %50 = load double, double* %"'de4", align 8
  %51 = fadd fast double %50, %48
  store double %51, double* %"'de4", align 8
  %52 = load double, double* %"add24'de", align 8
  %53 = fadd fast double %52, %49
  store double %53, double* %"add24'de", align 8
  %54 = load double, double* %"'de4", align 8
  store double 0.000000e+00, double* %"'de4", align 8
  %55 = load double, double* %"arrayidx32'ipg_unwrap", align 8
  %56 = fadd fast double %55, %54
  store double %56, double* %"arrayidx32'ipg_unwrap", align 8
  %57 = load i64, i64* %"iv'ac", align 8
  %idxprom_unwrap = sext i32 %add_unwrap to i64
  %"arrayidx'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %idxprom_unwrap
  %58 = load double, double* %"arrayidx'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx'ipg_unwrap", align 8
  %59 = load double, double* %"sub27'de", align 8
  %60 = fadd fast double %59, %58
  store double %60, double* %"sub27'de", align 8
  %61 = load double, double* %"sub27'de", align 8
  %62 = fneg fast double %61
  store double 0.000000e+00, double* %"sub27'de", align 8
  %63 = load double, double* %"'de6", align 8
  %64 = fadd fast double %63, %61
  store double %64, double* %"'de6", align 8
  %65 = load double, double* %"sub16'de", align 8
  %66 = fadd fast double %65, %62
  store double %66, double* %"sub16'de", align 8
  %67 = load double, double* %"'de6", align 8
  store double 0.000000e+00, double* %"'de6", align 8
  %68 = load double, double* %"arrayidx26'ipg_unwrap", align 8
  %69 = fadd fast double %68, %67
  store double %69, double* %"arrayidx26'ipg_unwrap", align 8
  %70 = load double, double* %"add24'de", align 8
  store double 0.000000e+00, double* %"add24'de", align 8
  %71 = load double, double* %"mul23'de", align 8
  %72 = fadd fast double %71, %70
  store double %72, double* %"mul23'de", align 8
  %73 = load double, double* %"mul19'de", align 8
  %74 = fadd fast double %73, %70
  store double %74, double* %"mul19'de", align 8
  %75 = load double, double* %"mul23'de", align 8
  %76 = load i64, i64* %"iv'ac", align 8
  %_unwrap8 = add i32 %N, -1
  %_unwrap9 = zext i32 %_unwrap8 to i64
  %_unwrap10 = lshr i64 %_unwrap9, 1
  %77 = add nuw i64 %_unwrap10, 1
  %78 = load double*, double** %wr.0111_cache, align 8, !dereferenceable !181, !invariant.group !195
  %79 = load i64, i64* %"iv'ac", align 8
  %80 = getelementptr inbounds double, double* %78, i64 %79
  %81 = load double, double* %80, align 8, !invariant.group !197
  %m0diffe = fmul fast double %75, %81
  store double 0.000000e+00, double* %"mul23'de", align 8
  %82 = load double, double* %"'de11", align 8
  %83 = fadd fast double %82, %m0diffe
  store double %83, double* %"'de11", align 8
  %84 = load double, double* %"mul19'de", align 8
  %85 = load i64, i64* %"iv'ac", align 8
  %86 = add nuw i64 %_unwrap10, 1
  %87 = load double*, double** %wi.0110_cache, align 8, !dereferenceable !181, !invariant.group !196
  %88 = load i64, i64* %"iv'ac", align 8
  %89 = getelementptr inbounds double, double* %87, i64 %88
  %90 = load double, double* %89, align 8, !invariant.group !198
  %m0diffe15 = fmul fast double %84, %90
  store double 0.000000e+00, double* %"mul19'de", align 8
  %91 = load double, double* %"'de16", align 8
  %92 = fadd fast double %91, %m0diffe15
  store double %92, double* %"'de16", align 8
  %93 = load double, double* %"sub16'de", align 8
  %94 = fneg fast double %93
  store double 0.000000e+00, double* %"sub16'de", align 8
  %95 = load double, double* %"mul11'de", align 8
  %96 = fadd fast double %95, %93
  store double %96, double* %"mul11'de", align 8
  %97 = load double, double* %"mul15'de", align 8
  %98 = fadd fast double %97, %94
  store double %98, double* %"mul15'de", align 8
  %99 = load double, double* %"mul15'de", align 8
  %m0diffe17 = fmul fast double %99, %90
  store double 0.000000e+00, double* %"mul15'de", align 8
  %100 = load double, double* %"'de11", align 8
  %101 = fadd fast double %100, %m0diffe17
  store double %101, double* %"'de11", align 8
  %102 = load double, double* %"'de11", align 8
  store double 0.000000e+00, double* %"'de11", align 8
  %103 = load double, double* %"arrayidx14'ipg_unwrap", align 8
  %104 = fadd fast double %103, %102
  store double %104, double* %"arrayidx14'ipg_unwrap", align 8
  %105 = load double, double* %"mul11'de", align 8
  %m0diffe19 = fmul fast double %105, %81
  store double 0.000000e+00, double* %"mul11'de", align 8
  %106 = load double, double* %"'de16", align 8
  %107 = fadd fast double %106, %m0diffe19
  store double %107, double* %"'de16", align 8
  %108 = load double, double* %"'de16", align 8
  store double 0.000000e+00, double* %"'de16", align 8
  %109 = load double, double* %"arrayidx'ipg_unwrap", align 8
  %110 = fadd fast double %109, %108
  store double %110, double* %"arrayidx'ipg_unwrap", align 8
  %111 = load i64, i64* %"iv'ac", align 8
  %112 = icmp eq i64 %111, 0
  %113 = xor i1 %112, true
  br i1 %112, label %invertfor.body.preheader, label %incinvertfor.body

incinvertfor.body:                                ; preds = %invertfor.body
  %114 = load i64, i64* %"iv'ac", align 8
  %115 = add nsw i64 %114, -1
  store i64 %115, i64* %"iv'ac", align 8
  br label %invertfor.body

invertreturn.loopexit:                            ; preds = %staging
  %_unwrap21 = add i32 %N, -1
  %_unwrap22 = zext i32 %_unwrap21 to i64
  %_unwrap23 = lshr i64 %_unwrap22, 1
  br label %mergeinvertfor.body_return.loopexit

mergeinvertfor.body_return.loopexit:              ; preds = %invertreturn.loopexit
  store i64 %_unwrap23, i64* %"iv'ac", align 8
  br label %invertfor.body

invertreturn:                                     ; preds = %return
  %cmp10108.not_unwrap = icmp eq i32 %N, 0
  br i1 %cmp, label %invertentry, label %staging

staging:                                          ; preds = %invertreturn
  br i1 %cmp10108.not_unwrap, label %invertif.end, label %invertreturn.loopexit
}

; Function Attrs: nofree nounwind uwtable mustprogress
define internal fastcc void @preprocess__ZL14recursiveApplyPdij.2(double* %data, i32 %iSign, i32 %N) unnamed_addr #16 {
entry:
  %cmp = icmp eq i32 %N, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %div = lshr i32 %N, 1
  tail call fastcc void @_ZL14recursiveApplyPdij(double* %data, i32 %iSign, i32 %div)
  %idx.ext = zext i32 %N to i64
  %add.ptr = getelementptr inbounds double, double* %data, i64 %idx.ext
  tail call fastcc void @_ZL14recursiveApplyPdij(double* %add.ptr, i32 %iSign, i32 %div)
  %conv = sitofp i32 %iSign to double
  %conv2 = uitofp i32 %N to double
  %div3 = fdiv fast double 0x400921FB54442D18, %conv2
  %0 = tail call fast double @llvm.sin.f64(double %div3)
  %mul = fmul fast double %0, %conv
  %sub = sub nsw i32 0, %iSign
  %conv4 = sitofp i32 %sub to double
  %div6 = fdiv fast double 0x401921FB54442D18, %conv2
  %1 = tail call fast double @llvm.sin.f64(double %div6)
  %mul7 = fmul fast double %1, %conv4
  %2 = fmul fast double %mul, %mul
  %mul9 = fmul fast double %2, -2.000000e+00
  %cmp10108.not = icmp eq i32 %N, 0
  br i1 %cmp10108.not, label %return, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %tiv = phi i64 [ 0, %for.body.preheader ], [ %tiv.next, %for.body ]
  %wr.0111 = phi double [ %add47, %for.body ], [ 1.000000e+00, %for.body.preheader ]
  %wi.0110 = phi double [ %add51, %for.body ], [ 0.000000e+00, %for.body.preheader ]
  %3 = shl nuw i64 %tiv, 1
  %4 = trunc i64 %3 to i32
  %tiv.next = add nuw nsw i64 %tiv, 1
  %add = add i32 %4, %N
  %idxprom = sext i32 %add to i64
  %arrayidx = getelementptr inbounds double, double* %data, i64 %idxprom
  %5 = load double, double* %arrayidx, align 8, !tbaa !46
  %mul11 = fmul fast double %5, %wr.0111
  %add12 = add nsw i32 %add, 1
  %idxprom13 = sext i32 %add12 to i64
  %arrayidx14 = getelementptr inbounds double, double* %data, i64 %idxprom13
  %6 = load double, double* %arrayidx14, align 8, !tbaa !46
  %mul15 = fmul fast double %6, %wi.0110
  %sub16 = fsub fast double %mul11, %mul15
  %mul19 = fmul fast double %5, %wi.0110
  %mul23 = fmul fast double %6, %wr.0111
  %add24 = fadd fast double %mul23, %mul19
  %idxprom25 = zext i32 %4 to i64
  %arrayidx26 = getelementptr inbounds double, double* %data, i64 %idxprom25
  %7 = load double, double* %arrayidx26, align 8, !tbaa !46
  %sub27 = fsub fast double %7, %sub16
  store double %sub27, double* %arrayidx, align 8, !tbaa !46
  %add30 = or i32 %4, 1
  %idxprom31 = zext i32 %add30 to i64
  %arrayidx32 = getelementptr inbounds double, double* %data, i64 %idxprom31
  %8 = load double, double* %arrayidx32, align 8, !tbaa !46
  %sub33 = fsub fast double %8, %add24
  store double %sub33, double* %arrayidx14, align 8, !tbaa !46
  %9 = load double, double* %arrayidx26, align 8, !tbaa !46
  %add39 = fadd fast double %9, %sub16
  store double %add39, double* %arrayidx26, align 8, !tbaa !46
  %10 = load double, double* %arrayidx32, align 8, !tbaa !46
  %add43 = fadd fast double %10, %add24
  store double %add43, double* %arrayidx32, align 8, !tbaa !46
  %mul44 = fmul fast double %wr.0111, %mul9
  %11 = fmul fast double %wi.0110, %mul7
  %sub46 = fsub fast double %wr.0111, %11
  %add47 = fadd fast double %sub46, %mul44
  %mul48 = fmul fast double %wi.0110, %mul9
  %mul49 = fmul fast double %wr.0111, %mul7
  %add50 = fadd fast double %mul48, %wi.0110
  %add51 = fadd fast double %add50, %mul49
  %add52 = add i32 %4, 2
  %cmp10 = icmp ult i32 %add52, %N
  br i1 %cmp10, label %for.body, label %return.loopexit, !llvm.loop !160

return.loopexit:                                  ; preds = %for.body
  br label %return

return:                                           ; preds = %return.loopexit, %if.end, %entry
  ret void
}

; Function Attrs: nofree nounwind uwtable mustprogress
define internal fastcc i8* @augmented__ZL14recursiveApplyPdij(double* %data, double* %"data'", i32 %iSign, i32 %N) unnamed_addr #16 {
entry:
  %malloccall1 = tail call noalias nonnull dereferenceable(32) dereferenceable_or_null(32) i8* @malloc(i64 32)
  %tapemem = bitcast i8* %malloccall1 to { i8*, i8*, double*, double* }*
  %0 = alloca i8*, align 8
  store i8* %malloccall1, i8** %0, align 8
  %"iv'ac" = alloca i64, align 8
  %wr.0111_cache = alloca double*, align 8
  %wi.0110_cache = alloca double*, align 8
  %cmp = icmp eq i32 %N, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %div = lshr i32 %N, 1
  %1 = call fastcc i8* @augmented__ZL14recursiveApplyPdij(double* %data, double* %"data'", i32 %iSign, i32 %div)
  %2 = getelementptr inbounds { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %tapemem, i32 0, i32 1
  store i8* %1, i8** %2, align 8
  %idx.ext = zext i32 %N to i64
  %"add.ptr'ipg" = getelementptr inbounds double, double* %"data'", i64 %idx.ext
  %add.ptr = getelementptr inbounds double, double* %data, i64 %idx.ext
  %3 = call fastcc i8* @augmented__ZL14recursiveApplyPdij(double* %add.ptr, double* %"add.ptr'ipg", i32 %iSign, i32 %div)
  %4 = getelementptr inbounds { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %tapemem, i32 0, i32 0
  store i8* %3, i8** %4, align 8
  %conv = sitofp i32 %iSign to double
  %conv2 = uitofp i32 %N to double
  %div3 = fdiv fast double 0x400921FB54442D18, %conv2
  %5 = tail call fast double @llvm.sin.f64(double %div3)
  %mul = fmul fast double %5, %conv
  %sub = sub nsw i32 0, %iSign
  %conv4 = sitofp i32 %sub to double
  %div6 = fdiv fast double 0x401921FB54442D18, %conv2
  %6 = tail call fast double @llvm.sin.f64(double %div6)
  %mul7 = fmul fast double %6, %conv4
  %7 = fmul fast double %mul, %mul
  %mul9 = fmul fast double %7, -2.000000e+00
  %cmp10108.not = icmp eq i32 %N, 0
  br i1 %cmp10108.not, label %return, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %8 = add i32 %N, -1
  %9 = zext i32 %8 to i64
  %10 = lshr i64 %9, 1
  %11 = add nuw i64 %10, 1
  %mallocsize = mul nuw nsw i64 %11, 8
  %malloccall = tail call noalias nonnull i8* @malloc(i64 %mallocsize)
  %wr.0111_malloccache = bitcast i8* %malloccall to double*
  %12 = getelementptr inbounds { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %tapemem, i32 0, i32 2
  store double* %wr.0111_malloccache, double** %12, align 8
  store double* %wr.0111_malloccache, double** %wr.0111_cache, align 8, !invariant.group !199
  %mallocsize8 = mul nuw nsw i64 %11, 8
  %malloccall9 = tail call noalias nonnull i8* @malloc(i64 %mallocsize8)
  %wi.0110_malloccache = bitcast i8* %malloccall9 to double*
  %13 = getelementptr inbounds { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %tapemem, i32 0, i32 3
  store double* %wi.0110_malloccache, double** %13, align 8
  store double* %wi.0110_malloccache, double** %wi.0110_cache, align 8, !invariant.group !200
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %iv = phi i64 [ %iv.next, %for.body ], [ 0, %for.body.preheader ]
  %wr.0111 = phi double [ %add47, %for.body ], [ 1.000000e+00, %for.body.preheader ]
  %wi.0110 = phi double [ %add51, %for.body ], [ 0.000000e+00, %for.body.preheader ]
  %14 = load double*, double** %wr.0111_cache, align 8, !dereferenceable !181, !invariant.group !199
  %15 = getelementptr inbounds double, double* %14, i64 %iv
  store double %wr.0111, double* %15, align 8, !invariant.group !201
  %16 = load double*, double** %wi.0110_cache, align 8, !dereferenceable !181, !invariant.group !200
  %17 = getelementptr inbounds double, double* %16, i64 %iv
  store double %wi.0110, double* %17, align 8, !invariant.group !202
  %iv.next = add nuw nsw i64 %iv, 1
  %18 = shl nuw i64 %iv, 1
  %19 = trunc i64 %18 to i32
  %add = add i32 %19, %N
  %idxprom = sext i32 %add to i64
  %add12 = add nsw i32 %add, 1
  %idxprom13 = sext i32 %add12 to i64
  %idxprom25 = zext i32 %19 to i64
  %add30 = or i32 %19, 1
  %idxprom31 = zext i32 %add30 to i64
  %mul44 = fmul fast double %wr.0111, %mul9
  %20 = fmul fast double %wi.0110, %mul7
  %sub46 = fsub fast double %wr.0111, %20
  %add47 = fadd fast double %sub46, %mul44
  %mul48 = fmul fast double %wi.0110, %mul9
  %mul49 = fmul fast double %wr.0111, %mul7
  %add50 = fadd fast double %mul48, %wi.0110
  %add51 = fadd fast double %add50, %mul49
  %add52 = add i32 %19, 2
  %cmp10 = icmp ult i32 %add52, %N
  br i1 %cmp10, label %for.body, label %return.loopexit, !llvm.loop !160

return.loopexit:                                  ; preds = %for.body
  br label %return

return:                                           ; preds = %return.loopexit, %if.end, %entry
  %21 = load i8*, i8** %0, align 8
  ret i8* %21
}

; Function Attrs: nofree nounwind uwtable mustprogress
define internal fastcc void @diffe_ZL14recursiveApplyPdij.3(double* %data, double* %"data'", i32 %iSign, i32 %N, { i8*, i8*, double*, double* } %tapeArg) unnamed_addr #16 {
entry:
  %"iv'ac" = alloca i64, align 8
  %tapeld_cache = alloca { i8*, i8*, double*, double* }, align 32
  %tapeld5_cache = alloca { i8*, i8*, double*, double* }, align 32
  %"add43'de" = alloca double, align 8
  store double 0.000000e+00, double* %"add43'de", align 8
  %"'de" = alloca double, align 8
  store double 0.000000e+00, double* %"'de", align 8
  %"add24'de" = alloca double, align 8
  store double 0.000000e+00, double* %"add24'de", align 8
  %"add39'de" = alloca double, align 8
  store double 0.000000e+00, double* %"add39'de", align 8
  %"'de9" = alloca double, align 8
  store double 0.000000e+00, double* %"'de9", align 8
  %"sub16'de" = alloca double, align 8
  store double 0.000000e+00, double* %"sub16'de", align 8
  %"sub33'de" = alloca double, align 8
  store double 0.000000e+00, double* %"sub33'de", align 8
  %"'de11" = alloca double, align 8
  store double 0.000000e+00, double* %"'de11", align 8
  %"sub27'de" = alloca double, align 8
  store double 0.000000e+00, double* %"sub27'de", align 8
  %"'de13" = alloca double, align 8
  store double 0.000000e+00, double* %"'de13", align 8
  %"mul23'de" = alloca double, align 8
  store double 0.000000e+00, double* %"mul23'de", align 8
  %"mul19'de" = alloca double, align 8
  store double 0.000000e+00, double* %"mul19'de", align 8
  %wr.0111_cache = alloca double*, align 8
  %"'de18" = alloca double, align 8
  store double 0.000000e+00, double* %"'de18", align 8
  %wi.0110_cache = alloca double*, align 8
  %"'de23" = alloca double, align 8
  store double 0.000000e+00, double* %"'de23", align 8
  %"mul11'de" = alloca double, align 8
  store double 0.000000e+00, double* %"mul11'de", align 8
  %"mul15'de" = alloca double, align 8
  store double 0.000000e+00, double* %"mul15'de", align 8
  %0 = extractvalue { i8*, i8*, double*, double* } %tapeArg, 2
  %mdyncache_fromtape_cache = alloca double*, align 8
  store double* %0, double** %mdyncache_fromtape_cache, align 8
  %1 = extractvalue { i8*, i8*, double*, double* } %tapeArg, 3
  %mdyncache_fromtape_cache32 = alloca double*, align 8
  store double* %1, double** %mdyncache_fromtape_cache32, align 8
  %cmp = icmp eq i32 %N, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %div = lshr i32 %N, 1, !node !179
  %tapeArg4 = extractvalue { i8*, i8*, double*, double* } %tapeArg, 1
  %2 = bitcast i8* %tapeArg4 to { i8*, i8*, double*, double* }*
  %tapeld5 = load { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %2, align 8, !enzyme_mustcache !183
  tail call void @free(i8* nonnull %tapeArg4)
  %idx.ext = zext i32 %N to i64, !node !179
  %"add.ptr'ipg" = getelementptr inbounds double, double* %"data'", i64 %idx.ext, !node !179
  %add.ptr = getelementptr inbounds double, double* %data, i64 %idx.ext, !node !179
  %tapeArg3 = extractvalue { i8*, i8*, double*, double* } %tapeArg, 0
  %3 = bitcast i8* %tapeArg3 to { i8*, i8*, double*, double* }*
  %tapeld = load { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %3, align 8, !enzyme_mustcache !183
  store { i8*, i8*, double*, double* } %tapeld, { i8*, i8*, double*, double* }* %tapeld_cache, align 32, !invariant.group !203
  store { i8*, i8*, double*, double* } %tapeld5, { i8*, i8*, double*, double* }* %tapeld5_cache, align 32, !invariant.group !204
  tail call void @free(i8* nonnull %tapeArg3)
  %cmp10108.not = icmp eq i32 %N, 0
  br i1 %cmp10108.not, label %return, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %4 = add i32 %N, -1, !node !179
  %5 = zext i32 %4 to i64, !node !179
  %6 = lshr i64 %5, 1, !node !179
  %7 = add nuw i64 %6, 1, !node !179
  %mallocsize = mul nuw nsw i64 %7, 8, !node !179
  %mallocsize19 = mul nuw nsw i64 %7, 8, !node !179
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %iv = phi i64 [ %iv.next, %for.body ], [ 0, %for.body.preheader ]
  %8 = load double*, double** %mdyncache_fromtape_cache32, align 8, !dereferenceable !181, !invariant.group !205
  %9 = getelementptr inbounds double, double* %8, i64 %iv
  %wi.0110 = load double, double* %9, align 8, !invariant.group !206
  %10 = load double*, double** %mdyncache_fromtape_cache, align 8, !dereferenceable !181, !invariant.group !207
  %11 = getelementptr inbounds double, double* %10, i64 %iv
  %wr.0111 = load double, double* %11, align 8, !invariant.group !208
  %iv.next = add nuw nsw i64 %iv, 1
  %12 = shl nuw i64 %iv, 1
  %13 = trunc i64 %12 to i32
  %add = add i32 %13, %N, !node !179
  %idxprom = sext i32 %add to i64, !node !179
  %"arrayidx'ipg" = getelementptr inbounds double, double* %"data'", i64 %idxprom, !node !179
  %add12 = add nsw i32 %add, 1, !node !179
  %idxprom13 = sext i32 %add12 to i64, !node !179
  %"arrayidx14'ipg" = getelementptr inbounds double, double* %"data'", i64 %idxprom13, !node !179
  %idxprom25 = zext i32 %13 to i64
  %"arrayidx26'ipg" = getelementptr inbounds double, double* %"data'", i64 %idxprom25, !node !179
  %add30 = or i32 %13, 1
  %idxprom31 = zext i32 %add30 to i64
  %"arrayidx32'ipg" = getelementptr inbounds double, double* %"data'", i64 %idxprom31, !node !179
  %add52 = add i32 %13, 2
  %cmp10 = icmp ult i32 %add52, %N
  br i1 %cmp10, label %for.body, label %return.loopexit, !llvm.loop !160

return.loopexit:                                  ; preds = %for.body
  br label %return

return:                                           ; preds = %return.loopexit, %if.end, %entry
  br label %invertreturn

invertentry:                                      ; preds = %invertreturn, %invertif.end
  ret void

invertif.end:                                     ; preds = %staging, %invertfor.body.preheader
  %idx.ext_unwrap = zext i32 %N to i64
  %add.ptr_unwrap = getelementptr inbounds double, double* %data, i64 %idx.ext_unwrap
  %"add.ptr'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %idx.ext_unwrap
  %div_unwrap = lshr i32 %N, 1
  %14 = load { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %tapeld_cache, align 32, !invariant.group !203
  call fastcc void @diffe_ZL14recursiveApplyPdij.3(double* %add.ptr_unwrap, double* %"add.ptr'ipg_unwrap", i32 %iSign, i32 %div_unwrap, { i8*, i8*, double*, double* } %14)
  %15 = load { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %tapeld5_cache, align 32, !invariant.group !204
  call fastcc void @diffe_ZL14recursiveApplyPdij.3(double* %data, double* %"data'", i32 %iSign, i32 %div_unwrap, { i8*, i8*, double*, double* } %15)
  br label %invertentry

invertfor.body.preheader:                         ; preds = %invertfor.body
  %16 = load i64, i64* %"iv'ac", align 8
  %17 = load i64, i64* %"iv'ac", align 8
  %18 = load i64, i64* %"iv'ac", align 8
  %forfree31 = load double*, double** %mdyncache_fromtape_cache, align 8, !dereferenceable !181, !invariant.group !207
  %19 = bitcast double* %forfree31 to i8*
  tail call void @free(i8* nonnull %19)
  %20 = load i64, i64* %"iv'ac", align 8
  %forfree = load double*, double** %mdyncache_fromtape_cache32, align 8, !dereferenceable !181, !invariant.group !205
  %21 = bitcast double* %forfree to i8*
  tail call void @free(i8* nonnull %21)
  br label %invertif.end

invertfor.body:                                   ; preds = %mergeinvertfor.body_return.loopexit, %incinvertfor.body
  %22 = load i64, i64* %"iv'ac", align 8
  %_unwrap = shl nuw i64 %22, 1
  %_unwrap7 = trunc i64 %_unwrap to i32
  %add30_unwrap = or i32 %_unwrap7, 1
  %idxprom31_unwrap = zext i32 %add30_unwrap to i64
  %"arrayidx32'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %idxprom31_unwrap
  %23 = load double, double* %"arrayidx32'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx32'ipg_unwrap", align 8
  %24 = load double, double* %"add43'de", align 8
  %25 = fadd fast double %24, %23
  store double %25, double* %"add43'de", align 8
  %26 = load double, double* %"add43'de", align 8
  store double 0.000000e+00, double* %"add43'de", align 8
  %27 = load double, double* %"'de", align 8
  %28 = fadd fast double %27, %26
  store double %28, double* %"'de", align 8
  %29 = load double, double* %"add24'de", align 8
  %30 = fadd fast double %29, %26
  store double %30, double* %"add24'de", align 8
  %31 = load double, double* %"'de", align 8
  store double 0.000000e+00, double* %"'de", align 8
  %32 = load double, double* %"arrayidx32'ipg_unwrap", align 8
  %33 = fadd fast double %32, %31
  store double %33, double* %"arrayidx32'ipg_unwrap", align 8
  %34 = load i64, i64* %"iv'ac", align 8
  %idxprom25_unwrap = zext i32 %_unwrap7 to i64
  %"arrayidx26'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %idxprom25_unwrap
  %35 = load double, double* %"arrayidx26'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx26'ipg_unwrap", align 8
  %36 = load double, double* %"add39'de", align 8
  %37 = fadd fast double %36, %35
  store double %37, double* %"add39'de", align 8
  %38 = load double, double* %"add39'de", align 8
  store double 0.000000e+00, double* %"add39'de", align 8
  %39 = load double, double* %"'de9", align 8
  %40 = fadd fast double %39, %38
  store double %40, double* %"'de9", align 8
  %41 = load double, double* %"sub16'de", align 8
  %42 = fadd fast double %41, %38
  store double %42, double* %"sub16'de", align 8
  %43 = load double, double* %"'de9", align 8
  store double 0.000000e+00, double* %"'de9", align 8
  %44 = load double, double* %"arrayidx26'ipg_unwrap", align 8
  %45 = fadd fast double %44, %43
  store double %45, double* %"arrayidx26'ipg_unwrap", align 8
  %46 = load i64, i64* %"iv'ac", align 8
  %add_unwrap = add i32 %_unwrap7, %N
  %add12_unwrap = add nsw i32 %add_unwrap, 1
  %idxprom13_unwrap = sext i32 %add12_unwrap to i64
  %"arrayidx14'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %idxprom13_unwrap
  %47 = load double, double* %"arrayidx14'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx14'ipg_unwrap", align 8
  %48 = load double, double* %"sub33'de", align 8
  %49 = fadd fast double %48, %47
  store double %49, double* %"sub33'de", align 8
  %50 = load double, double* %"sub33'de", align 8
  %51 = fneg fast double %50
  store double 0.000000e+00, double* %"sub33'de", align 8
  %52 = load double, double* %"'de11", align 8
  %53 = fadd fast double %52, %50
  store double %53, double* %"'de11", align 8
  %54 = load double, double* %"add24'de", align 8
  %55 = fadd fast double %54, %51
  store double %55, double* %"add24'de", align 8
  %56 = load double, double* %"'de11", align 8
  store double 0.000000e+00, double* %"'de11", align 8
  %57 = load double, double* %"arrayidx32'ipg_unwrap", align 8
  %58 = fadd fast double %57, %56
  store double %58, double* %"arrayidx32'ipg_unwrap", align 8
  %59 = load i64, i64* %"iv'ac", align 8
  %idxprom_unwrap = sext i32 %add_unwrap to i64
  %"arrayidx'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %idxprom_unwrap
  %60 = load double, double* %"arrayidx'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx'ipg_unwrap", align 8
  %61 = load double, double* %"sub27'de", align 8
  %62 = fadd fast double %61, %60
  store double %62, double* %"sub27'de", align 8
  %63 = load double, double* %"sub27'de", align 8
  %64 = fneg fast double %63
  store double 0.000000e+00, double* %"sub27'de", align 8
  %65 = load double, double* %"'de13", align 8
  %66 = fadd fast double %65, %63
  store double %66, double* %"'de13", align 8
  %67 = load double, double* %"sub16'de", align 8
  %68 = fadd fast double %67, %64
  store double %68, double* %"sub16'de", align 8
  %69 = load double, double* %"'de13", align 8
  store double 0.000000e+00, double* %"'de13", align 8
  %70 = load double, double* %"arrayidx26'ipg_unwrap", align 8
  %71 = fadd fast double %70, %69
  store double %71, double* %"arrayidx26'ipg_unwrap", align 8
  %72 = load double, double* %"add24'de", align 8
  store double 0.000000e+00, double* %"add24'de", align 8
  %73 = load double, double* %"mul23'de", align 8
  %74 = fadd fast double %73, %72
  store double %74, double* %"mul23'de", align 8
  %75 = load double, double* %"mul19'de", align 8
  %76 = fadd fast double %75, %72
  store double %76, double* %"mul19'de", align 8
  %77 = load double, double* %"mul23'de", align 8
  %78 = load i64, i64* %"iv'ac", align 8
  %_unwrap15 = add i32 %N, -1
  %_unwrap16 = zext i32 %_unwrap15 to i64
  %_unwrap17 = lshr i64 %_unwrap16, 1
  %79 = add nuw i64 %_unwrap17, 1
  %80 = extractvalue { i8*, i8*, double*, double* } %tapeArg, 2
  %81 = load i64, i64* %"iv'ac", align 8
  %82 = getelementptr inbounds double, double* %80, i64 %81
  %83 = load double, double* %82, align 8, !invariant.group !209
  %m0diffe = fmul fast double %77, %83
  store double 0.000000e+00, double* %"mul23'de", align 8
  %84 = load double, double* %"'de18", align 8
  %85 = fadd fast double %84, %m0diffe
  store double %85, double* %"'de18", align 8
  %86 = load double, double* %"mul19'de", align 8
  %87 = load i64, i64* %"iv'ac", align 8
  %88 = add nuw i64 %_unwrap17, 1
  %89 = extractvalue { i8*, i8*, double*, double* } %tapeArg, 3
  %90 = load i64, i64* %"iv'ac", align 8
  %91 = getelementptr inbounds double, double* %89, i64 %90
  %92 = load double, double* %91, align 8, !invariant.group !210
  %m0diffe22 = fmul fast double %86, %92
  store double 0.000000e+00, double* %"mul19'de", align 8
  %93 = load double, double* %"'de23", align 8
  %94 = fadd fast double %93, %m0diffe22
  store double %94, double* %"'de23", align 8
  %95 = load double, double* %"sub16'de", align 8
  %96 = fneg fast double %95
  store double 0.000000e+00, double* %"sub16'de", align 8
  %97 = load double, double* %"mul11'de", align 8
  %98 = fadd fast double %97, %95
  store double %98, double* %"mul11'de", align 8
  %99 = load double, double* %"mul15'de", align 8
  %100 = fadd fast double %99, %96
  store double %100, double* %"mul15'de", align 8
  %101 = load double, double* %"mul15'de", align 8
  %m0diffe24 = fmul fast double %101, %92
  store double 0.000000e+00, double* %"mul15'de", align 8
  %102 = load double, double* %"'de18", align 8
  %103 = fadd fast double %102, %m0diffe24
  store double %103, double* %"'de18", align 8
  %104 = load double, double* %"'de18", align 8
  store double 0.000000e+00, double* %"'de18", align 8
  %105 = load double, double* %"arrayidx14'ipg_unwrap", align 8
  %106 = fadd fast double %105, %104
  store double %106, double* %"arrayidx14'ipg_unwrap", align 8
  %107 = load double, double* %"mul11'de", align 8
  %m0diffe26 = fmul fast double %107, %83
  store double 0.000000e+00, double* %"mul11'de", align 8
  %108 = load double, double* %"'de23", align 8
  %109 = fadd fast double %108, %m0diffe26
  store double %109, double* %"'de23", align 8
  %110 = load double, double* %"'de23", align 8
  store double 0.000000e+00, double* %"'de23", align 8
  %111 = load double, double* %"arrayidx'ipg_unwrap", align 8
  %112 = fadd fast double %111, %110
  store double %112, double* %"arrayidx'ipg_unwrap", align 8
  %113 = load i64, i64* %"iv'ac", align 8
  %114 = icmp eq i64 %113, 0
  %115 = xor i1 %114, true
  br i1 %114, label %invertfor.body.preheader, label %incinvertfor.body

incinvertfor.body:                                ; preds = %invertfor.body
  %116 = load i64, i64* %"iv'ac", align 8
  %117 = add nsw i64 %116, -1
  store i64 %117, i64* %"iv'ac", align 8
  br label %invertfor.body

invertreturn.loopexit:                            ; preds = %staging
  %_unwrap28 = add i32 %N, -1
  %_unwrap29 = zext i32 %_unwrap28 to i64
  %_unwrap30 = lshr i64 %_unwrap29, 1
  br label %mergeinvertfor.body_return.loopexit

mergeinvertfor.body_return.loopexit:              ; preds = %invertreturn.loopexit
  store i64 %_unwrap30, i64* %"iv'ac", align 8
  br label %invertfor.body

invertreturn:                                     ; preds = %return
  %cmp10108.not_unwrap = icmp eq i32 %N, 0
  br i1 %cmp, label %invertentry, label %staging

staging:                                          ; preds = %invertreturn
  br i1 %cmp10108.not_unwrap, label %invertif.end, label %invertreturn.loopexit
}

; Function Attrs: nofree nounwind uwtable mustprogress
define internal fastcc i8* @augmented__ZL14recursiveApplyPdij.4(double* %data, double* %"data'", i32 %iSign, i32 %N) unnamed_addr #16 {
entry:
  %malloccall1 = tail call noalias nonnull dereferenceable(32) dereferenceable_or_null(32) i8* @malloc(i64 32)
  %tapemem = bitcast i8* %malloccall1 to { i8*, i8*, double*, double* }*
  %0 = alloca i8*, align 8
  store i8* %malloccall1, i8** %0, align 8
  %"iv'ac" = alloca i64, align 8
  %wr.0111_cache = alloca double*, align 8
  %wi.0110_cache = alloca double*, align 8
  %cmp = icmp eq i32 %N, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %div = lshr i32 %N, 1
  %1 = call fastcc i8* @augmented__ZL14recursiveApplyPdij.4(double* %data, double* %"data'", i32 %iSign, i32 %div)
  %2 = getelementptr inbounds { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %tapemem, i32 0, i32 1
  store i8* %1, i8** %2, align 8
  %idx.ext = zext i32 %N to i64
  %"add.ptr'ipg" = getelementptr inbounds double, double* %"data'", i64 %idx.ext
  %add.ptr = getelementptr inbounds double, double* %data, i64 %idx.ext
  %3 = call fastcc i8* @augmented__ZL14recursiveApplyPdij.4(double* %add.ptr, double* %"add.ptr'ipg", i32 %iSign, i32 %div)
  %4 = getelementptr inbounds { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %tapemem, i32 0, i32 0
  store i8* %3, i8** %4, align 8
  %conv = sitofp i32 %iSign to double
  %conv2 = uitofp i32 %N to double
  %div3 = fdiv fast double 0x400921FB54442D18, %conv2
  %5 = tail call fast double @llvm.sin.f64(double %div3)
  %mul = fmul fast double %5, %conv
  %sub = sub nsw i32 0, %iSign
  %conv4 = sitofp i32 %sub to double
  %div6 = fdiv fast double 0x401921FB54442D18, %conv2
  %6 = tail call fast double @llvm.sin.f64(double %div6)
  %mul7 = fmul fast double %6, %conv4
  %7 = fmul fast double %mul, %mul
  %mul9 = fmul fast double %7, -2.000000e+00
  %cmp10108.not = icmp eq i32 %N, 0
  br i1 %cmp10108.not, label %return, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %8 = add i32 %N, -1
  %9 = zext i32 %8 to i64
  %10 = lshr i64 %9, 1
  %11 = add nuw i64 %10, 1
  %mallocsize = mul nuw nsw i64 %11, 8
  %malloccall = tail call noalias nonnull i8* @malloc(i64 %mallocsize)
  %wr.0111_malloccache = bitcast i8* %malloccall to double*
  %12 = getelementptr inbounds { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %tapemem, i32 0, i32 2
  store double* %wr.0111_malloccache, double** %12, align 8
  store double* %wr.0111_malloccache, double** %wr.0111_cache, align 8, !invariant.group !211
  %mallocsize8 = mul nuw nsw i64 %11, 8
  %malloccall9 = tail call noalias nonnull i8* @malloc(i64 %mallocsize8)
  %wi.0110_malloccache = bitcast i8* %malloccall9 to double*
  %13 = getelementptr inbounds { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %tapemem, i32 0, i32 3
  store double* %wi.0110_malloccache, double** %13, align 8
  store double* %wi.0110_malloccache, double** %wi.0110_cache, align 8, !invariant.group !212
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %iv = phi i64 [ %iv.next, %for.body ], [ 0, %for.body.preheader ]
  %wr.0111 = phi double [ %add47, %for.body ], [ 1.000000e+00, %for.body.preheader ]
  %wi.0110 = phi double [ %add51, %for.body ], [ 0.000000e+00, %for.body.preheader ]
  %14 = load double*, double** %wr.0111_cache, align 8, !dereferenceable !181, !invariant.group !211
  %15 = getelementptr inbounds double, double* %14, i64 %iv
  store double %wr.0111, double* %15, align 8, !invariant.group !213
  %16 = load double*, double** %wi.0110_cache, align 8, !dereferenceable !181, !invariant.group !212
  %17 = getelementptr inbounds double, double* %16, i64 %iv
  store double %wi.0110, double* %17, align 8, !invariant.group !214
  %iv.next = add nuw nsw i64 %iv, 1
  %18 = shl nuw i64 %iv, 1
  %19 = trunc i64 %18 to i32
  %add = add i32 %19, %N
  %idxprom = sext i32 %add to i64
  %add12 = add nsw i32 %add, 1
  %idxprom13 = sext i32 %add12 to i64
  %idxprom25 = zext i32 %19 to i64
  %add30 = or i32 %19, 1
  %idxprom31 = zext i32 %add30 to i64
  %mul44 = fmul fast double %wr.0111, %mul9
  %20 = fmul fast double %wi.0110, %mul7
  %sub46 = fsub fast double %wr.0111, %20
  %add47 = fadd fast double %sub46, %mul44
  %mul48 = fmul fast double %wi.0110, %mul9
  %mul49 = fmul fast double %wr.0111, %mul7
  %add50 = fadd fast double %mul48, %wi.0110
  %add51 = fadd fast double %add50, %mul49
  %add52 = add i32 %19, 2
  %cmp10 = icmp ult i32 %add52, %N
  br i1 %cmp10, label %for.body, label %return.loopexit, !llvm.loop !160

return.loopexit:                                  ; preds = %for.body
  br label %return

return:                                           ; preds = %return.loopexit, %if.end, %entry
  %21 = load i8*, i8** %0, align 8
  ret i8* %21
}

; Function Attrs: nofree nounwind uwtable mustprogress
define internal fastcc void @diffe_ZL14recursiveApplyPdij.5(double* %data, double* %"data'", i32 %iSign, i32 %N, { i8*, i8*, double*, double* } %tapeArg) unnamed_addr #16 {
entry:
  %"iv'ac" = alloca i64, align 8
  %tapeld_cache = alloca { i8*, i8*, double*, double* }, align 32
  %tapeld5_cache = alloca { i8*, i8*, double*, double* }, align 32
  %"add43'de" = alloca double, align 8
  store double 0.000000e+00, double* %"add43'de", align 8
  %"'de" = alloca double, align 8
  store double 0.000000e+00, double* %"'de", align 8
  %"add24'de" = alloca double, align 8
  store double 0.000000e+00, double* %"add24'de", align 8
  %"add39'de" = alloca double, align 8
  store double 0.000000e+00, double* %"add39'de", align 8
  %"'de9" = alloca double, align 8
  store double 0.000000e+00, double* %"'de9", align 8
  %"sub16'de" = alloca double, align 8
  store double 0.000000e+00, double* %"sub16'de", align 8
  %"sub33'de" = alloca double, align 8
  store double 0.000000e+00, double* %"sub33'de", align 8
  %"'de11" = alloca double, align 8
  store double 0.000000e+00, double* %"'de11", align 8
  %"sub27'de" = alloca double, align 8
  store double 0.000000e+00, double* %"sub27'de", align 8
  %"'de13" = alloca double, align 8
  store double 0.000000e+00, double* %"'de13", align 8
  %"mul23'de" = alloca double, align 8
  store double 0.000000e+00, double* %"mul23'de", align 8
  %"mul19'de" = alloca double, align 8
  store double 0.000000e+00, double* %"mul19'de", align 8
  %wr.0111_cache = alloca double*, align 8
  %"'de18" = alloca double, align 8
  store double 0.000000e+00, double* %"'de18", align 8
  %wi.0110_cache = alloca double*, align 8
  %"'de23" = alloca double, align 8
  store double 0.000000e+00, double* %"'de23", align 8
  %"mul11'de" = alloca double, align 8
  store double 0.000000e+00, double* %"mul11'de", align 8
  %"mul15'de" = alloca double, align 8
  store double 0.000000e+00, double* %"mul15'de", align 8
  %0 = extractvalue { i8*, i8*, double*, double* } %tapeArg, 2
  %mdyncache_fromtape_cache = alloca double*, align 8
  store double* %0, double** %mdyncache_fromtape_cache, align 8
  %1 = extractvalue { i8*, i8*, double*, double* } %tapeArg, 3
  %mdyncache_fromtape_cache32 = alloca double*, align 8
  store double* %1, double** %mdyncache_fromtape_cache32, align 8
  %cmp = icmp eq i32 %N, 1
  br i1 %cmp, label %return, label %if.end

if.end:                                           ; preds = %entry
  %div = lshr i32 %N, 1, !node !179
  %tapeArg4 = extractvalue { i8*, i8*, double*, double* } %tapeArg, 1
  %2 = bitcast i8* %tapeArg4 to { i8*, i8*, double*, double* }*
  %tapeld5 = load { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %2, align 8, !enzyme_mustcache !183
  tail call void @free(i8* nonnull %tapeArg4)
  %idx.ext = zext i32 %N to i64, !node !179
  %"add.ptr'ipg" = getelementptr inbounds double, double* %"data'", i64 %idx.ext, !node !179
  %add.ptr = getelementptr inbounds double, double* %data, i64 %idx.ext, !node !179
  %tapeArg3 = extractvalue { i8*, i8*, double*, double* } %tapeArg, 0
  %3 = bitcast i8* %tapeArg3 to { i8*, i8*, double*, double* }*
  %tapeld = load { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %3, align 8, !enzyme_mustcache !183
  store { i8*, i8*, double*, double* } %tapeld, { i8*, i8*, double*, double* }* %tapeld_cache, align 32, !invariant.group !215
  store { i8*, i8*, double*, double* } %tapeld5, { i8*, i8*, double*, double* }* %tapeld5_cache, align 32, !invariant.group !216
  tail call void @free(i8* nonnull %tapeArg3)
  %cmp10108.not = icmp eq i32 %N, 0
  br i1 %cmp10108.not, label %return, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end
  %4 = add i32 %N, -1, !node !179
  %5 = zext i32 %4 to i64, !node !179
  %6 = lshr i64 %5, 1, !node !179
  %7 = add nuw i64 %6, 1, !node !179
  %mallocsize = mul nuw nsw i64 %7, 8, !node !179
  %mallocsize19 = mul nuw nsw i64 %7, 8, !node !179
  br label %for.body

for.body:                                         ; preds = %for.body, %for.body.preheader
  %iv = phi i64 [ %iv.next, %for.body ], [ 0, %for.body.preheader ]
  %8 = load double*, double** %mdyncache_fromtape_cache32, align 8, !dereferenceable !181, !invariant.group !217
  %9 = getelementptr inbounds double, double* %8, i64 %iv
  %wi.0110 = load double, double* %9, align 8, !invariant.group !218
  %10 = load double*, double** %mdyncache_fromtape_cache, align 8, !dereferenceable !181, !invariant.group !219
  %11 = getelementptr inbounds double, double* %10, i64 %iv
  %wr.0111 = load double, double* %11, align 8, !invariant.group !220
  %iv.next = add nuw nsw i64 %iv, 1
  %12 = shl nuw i64 %iv, 1
  %13 = trunc i64 %12 to i32
  %add = add i32 %13, %N, !node !179
  %idxprom = sext i32 %add to i64, !node !179
  %"arrayidx'ipg" = getelementptr inbounds double, double* %"data'", i64 %idxprom, !node !179
  %add12 = add nsw i32 %add, 1, !node !179
  %idxprom13 = sext i32 %add12 to i64, !node !179
  %"arrayidx14'ipg" = getelementptr inbounds double, double* %"data'", i64 %idxprom13, !node !179
  %idxprom25 = zext i32 %13 to i64
  %"arrayidx26'ipg" = getelementptr inbounds double, double* %"data'", i64 %idxprom25, !node !179
  %add30 = or i32 %13, 1
  %idxprom31 = zext i32 %add30 to i64
  %"arrayidx32'ipg" = getelementptr inbounds double, double* %"data'", i64 %idxprom31, !node !179
  %add52 = add i32 %13, 2
  %cmp10 = icmp ult i32 %add52, %N
  br i1 %cmp10, label %for.body, label %return.loopexit, !llvm.loop !160

return.loopexit:                                  ; preds = %for.body
  br label %return

return:                                           ; preds = %return.loopexit, %if.end, %entry
  br label %invertreturn

invertentry:                                      ; preds = %invertreturn, %invertif.end
  ret void

invertif.end:                                     ; preds = %staging, %invertfor.body.preheader
  %idx.ext_unwrap = zext i32 %N to i64
  %add.ptr_unwrap = getelementptr inbounds double, double* %data, i64 %idx.ext_unwrap
  %"add.ptr'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %idx.ext_unwrap
  %div_unwrap = lshr i32 %N, 1
  %14 = load { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %tapeld_cache, align 32, !invariant.group !215
  call fastcc void @diffe_ZL14recursiveApplyPdij.5(double* %add.ptr_unwrap, double* %"add.ptr'ipg_unwrap", i32 %iSign, i32 %div_unwrap, { i8*, i8*, double*, double* } %14)
  %15 = load { i8*, i8*, double*, double* }, { i8*, i8*, double*, double* }* %tapeld5_cache, align 32, !invariant.group !216
  call fastcc void @diffe_ZL14recursiveApplyPdij.5(double* %data, double* %"data'", i32 %iSign, i32 %div_unwrap, { i8*, i8*, double*, double* } %15)
  br label %invertentry

invertfor.body.preheader:                         ; preds = %invertfor.body
  %16 = load i64, i64* %"iv'ac", align 8
  %17 = load i64, i64* %"iv'ac", align 8
  %18 = load i64, i64* %"iv'ac", align 8
  %forfree31 = load double*, double** %mdyncache_fromtape_cache, align 8, !dereferenceable !181, !invariant.group !219
  %19 = bitcast double* %forfree31 to i8*
  tail call void @free(i8* nonnull %19)
  %20 = load i64, i64* %"iv'ac", align 8
  %forfree = load double*, double** %mdyncache_fromtape_cache32, align 8, !dereferenceable !181, !invariant.group !217
  %21 = bitcast double* %forfree to i8*
  tail call void @free(i8* nonnull %21)
  br label %invertif.end

invertfor.body:                                   ; preds = %mergeinvertfor.body_return.loopexit, %incinvertfor.body
  %22 = load i64, i64* %"iv'ac", align 8
  %_unwrap = shl nuw i64 %22, 1
  %_unwrap7 = trunc i64 %_unwrap to i32
  %add30_unwrap = or i32 %_unwrap7, 1
  %idxprom31_unwrap = zext i32 %add30_unwrap to i64
  %"arrayidx32'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %idxprom31_unwrap
  %23 = load double, double* %"arrayidx32'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx32'ipg_unwrap", align 8
  %24 = load double, double* %"add43'de", align 8
  %25 = fadd fast double %24, %23
  store double %25, double* %"add43'de", align 8
  %26 = load double, double* %"add43'de", align 8
  store double 0.000000e+00, double* %"add43'de", align 8
  %27 = load double, double* %"'de", align 8
  %28 = fadd fast double %27, %26
  store double %28, double* %"'de", align 8
  %29 = load double, double* %"add24'de", align 8
  %30 = fadd fast double %29, %26
  store double %30, double* %"add24'de", align 8
  %31 = load double, double* %"'de", align 8
  store double 0.000000e+00, double* %"'de", align 8
  %32 = load double, double* %"arrayidx32'ipg_unwrap", align 8
  %33 = fadd fast double %32, %31
  store double %33, double* %"arrayidx32'ipg_unwrap", align 8
  %34 = load i64, i64* %"iv'ac", align 8
  %idxprom25_unwrap = zext i32 %_unwrap7 to i64
  %"arrayidx26'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %idxprom25_unwrap
  %35 = load double, double* %"arrayidx26'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx26'ipg_unwrap", align 8
  %36 = load double, double* %"add39'de", align 8
  %37 = fadd fast double %36, %35
  store double %37, double* %"add39'de", align 8
  %38 = load double, double* %"add39'de", align 8
  store double 0.000000e+00, double* %"add39'de", align 8
  %39 = load double, double* %"'de9", align 8
  %40 = fadd fast double %39, %38
  store double %40, double* %"'de9", align 8
  %41 = load double, double* %"sub16'de", align 8
  %42 = fadd fast double %41, %38
  store double %42, double* %"sub16'de", align 8
  %43 = load double, double* %"'de9", align 8
  store double 0.000000e+00, double* %"'de9", align 8
  %44 = load double, double* %"arrayidx26'ipg_unwrap", align 8
  %45 = fadd fast double %44, %43
  store double %45, double* %"arrayidx26'ipg_unwrap", align 8
  %46 = load i64, i64* %"iv'ac", align 8
  %add_unwrap = add i32 %_unwrap7, %N
  %add12_unwrap = add nsw i32 %add_unwrap, 1
  %idxprom13_unwrap = sext i32 %add12_unwrap to i64
  %"arrayidx14'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %idxprom13_unwrap
  %47 = load double, double* %"arrayidx14'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx14'ipg_unwrap", align 8
  %48 = load double, double* %"sub33'de", align 8
  %49 = fadd fast double %48, %47
  store double %49, double* %"sub33'de", align 8
  %50 = load double, double* %"sub33'de", align 8
  %51 = fneg fast double %50
  store double 0.000000e+00, double* %"sub33'de", align 8
  %52 = load double, double* %"'de11", align 8
  %53 = fadd fast double %52, %50
  store double %53, double* %"'de11", align 8
  %54 = load double, double* %"add24'de", align 8
  %55 = fadd fast double %54, %51
  store double %55, double* %"add24'de", align 8
  %56 = load double, double* %"'de11", align 8
  store double 0.000000e+00, double* %"'de11", align 8
  %57 = load double, double* %"arrayidx32'ipg_unwrap", align 8
  %58 = fadd fast double %57, %56
  store double %58, double* %"arrayidx32'ipg_unwrap", align 8
  %59 = load i64, i64* %"iv'ac", align 8
  %idxprom_unwrap = sext i32 %add_unwrap to i64
  %"arrayidx'ipg_unwrap" = getelementptr inbounds double, double* %"data'", i64 %idxprom_unwrap
  %60 = load double, double* %"arrayidx'ipg_unwrap", align 8
  store double 0.000000e+00, double* %"arrayidx'ipg_unwrap", align 8
  %61 = load double, double* %"sub27'de", align 8
  %62 = fadd fast double %61, %60
  store double %62, double* %"sub27'de", align 8
  %63 = load double, double* %"sub27'de", align 8
  %64 = fneg fast double %63
  store double 0.000000e+00, double* %"sub27'de", align 8
  %65 = load double, double* %"'de13", align 8
  %66 = fadd fast double %65, %63
  store double %66, double* %"'de13", align 8
  %67 = load double, double* %"sub16'de", align 8
  %68 = fadd fast double %67, %64
  store double %68, double* %"sub16'de", align 8
  %69 = load double, double* %"'de13", align 8
  store double 0.000000e+00, double* %"'de13", align 8
  %70 = load double, double* %"arrayidx26'ipg_unwrap", align 8
  %71 = fadd fast double %70, %69
  store double %71, double* %"arrayidx26'ipg_unwrap", align 8
  %72 = load double, double* %"add24'de", align 8
  store double 0.000000e+00, double* %"add24'de", align 8
  %73 = load double, double* %"mul23'de", align 8
  %74 = fadd fast double %73, %72
  store double %74, double* %"mul23'de", align 8
  %75 = load double, double* %"mul19'de", align 8
  %76 = fadd fast double %75, %72
  store double %76, double* %"mul19'de", align 8
  %77 = load double, double* %"mul23'de", align 8
  %78 = load i64, i64* %"iv'ac", align 8
  %_unwrap15 = add i32 %N, -1
  %_unwrap16 = zext i32 %_unwrap15 to i64
  %_unwrap17 = lshr i64 %_unwrap16, 1
  %79 = add nuw i64 %_unwrap17, 1
  %80 = extractvalue { i8*, i8*, double*, double* } %tapeArg, 2
  %81 = load i64, i64* %"iv'ac", align 8
  %82 = getelementptr inbounds double, double* %80, i64 %81
  %83 = load double, double* %82, align 8, !invariant.group !221
  %m0diffe = fmul fast double %77, %83
  store double 0.000000e+00, double* %"mul23'de", align 8
  %84 = load double, double* %"'de18", align 8
  %85 = fadd fast double %84, %m0diffe
  store double %85, double* %"'de18", align 8
  %86 = load double, double* %"mul19'de", align 8
  %87 = load i64, i64* %"iv'ac", align 8
  %88 = add nuw i64 %_unwrap17, 1
  %89 = extractvalue { i8*, i8*, double*, double* } %tapeArg, 3
  %90 = load i64, i64* %"iv'ac", align 8
  %91 = getelementptr inbounds double, double* %89, i64 %90
  %92 = load double, double* %91, align 8, !invariant.group !222
  %m0diffe22 = fmul fast double %86, %92
  store double 0.000000e+00, double* %"mul19'de", align 8
  %93 = load double, double* %"'de23", align 8
  %94 = fadd fast double %93, %m0diffe22
  store double %94, double* %"'de23", align 8
  %95 = load double, double* %"sub16'de", align 8
  %96 = fneg fast double %95
  store double 0.000000e+00, double* %"sub16'de", align 8
  %97 = load double, double* %"mul11'de", align 8
  %98 = fadd fast double %97, %95
  store double %98, double* %"mul11'de", align 8
  %99 = load double, double* %"mul15'de", align 8
  %100 = fadd fast double %99, %96
  store double %100, double* %"mul15'de", align 8
  %101 = load double, double* %"mul15'de", align 8
  %m0diffe24 = fmul fast double %101, %92
  store double 0.000000e+00, double* %"mul15'de", align 8
  %102 = load double, double* %"'de18", align 8
  %103 = fadd fast double %102, %m0diffe24
  store double %103, double* %"'de18", align 8
  %104 = load double, double* %"'de18", align 8
  store double 0.000000e+00, double* %"'de18", align 8
  %105 = load double, double* %"arrayidx14'ipg_unwrap", align 8
  %106 = fadd fast double %105, %104
  store double %106, double* %"arrayidx14'ipg_unwrap", align 8
  %107 = load double, double* %"mul11'de", align 8
  %m0diffe26 = fmul fast double %107, %83
  store double 0.000000e+00, double* %"mul11'de", align 8
  %108 = load double, double* %"'de23", align 8
  %109 = fadd fast double %108, %m0diffe26
  store double %109, double* %"'de23", align 8
  %110 = load double, double* %"'de23", align 8
  store double 0.000000e+00, double* %"'de23", align 8
  %111 = load double, double* %"arrayidx'ipg_unwrap", align 8
  %112 = fadd fast double %111, %110
  store double %112, double* %"arrayidx'ipg_unwrap", align 8
  %113 = load i64, i64* %"iv'ac", align 8
  %114 = icmp eq i64 %113, 0
  %115 = xor i1 %114, true
  br i1 %114, label %invertfor.body.preheader, label %incinvertfor.body

incinvertfor.body:                                ; preds = %invertfor.body
  %116 = load i64, i64* %"iv'ac", align 8
  %117 = add nsw i64 %116, -1
  store i64 %117, i64* %"iv'ac", align 8
  br label %invertfor.body

invertreturn.loopexit:                            ; preds = %staging
  %_unwrap28 = add i32 %N, -1
  %_unwrap29 = zext i32 %_unwrap28 to i64
  %_unwrap30 = lshr i64 %_unwrap29, 1
  br label %mergeinvertfor.body_return.loopexit

mergeinvertfor.body_return.loopexit:              ; preds = %invertreturn.loopexit
  store i64 %_unwrap30, i64* %"iv'ac", align 8
  br label %invertfor.body

invertreturn:                                     ; preds = %return
  %cmp10108.not_unwrap = icmp eq i32 %N, 0
  br i1 %cmp, label %invertentry, label %staging

staging:                                          ; preds = %invertreturn
  br i1 %cmp10108.not_unwrap, label %invertif.end, label %invertreturn.loopexit
}

attributes #0 = { norecurse nounwind readonly uwtable willreturn mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { argmemonly nofree nosync nounwind willreturn }
attributes #6 = { uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #7 = { nobuiltin nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #8 = { norecurse nounwind readnone uwtable willreturn mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #9 = { uwtable mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #10 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nobuiltin nofree allocsize(0) "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #12 = { noreturn uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #13 = { nofree nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #14 = { nofree nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #15 = { uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #16 = { nofree nounwind uwtable mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #17 = { nounwind readnone uwtable willreturn mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #18 = { norecurse uwtable mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #19 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #20 = { inlinehint nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #21 = { nounwind uwtable willreturn mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #22 = { noinline noreturn nounwind }
attributes #23 = { nofree nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #24 = { argmemonly nofree nounwind readonly willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #25 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #26 = { noreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #27 = { inlinehint uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #28 = { uwtable willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #29 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #30 = { inaccessiblememonly nofree nosync nounwind willreturn }
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
!8 = !{!9, !11, i64 0}
!9 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !10, i64 0, !4, i64 8, !5, i64 16}
!10 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !11, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!9, !4, i64 8}
!13 = !{!10, !11, i64 0}
!14 = !{!4, !4, i64 0}
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
!87 = distinct !{!87, !34, !35}
!88 = distinct !{!88, !34, !35}
!89 = distinct !{!89, !34, !35}
!90 = !{!91}
!91 = distinct !{!91, !92, !"_ZNK5adept5Stack23jacobian_forward_kernelEPd: %gradient_multipass_b"}
!92 = distinct !{!92, !"_ZNK5adept5Stack23jacobian_forward_kernelEPd"}
!93 = !{!94, !91}
!94 = distinct !{!94, !95, !"_ZNK5adept8internal6PacketIdE3putEPd: %d"}
!95 = distinct !{!95, !"_ZNK5adept8internal6PacketIdE3putEPd"}
!96 = distinct !{!96, !34, !35}
!97 = distinct !{!97, !34, !35}
!98 = distinct !{!98, !34, !35}
!99 = distinct !{!99, !34, !35}
!100 = !{!101}
!101 = distinct !{!101, !102, !"_ZNK5adept5Stack23jacobian_forward_kernelEPd: %gradient_multipass_b"}
!102 = distinct !{!102, !"_ZNK5adept5Stack23jacobian_forward_kernelEPd"}
!103 = !{!104, !101}
!104 = distinct !{!104, !105, !"_ZNK5adept8internal6PacketIdE3putEPd: %d"}
!105 = distinct !{!105, !"_ZNK5adept8internal6PacketIdE3putEPd"}
!106 = distinct !{!106, !34, !35}
!107 = distinct !{!107, !34, !35}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi: %gradient_multipass_b"}
!110 = distinct !{!110, !"_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi"}
!111 = distinct !{!111, !34, !35}
!112 = distinct !{!112, !34, !35}
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
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN5adept7versionB5cxx11Ev: %agg.result"}
!130 = distinct !{!130, !"_ZN5adept7versionB5cxx11Ev"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN5adept16compiler_versionB5cxx11Ev: %agg.result"}
!133 = distinct !{!133, !"_ZN5adept16compiler_versionB5cxx11Ev"}
!134 = !{!135}
!135 = distinct !{!135, !136, !"_ZN5adept14compiler_flagsB5cxx11Ev: %agg.result"}
!136 = distinct !{!136, !"_ZN5adept14compiler_flagsB5cxx11Ev"}
!137 = !{!138, !4, i64 8}
!138 = !{!"_ZTSSi", !4, i64 8}
!139 = !{!140, !11, i64 8}
!140 = !{!"_ZTSN5adept5ArrayILi1EdLb0EEE", !11, i64 0, !11, i64 8, !141, i64 16, !141, i64 20}
!141 = !{!"_ZTSN5adept14ExpressionSizeILi1EEE", !5, i64 0}
!142 = !{!140, !11, i64 0}
!143 = distinct !{!143, !34, !35}
!144 = distinct !{!144, !34, !35}
!145 = distinct !{!145, !34, !35}
!146 = distinct !{!146, !34, !35}
!147 = distinct !{!147, !34, !35}
!148 = !{i32 0, i32 33}
!149 = distinct !{!149, !34, !35}
!150 = distinct !{!150, !34, !35}
!151 = distinct !{!151, !34, !35}
!152 = distinct !{!152, !34, !35}
!153 = distinct !{!153, !34, !35}
!154 = distinct !{!154, !34, !35}
!155 = distinct !{!155, !34, !35}
!156 = distinct !{!156, !34, !35}
!157 = distinct !{!157, !34, !35}
!158 = distinct !{!158, !34, !35}
!159 = distinct !{!159, !34, !35}
!160 = distinct !{!160, !34, !35}
!161 = !{!162}
!162 = distinct !{!162, !163, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: %agg.result"}
!163 = distinct !{!163, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!164 = distinct !{!164, !34, !35}
!165 = !{!166, !27, i64 8}
!166 = !{!"_ZTSN5adept7StorageIdEE", !11, i64 0, !27, i64 8, !27, i64 12, !27, i64 16}
!167 = !{!166, !27, i64 12}
!168 = !{!166, !27, i64 16}
!169 = !{!166, !11, i64 0}
!170 = !{!171}
!171 = distinct !{!171, !172, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: %agg.result"}
!172 = distinct !{!172, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!173 = !{!174, !176, i64 32}
!174 = !{!"_ZTSSt8ios_base", !4, i64 8, !4, i64 16, !175, i64 24, !176, i64 28, !176, i64 32, !11, i64 40, !177, i64 48, !5, i64 64, !27, i64 192, !11, i64 200, !178, i64 208}
!175 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!176 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!177 = !{!"_ZTSNSt8ios_base6_WordsE", !11, i64 0, !4, i64 8}
!178 = !{!"_ZTSSt6locale", !11, i64 0}
!179 = !{!"true"}
!180 = distinct !{}
!181 = !{i64 8}
!182 = distinct !{}
!183 = !{}
!184 = distinct !{}
!185 = distinct !{}
!186 = distinct !{}
!187 = distinct !{}
!188 = !{i64 4}
!189 = distinct !{}
!190 = distinct !{}
!191 = distinct !{}
!192 = distinct !{}
!193 = distinct !{}
!194 = distinct !{}
!195 = distinct !{}
!196 = distinct !{}
!197 = distinct !{}
!198 = distinct !{}
!199 = distinct !{}
!200 = distinct !{}
!201 = distinct !{}
!202 = distinct !{}
!203 = distinct !{}
!204 = distinct !{}
!205 = distinct !{}
!206 = distinct !{}
!207 = distinct !{}
!208 = distinct !{}
!209 = distinct !{}
!210 = distinct !{}
!211 = distinct !{}
!212 = distinct !{}
!213 = distinct !{}
!214 = distinct !{}
!215 = distinct !{}
!216 = distinct !{}
!217 = distinct !{}
!218 = distinct !{}
!219 = distinct !{}
!220 = distinct !{}
!221 = distinct !{}
!222 = distinct !{}
