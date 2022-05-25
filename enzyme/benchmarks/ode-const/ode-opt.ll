; ModuleID = 'ode-raw.ll'
source_filename = "llvm-link"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%"class.adept::invalid_operation" = type { %"class.adept::array_exception" }
%"class.adept::array_exception" = type { %"class.adept::exception" }
%"class.adept::exception" = type { %"class.std::exception", %"class.std::__cxx11::basic_string" }
%"class.std::exception" = type { i32 (...)** }
%"struct.std::_List_node" = type { %"struct.std::__detail::_List_node_base", %"struct.__gnu_cxx::__aligned_membuf" }
%"struct.__gnu_cxx::__aligned_membuf" = type { [8 x i8] }
%"class.std::basic_ostream" = type { i32 (...)**, %"class.std::basic_ios" }
%"class.std::basic_ios" = type { %"class.std::ios_base", %"class.std::basic_ostream"*, i8, i8, %"class.std::basic_streambuf"*, %"class.std::ctype"*, %"class.std::num_put"*, %"class.std::num_put"* }
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
%"class.adept::Array" = type { float*, %"class.adept::Storage"*, %"class.adept::ExpressionSize", %"class.adept::ExpressionSize" }
%"class.adept::Storage" = type opaque
%"class.adept::ExpressionSize" = type { [2 x i32] }
%"class.adept::SpecialMatrix" = type { float*, %"class.adept::Storage"*, i32, i32 }
%"class.adept::Array.12" = type { double*, %"class.adept::Storage.14"*, %"class.adept::ExpressionSize", %"class.adept::ExpressionSize" }
%"class.adept::Storage.14" = type <{ double*, i32, i32, i32, [4 x i8] }>
%"class.adept::SpecialMatrix.15" = type { double*, %"class.adept::Storage.14"*, i32, i32 }
%"struct.adept::Block" = type { [2 x double] }
%"class.std::bad_alloc" = type { %"class.std::exception" }
%"class.std::__cxx11::basic_stringstream" = type { %"class.std::basic_iostream.base", %"class.std::__cxx11::basic_stringbuf", %"class.std::basic_ios" }
%"class.std::basic_iostream.base" = type { %"class.std::basic_istream.base", %"class.std::exception" }
%"class.std::basic_istream.base" = type { i32 (...)**, i64 }
%"class.std::__cxx11::basic_stringbuf" = type { %"class.std::basic_streambuf", i32, %"class.std::__cxx11::basic_string" }
%"class.adept::Array.25" = type { float*, %"class.adept::Storage"*, %"class.adept::ExpressionSize.27", %"class.adept::ExpressionSize.27" }
%"class.adept::ExpressionSize.27" = type { [1 x i32] }
%"class.adept::Array.28" = type { double*, %"class.adept::Storage.14"*, %"class.adept::ExpressionSize.27", %"class.adept::ExpressionSize.27" }
%"class.boost::array.31" = type { [1 x %"class.adept::Active"] }
%"class.adept::Active" = type <{ double, i32, [4 x i8] }>
%"struct.adept::internal::BinaryOperation" = type { %"class.adept::Active"*, %"class.adept::Active"* }
%"class.boost::numeric::odeint::euler" = type { %"class.boost::numeric::odeint::explicit_stepper_base" }
%"class.boost::numeric::odeint::explicit_stepper_base" = type { %"class.boost::numeric::odeint::algebra_stepper_base", %"struct.adept::internal::EndIndex", [6 x i8], %"struct.boost::numeric::odeint::state_wrapper" }
%"class.boost::numeric::odeint::algebra_stepper_base" = type { %"struct.adept::internal::EndIndex" }
%"struct.boost::numeric::odeint::state_wrapper" = type { %"class.boost::array.31" }
%"struct.adept::internal::BinaryOperation.43" = type { %"class.adept::Active"*, %"struct.adept::internal::BinaryOperation" }
%"struct.boost::numeric::odeint::default_operations::scale_sum2" = type { %"class.adept::Active", %"class.adept::Active" }
%struct.timeval = type { i64, i64 }
%"class.boost::array.1" = type { [1 x double] }

$_ZN5adept17invalid_operationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN5adept9exceptionD2Ev = comdat any

$_ZN5adept9exceptionD0Ev = comdat any

$_ZNK5adept9exception4whatEv = comdat any

$_ZN5adept17invalid_operationD0Ev = comdat any

$_ZN5adept15array_exceptionD0Ev = comdat any

$_ZN5adept20stack_already_activeD0Ev = comdat any

$_ZN5adept25gradients_not_initializedD0Ev = comdat any

$_ZN5adept21feature_not_availableD0Ev = comdat any

$_ZN5adept3invIfEENS_5ArrayILi2ET_Lb0EEERKS3_ = comdat any

$_ZN5adept3invIfLNS_8internal21SymmMatrixOrientationE0EEENS_13SpecialMatrixIT_NS1_10SymmEngineIXT0_EEELb0EEERKS7_ = comdat any

$_ZN5adept3invIfLNS_8internal21SymmMatrixOrientationE1EEENS_13SpecialMatrixIT_NS1_10SymmEngineIXT0_EEELb0EEERKS7_ = comdat any

$_ZN5adept3invIdEENS_5ArrayILi2ET_Lb0EEERKS3_ = comdat any

$_ZN5adept3invIdLNS_8internal21SymmMatrixOrientationE0EEENS_13SpecialMatrixIT_NS1_10SymmEngineIXT0_EEELb0EEERKS7_ = comdat any

$_ZN5adept3invIdLNS_8internal21SymmMatrixOrientationE1EEENS_13SpecialMatrixIT_NS1_10SymmEngineIXT0_EEELb0EEERKS7_ = comdat any

$_ZN5adept41dependents_or_independents_not_identifiedD0Ev = comdat any

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

$_ZN5adept5ArrayILi1EdLb0EE6resizeEPKib = comdat any

$_ZN5adept7StorageIdE11remove_linkEv = comdat any

$__clang_call_terminate = comdat any

$_ZN5adept8internal18exception_locationB5cxx11EPKci = comdat any

$_ZN5adept17invalid_dimensionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE = comdat any

$_ZN5adept17invalid_dimensionD0Ev = comdat any

$_ZN5adept6ActiveIdEC2IdEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE = comdat any

$_ZN5adept6ActiveIdEC2ImEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE = comdat any

$_ZN5adept6ActiveIdEC2IdNS_8internal15BinaryOperationIdS1_NS3_6DivideES1_EEEERKNS_10ExpressionIT_T0_EEPNS3_9enable_ifIXaaeqsrS9_4rankLi0EsrS9_9is_activeEvE4typeE = comdat any

$_ZN5adept6ActiveIdED2Ev = comdat any

$_ZN5adept6ActiveIdEC2ERKS1_ = comdat any

$_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIN5adept6ActiveIdEELm1EEES7_S8_S7_NS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS8_RS8_S7_ES8_S7_EEmT_T0_RT1_T2_SM_SM_ = comdat any

$_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIN5adept6ActiveIdEELm1EEES7_S8_S7_NS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS8_RS8_S7_ES8_S7_NS1_13null_observerEEEmT_T0_RT1_T2_SN_SN_T3_ = comdat any

$_ZN5boost7numeric6odeint6detail15integrate_constINS1_5eulerINS_5arrayIN5adept6ActiveIdEELm1EEES8_S9_S8_NS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS9_RS9_S8_ES9_S8_NS1_13null_observerEEEmT_T0_RT1_T2_SO_SO_T3_NS1_11stepper_tagE = comdat any

$_ZN5adept6ActiveIdEC2IdNS_8internal15BinaryOperationIdS1_NS3_3AddES1_EEEERKNS_10ExpressionIT_T0_EEPNS3_9enable_ifIXaaeqsrS9_4rankLi0EsrS9_9is_activeEvE4typeE = comdat any

$_ZN5boost7numeric6odeint6detail17less_eq_with_signIN5adept6ActiveIdEEEEbT_S7_S7_ = comdat any

$_ZN5boost7numeric6odeint21explicit_stepper_baseINS1_5eulerINS_5arrayIN5adept6ActiveIdEELm1EEES7_S8_S7_NS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEELt1ES8_S7_S8_S7_S9_SA_SB_E7do_stepIPFvRKS8_RS8_S7_ES8_EEvT_RT0_S7_S7_ = comdat any

$_ZN5adept6ActiveIdEC2IiEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE = comdat any

$_ZN5adept6ActiveIdEaSIdNS_8internal15BinaryOperationIdS1_NS3_3AddENS4_IdS1_NS3_8MultiplyES1_EEEEEENS3_9enable_ifIXaasrT0_9is_activeeqsrSA_4rankLi0EERS1_E4typeERKNS_10ExpressionIT_SA_EE = comdat any

$_ZN5boost7numeric6odeint21explicit_stepper_baseINS1_5eulerINS_5arrayIN5adept6ActiveIdEELm1EEES7_S8_S7_NS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEELt1ES8_S7_S8_S7_S9_SA_SB_E10do_step_v1IPFvRKS8_RS8_S7_ES8_EEvT_RT0_S7_S7_ = comdat any

$_ZN5boost7numeric6odeint5eulerINS_5arrayIN5adept6ActiveIdEELm1EEES6_S7_S6_NS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEE12do_step_implIPFvRKS7_RS7_S6_ES7_S7_S7_EEvT_RKT0_RKT1_S6_RT2_S6_ = comdat any

$_ZNK5boost7numeric6odeint18default_operations10scale_sum2IN5adept6ActiveIdEES6_EclIS6_S6_S6_EEvRT_RKT0_RKT1_ = comdat any

$_ZN5adept5StackC2Eb = comdat any

$_ZN5adept5Stack13set_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPKS4_ = comdat any

$_ZNK5adept5Stack13get_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPS4_ = comdat any

$_ZN5adept21gradient_out_of_rangeD0Ev = comdat any

$_ZN5adept5Stack13new_recordingEv = comdat any

$_ZTWN5adept21_stack_current_threadE = comdat any

$_ZTIN5adept17invalid_operationE = comdat any

$_ZTVN5adept9exceptionE = comdat any

$_ZTIN5adept9exceptionE = comdat any

$_ZTSN5adept9exceptionE = comdat any

$_ZTSN5adept17invalid_operationE = comdat any

$_ZTIN5adept15array_exceptionE = comdat any

$_ZTSN5adept15array_exceptionE = comdat any

$_ZTVN5adept15array_exceptionE = comdat any

$_ZTVN5adept17invalid_operationE = comdat any

$_ZTVN5adept20stack_already_activeE = comdat any

$_ZTIN5adept20stack_already_activeE = comdat any

$_ZTSN5adept20stack_already_activeE = comdat any

$_ZTIN5adept18autodiff_exceptionE = comdat any

$_ZTSN5adept18autodiff_exceptionE = comdat any

$_ZTVN5adept25gradients_not_initializedE = comdat any

$_ZTIN5adept25gradients_not_initializedE = comdat any

$_ZTSN5adept25gradients_not_initializedE = comdat any

$_ZTVN5adept21feature_not_availableE = comdat any

$_ZTIN5adept21feature_not_availableE = comdat any

$_ZTSN5adept21feature_not_availableE = comdat any

$_ZTVN5adept41dependents_or_independents_not_identifiedE = comdat any

$_ZTIN5adept41dependents_or_independents_not_identifiedE = comdat any

$_ZTSN5adept41dependents_or_independents_not_identifiedE = comdat any

$_ZTIN5adept17invalid_dimensionE = comdat any

$_ZTSN5adept17invalid_dimensionE = comdat any

$_ZTVN5adept17invalid_dimensionE = comdat any

$_ZTVN5adept21gradient_out_of_rangeE = comdat any

$_ZTIN5adept21gradient_out_of_rangeE = comdat any

$_ZTSN5adept21gradient_out_of_rangeE = comdat any

@_ZN5adept8internal21array_row_major_orderE = dso_local local_unnamed_addr global i8 1, align 1
@_ZN5adept8internal17array_print_styleE = dso_local local_unnamed_addr global i32 2, align 4
@_ZN5adept8internal16vector_separatorB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN5adept8internal19vector_print_beforeB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN5adept8internal18vector_print_afterB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN5adept8internal21array_opening_bracketB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN5adept8internal21array_closing_bracketB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN5adept8internal26array_contiguous_separatorB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN5adept8internal18array_print_beforeB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN5adept8internal17array_print_afterB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN5adept8internal24array_print_empty_beforeB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN5adept8internal23array_print_empty_afterB5cxx11E = dso_local global %"class.std::__cxx11::basic_string" zeroinitializer, align 8
@_ZN5adept8internal18array_print_indentE = dso_local local_unnamed_addr global i8 1, align 1
@_ZN5adept8internal22array_print_empty_rankE = dso_local local_unnamed_addr global i8 1, align 1
@_ZN5adept21_stack_current_threadE = dso_local thread_local global %"class.adept::Stack"* null, align 8
@_ZN5adept28_stack_current_thread_unsafeE = dso_local local_unnamed_addr global %"class.adept::Stack"* null, align 8
@_ZN5adept8internal26n_storage_objects_created_E = dso_local local_unnamed_addr global i32 0, align 4
@_ZN5adept8internal26n_storage_objects_deleted_E = dso_local local_unnamed_addr global i32 0, align 4
@_ZN5adept3endE = dso_local local_unnamed_addr global %"struct.adept::internal::EndIndex" zeroinitializer, align 1
@_ZN5adept2__E = dso_local local_unnamed_addr global %"struct.adept::internal::EndIndex" zeroinitializer, align 1
@llvm.global_ctors = appending global [2 x { i32, void ()*, i8* }] [{ i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_ode_adept.cpp, i8* null }, { i32, void ()*, i8* } { i32 65535, void ()* @_GLOBAL__sub_I_ode.cpp, i8* null }]
@_ZStL8__ioinit = internal global %"struct.adept::internal::EndIndex" zeroinitializer, align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"(empty rank-\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c" array)\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.19 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.21 = private unnamed_addr constant [6 x i8] c"empty\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@.str.24 = private unnamed_addr constant [3 x i8] c";\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"\0A{\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"Array print style not understood\00", align 1
@_ZTIN5adept17invalid_operationE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_ZTSN5adept17invalid_operationE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept15array_exceptionE to i8*) }, comdat, align 8
@_ZTVN5adept9exceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept9exceptionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTIN5adept9exceptionE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @_ZTSN5adept9exceptionE, i32 0, i32 0), i8* bitcast (i8** @_ZTISt9exception to i8*) }, comdat, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external dso_local global i8*
@_ZTSN5adept9exceptionE = linkonce_odr dso_local constant [19 x i8] c"N5adept9exceptionE\00", comdat, align 1
@_ZTISt9exception = external dso_local constant i8*
@_ZTSN5adept17invalid_operationE = linkonce_odr dso_local constant [28 x i8] c"N5adept17invalid_operationE\00", comdat, align 1
@_ZTIN5adept15array_exceptionE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @_ZTSN5adept15array_exceptionE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept9exceptionE to i8*) }, comdat, align 8
@_ZTSN5adept15array_exceptionE = linkonce_odr dso_local constant [26 x i8] c"N5adept15array_exceptionE\00", comdat, align 1
@.str.88 = private unnamed_addr constant [28 x i8] c"A misuse of arrays occurred\00", align 1
@_ZTVN5adept15array_exceptionE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept15array_exceptionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::array_exception"*)* @_ZN5adept15array_exceptionD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTVN5adept17invalid_operationE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_operationE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::invalid_operation"*)* @_ZN5adept17invalid_operationD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@.str.26 = private unnamed_addr constant [78 x i8] c"Attempt to activate an adept::Stack when one is already active in this thread\00", align 1
@_ZTVN5adept20stack_already_activeE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept20stack_already_activeE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::invalid_operation"*)* @_ZN5adept20stack_already_activeD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTIN5adept20stack_already_activeE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @_ZTSN5adept20stack_already_activeE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept18autodiff_exceptionE to i8*) }, comdat, align 8
@_ZTSN5adept20stack_already_activeE = linkonce_odr dso_local constant [31 x i8] c"N5adept20stack_already_activeE\00", comdat, align 1
@_ZTIN5adept18autodiff_exceptionE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @_ZTSN5adept18autodiff_exceptionE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept9exceptionE to i8*) }, comdat, align 8
@_ZTSN5adept18autodiff_exceptionE = linkonce_odr dso_local constant [29 x i8] c"N5adept18autodiff_exceptionE\00", comdat, align 1
@.str.27 = private unnamed_addr constant [107 x i8] c"Gradients not initialized: at least one call to set_gradient(s) is needed before a forward or reverse pass\00", align 1
@_ZTVN5adept25gradients_not_initializedE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept25gradients_not_initializedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::invalid_operation"*)* @_ZN5adept25gradients_not_initializedD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTIN5adept25gradients_not_initializedE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([36 x i8], [36 x i8]* @_ZTSN5adept25gradients_not_initializedE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept18autodiff_exceptionE to i8*) }, comdat, align 8
@_ZTSN5adept25gradients_not_initializedE = linkonce_odr dso_local constant [36 x i8] c"N5adept25gradients_not_initializedE\00", comdat, align 1
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
@.str.65 = private unnamed_addr constant [74 x i8] c"Cannot perform matrix-matrix multiplication because compiled without BLAS\00", align 1
@_ZTVN5adept21feature_not_availableE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::array_exception"*)* @_ZN5adept21feature_not_availableD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTIN5adept21feature_not_availableE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @_ZTSN5adept21feature_not_availableE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept9exceptionE to i8*) }, comdat, align 8
@_ZTSN5adept21feature_not_availableE = linkonce_odr dso_local constant [32 x i8] c"N5adept21feature_not_availableE\00", comdat, align 1
@.str.66 = private unnamed_addr constant [74 x i8] c"Cannot perform matrix-vector multiplication because compiled without BLAS\00", align 1
@.str.67 = private unnamed_addr constant [84 x i8] c"Cannot perform symmetric matrix-matrix multiplication because compiled without BLAS\00", align 1
@.str.68 = private unnamed_addr constant [84 x i8] c"Cannot perform symmetric matrix-vector multiplication because compiled without BLAS\00", align 1
@.str.69 = private unnamed_addr constant [79 x i8] c"Cannot perform band matrix-vector multiplication because compiled without BLAS\00", align 1
@.str.70 = private unnamed_addr constant [53 x i8] c"Cannot invert matrix because compiled without LAPACK\00", align 1
@_ZTVSt9bad_alloc = external dso_local unnamed_addr constant { [5 x i8*] }, align 8
@_ZTISt9bad_alloc = external dso_local constant i8*
@.str.71 = private unnamed_addr constant [80 x i8] c"Dependent or independent variables not identified before a Jacobian computation\00", align 1
@_ZTVN5adept41dependents_or_independents_not_identifiedE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept41dependents_or_independents_not_identifiedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::invalid_operation"*)* @_ZN5adept41dependents_or_independents_not_identifiedD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTIN5adept41dependents_or_independents_not_identifiedE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([52 x i8], [52 x i8]* @_ZTSN5adept41dependents_or_independents_not_identifiedE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept18autodiff_exceptionE to i8*) }, comdat, align 8
@_ZTSN5adept41dependents_or_independents_not_identifiedE = linkonce_odr dso_local constant [52 x i8] c"N5adept41dependents_or_independents_not_identifiedE\00", comdat, align 1
@.str.93 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.72 = private unnamed_addr constant [6 x i8] c"2.0.6\00", align 1
@.str.73 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@.str.74 = private unnamed_addr constant [9 x i8] c" [4.2.1]\00", align 1
@.str.75 = private unnamed_addr constant [15 x i8] c"Adept version \00", align 1
@.str.76 = private unnamed_addr constant [3 x i8] c":\0A\00", align 1
@.str.77 = private unnamed_addr constant [17 x i8] c"  Compiled with \00", align 1
@.str.78 = private unnamed_addr constant [19 x i8] c"  Compiler flags \22\00", align 1
@.str.79 = private unnamed_addr constant [3 x i8] c"\22\0A\00", align 1
@.str.80 = private unnamed_addr constant [41 x i8] c"  Jacobians processed in blocks of size \00", align 1
@_ZTTNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [10 x i8*], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external dso_local unnamed_addr constant { [16 x i8*] }, align 8
@.str.81 = private unnamed_addr constant [62 x i8] c"Cannot solve linear equations because compiled without LAPACK\00", align 1
@.str.82 = private unnamed_addr constant [47 x i8] c"linspace(x1,x2,n) with n=1 only valid if x1=x2\00", align 1
@.str.98 = private unnamed_addr constant [91 x i8] c"/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src/adept2/include/adept/Storage.h\00", align 1
@.str.97 = private unnamed_addr constant [58 x i8] c"Attempt to remove more links to a storage object than set\00", align 1
@.str.99 = private unnamed_addr constant [6 x i8] c" (in \00", align 1
@.str.100 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.96 = private unnamed_addr constant [89 x i8] c"/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src/adept2/include/adept/Array.h\00", align 1
@.str.95 = private unnamed_addr constant [35 x i8] c"Negative array dimension requested\00", align 1
@_ZTIN5adept17invalid_dimensionE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @_ZTSN5adept17invalid_dimensionE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept15array_exceptionE to i8*) }, comdat, align 8
@_ZTSN5adept17invalid_dimensionE = linkonce_odr dso_local constant [28 x i8] c"N5adept17invalid_dimensionE\00", comdat, align 1
@_ZTVN5adept17invalid_dimensionE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_dimensionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::invalid_operation"*)* @_ZN5adept17invalid_dimensionD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@.str.85 = private unnamed_addr constant [25 x i8] c"Adept real %0.6f res=%f\0A\00", align 1
@.str.86 = private unnamed_addr constant [28 x i8] c"Adept forward %0.6f res=%f\0A\00", align 1
@.str.87 = private unnamed_addr constant [30 x i8] c"Adept combined %0.6f res'=%f\0A\00", align 1
@.str.89 = private unnamed_addr constant [99 x i8] c"Gradient index out of range: probably aReal objects have been created after a set_gradient(s) call\00", align 1
@_ZTVN5adept21gradient_out_of_rangeE = linkonce_odr dso_local unnamed_addr constant { [5 x i8*] } { [5 x i8*] [i8* null, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21gradient_out_of_rangeE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*), i8* bitcast (void (%"class.adept::invalid_operation"*)* @_ZN5adept21gradient_out_of_rangeD0Ev to i8*), i8* bitcast (i8* (%"class.adept::exception"*)* @_ZNK5adept9exception4whatEv to i8*)] }, comdat, align 8
@_ZTIN5adept21gradient_out_of_rangeE = linkonce_odr dso_local constant { i8*, i8*, i8* } { i8* bitcast (i8** getelementptr inbounds (i8*, i8** @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2) to i8*), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @_ZTSN5adept21gradient_out_of_rangeE, i32 0, i32 0), i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept18autodiff_exceptionE to i8*) }, comdat, align 8
@_ZTSN5adept21gradient_out_of_rangeE = linkonce_odr dso_local constant [32 x i8] c"N5adept21gradient_out_of_rangeE\00", comdat, align 1
@_ZStL8__ioinit.2 = internal global %"struct.adept::internal::EndIndex" zeroinitializer, align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"iters=%d\0A\00", align 1
@.str.3.7 = private unnamed_addr constant [26 x i8] c"Enzyme real %0.6f res=%f\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"Enzyme forward %0.6f res=%f\0A\00", align 1
@.str.5.8 = private unnamed_addr constant [31 x i8] c"Enzyme combined %0.6f res'=%f\0A\00", align 1

@_ZN5adept5StackD1Ev = dso_local unnamed_addr alias void (%"class.adept::Stack"*), void (%"class.adept::Stack"*)* @_ZN5adept5StackD2Ev
@_ZN5adept8internal16StackStorageOrigD1Ev = dso_local unnamed_addr alias void (%"class.adept::internal::StackStorageOrig"*), void (%"class.adept::internal::StackStorageOrig"*)* @_ZN5adept8internal16StackStorageOrigD2Ev

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_ode_adept.cpp() #0 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(%"struct.adept::internal::EndIndex"* nonnull dereferenceable(1) @_ZStL8__ioinit)
  %0 = tail call i32 @atexit(void ()* nonnull @__dtor__ZStL8__ioinit) #3
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E to %union.anon**), align 8, !tbaa !2
  store i16 8236, i16* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 2) to i16*), align 8
  store i64 2, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 2) to i8*), i64 2), align 2, !tbaa !10
  %1 = tail call i32 @atexit(void ()* nonnull @__dtor__ZN5adept8internal16vector_separatorB5cxx11E) #3
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E to %union.anon**), align 8, !tbaa !2
  store i8 123, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 2) to i8*), align 8, !tbaa !10
  store i64 1, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 2) to i8*), i64 1), align 1, !tbaa !10
  %2 = tail call i32 @atexit(void ()* nonnull @__dtor__ZN5adept8internal19vector_print_beforeB5cxx11E) #3
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E to %union.anon**), align 8, !tbaa !2
  store i8 125, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 2) to i8*), align 8, !tbaa !10
  store i64 1, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 2) to i8*), i64 1), align 1, !tbaa !10
  %3 = tail call i32 @atexit(void ()* nonnull @__dtor__ZN5adept8internal18vector_print_afterB5cxx11E) #3
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E to %union.anon**), align 8, !tbaa !2
  store i8 123, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 2) to i8*), align 8, !tbaa !10
  store i64 1, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 2) to i8*), i64 1), align 1, !tbaa !10
  %4 = tail call i32 @atexit(void ()* nonnull @__dtor__ZN5adept8internal21array_opening_bracketB5cxx11E) #3
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E to %union.anon**), align 8, !tbaa !2
  store i8 125, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 2) to i8*), align 8, !tbaa !10
  store i64 1, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 2) to i8*), i64 1), align 1, !tbaa !10
  %5 = tail call i32 @atexit(void ()* nonnull @__dtor__ZN5adept8internal21array_closing_bracketB5cxx11E) #3
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E to %union.anon**), align 8, !tbaa !2
  store i16 8236, i16* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 2) to i16*), align 8
  store i64 2, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 2) to i8*), i64 2), align 2, !tbaa !10
  %6 = tail call i32 @atexit(void ()* nonnull @__dtor__ZN5adept8internal26array_contiguous_separatorB5cxx11E) #3
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E to %union.anon**), align 8, !tbaa !2
  store i16 2604, i16* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 2) to i16*), align 8
  store i64 2, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 2) to i8*), i64 2), align 2, !tbaa !10
  %7 = tail call i32 @atexit(void ()* nonnull @__dtor__ZN5adept8internal30array_non_contiguous_separatorB5cxx11E) #3
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E to %union.anon**), align 8, !tbaa !2
  store i16 31498, i16* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 2) to i16*), align 8
  store i64 2, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 2) to i8*), i64 2), align 2, !tbaa !10
  %8 = tail call i32 @atexit(void ()* nonnull @__dtor__ZN5adept8internal18array_print_beforeB5cxx11E) #3
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E to %union.anon**), align 8, !tbaa !2
  store i8 125, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 2) to i8*), align 8, !tbaa !10
  store i64 1, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 2) to i8*), i64 1), align 1, !tbaa !10
  %9 = tail call i32 @atexit(void ()* nonnull @__dtor__ZN5adept8internal17array_print_afterB5cxx11E) #3
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E to %union.anon**), align 8, !tbaa !2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(12) bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 2) to i8*), i8* nonnull align 1 dereferenceable(12) getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i64 12, i1 false) #3
  store i64 12, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  store i8 0, i8* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 2, i32 1, i64 4), align 4, !tbaa !10
  %10 = tail call i32 @atexit(void ()* nonnull @__dtor__ZN5adept8internal24array_print_empty_beforeB5cxx11E) #3
  store %union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 2), %union.anon** bitcast (%"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E to %union.anon**), align 8, !tbaa !2
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(7) bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 2) to i8*), i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i64 7, i1 false) #3
  store i64 7, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  store i8 0, i8* getelementptr inbounds (i8, i8* bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 2) to i8*), i64 7), align 1, !tbaa !10
  %11 = tail call i32 @atexit(void ()* nonnull @__dtor__ZN5adept8internal23array_print_empty_afterB5cxx11E) #3
  ret void
}

declare dso_local i32 @__gxx_personality_v0(...)

declare dso_local void @_ZNSt8ios_base4InitC1Ev(%"struct.adept::internal::EndIndex"* nonnull dereferenceable(1)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZStL8__ioinit() #2 section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitD1Ev(%"struct.adept::internal::EndIndex"* @_ZStL8__ioinit)
  ret void
}

; Function Attrs: nounwind
declare dso_local i32 @atexit(void ()*) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZN5adept8internal16vector_separatorB5cxx11E() #2 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 0, i32 0), align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %0, bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 2) to i8*)
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %0) #3
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZN5adept8internal19vector_print_beforeB5cxx11E() #2 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 0, i32 0), align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %0, bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 2) to i8*)
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %0) #3
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZN5adept8internal18vector_print_afterB5cxx11E() #2 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 0, i32 0), align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %0, bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 2) to i8*)
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %0) #3
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZN5adept8internal21array_opening_bracketB5cxx11E() #2 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 0, i32 0), align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %0, bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 2) to i8*)
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %0) #3
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZN5adept8internal21array_closing_bracketB5cxx11E() #2 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 0, i32 0), align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %0, bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 2) to i8*)
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %0) #3
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZN5adept8internal26array_contiguous_separatorB5cxx11E() #2 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 0, i32 0), align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %0, bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 2) to i8*)
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %0) #3
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZN5adept8internal30array_non_contiguous_separatorB5cxx11E() #2 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 0, i32 0), align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %0, bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 2) to i8*)
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %0) #3
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZN5adept8internal18array_print_beforeB5cxx11E() #2 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 0, i32 0), align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %0, bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 2) to i8*)
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %0) #3
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZN5adept8internal17array_print_afterB5cxx11E() #2 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 0, i32 0), align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %0, bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 2) to i8*)
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %0) #3
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  ret void
}

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZN5adept8internal24array_print_empty_beforeB5cxx11E() #2 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 0, i32 0), align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %0, bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 2) to i8*)
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %0) #3
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZN5adept8internal23array_print_empty_afterB5cxx11E() #2 section ".text.startup" personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i8*, i8** getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 0, i32 0), align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %0, bitcast (%union.anon* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 2) to i8*)
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZdlPv(i8* %0) #3
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdlPv(i8*) local_unnamed_addr #5

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_base4InitD1Ev(%"struct.adept::internal::EndIndex"* nonnull dereferenceable(1)) unnamed_addr #6

; Function Attrs: uwtable
define dso_local void @_ZN5adept21set_array_print_styleENS_15ArrayPrintStyleE(i32 %ps) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %0 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i64 %0, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %1 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i57 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i64 %1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %2 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i59 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i64 %2, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %3 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i61 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i64 %3, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %4 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i63 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i64 %4, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %5 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i65 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i64 %5, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %6 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i67 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i64 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
  %7 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i69 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i64 %7, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %8 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i71 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i64 %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %9 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i73 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i64 %9, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i64 12)
  %10 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i75 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i64 %10, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i64 7)
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  %11 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i77 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i64 %11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2)
  %12 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i79 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i64 %12, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %13 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i81 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i64 %13, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %14 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i83 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i64 %14, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %15 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i85 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i64 %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %16 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i87 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i64 %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2)
  %17 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i89 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i64 %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0), i64 1)
  %18 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i91 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i64 %18, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %19 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i93 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i64 %19, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %20 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i95 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i64 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.21, i64 0, i64 0), i64 5)
  %21 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i97 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i64 %21, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  %22 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i99 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i64 %22, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %23 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i101 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i64 %23, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1)
  %24 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i103 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i64 %24, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i64 1)
  %25 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i105 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i64 %25, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %26 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i107 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i64 %26, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.19, i64 0, i64 0), i64 0)
  %27 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i109 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i64 %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %28 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i111 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i64 %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.24, i64 0, i64 0), i64 2)
  %29 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i113 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i64 %29, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1)
  %30 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i115 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i64 %30, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i64 1)
  %31 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i117 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i64 %31, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i64 0, i64 0), i64 1)
  %32 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i119 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i64 %32, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i64 0, i64 0), i64 1)
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  %33 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i121 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal16vector_separatorB5cxx11E, i64 0, i64 %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2)
  %34 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i123 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal19vector_print_beforeB5cxx11E, i64 0, i64 %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 1)
  %35 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i125 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18vector_print_afterB5cxx11E, i64 0, i64 %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
  %36 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i127 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_opening_bracketB5cxx11E, i64 0, i64 %36, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i64 1)
  %37 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i129 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal21array_closing_bracketB5cxx11E, i64 0, i64 %37, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
  %38 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i131 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal26array_contiguous_separatorB5cxx11E, i64 0, i64 %38, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i64 2)
  %39 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i133 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal30array_non_contiguous_separatorB5cxx11E, i64 0, i64 %39, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i64 2)
  %40 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i135 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal18array_print_beforeB5cxx11E, i64 0, i64 %40, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i64 0, i64 0), i64 2)
  %41 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i137 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal17array_print_afterB5cxx11E, i64 0, i64 %41, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0), i64 1)
  %42 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i139 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal24array_print_empty_beforeB5cxx11E, i64 0, i64 %42, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0), i64 12)
  %43 = load i64, i64* getelementptr inbounds (%"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i32 1), align 8, !tbaa !7
  %call3.i.i141 = tail call nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) @_ZN5adept8internal23array_print_empty_afterB5cxx11E, i64 0, i64 %43, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.17, i64 0, i64 0), i64 7)
  br label %sw.epilog

sw.default:                                       ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %44 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %44) #3
  %45 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %46 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %45, %union.anon** %46, align 8, !tbaa !2
  %47 = bitcast %union.anon* %45 to i8*
  %48 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %48) #3
  store i64 32, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i142 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %sw.default
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i142, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %49 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %49, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(32) %call5.i.i.i10.i142, i8* nonnull align 1 dereferenceable(32) getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0), i64 32, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %49, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %50 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %50, i64 %49
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %48) #3
  %51 = bitcast i8* %exception to %"class.adept::invalid_operation"*
  invoke void @_ZN5adept17invalid_operationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %51, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont49 unwind label %lpad48

invoke.cont49:                                    ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_operationE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad48

ehcleanup.thread:                                 ; preds = %sw.default
  %52 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %44) #3
  br label %cleanup.action

lpad48:                                           ; preds = %invoke.cont49, %call5.i.i.i10.i.noexc
  %cleanup.isactive.0 = phi i1 [ false, %invoke.cont49 ], [ true, %call5.i.i.i10.i.noexc ]
  %53 = landingpad { i8*, i32 }
          cleanup
  %54 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %54, %47
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i

if.then.i.i:                                      ; preds = %lpad48
  call void @_ZdlPv(i8* %54) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %44) #3
  br i1 %cleanup.isactive.0, label %cleanup.action, label %eh.resume

ehcleanup:                                        ; preds = %lpad48
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %44) #3
  br i1 %cleanup.isactive.0, label %cleanup.action, label %eh.resume

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i, %ehcleanup.thread
  %.pn146 = phi { i8*, i32 } [ %52, %ehcleanup.thread ], [ %53, %ehcleanup ], [ %53, %if.then.i.i ]
  call void @__cxa_free_exception(i8* %exception) #3
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

declare dso_local nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32), i64, i64, i8*, i64) local_unnamed_addr #1

declare dso_local i8* @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0i8(i64 immarg, i8* nocapture) #4

declare dso_local i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32), i64* nonnull align 8 dereferenceable(8), i64) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0i8(i64 immarg, i8* nocapture) #4

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept17invalid_operationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %this, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %message) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 27, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i15 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %lpad

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i15, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(27) %call5.i.i.i10.i15, i8* nonnull align 1 dereferenceable(27) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.88, i64 0, i64 0), i64 27, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %6 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %7 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %message_.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1
  %8 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %message_.i.i to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i.i, align 8, !tbaa !7
  %.cast.i.i.i = bitcast %union.anon* %8 to i8*
  store i8 0, i8* %.cast.i.i.i, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept15array_exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %10 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !17
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %11 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %11, %.cast.i.i.i
  br i1 %cmp.i.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %11) #3
  br label %_ZN5adept9exceptionD2Ev.exit.i

_ZN5adept9exceptionD2Ev.exit.i:                   ; preds = %if.then.i.i.i.i, %lpad.i
  %12 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %12) #3
  %13 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i18 = icmp eq i8* %13, %3
  br i1 %cmp.i.i.i18, label %ehcleanup, label %if.then.i.i19

invoke.cont4:                                     ; preds = %call5.i.i.i10.i.noexc
  %14 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %14, %3
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont4
  call void @_ZdlPv(i8* %14) #3
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %invoke.cont4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
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
  call void @_ZdlPv(i8* %13) #3
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i19, %lpad, %_ZN5adept9exceptionD2Ev.exit.i
  %.pn = phi { i8*, i32 } [ %15, %lpad ], [ %10, %_ZN5adept9exceptionD2Ev.exit.i ], [ %10, %if.then.i.i19 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
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
  call void @_ZdlPv(i8* %17) #3
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %lpad7
  %18 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %18) #3
  br label %eh.resume

eh.resume:                                        ; preds = %_ZN5adept9exceptionD2Ev.exit, %ehcleanup
  %.pn12 = phi { i8*, i32 } [ %16, %_ZN5adept9exceptionD2Ev.exit ], [ %.pn, %ehcleanup ]
  resume { i8*, i32 } %.pn12
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept9exceptionD2Ev(%"class.adept::exception"* nonnull dereferenceable(40) %this) unnamed_addr #2 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
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
  tail call void @_ZdlPv(i8* %1) #3
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #3
  ret void
}

declare dso_local void @__cxa_throw(i8*, i8*, i8*) local_unnamed_addr

declare dso_local void @__cxa_free_exception(i8*) local_unnamed_addr

; Function Attrs: nounwind
declare dso_local void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8)) unnamed_addr #6

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept9exceptionD0Ev(%"class.adept::exception"* nonnull dereferenceable(40) %this) unnamed_addr #2 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
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
  tail call void @_ZdlPv(i8* %1) #3
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #3
  %4 = bitcast %"class.adept::exception"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #31
  ret void
}

; Function Attrs: nounwind uwtable willreturn mustprogress
define linkonce_odr dso_local i8* @_ZNK5adept9exception4whatEv(%"class.adept::exception"* nonnull dereferenceable(40) %this) unnamed_addr #7 comdat align 2 {
entry:
  %_M_p.i.i = getelementptr inbounds %"class.adept::exception", %"class.adept::exception"* %this, i64 0, i32 1, i32 0, i32 0
  %0 = load i8*, i8** %_M_p.i.i, align 8, !tbaa !11
  ret i8* %0
}

declare dso_local void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32), %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept17invalid_operationD0Ev(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %this) unnamed_addr #8 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
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
  tail call void @_ZdlPv(i8* %1) #3
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #3
  %4 = bitcast %"class.adept::invalid_operation"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #31
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept15array_exceptionD0Ev(%"class.adept::array_exception"* nonnull dereferenceable(40) %this) unnamed_addr #8 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
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
  tail call void @_ZdlPv(i8* %1) #3
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::array_exception", %"class.adept::array_exception"* %this, i64 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #3
  %4 = bitcast %"class.adept::array_exception"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #31
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local void @_ZN5adept5StackD2Ev(%"class.adept::Stack"* nonnull readonly dereferenceable(149) %this) unnamed_addr #2 align 2 personality i32 (...)* @__gxx_personality_v0 {
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
  tail call void @_ZdaPv(i8* %4) #31
  br label %if.end10

if.end10:                                         ; preds = %delete.notnull, %if.end6
  %5 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0
  %6 = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i64 0, i32 0, i32 0, i32 0
  %_M_next.i.i = getelementptr inbounds %"class.std::__cxx11::_List_base", %"class.std::__cxx11::_List_base"* %5, i64 0, i32 0, i32 0, i32 0, i32 0
  %7 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i, align 8, !tbaa !28
  %cmp.not12.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %7, %6
  br i1 %cmp.not12.i.i, label %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i, %if.end10
  %__cur.013.i.i = phi %"struct.std::__detail::_List_node_base"* [ %8, %while.body.i.i ], [ %7, %if.end10 ]
  %_M_next4.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %__cur.013.i.i, i64 0, i32 0
  %8 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next4.i.i, align 8, !tbaa !28
  %9 = bitcast %"struct.std::__detail::_List_node_base"* %__cur.013.i.i to i8*
  tail call void @_ZdlPv(i8* %9) #3
  %cmp.not.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %8, %6
  br i1 %cmp.not.i.i, label %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit, label %while.body.i.i, !llvm.loop !30

_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit: ; preds = %while.body.i.i, %if.end10
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %10 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
  %tobool.not.i.i.i = icmp eq i32* %10, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit
  %11 = bitcast i32* %10 to i8*
  tail call void @_ZdlPv(i8* nonnull %11) #3
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %if.then.i.i.i, %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit
  %_M_start.i.i11 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %12 = load i32*, i32** %_M_start.i.i11, align 8, !tbaa !33
  %tobool.not.i.i.i12 = icmp eq i32* %12, null
  br i1 %tobool.not.i.i.i12, label %_ZNSt6vectorIiSaIiEED2Ev.exit14, label %if.then.i.i.i13

if.then.i.i.i13:                                  ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %13 = bitcast i32* %12 to i8*
  tail call void @_ZdlPv(i8* nonnull %13) #3
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit14

_ZNSt6vectorIiSaIiEED2Ev.exit14:                  ; preds = %if.then.i.i.i13, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %statement_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %14 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i, align 8, !tbaa !35
  %tobool.not.i = icmp eq %"struct.adept::internal::Statement"* %14, null
  br i1 %tobool.not.i, label %if.end.i, label %delete.notnull.i

delete.notnull.i:                                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit14
  %15 = bitcast %"struct.adept::internal::Statement"* %14 to i8*
  tail call void @_ZdaPv(i8* %15) #31
  br label %if.end.i

if.end.i:                                         ; preds = %delete.notnull.i, %_ZNSt6vectorIiSaIiEED2Ev.exit14
  %multiplier_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %16 = load double*, double** %multiplier_.i, align 8, !tbaa !37
  %tobool3.not.i = icmp eq double* %16, null
  br i1 %tobool3.not.i, label %if.end9.i, label %delete.notnull7.i

delete.notnull7.i:                                ; preds = %if.end.i
  %17 = bitcast double* %16 to i8*
  tail call void @_ZdaPv(i8* %17) #31
  br label %if.end9.i

if.end9.i:                                        ; preds = %delete.notnull7.i, %if.end.i
  %index_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %18 = load i32*, i32** %index_.i, align 8, !tbaa !38
  %tobool10.not.i = icmp eq i32* %18, null
  br i1 %tobool10.not.i, label %_ZN5adept8internal16StackStorageOrigD2Ev.exit, label %delete.notnull14.i

delete.notnull14.i:                               ; preds = %if.end9.i
  %19 = bitcast i32* %18 to i8*
  tail call void @_ZdaPv(i8* %19) #31
  br label %_ZN5adept8internal16StackStorageOrigD2Ev.exit

_ZN5adept8internal16StackStorageOrigD2Ev.exit:    ; preds = %delete.notnull14.i, %if.end9.i
  ret void
}

; Function Attrs: nobuiltin nounwind
declare dso_local void @_ZdaPv(i8*) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define dso_local void @_ZN5adept8internal16StackStorageOrigD2Ev(%"class.adept::internal::StackStorageOrig"* nocapture nonnull readonly dereferenceable(40) %this) unnamed_addr #2 align 2 {
entry:
  %statement_ = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %this, i64 0, i32 0
  %0 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !35
  %tobool.not = icmp eq %"struct.adept::internal::Statement"* %0, null
  br i1 %tobool.not, label %if.end, label %delete.notnull

delete.notnull:                                   ; preds = %entry
  %1 = bitcast %"struct.adept::internal::Statement"* %0 to i8*
  tail call void @_ZdaPv(i8* %1) #31
  br label %if.end

if.end:                                           ; preds = %delete.notnull, %entry
  %multiplier_ = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %this, i64 0, i32 1
  %2 = load double*, double** %multiplier_, align 8, !tbaa !37
  %tobool3.not = icmp eq double* %2, null
  br i1 %tobool3.not, label %if.end9, label %delete.notnull7

delete.notnull7:                                  ; preds = %if.end
  %3 = bitcast double* %2 to i8*
  tail call void @_ZdaPv(i8* %3) #31
  br label %if.end9

if.end9:                                          ; preds = %delete.notnull7, %if.end
  %index_ = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %this, i64 0, i32 2
  %4 = load i32*, i32** %index_, align 8, !tbaa !38
  %tobool10.not = icmp eq i32* %4, null
  br i1 %tobool10.not, label %if.end16, label %delete.notnull14

delete.notnull14:                                 ; preds = %if.end9
  %5 = bitcast i32* %4 to i8*
  tail call void @_ZdaPv(i8* %5) #31
  br label %if.end16

if.end16:                                         ; preds = %delete.notnull14, %if.end9
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack8activateEv(%"class.adept::Stack"* nonnull dereferenceable(149) %this) local_unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #3
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %5 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %4, %union.anon** %5, align 8, !tbaa !2
  %6 = bitcast %union.anon* %4 to i8*
  %7 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %7) #3
  store i64 77, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i26 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.then
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i26, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %8 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %8, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(77) %call5.i.i.i10.i26, i8* nonnull align 1 dereferenceable(77) getelementptr inbounds ([78 x i8], [78 x i8]* @.str.26, i64 0, i64 0), i64 77, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %8, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i26, i64 %8
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %7) #3
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %9 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %10 = getelementptr inbounds i8, i8* %exception, i64 24
  %11 = bitcast i8* %message_.i.i.i to i8**
  store i8* %10, i8** %11, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i.i27 = getelementptr inbounds i8, i8* %exception, i64 16
  %12 = bitcast i8* %_M_string_length.i.i.i.i.i.i27 to i64*
  store i64 0, i64* %12, align 8, !tbaa !7
  store i8 0, i8* %10, align 1, !tbaa !10
  %13 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept20stack_already_activeE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %13, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %9, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont12 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %14 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %13, align 8, !tbaa !17
  %15 = load i8*, i8** %11, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %15, %10
  br i1 %cmp.i.i.i.i.i, label %lpad11.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %15) #3
  br label %lpad11.body

invoke.cont12:                                    ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept20stack_already_activeE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad11.body.thread

ehcleanup.thread:                                 ; preds = %if.then
  %16 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #3
  br label %cleanup.action

lpad11.body:                                      ; preds = %if.then.i.i.i.i, %lpad.i
  %17 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %17) #3
  %18 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %18, %6
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad11.body
  call void @_ZdlPv(i8* %18) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #3
  br label %cleanup.action

lpad11.body.thread:                               ; preds = %invoke.cont12
  %19 = landingpad { i8*, i32 }
          cleanup
  %20 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i34 = icmp eq i8* %20, %6
  br i1 %cmp.i.i.i34, label %ehcleanup.thread39, label %if.then.i.i

ehcleanup.thread39:                               ; preds = %lpad11.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad11.body.thread
  call void @_ZdlPv(i8* %20) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad11.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn31 = phi { i8*, i32 } [ %16, %ehcleanup.thread ], [ %14, %ehcleanup ], [ %14, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
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

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept20stack_already_activeD0Ev(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %this) unnamed_addr #8 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
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
  tail call void @_ZdlPv(i8* %1) #3
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #3
  %4 = bitcast %"class.adept::invalid_operation"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #31
  ret void
}

; Function Attrs: norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local i32 @_ZN5adept5Stack24set_max_jacobian_threadsEi(%"class.adept::Stack"* nocapture nonnull readnone dereferenceable(149) %this, i32 %n) local_unnamed_addr #9 align 2 {
entry:
  ret i32 1
}

; Function Attrs: norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local i32 @_ZNK5adept5Stack20max_jacobian_threadsEv(%"class.adept::Stack"* nocapture nonnull readnone dereferenceable(149) %this) local_unnamed_addr #9 align 2 {
entry:
  ret i32 1
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack15compute_adjointEv(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this) local_unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  br label %for.body

for.cond.cleanup:                                 ; preds = %if.end, %if.then
  ret void

for.body:                                         ; preds = %if.end, %for.body.lr.ph
  %indvars.iv62 = phi i64 [ %4, %for.body.lr.ph ], [ %indvars.iv.next63, %if.end ]
  %ist.0.in60 = phi i32 [ %1, %for.body.lr.ph ], [ %ist.061, %if.end ]
  %ist.061 = add nsw i32 %ist.0.in60, -1
  %idxprom = sext i32 %ist.061 to i64
  %index = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %2, i64 %idxprom, i32 0
  %5 = load i32, i32* %index, align 4, !tbaa !41
  %idxprom2 = sext i32 %5 to i64
  %arrayidx3 = getelementptr inbounds double, double* %3, i64 %idxprom2
  %6 = load double, double* %arrayidx3, align 8, !tbaa !43
  store double 0.000000e+00, double* %arrayidx3, align 8, !tbaa !43
  %cmp8 = fcmp fast une double %6, 0.000000e+00
  br i1 %cmp8, label %if.then9, label %if.end

if.then9:                                         ; preds = %for.body
  %sub11 = add nsw i32 %ist.0.in60, -2
  %7 = zext i32 %sub11 to i64
  %end_plus_one = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %2, i64 %7, i32 1
  %8 = load i32, i32* %end_plus_one, align 4, !tbaa !45
  %end_plus_one15 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %2, i64 %idxprom, i32 1
  %9 = load i32, i32* %end_plus_one15, align 4, !tbaa !45
  %cmp1656 = icmp slt i32 %8, %9
  br i1 %cmp1656, label %for.body18.lr.ph, label %if.end

for.body18.lr.ph:                                 ; preds = %if.then9
  %10 = load double*, double** %multiplier_, align 8, !tbaa !37
  %11 = load i32*, i32** %index_, align 8, !tbaa !38
  %12 = sext i32 %8 to i64
  %13 = sext i32 %9 to i64
  br label %for.body18

for.body18:                                       ; preds = %for.body18, %for.body18.lr.ph
  %indvars.iv = phi i64 [ %12, %for.body18.lr.ph ], [ %indvars.iv.next, %for.body18 ]
  %arrayidx20 = getelementptr inbounds double, double* %10, i64 %indvars.iv
  %14 = load double, double* %arrayidx20, align 8, !tbaa !43
  %mul = fmul fast double %14, %6
  %arrayidx23 = getelementptr inbounds i32, i32* %11, i64 %indvars.iv
  %15 = load i32, i32* %arrayidx23, align 4, !tbaa !46
  %idxprom24 = sext i32 %15 to i64
  %arrayidx25 = getelementptr inbounds double, double* %3, i64 %idxprom24
  %16 = load double, double* %arrayidx25, align 8, !tbaa !43
  %add = fadd fast double %16, %mul
  store double %add, double* %arrayidx25, align 8, !tbaa !43
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp16 = icmp slt i64 %indvars.iv.next, %13
  br i1 %cmp16, label %for.body18, label %if.end, !llvm.loop !47

if.end:                                           ; preds = %for.body18, %if.then9, %for.body
  %cmp = icmp sgt i64 %indvars.iv62, 2
  %indvars.iv.next63 = add nsw i64 %indvars.iv62, -1
  br i1 %cmp, label %for.body, label %for.cond.cleanup, !llvm.loop !48

if.else:                                          ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %17 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %17) #3
  %18 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %19 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %18, %union.anon** %19, align 8, !tbaa !2
  %20 = bitcast %union.anon* %18 to i8*
  %21 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %21) #3
  store i64 106, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i51 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.else
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i51, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %22 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %22, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(106) %call5.i.i.i10.i51, i8* nonnull align 1 dereferenceable(106) getelementptr inbounds ([107 x i8], [107 x i8]* @.str.27, i64 0, i64 0), i64 106, i1 false) #3
  %_M_string_length.i.i.i.i.i.i50 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %22, i64* %_M_string_length.i.i.i.i.i.i50, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i51, i64 %22
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %21) #3
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %23 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %24 = getelementptr inbounds i8, i8* %exception, i64 24
  %25 = bitcast i8* %message_.i.i.i to i8**
  store i8* %24, i8** %25, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %26 = bitcast i8* %_M_string_length.i.i.i.i.i.i to i64*
  store i64 0, i64* %26, align 8, !tbaa !7
  store i8 0, i8* %24, align 1, !tbaa !10
  %27 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept25gradients_not_initializedE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %27, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %23, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont30 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %28 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %27, align 8, !tbaa !17
  %29 = load i8*, i8** %25, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %29, %24
  br i1 %cmp.i.i.i.i.i, label %lpad29.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %29) #3
  br label %lpad29.body

invoke.cont30:                                    ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept25gradients_not_initializedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad29.body.thread

ehcleanup.thread:                                 ; preds = %if.else
  %30 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #3
  br label %cleanup.action

lpad29.body:                                      ; preds = %if.then.i.i.i.i, %lpad.i
  %31 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %31) #3
  %32 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %32, %20
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad29.body
  call void @_ZdlPv(i8* %32) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #3
  br label %cleanup.action

lpad29.body.thread:                               ; preds = %invoke.cont30
  %33 = landingpad { i8*, i32 }
          cleanup
  %34 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i66 = icmp eq i8* %34, %20
  br i1 %cmp.i.i.i66, label %ehcleanup.thread71, label %if.then.i.i

ehcleanup.thread71:                               ; preds = %lpad29.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad29.body.thread
  call void @_ZdlPv(i8* %34) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad29.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %17) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn55 = phi { i8*, i32 } [ %30, %ehcleanup.thread ], [ %28, %ehcleanup ], [ %28, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread71
  %.pn54 = phi { i8*, i32 } [ %.pn55, %cleanup.action ], [ %33, %if.then.i.i ], [ %33, %ehcleanup.thread71 ]
  resume { i8*, i32 } %.pn54

unreachable:                                      ; preds = %invoke.cont30
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept25gradients_not_initializedD0Ev(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %this) unnamed_addr #8 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
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
  tail call void @_ZdlPv(i8* %1) #3
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #3
  %4 = bitcast %"class.adept::invalid_operation"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #31
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack22compute_tangent_linearEv(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this) local_unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %cmp7 = icmp slt i64 %indvars.iv.next, %9
  br i1 %cmp7, label %for.body9, label %for.cond.cleanup8, !llvm.loop !50

if.else:                                          ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %14 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %14) #3
  %15 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %16 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %15, %union.anon** %16, align 8, !tbaa !2
  %17 = bitcast %union.anon* %15 to i8*
  %18 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18) #3
  store i64 106, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i43 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.else
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i43, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %19 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %19, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(106) %call5.i.i.i10.i43, i8* nonnull align 1 dereferenceable(106) getelementptr inbounds ([107 x i8], [107 x i8]* @.str.27, i64 0, i64 0), i64 106, i1 false) #3
  %_M_string_length.i.i.i.i.i.i42 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %19, i64* %_M_string_length.i.i.i.i.i.i42, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i43, i64 %19
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18) #3
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %20 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %21 = getelementptr inbounds i8, i8* %exception, i64 24
  %22 = bitcast i8* %message_.i.i.i to i8**
  store i8* %21, i8** %22, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %23 = bitcast i8* %_M_string_length.i.i.i.i.i.i to i64*
  store i64 0, i64* %23, align 8, !tbaa !7
  store i8 0, i8* %21, align 1, !tbaa !10
  %24 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept25gradients_not_initializedE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %24, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %20, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont24 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %25 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %24, align 8, !tbaa !17
  %26 = load i8*, i8** %22, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %26, %21
  br i1 %cmp.i.i.i.i.i, label %lpad23.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %26) #3
  br label %lpad23.body

invoke.cont24:                                    ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept25gradients_not_initializedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad23.body.thread

ehcleanup.thread:                                 ; preds = %if.else
  %27 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #3
  br label %cleanup.action

lpad23.body:                                      ; preds = %if.then.i.i.i.i, %lpad.i
  %28 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %28) #3
  %29 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %29, %17
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad23.body
  call void @_ZdlPv(i8* %29) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #3
  br label %cleanup.action

lpad23.body.thread:                               ; preds = %invoke.cont24
  %30 = landingpad { i8*, i32 }
          cleanup
  %31 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i58 = icmp eq i8* %31, %17
  br i1 %cmp.i.i.i58, label %ehcleanup.thread63, label %if.then.i.i

ehcleanup.thread63:                               ; preds = %lpad23.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad23.body.thread
  call void @_ZdlPv(i8* %31) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad23.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %14) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn47 = phi { i8*, i32 } [ %27, %ehcleanup.thread ], [ %25, %ehcleanup ], [ %25, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread63
  %.pn46 = phi { i8*, i32 } [ %.pn47, %cleanup.action ], [ %30, %if.then.i.i ], [ %30, %ehcleanup.thread63 ]
  resume { i8*, i32 } %.pn46

unreachable:                                      ; preds = %invoke.cont24
  unreachable
}

; Function Attrs: nounwind uwtable
define dso_local i32 @_ZN5adept5Stack21do_register_gradientsERKi(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i32* nocapture nonnull readonly align 4 dereferenceable(4) %n) local_unnamed_addr #2 align 2 personality i32 (...)* @__gxx_personality_v0 {
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

for.body:                                         ; preds = %for.inc, %entry
  %it.sroa.0.0110 = phi %"struct.std::__detail::_List_node_base"* [ %10, %for.inc ], [ %3, %entry ]
  %_M_storage.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.0110, i64 1
  %4 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i to %"struct.adept::internal::Statement"*
  %end = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %4, i64 0, i32 1
  %5 = load i32, i32* %end, align 4, !tbaa !52
  %add9 = add nsw i32 %5, 1
  %start = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i to i32*
  %6 = load i32, i32* %start, align 4, !tbaa !54
  %sub = sub i32 %add9, %6
  %cmp = icmp sgt i32 %sub, %.pre
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %for.body
  %start.le = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i to i32*
  %add16 = add nsw i32 %.pre, %6
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
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %it.sroa.0.0110) #3
  %9 = bitcast %"struct.std::__detail::_List_node_base"* %it.sroa.0.0110 to i8*
  tail call void @_ZdlPv(i8* nonnull %9) #3
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

; Function Attrs: nounwind
declare dso_local void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16)) local_unnamed_addr #6

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack27unregister_gradient_not_topERKi(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i32* nocapture nonnull readonly align 4 dereferenceable(4) %gradient_index) local_unnamed_addr #0 align 2 personality i32 (...)* @__gxx_personality_v0 {
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
  br i1 %cmp.i165.not, label %for.body.lr.ph, label %if.then

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

for.body.lr.ph:                                   ; preds = %if.else, %land.rhs
  %8 = load i32, i32* %gradient_index, align 4, !tbaa !46
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %it.sroa.0.0263 = phi %"struct.std::__detail::_List_node_base"* [ %1, %for.body.lr.ph ], [ %20, %for.inc ]
  %_M_storage.i.i205 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.0263, i64 1
  %9 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i205 to %"struct.adept::internal::Statement"*
  %end25 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %9, i64 0, i32 1
  %10 = load i32, i32* %end25, align 4, !tbaa !52
  %add26 = add nsw i32 %10, 1
  %cmp27.not = icmp sgt i32 %8, %add26
  br i1 %cmp27.not, label %for.inc, label %if.then28

if.then28:                                        ; preds = %for.body
  %11 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i205 to %"struct.adept::internal::Statement"*
  %end25.le = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %11, i64 0, i32 1
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
  %call2.i.i.i.i.i.i201 = tail call noalias nonnull i8* @_Znwm(i64 24) #32
  %_M_storage.i.i.i.i202 = getelementptr inbounds i8, i8* %call2.i.i.i.i.i.i201, i64 16
  %16 = bitcast i8* %_M_storage.i.i.i.i202 to i64*
  %ref.tmp51.sroa.4.0.insert.ext = zext i32 %8 to i64
  %ref.tmp51.sroa.4.0.insert.shift = shl nuw i64 %ref.tmp51.sroa.4.0.insert.ext, 32
  %ref.tmp51.sroa.0.0.insert.insert = or i64 %ref.tmp51.sroa.4.0.insert.shift, %ref.tmp51.sroa.4.0.insert.ext
  store i64 %ref.tmp51.sroa.0.0.insert.insert, i64* %16, align 4
  %17 = bitcast i8* %call2.i.i.i.i.i.i201 to %"struct.std::__detail::_List_node_base"*
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %17, %"struct.std::__detail::_List_node_base"* nonnull %it.sroa.0.0263) #3
  %_M_size.i.i.i203 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %18 = load i64, i64* %_M_size.i.i.i203, align 8, !tbaa !56
  %add.i.i.i204 = add i64 %18, 1
  store i64 %add.i.i.i204, i64* %_M_size.i.i.i203, align 8, !tbaa !56
  %ref.tmp49.sroa.0.0..sroa_idx = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5, i32 0
  %19 = bitcast %"struct.std::__detail::_List_node_base"** %ref.tmp49.sroa.0.0..sroa_idx to i8**
  store i8* %call2.i.i.i.i.i.i201, i8** %19, align 8, !tbaa.struct !60
  br label %if.end147

for.inc:                                          ; preds = %for.body
  %_M_next.i200 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.0263, i64 0, i32 0
  %20 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i200, align 8, !tbaa !28
  %cmp.i197.not = icmp eq %"struct.std::__detail::_List_node_base"* %20, %0
  br i1 %cmp.i197.not, label %if.then62, label %for.body, !llvm.loop !64

if.then62:                                        ; preds = %for.inc, %if.then15.if.then62_crit_edge
  %21 = phi i32 [ %.pre, %if.then15.if.then62_crit_edge ], [ %8, %for.inc ]
  %call2.i.i.i.i.i.i = tail call noalias nonnull i8* @_Znwm(i64 24) #32
  %_M_storage.i.i.i.i = getelementptr inbounds i8, i8* %call2.i.i.i.i.i.i, i64 16
  %22 = bitcast i8* %_M_storage.i.i.i.i to i64*
  %ref.tmp64.sroa.4.0.insert.ext = zext i32 %21 to i64
  %ref.tmp64.sroa.4.0.insert.shift = shl nuw i64 %ref.tmp64.sroa.4.0.insert.ext, 32
  %ref.tmp64.sroa.0.0.insert.insert = or i64 %ref.tmp64.sroa.4.0.insert.shift, %ref.tmp64.sroa.4.0.insert.ext
  store i64 %ref.tmp64.sroa.0.0.insert.insert, i64* %22, align 4
  %23 = bitcast i8* %call2.i.i.i.i.i.i to %"struct.std::__detail::_List_node_base"*
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %23, %"struct.std::__detail::_List_node_base"* nonnull %0) #3
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
  %32 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i184 to %"struct.adept::internal::Statement"*
  %end92 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %32, i64 0, i32 1
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
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %31) #3
  %37 = bitcast %"struct.std::__detail::_List_node_base"* %31 to i8*
  tail call void @_ZdlPv(i8* nonnull %37) #3
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
  %43 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i169 to %"struct.adept::internal::Statement"*
  %end135 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %43, i64 0, i32 1
  %44 = load i32, i32* %end135, align 4, !tbaa !52
  store i32 %44, i32* %41, align 4, !tbaa !52
  %_M_size.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %45 = load i64, i64* %_M_size.i.i.i, align 8, !tbaa !56
  %sub.i.i.i = add i64 %45, -1
  store i64 %sub.i.i.i, i64* %_M_size.i.i.i, align 8, !tbaa !56
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %39) #3
  %46 = bitcast %"struct.std::__detail::_List_node_base"* %39 to i8*
  tail call void @_ZdlPv(i8* nonnull %46) #3
  br label %if.end147

if.end147:                                        ; preds = %if.then133, %land.rhs124, %if.then113, %if.then98, %if.then85, %land.rhs77, %if.then62, %if.else48
  ret void
}

; Function Attrs: nobuiltin nofree allocsize(0)
declare dso_local nonnull i8* @_Znwm(i64) local_unnamed_addr #10

; Function Attrs: nounwind
declare dso_local void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16), %"struct.std::__detail::_List_node_base"*) local_unnamed_addr #6

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack20unregister_gradientsERKiS2_(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i32* nocapture nonnull readonly align 4 dereferenceable(4) %gradient_index, i32* nocapture nonnull readonly align 4 dereferenceable(4) %n) local_unnamed_addr #0 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load i32, i32* %n, align 4, !tbaa !46
  %n_gradients_registered_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 9
  %1 = load i32, i32* %n_gradients_registered_, align 4, !tbaa !51
  %sub = sub nsw i32 %1, %0
  store i32 %sub, i32* %n_gradients_registered_, align 4, !tbaa !51
  %2 = load i32, i32* %gradient_index, align 4, !tbaa !46
  %3 = load i32, i32* %n, align 4, !tbaa !46
  %add = add nsw i32 %3, %2
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
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %11) #3
  %15 = bitcast %"struct.std::_List_node"* %8 to i8*
  tail call void @_ZdlPv(i8* nonnull %15) #3
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

for.body.preheader:                               ; preds = %if.else42, %land.rhs
  br label %for.body

if.then46:                                        ; preds = %if.else42
  %add48 = add nsw i32 %22, %3
  store i32 %add48, i32* %21, align 4, !tbaa !52
  br label %if.then157

for.body:                                         ; preds = %for.inc, %for.body.preheader
  %it54.sroa.0.0338 = phi %"struct.std::__detail::_List_node_base"* [ %34, %for.inc ], [ %17, %for.body.preheader ]
  %_M_storage.i.i282 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it54.sroa.0.0338, i64 1
  %23 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i282 to %"struct.adept::internal::Statement"*
  %end64 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %23, i64 0, i32 1
  %24 = load i32, i32* %end64, align 4, !tbaa !52
  %add65 = add nsw i32 %24, 1
  %cmp66.not = icmp sgt i32 %2, %add65
  br i1 %cmp66.not, label %for.inc, label %if.then67

if.then67:                                        ; preds = %for.body
  %25 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i282 to %"struct.adept::internal::Statement"*
  %end64.le = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %25, i64 0, i32 1
  %start69 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i282 to i32*
  %26 = load i32, i32* %start69, align 4, !tbaa !54
  %sub70 = sub nsw i32 %26, %3
  %cmp71 = icmp eq i32 %2, %sub70
  br i1 %cmp71, label %if.end119, label %if.else77

if.else77:                                        ; preds = %if.then67
  %cmp81 = icmp eq i32 %2, %add65
  br i1 %cmp81, label %if.then82, label %if.else87

if.then82:                                        ; preds = %if.else77
  %add85 = add nsw i32 %3, %24
  store i32 %add85, i32* %end64.le, align 4, !tbaa !52
  %most_recent_gap_86 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5
  %27 = bitcast %"struct.std::_List_iterator"* %most_recent_gap_86 to i64*
  %28 = ptrtoint %"struct.std::__detail::_List_node_base"* %it54.sroa.0.0338 to i64
  store i64 %28, i64* %27, align 8, !tbaa !26
  %29 = bitcast %"struct.std::__detail::_List_node_base"* %it54.sroa.0.0338 to %"struct.std::_List_node"*
  br label %if.then157

if.else87:                                        ; preds = %if.else77
  %add91 = add i32 %2, -1
  %sub92 = add i32 %add91, %3
  %call2.i.i.i.i.i.i266 = tail call noalias nonnull i8* @_Znwm(i64 24) #32
  %_M_storage.i.i.i.i267 = getelementptr inbounds i8, i8* %call2.i.i.i.i.i.i266, i64 16
  %30 = bitcast i8* %_M_storage.i.i.i.i267 to i64*
  %ref.tmp90.sroa.4.0.insert.ext = zext i32 %sub92 to i64
  %ref.tmp90.sroa.4.0.insert.shift = shl nuw i64 %ref.tmp90.sroa.4.0.insert.ext, 32
  %ref.tmp90.sroa.0.0.insert.ext = zext i32 %2 to i64
  %ref.tmp90.sroa.0.0.insert.insert = or i64 %ref.tmp90.sroa.4.0.insert.shift, %ref.tmp90.sroa.0.0.insert.ext
  store i64 %ref.tmp90.sroa.0.0.insert.insert, i64* %30, align 4
  %31 = bitcast i8* %call2.i.i.i.i.i.i266 to %"struct.std::__detail::_List_node_base"*
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %31, %"struct.std::__detail::_List_node_base"* nonnull %it54.sroa.0.0338) #3
  %_M_size.i.i.i268 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %32 = load i64, i64* %_M_size.i.i.i268, align 8, !tbaa !56
  %add.i.i.i269 = add i64 %32, 1
  store i64 %add.i.i.i269, i64* %_M_size.i.i.i268, align 8, !tbaa !56
  %ref.tmp88.sroa.0.0..sroa_idx = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5, i32 0
  %33 = bitcast %"struct.std::__detail::_List_node_base"** %ref.tmp88.sroa.0.0..sroa_idx to i8**
  store i8* %call2.i.i.i.i.i.i266, i8** %33, align 8, !tbaa.struct !60
  br label %if.end192

for.inc:                                          ; preds = %for.body
  %_M_next.i265 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it54.sroa.0.0338, i64 0, i32 0
  %34 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i265, align 8, !tbaa !28
  %cmp.i285.not = icmp eq %"struct.std::__detail::_List_node_base"* %34, %16
  br i1 %cmp.i285.not, label %if.then104, label %for.body, !llvm.loop !66

if.then104:                                       ; preds = %for.inc, %if.else
  %add107 = add i32 %2, -1
  %sub108 = add i32 %add107, %3
  %call2.i.i.i.i.i.i = tail call noalias nonnull i8* @_Znwm(i64 24) #32
  %_M_storage.i.i.i.i = getelementptr inbounds i8, i8* %call2.i.i.i.i.i.i, i64 16
  %35 = bitcast i8* %_M_storage.i.i.i.i to i64*
  %ref.tmp106.sroa.4.0.insert.ext = zext i32 %sub108 to i64
  %ref.tmp106.sroa.4.0.insert.shift = shl nuw i64 %ref.tmp106.sroa.4.0.insert.ext, 32
  %ref.tmp106.sroa.0.0.insert.ext = zext i32 %2 to i64
  %ref.tmp106.sroa.0.0.insert.insert = or i64 %ref.tmp106.sroa.4.0.insert.shift, %ref.tmp106.sroa.0.0.insert.ext
  store i64 %ref.tmp106.sroa.0.0.insert.insert, i64* %35, align 4
  %36 = bitcast i8* %call2.i.i.i.i.i.i to %"struct.std::__detail::_List_node_base"*
  tail call void @_ZNSt8__detail15_List_node_base7_M_hookEPS0_(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %36, %"struct.std::__detail::_List_node_base"* nonnull %16) #3
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
  %45 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i246 to %"struct.adept::internal::Statement"*
  %end136 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %45, i64 0, i32 1
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
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %44) #3
  %50 = bitcast %"struct.std::__detail::_List_node_base"* %44 to i8*
  tail call void @_ZdlPv(i8* nonnull %50) #3
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
  %56 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i229 to %"struct.adept::internal::Statement"*
  %end179 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %56, i64 0, i32 1
  %57 = load i32, i32* %end179, align 4, !tbaa !52
  store i32 %57, i32* %54, align 4, !tbaa !52
  %_M_size.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %58 = load i64, i64* %_M_size.i.i.i, align 8, !tbaa !56
  %sub.i.i.i = add i64 %58, -1
  store i64 %sub.i.i.i, i64* %_M_size.i.i.i, align 8, !tbaa !56
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %52) #3
  %59 = bitcast %"struct.std::__detail::_List_node_base"* %52 to i8*
  tail call void @_ZdlPv(i8* nonnull %59) #3
  br label %if.end192

if.end192:                                        ; preds = %if.then177, %land.rhs168, %if.then157, %if.then142, %if.then129, %land.rhs121, %if.then104, %if.else87, %if.end, %if.then4, %if.then
  ret void
}

; Function Attrs: uwtable mustprogress
define dso_local void @_ZNK5adept5Stack16print_statementsERSo(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, %"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os) local_unnamed_addr #11 align 2 {
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

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8), i32) local_unnamed_addr #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8), i8*, i64) local_unnamed_addr #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIdEERSoT_(%"class.std::basic_ostream"* nonnull dereferenceable(8), double) local_unnamed_addr #1

; Function Attrs: uwtable mustprogress
define dso_local zeroext i1 @_ZNK5adept5Stack15print_gradientsERSo(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, %"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os) local_unnamed_addr #11 align 2 {
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
define dso_local void @_ZNK5adept5Stack10print_gapsERSo(%"class.adept::Stack"* nonnull dereferenceable(149) %this, %"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os) local_unnamed_addr #0 align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %gap_list_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4
  %_M_next.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %it.sroa.0.022 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i, align 8, !tbaa !28
  %0 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0
  %cmp.i.not23 = icmp eq %"struct.std::__detail::_List_node_base"* %it.sroa.0.022, %0
  br i1 %cmp.i.not23, label %for.cond.cleanup, label %for.body

for.cond.cleanup:                                 ; preds = %for.body, %entry
  ret void

for.body:                                         ; preds = %for.body, %entry
  %it.sroa.0.024 = phi %"struct.std::__detail::_List_node_base"* [ %it.sroa.0.0, %for.body ], [ %it.sroa.0.022, %entry ]
  %_M_storage.i.i17 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.024, i64 1
  %1 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i17 to %"struct.adept::internal::Statement"*
  %start = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i17 to i32*
  %2 = load i32, i32* %start, align 4, !tbaa !54
  %call7 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %2)
  %call1.i16 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call7, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i64 1)
  %end = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %1, i64 0, i32 1
  %3 = load i32, i32* %end, align 4, !tbaa !52
  %call10 = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %call7, i32 %3)
  %call1.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call10, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i64 0, i64 0), i64 1)
  %_M_next.i14 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.024, i64 0, i32 0
  %it.sroa.0.0 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i14, align 8, !tbaa !28
  %cmp.i.not = icmp eq %"struct.std::__detail::_List_node_base"* %it.sroa.0.0, %0
  br i1 %cmp.i.not, label %for.cond.cleanup, label %for.body, !llvm.loop !70
}

; Function Attrs: uwtable mustprogress
define dso_local void @_ZN5adept5Stack20initialize_gradientsEv(%"class.adept::Stack"* nocapture nonnull dereferenceable(149) %this) local_unnamed_addr #11 align 2 {
entry:
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %0 = load i32, i32* %max_gradient_, align 8, !tbaa !63
  %cmp = icmp sgt i32 %0, 0
  br i1 %cmp, label %if.then, label %if.end15

if.then:                                          ; preds = %entry
  %n_allocated_gradients_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 7
  %1 = load i32, i32* %n_allocated_gradients_, align 4, !tbaa !71
  %cmp3 = icmp slt i32 %1, %0
  br i1 %cmp3, label %if.then4, label %for.body.lr.ph

if.then4:                                         ; preds = %if.then
  %gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
  %2 = load double*, double** %gradient_, align 8, !tbaa !27
  %tobool.not = icmp eq double* %2, null
  br i1 %tobool.not, label %if.end11, label %delete.notnull

delete.notnull:                                   ; preds = %if.then4
  %3 = bitcast double* %2 to i8*
  tail call void @_ZdaPv(i8* %3) #31
  %.pre = load i32, i32* %max_gradient_, align 8, !tbaa !63
  br label %if.end11

if.end11:                                         ; preds = %delete.notnull, %if.then4
  %4 = phi i32 [ %.pre, %delete.notnull ], [ %0, %if.then4 ]
  %conv = sext i32 %4 to i64
  %5 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 8)
  %6 = extractvalue { i64, i1 } %5, 1
  %7 = extractvalue { i64, i1 } %5, 0
  %8 = select i1 %6, i64 -1, i64 %7
  %call = tail call noalias nonnull i8* @_Znam(i64 %8) #33
  %9 = bitcast double** %gradient_ to i8**
  store i8* %call, i8** %9, align 8, !tbaa !27
  store i32 %4, i32* %n_allocated_gradients_, align 4, !tbaa !71
  %cmp1320 = icmp sgt i32 %4, 0
  br i1 %cmp1320, label %for.body.lr.ph, label %if.end15

for.body.lr.ph:                                   ; preds = %if.end11, %if.then
  %10 = phi i32 [ %4, %if.end11 ], [ %0, %if.then ]
  %gradient_14 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 1
  %11 = bitcast double** %gradient_14 to i8**
  %12 = load i8*, i8** %11, align 8, !tbaa !27
  %13 = zext i32 %10 to i64
  %14 = shl nuw nsw i64 %13, 3
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 %14, i1 false)
  br label %if.end15

if.end15:                                         ; preds = %for.body.lr.ph, %if.end11, %entry
  %gradients_initialized_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 10
  store i8 1, i8* %gradients_initialized_, align 8, !tbaa !39
  ret void
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #12

; Function Attrs: nobuiltin nofree allocsize(0)
declare dso_local nonnull i8* @_Znam(i64) local_unnamed_addr #10

; Function Attrs: argmemonly nofree nosync nounwind willreturn writeonly
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #13

; Function Attrs: uwtable
define dso_local void @_ZNK5adept5Stack12print_statusERSo(%"class.adept::Stack"* nonnull dereferenceable(149) %this, %"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %os) local_unnamed_addr #0 align 2 personality i32 (...)* @__gxx_personality_v0 {
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

for.body.i:                                       ; preds = %for.body.i, %if.else49
  %it.sroa.0.024.i = phi %"struct.std::__detail::_List_node_base"* [ %it.sroa.0.0.i, %for.body.i ], [ %it.sroa.0.022.i, %if.else49 ]
  %_M_storage.i.i17.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %it.sroa.0.024.i, i64 1
  %16 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i17.i to %"struct.adept::internal::Statement"*
  %start.i = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i17.i to i32*
  %17 = load i32, i32* %start.i, align 4, !tbaa !54
  %call7.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %os, i32 %17)
  %call1.i16.i = tail call nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call7.i, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i64 0, i64 0), i64 1)
  %end.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %16, i64 0, i32 1
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

for.body:                                         ; preds = %for.body, %if.then85
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

for.body99:                                       ; preds = %for.body99, %for.cond.cleanup
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

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertIPKvEERSoT_(%"class.std::basic_ostream"* nonnull dereferenceable(8), i8*) local_unnamed_addr #1

declare dso_local nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSo9_M_insertImEERSoT_(%"class.std::basic_ostream"* nonnull dereferenceable(8), i64) local_unnamed_addr #1

; Function Attrs: uwtable mustprogress
define dso_local void @_ZN5adept8internal16StackStorageOrig20grow_operation_stackEi(%"class.adept::internal::StackStorageOrig"* nocapture nonnull dereferenceable(40) %this, i32 %min) local_unnamed_addr #11 align 2 {
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
  %call = tail call noalias nonnull i8* @_Znam(i64 %4) #33
  %5 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv, i64 4)
  %6 = extractvalue { i64, i1 } %5, 1
  %7 = extractvalue { i64, i1 } %5, 0
  %8 = select i1 %6, i64 -1, i64 %7
  %call6 = tail call noalias nonnull i8* @_Znam(i64 %8) #33
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
  tail call void @_ZdaPv(i8* nonnull %10) #31
  %.pr = load i32*, i32** %index_, align 8, !tbaa !38
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  %15 = phi i32* [ %.pr, %delete.notnull ], [ %14, %entry ]
  %isnull14 = icmp eq i32* %15, null
  br i1 %isnull14, label %delete.end16, label %delete.notnull15

delete.notnull15:                                 ; preds = %delete.end
  %16 = bitcast i32* %15 to i8*
  tail call void @_ZdaPv(i8* %16) #31
  br label %delete.end16

delete.end16:                                     ; preds = %delete.notnull15, %delete.end
  store i8* %call, i8** %9, align 8, !tbaa !37
  store i8* %call6, i8** %12, align 8, !tbaa !38
  store i32 %new_size.0, i32* %n_allocated_operations_, align 4, !tbaa !75
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi(%"class.adept::internal::StackStorageOrig"* nocapture nonnull dereferenceable(40) %this, i32 %min) local_unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %call = tail call noalias nonnull i8* @_Znam(i64 %4) #33
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
  tail call void @_ZdaPv(i8* nonnull %6) #31
  br label %delete.end

delete.end:                                       ; preds = %delete.notnull, %entry
  store i8* %call, i8** %5, align 8, !tbaa !35
  store i32 %new_size.0, i32* %n_allocated_statements_, align 4, !tbaa !73
  ret void
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_gemmEbcciiidPKdiS2_idPdi(i1 zeroext %Order, i8 signext %TransA, i8 signext %TransB, i32 %M, i32 %N, i32 %K, double %alpha, double* nocapture readnone %A, i32 %lda, double* nocapture readnone %B, i32 %ldb, double %beta, double* nocapture readnone %C, i32 %ldc) local_unnamed_addr #14 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 73, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(73) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(73) getelementptr inbounds ([74 x i8], [74 x i8]* @.str.65, i64 0, i64 0), i64 73, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept21feature_not_availableD0Ev(%"class.adept::array_exception"* nonnull dereferenceable(40) %this) unnamed_addr #8 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
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
  tail call void @_ZdlPv(i8* %1) #3
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::array_exception", %"class.adept::array_exception"* %this, i64 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #3
  %4 = bitcast %"class.adept::array_exception"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #31
  ret void
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_gemmEbcciiifPKfiS2_ifPfi(i1 zeroext %Order, i8 signext %TransA, i8 signext %TransB, i32 %M, i32 %N, i32 %K, float %alpha, float* nocapture readnone %A, i32 %lda, float* nocapture readnone %B, i32 %ldb, float %beta, float* nocapture readnone %C, i32 %ldc) local_unnamed_addr #14 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 73, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(73) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(73) getelementptr inbounds ([74 x i8], [74 x i8]* @.str.65, i64 0, i64 0), i64 73, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_gemvEbciidPKdiS2_idPdi(i1 zeroext %Order, i8 signext %TransA, i32 %M, i32 %N, double %alpha, double* nocapture readnone %A, i32 %lda, double* nocapture readnone %X, i32 %incX, double %beta, double* nocapture readnone %Y, i32 %incY) local_unnamed_addr #14 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 73, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(73) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(73) getelementptr inbounds ([74 x i8], [74 x i8]* @.str.66, i64 0, i64 0), i64 73, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_gemvEbciifPKfiS2_ifPfi(i1 zeroext %Order, i8 signext %TransA, i32 %M, i32 %N, float %alpha, float* nocapture readnone %A, i32 %lda, float* nocapture readnone %X, i32 %incX, float %beta, float* nocapture readnone %Y, i32 %incY) local_unnamed_addr #14 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 73, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(73) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(73) getelementptr inbounds ([74 x i8], [74 x i8]* @.str.66, i64 0, i64 0), i64 73, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_symmEbcciidPKdiS2_idPdi(i1 zeroext %Order, i8 signext %Side, i8 signext %Uplo, i32 %M, i32 %N, double %alpha, double* nocapture readnone %A, i32 %lda, double* nocapture readnone %B, i32 %ldb, double %beta, double* nocapture readnone %C, i32 %ldc) local_unnamed_addr #14 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 83, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(83) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(83) getelementptr inbounds ([84 x i8], [84 x i8]* @.str.67, i64 0, i64 0), i64 83, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_symmEbcciifPKfiS2_ifPfi(i1 zeroext %Order, i8 signext %Side, i8 signext %Uplo, i32 %M, i32 %N, float %alpha, float* nocapture readnone %A, i32 %lda, float* nocapture readnone %B, i32 %ldb, float %beta, float* nocapture readnone %C, i32 %ldc) local_unnamed_addr #14 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 83, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(83) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(83) getelementptr inbounds ([84 x i8], [84 x i8]* @.str.67, i64 0, i64 0), i64 83, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_symvEbcidPKdiS2_idPdi(i1 zeroext %Order, i8 signext %Uplo, i32 %N, double %alpha, double* nocapture readnone %A, i32 %lda, double* nocapture readnone %X, i32 %incX, double %beta, double* nocapture readnone %Y, i32 %incY) local_unnamed_addr #14 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 83, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(83) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(83) getelementptr inbounds ([84 x i8], [84 x i8]* @.str.68, i64 0, i64 0), i64 83, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_symvEbcifPKfiS2_ifPfi(i1 zeroext %Order, i8 signext %Uplo, i32 %N, float %alpha, float* nocapture readnone %A, i32 %lda, float* nocapture readnone %X, i32 %incX, float %beta, float* nocapture readnone %Y, i32 %incY) local_unnamed_addr #14 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 83, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(83) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(83) getelementptr inbounds ([84 x i8], [84 x i8]* @.str.68, i64 0, i64 0), i64 83, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_gbmvEbciiiidPKdiS2_idPdi(i1 zeroext %Order, i8 signext %TransA, i32 %M, i32 %N, i32 %KL, i32 %KU, double %alpha, double* nocapture readnone %A, i32 %lda, double* nocapture readnone %X, i32 %incX, double %beta, double* nocapture readnone %Y, i32 %incY) local_unnamed_addr #14 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 78, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(78) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(78) getelementptr inbounds ([79 x i8], [79 x i8]* @.str.69, i64 0, i64 0), i64 78, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: noreturn uwtable
define dso_local void @_ZN5adept8internal12cppblas_gbmvEbciiiifPKfiS2_ifPfi(i1 zeroext %Order, i8 signext %TransA, i32 %M, i32 %N, i32 %KL, i32 %KU, float %alpha, float* nocapture readnone %A, i32 %lda, float* nocapture readnone %X, i32 %incX, float %beta, float* nocapture readnone %Y, i32 %incY) local_unnamed_addr #14 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 78, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(78) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(78) getelementptr inbounds ([79 x i8], [79 x i8]* @.str.69, i64 0, i64 0), i64 78, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept3invIfEENS_5ArrayILi2ET_Lb0EEERKS3_(%"class.adept::Array"* noalias sret(%"class.adept::Array") align 8 %agg.result, %"class.adept::Array"* nonnull align 8 dereferenceable(32) %A) local_unnamed_addr #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept3invIfLNS_8internal21SymmMatrixOrientationE0EEENS_13SpecialMatrixIT_NS1_10SymmEngineIXT0_EEELb0EEERKS7_(%"class.adept::SpecialMatrix"* noalias sret(%"class.adept::SpecialMatrix") align 8 %agg.result, %"class.adept::SpecialMatrix"* nonnull align 8 dereferenceable(24) %A) local_unnamed_addr #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept3invIfLNS_8internal21SymmMatrixOrientationE1EEENS_13SpecialMatrixIT_NS1_10SymmEngineIXT0_EEELb0EEERKS7_(%"class.adept::SpecialMatrix"* noalias sret(%"class.adept::SpecialMatrix") align 8 %agg.result, %"class.adept::SpecialMatrix"* nonnull align 8 dereferenceable(24) %A) local_unnamed_addr #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept3invIdEENS_5ArrayILi2ET_Lb0EEERKS3_(%"class.adept::Array.12"* noalias sret(%"class.adept::Array.12") align 8 %agg.result, %"class.adept::Array.12"* nonnull align 8 dereferenceable(32) %A) local_unnamed_addr #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept3invIdLNS_8internal21SymmMatrixOrientationE0EEENS_13SpecialMatrixIT_NS1_10SymmEngineIXT0_EEELb0EEERKS7_(%"class.adept::SpecialMatrix.15"* noalias sret(%"class.adept::SpecialMatrix.15") align 8 %agg.result, %"class.adept::SpecialMatrix.15"* nonnull align 8 dereferenceable(24) %A) local_unnamed_addr #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept3invIdLNS_8internal21SymmMatrixOrientationE1EEENS_13SpecialMatrixIT_NS1_10SymmEngineIXT0_EEELb0EEERKS7_(%"class.adept::SpecialMatrix.15"* noalias sret(%"class.adept::SpecialMatrix.15") align 8 %agg.result, %"class.adept::SpecialMatrix.15"* nonnull align 8 dereferenceable(24) %A) local_unnamed_addr #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 52, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(52) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(52) getelementptr inbounds ([53 x i8], [53 x i8]* @.str.70, i64 0, i64 0), i64 52, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @_ZNK5adept5Stack23jacobian_forward_kernelEPd(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, double* noalias nocapture %gradient_multipass_b) local_unnamed_addr #15 align 2 {
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
  store <2 x double> %a.sroa.0.0.lcssa, <2 x double>* %9, align 16, !tbaa !10, !alias.scope !79
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
  %12 = load <2 x double>, <2 x double>* %11, align 16, !tbaa !10
  %arrayidx13 = getelementptr inbounds double, double* %5, i64 %indvars.iv
  %13 = load double, double* %arrayidx13, align 8, !tbaa !43
  %vecinit.i.i = insertelement <2 x double> undef, double %13, i32 0
  %vecinit1.i.i = shufflevector <2 x double> %vecinit.i.i, <2 x double> undef, <2 x i32> zeroinitializer
  %mul.i.i = fmul fast <2 x double> %vecinit1.i.i, %12
  %add.i.i = fadd fast <2 x double> %mul.i.i, %a.sroa.0.043
  %indvars.iv.next = add nsw i64 %indvars.iv, 1
  %cmp7 = icmp slt i64 %indvars.iv.next, %7
  br i1 %cmp7, label %for.body9, label %for.cond.cleanup8, !llvm.loop !83
}

; Function Attrs: nofree nounwind uwtable
define dso_local void @_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, double* noalias nocapture %gradient_multipass_b, i32 %n_extra) local_unnamed_addr #16 align 2 {
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
  br label %for.body

for.cond.cleanup:                                 ; preds = %for.cond.cleanup28, %entry
  ret void

for.body:                                         ; preds = %for.cond.cleanup28, %for.body.lr.ph
  %4 = phi i32 [ %.pre, %for.body.lr.ph ], [ %5, %for.cond.cleanup28 ]
  %indvars.iv80 = phi i64 [ 1, %for.body.lr.ph ], [ %indvars.iv.next81, %for.cond.cleanup28 ]
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %a76) #3
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %a76, i8 0, i64 16, i1 false) #3
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
  br label %for.body13

for.cond.cleanup12:                               ; preds = %for.body13, %for.cond10.preheader
  %indvars.iv.next74 = add nsw i64 %indvars.iv73, 1
  %cmp7 = icmp slt i64 %indvars.iv.next74, %7
  br i1 %cmp7, label %for.cond10.preheader, label %for.cond26.preheader, !llvm.loop !84

for.body13:                                       ; preds = %for.body13, %for.body13.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body13.lr.ph ], [ %indvars.iv.next, %for.body13 ]
  %16 = add nsw i64 %indvars.iv, %15
  %arrayidx19 = getelementptr inbounds double, double* %gradient_multipass_b, i64 %16
  %17 = load double, double* %arrayidx19, align 8, !tbaa !43
  %mul20 = fmul fast double %17, %12
  %arrayidx.i62 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %a, i64 0, i32 0, i64 %indvars.iv
  %18 = load double, double* %arrayidx.i62, align 8, !tbaa !43
  %add21 = fadd fast double %18, %mul20
  store double %add21, double* %arrayidx.i62, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %2
  br i1 %exitcond.not, label %for.cond.cleanup12, label %for.body13, !llvm.loop !85

for.cond.cleanup28:                               ; preds = %for.body29.lr.ph, %for.cond26.preheader
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %a76) #3
  %indvars.iv.next81 = add nuw nsw i64 %indvars.iv80, 1
  %exitcond84.not = icmp eq i64 %indvars.iv.next81, %wide.trip.count83
  br i1 %exitcond84.not, label %for.cond.cleanup, label %for.body, !llvm.loop !86
}

; Function Attrs: uwtable
define dso_local void @_ZNK5adept5Stack23jacobian_forward_openmpEPd(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, double* nocapture %jacobian_out) local_unnamed_addr #17 align 2 {
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
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  %5 = bitcast double** %result.i to i8**
  %conv1.i = sext i32 %mul to i64
  %mul.i111 = shl nsw i64 %conv1.i, 3
  %call2.i = call i32 @posix_memalign(i8** nonnull %5, i64 16, i64 %mul.i111) #3
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit, label %if.then4.i

if.then4.i:                                       ; preds = %entry
  %exception.i = call i8* @__cxa_allocate_exception(i64 8) #3
  %6 = bitcast i8* %exception.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt9bad_alloc, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  call void @__cxa_throw(i8* %exception.i, i8* bitcast (i8** @_ZTISt9bad_alloc to i8*), i8* bitcast (void (%"class.std::bad_alloc"*)* @_ZNSt9bad_allocD1Ev to i8*)) #30
  unreachable

_ZN5adept8internal13alloc_alignedIdEEPT_i.exit:   ; preds = %entry
  %7 = load double*, double** %result.i, align 8, !tbaa !26
  %8 = bitcast double* %7 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %cmp123 = icmp sgt i32 %conv.i, 0
  br i1 %cmp123, label %for.body.lr.ph, label %for.end55

for.body.lr.ph:                                   ; preds = %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit
  %sub5 = add nsw i32 %div, -1
  %9 = and i32 %conv.i, -2147483647
  %cmp7 = icmp eq i32 %9, 1
  %cmp9112 = icmp sgt i32 %3, 0
  %n_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %10 = load i32, i32* %n_statements_.i, align 8, !tbaa !40, !noalias !87
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
  call void @llvm.experimental.noalias.scope.decl(metadata !87)
  br i1 %cmp45.i, label %for.body.lr.ph.i, label %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.cleanup14
  %19 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i, align 8, !tbaa !35, !noalias !87
  %end_plus_one.phi.trans.insert.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %19, i64 0, i32 1
  %.pre.i = load i32, i32* %end_plus_one.phi.trans.insert.i, align 4, !tbaa !45, !noalias !87
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond.cleanup8.i, %for.body.lr.ph.i
  %20 = phi i32 [ %.pre.i, %for.body.lr.ph.i ], [ %21, %for.cond.cleanup8.i ]
  %indvars.iv47.i = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next48.i, %for.cond.cleanup8.i ]
  %end_plus_one6.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %19, i64 %indvars.iv47.i, i32 1
  %21 = load i32, i32* %end_plus_one6.i, align 4, !tbaa !45, !noalias !87
  %cmp742.i = icmp slt i32 %20, %21
  br i1 %cmp742.i, label %for.body9.lr.ph.i, label %for.cond.cleanup8.i

for.body9.lr.ph.i:                                ; preds = %for.body.i
  %22 = load i32*, i32** %index_.i, align 8, !tbaa !38, !noalias !87
  %23 = load double*, double** %multiplier_.i, align 8, !tbaa !37, !noalias !87
  %24 = sext i32 %20 to i64
  %25 = sext i32 %21 to i64
  br label %for.body9.i

for.cond.cleanup8.i:                              ; preds = %for.body9.i, %for.body.i
  %a.sroa.0.0.lcssa.i = phi <2 x double> [ zeroinitializer, %for.body.i ], [ %add.i.i.i, %for.body9.i ]
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %19, i64 %indvars.iv47.i, i32 0
  %26 = load i32, i32* %index.i, align 4, !tbaa !41, !noalias !87
  %mul15.i = shl nsw i32 %26, 1
  %idx.ext16.i = sext i32 %mul15.i to i64
  %add.ptr17.i = getelementptr inbounds double, double* %7, i64 %idx.ext16.i
  %27 = bitcast double* %add.ptr17.i to <2 x double>*
  store <2 x double> %a.sroa.0.0.lcssa.i, <2 x double>* %27, align 16, !tbaa !10, !alias.scope !90
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1
  %exitcond.not.i = icmp eq i64 %indvars.iv.next48.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit, label %for.body.i, !llvm.loop !82

for.body9.i:                                      ; preds = %for.body9.i, %for.body9.lr.ph.i
  %indvars.iv.i = phi i64 [ %24, %for.body9.lr.ph.i ], [ %indvars.iv.next.i, %for.body9.i ]
  %a.sroa.0.043.i = phi <2 x double> [ zeroinitializer, %for.body9.lr.ph.i ], [ %add.i.i.i, %for.body9.i ]
  %arrayidx11.i = getelementptr inbounds i32, i32* %22, i64 %indvars.iv.i
  %28 = load i32, i32* %arrayidx11.i, align 4, !tbaa !46, !noalias !87
  %mul.i = shl nsw i32 %28, 1
  %idx.ext.i = sext i32 %mul.i to i64
  %add.ptr.i110 = getelementptr inbounds double, double* %7, i64 %idx.ext.i
  %29 = bitcast double* %add.ptr.i110 to <2 x double>*
  %30 = load <2 x double>, <2 x double>* %29, align 16, !tbaa !10, !alias.scope !87
  %arrayidx13.i = getelementptr inbounds double, double* %23, i64 %indvars.iv.i
  %31 = load double, double* %arrayidx13.i, align 8, !tbaa !43, !noalias !87
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
  br i1 %exitcond.not, label %for.cond.cleanup14, label %for.body15, !llvm.loop !93

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
  br i1 %exitcond145.not, label %for.end55, label %for.body, !llvm.loop !94

for.cond.cleanup33:                               ; preds = %for.body34
  %indvars.iv.next136 = add nuw nsw i64 %indvars.iv135, 1
  %exitcond139.not = icmp eq i64 %indvars.iv.next136, %wide.trip.count138
  br i1 %exitcond139.not, label %for.cond.cleanup28, label %for.cond31.preheader, !llvm.loop !95

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
  br i1 %exitcond134.not, label %for.cond.cleanup33, label %for.body34, !llvm.loop !96

for.end55:                                        ; preds = %for.cond.cleanup28, %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit
  call void @free(i8* %8) #3
  ret void
}

; Function Attrs: nofree nounwind
declare dso_local i32 @posix_memalign(i8**, i64, i64) local_unnamed_addr #18

; Function Attrs: nounwind
declare dso_local void @_ZNSt9bad_allocD1Ev(%"class.std::bad_alloc"* nonnull dereferenceable(8)) unnamed_addr #6

; Function Attrs: inaccessiblememonly nofree nosync nounwind willreturn
declare void @llvm.experimental.noalias.scope.decl(metadata) #19

; Function Attrs: inaccessiblemem_or_argmemonly nounwind willreturn
declare dso_local void @free(i8* nocapture noundef) #20

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack16jacobian_forwardEPd(%"class.adept::Stack"* nonnull readonly dereferenceable(149) %this, double* nocapture %jacobian_out) local_unnamed_addr #17 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %4 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #3
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %6 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !2
  %7 = bitcast %union.anon* %5 to i8*
  %8 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #3
  store i64 79, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i230 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.then
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i230, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %9 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %9, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(79) %call5.i.i.i10.i230, i8* nonnull align 1 dereferenceable(79) getelementptr inbounds ([80 x i8], [80 x i8]* @.str.71, i64 0, i64 0), i64 79, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %9, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i230, i64 %9
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #3
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %10 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %11 = getelementptr inbounds i8, i8* %exception, i64 24
  %12 = bitcast i8* %message_.i.i.i to i8**
  store i8* %11, i8** %12, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i.i231 = getelementptr inbounds i8, i8* %exception, i64 16
  %13 = bitcast i8* %_M_string_length.i.i.i.i.i.i231 to i64*
  store i64 0, i64* %13, align 8, !tbaa !7
  store i8 0, i8* %11, align 1, !tbaa !10
  %14 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept41dependents_or_independents_not_identifiedE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %14, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %10, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont5 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %15 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %14, align 8, !tbaa !17
  %16 = load i8*, i8** %12, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %16, %11
  br i1 %cmp.i.i.i.i.i, label %lpad4.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %16) #3
  br label %lpad4.body

invoke.cont5:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept41dependents_or_independents_not_identifiedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad4.body.thread

ehcleanup.thread:                                 ; preds = %if.then
  %17 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #3
  br label %cleanup.action

lpad4.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %18 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %18) #3
  %19 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %19, %7
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad4.body
  call void @_ZdlPv(i8* %19) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #3
  br label %cleanup.action

lpad4.body.thread:                                ; preds = %invoke.cont5
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i299 = icmp eq i8* %21, %7
  br i1 %cmp.i.i.i299, label %ehcleanup.thread304, label %if.then.i.i

ehcleanup.thread304:                              ; preds = %lpad4.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad4.body.thread
  call void @_ZdlPv(i8* %21) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad4.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn247 = phi { i8*, i32 } [ %17, %ehcleanup.thread ], [ %15, %ehcleanup ], [ %15, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
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
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %24) #3
  %25 = bitcast double** %result.i to i8**
  %conv1.i = sext i32 %mul to i64
  %mul.i229 = shl nsw i64 %conv1.i, 3
  %call2.i = call i32 @posix_memalign(i8** nonnull %25, i64 16, i64 %mul.i229) #3
  %cmp3.not.i = icmp eq i32 %call2.i, 0
  br i1 %cmp3.not.i, label %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.end
  %exception.i = call i8* @__cxa_allocate_exception(i64 8) #3
  %26 = bitcast i8* %exception.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt9bad_alloc, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %26, align 8, !tbaa !17
  call void @__cxa_throw(i8* %exception.i, i8* bitcast (i8** @_ZTISt9bad_alloc to i8*), i8* bitcast (void (%"class.std::bad_alloc"*)* @_ZNSt9bad_allocD1Ev to i8*)) #30
  unreachable

_ZN5adept8internal13alloc_alignedIdEEPT_i.exit:   ; preds = %if.end
  %27 = load double*, double** %result.i, align 8, !tbaa !26
  %28 = bitcast double* %27 to i8*
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %24) #3
  %cmp268 = icmp sgt i32 %conv.i237, 1
  br i1 %cmp268, label %for.body.lr.ph, label %for.cond.cleanup

for.body.lr.ph:                                   ; preds = %_ZN5adept8internal13alloc_alignedIdEEPT_i.exit
  %cmp14257 = icmp sgt i32 %23, 0
  %n_statements_.i213 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %29 = load i32, i32* %n_statements_.i213, align 8, !tbaa !40, !noalias !97
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
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  br i1 %cmp45.i, label %for.body.lr.ph.i219, label %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit

for.body.lr.ph.i219:                              ; preds = %for.cond18.preheader
  %39 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i214, align 8, !tbaa !35, !noalias !97
  %end_plus_one.phi.trans.insert.i217 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %39, i64 0, i32 1
  %.pre.i218 = load i32, i32* %end_plus_one.phi.trans.insert.i217, align 4, !tbaa !45, !noalias !97
  br label %for.body.i221

for.body.i221:                                    ; preds = %for.cond.cleanup8.i, %for.body.lr.ph.i219
  %40 = phi i32 [ %.pre.i218, %for.body.lr.ph.i219 ], [ %41, %for.cond.cleanup8.i ]
  %indvars.iv47.i = phi i64 [ 1, %for.body.lr.ph.i219 ], [ %indvars.iv.next48.i, %for.cond.cleanup8.i ]
  %end_plus_one6.i220 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %39, i64 %indvars.iv47.i, i32 1
  %41 = load i32, i32* %end_plus_one6.i220, align 4, !tbaa !45, !noalias !97
  %cmp742.i = icmp slt i32 %40, %41
  br i1 %cmp742.i, label %for.body9.lr.ph.i, label %for.cond.cleanup8.i

for.body9.lr.ph.i:                                ; preds = %for.body.i221
  %42 = load i32*, i32** %index_.i215, align 8, !tbaa !38, !noalias !97
  %43 = load double*, double** %multiplier_.i216, align 8, !tbaa !37, !noalias !97
  %44 = sext i32 %40 to i64
  %45 = sext i32 %41 to i64
  br label %for.body9.i

for.cond.cleanup8.i:                              ; preds = %for.body9.i, %for.body.i221
  %a.sroa.0.0.lcssa.i = phi <2 x double> [ zeroinitializer, %for.body.i221 ], [ %add.i.i.i, %for.body9.i ]
  %index.i222 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %39, i64 %indvars.iv47.i, i32 0
  %46 = load i32, i32* %index.i222, align 4, !tbaa !41, !noalias !97
  %mul15.i = shl nsw i32 %46, 1
  %idx.ext16.i = sext i32 %mul15.i to i64
  %add.ptr17.i = getelementptr inbounds double, double* %27, i64 %idx.ext16.i
  %47 = bitcast double* %add.ptr17.i to <2 x double>*
  store <2 x double> %a.sroa.0.0.lcssa.i, <2 x double>* %47, align 16, !tbaa !10, !alias.scope !100
  %indvars.iv.next48.i = add nuw nsw i64 %indvars.iv47.i, 1
  %exitcond.not.i223 = icmp eq i64 %indvars.iv.next48.i, %wide.trip.count.i
  br i1 %exitcond.not.i223, label %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit, label %for.body.i221, !llvm.loop !82

for.body9.i:                                      ; preds = %for.body9.i, %for.body9.lr.ph.i
  %indvars.iv.i224 = phi i64 [ %44, %for.body9.lr.ph.i ], [ %indvars.iv.next.i227, %for.body9.i ]
  %a.sroa.0.043.i = phi <2 x double> [ zeroinitializer, %for.body9.lr.ph.i ], [ %add.i.i.i, %for.body9.i ]
  %arrayidx11.i = getelementptr inbounds i32, i32* %42, i64 %indvars.iv.i224
  %48 = load i32, i32* %arrayidx11.i, align 4, !tbaa !46, !noalias !97
  %mul.i225 = shl nsw i32 %48, 1
  %idx.ext.i = sext i32 %mul.i225 to i64
  %add.ptr.i226 = getelementptr inbounds double, double* %27, i64 %idx.ext.i
  %49 = bitcast double* %add.ptr.i226 to <2 x double>*
  %50 = load <2 x double>, <2 x double>* %49, align 16, !tbaa !10, !alias.scope !97
  %arrayidx13.i = getelementptr inbounds double, double* %43, i64 %indvars.iv.i224
  %51 = load double, double* %arrayidx13.i, align 8, !tbaa !43, !noalias !97
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
  br label %for.cond37.preheader

for.cond37.preheader:                             ; preds = %for.cond37.preheader, %for.cond37.preheader.lr.ph
  %indvars.iv287 = phi i64 [ 0, %for.cond37.preheader.lr.ph ], [ %indvars.iv.next288, %for.cond37.preheader ]
  %add.ptr.i204 = getelementptr inbounds i32, i32* %53, i64 %indvars.iv287
  %56 = load i32, i32* %add.ptr.i204, align 4, !tbaa !46
  %mul44 = shl nsw i32 %56, 1
  %57 = sext i32 %mul44 to i64
  %arrayidx47 = getelementptr inbounds double, double* %27, i64 %57
  %58 = load double, double* %arrayidx47, align 8, !tbaa !43
  %59 = mul nsw i64 %34, %55
  %60 = add nsw i64 %59, %indvars.iv287
  %arrayidx53 = getelementptr inbounds double, double* %jacobian_out, i64 %60
  store double %58, double* %arrayidx53, align 8, !tbaa !43
  %61 = or i64 %57, 1
  %arrayidx47.c = getelementptr inbounds double, double* %27, i64 %61
  %62 = load double, double* %arrayidx47.c, align 8, !tbaa !43
  %63 = or i64 %34, 1
  %64 = mul nsw i64 %63, %55
  %65 = add nsw i64 %64, %indvars.iv287
  %arrayidx53.c = getelementptr inbounds double, double* %jacobian_out, i64 %65
  store double %62, double* %arrayidx53.c, align 8, !tbaa !43
  %indvars.iv.next288 = add nuw nsw i64 %indvars.iv287, 1
  %exitcond291.not = icmp eq i64 %indvars.iv.next288, %wide.trip.count290
  br i1 %exitcond291.not, label %for.cond.cleanup34, label %for.cond37.preheader, !llvm.loop !103

for.cond.cleanup34:                               ; preds = %for.cond37.preheader, %_ZNK5adept5Stack23jacobian_forward_kernelEPd.exit
  %indvars.iv.next293 = add nuw nsw i64 %indvars.iv292, 1
  %exitcond296.not = icmp eq i64 %indvars.iv.next293, %wide.trip.count295
  br i1 %exitcond296.not, label %for.cond.cleanup, label %for.body, !llvm.loop !104

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
  %69 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
  %add.ptr.i196 = getelementptr inbounds i32, i32* %69, i64 %conv85
  %70 = load i32, i32* %add.ptr.i196, align 4, !tbaa !46
  %mul87 = shl nsw i32 %70, 1
  %idxprom89 = sext i32 %mul87 to i64
  %arrayidx90 = getelementptr inbounds double, double* %27, i64 %idxprom89
  store double 1.000000e+00, double* %arrayidx90, align 8, !tbaa !43
  call void @llvm.experimental.noalias.scope.decl(metadata !105)
  %n_statements_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %71 = load i32, i32* %n_statements_.i, align 8, !tbaa !40, !noalias !105
  %cmp70.i = icmp sgt i32 %71, 1
  br i1 %cmp70.i, label %for.body.lr.ph.i, label %_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi.exit

for.body.lr.ph.i:                                 ; preds = %for.body82
  %statement_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %72 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i, align 8, !tbaa !35, !noalias !105
  %multiplier_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %index_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %wide.trip.count83.i = zext i32 %71 to i64
  %end_plus_one.phi.trans.insert.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %72, i64 0, i32 1
  %.pre.i = load i32, i32* %end_plus_one.phi.trans.insert.i, align 4, !tbaa !45, !noalias !105
  br label %for.body.i

for.body.i:                                       ; preds = %for.cond26.preheader.i, %for.body.lr.ph.i
  %73 = phi i32 [ %.pre.i, %for.body.lr.ph.i ], [ %74, %for.cond26.preheader.i ]
  %indvars.iv80.i = phi i64 [ 1, %for.body.lr.ph.i ], [ %indvars.iv.next81.i, %for.cond26.preheader.i ]
  %end_plus_one6.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %72, i64 %indvars.iv80.i, i32 1
  %74 = load i32, i32* %end_plus_one6.i, align 4, !tbaa !45, !noalias !105
  %cmp765.i = icmp slt i32 %73, %74
  br i1 %cmp765.i, label %for.cond10.preheader.lr.ph.i, label %for.cond26.preheader.i

for.cond10.preheader.lr.ph.i:                     ; preds = %for.body.i
  %75 = sext i32 %73 to i64
  %76 = sext i32 %74 to i64
  %77 = load double*, double** %multiplier_.i, align 8, !tbaa !37, !noalias !105
  %78 = load i32*, i32** %index_.i, align 8, !tbaa !38, !noalias !105
  br label %for.cond.cleanup12.i

for.cond26.preheader.i.loopexit:                  ; preds = %for.cond.cleanup12.i
  %79 = bitcast double %add21.i to i64
  br label %for.cond26.preheader.i

for.cond26.preheader.i:                           ; preds = %for.cond26.preheader.i.loopexit, %for.body.i
  %80 = phi i64 [ 0, %for.body.i ], [ %79, %for.cond26.preheader.i.loopexit ]
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %72, i64 %indvars.iv80.i, i32 0
  %81 = load i32, i32* %index.i, align 4, !tbaa !41, !noalias !105
  %82 = shl i32 %81, 1
  %83 = sext i32 %82 to i64
  %scevgep.i = getelementptr double, double* %27, i64 %83
  %84 = bitcast double* %scevgep.i to i64*
  store i64 %80, i64* %84, align 8
  %indvars.iv.next81.i = add nuw nsw i64 %indvars.iv80.i, 1
  %exitcond84.not.i = icmp eq i64 %indvars.iv.next81.i, %wide.trip.count83.i
  br i1 %exitcond84.not.i, label %_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi.exit, label %for.body.i, !llvm.loop !86

for.cond.cleanup12.i:                             ; preds = %for.cond.cleanup12.i, %for.cond10.preheader.lr.ph.i
  %85 = phi double [ 0.000000e+00, %for.cond10.preheader.lr.ph.i ], [ %add21.i, %for.cond.cleanup12.i ]
  %indvars.iv73.i = phi i64 [ %75, %for.cond10.preheader.lr.ph.i ], [ %indvars.iv.next74.i, %for.cond.cleanup12.i ]
  %arrayidx15.i = getelementptr inbounds double, double* %77, i64 %indvars.iv73.i
  %86 = load double, double* %arrayidx15.i, align 8, !tbaa !43, !noalias !105
  %arrayidx17.i = getelementptr inbounds i32, i32* %78, i64 %indvars.iv73.i
  %87 = load i32, i32* %arrayidx17.i, align 4, !tbaa !46, !noalias !105
  %mul.i = shl nsw i32 %87, 1
  %88 = sext i32 %mul.i to i64
  %arrayidx19.i = getelementptr inbounds double, double* %27, i64 %88
  %89 = load double, double* %arrayidx19.i, align 8, !tbaa !43, !alias.scope !105
  %mul20.i = fmul fast double %89, %86
  %add21.i = fadd fast double %85, %mul20.i
  %indvars.iv.next74.i = add nsw i64 %indvars.iv73.i, 1
  %exitcond270.not = icmp eq i64 %indvars.iv.next74.i, %76
  br i1 %exitcond270.not, label %for.cond26.preheader.i.loopexit, label %for.cond.cleanup12.i, !llvm.loop !84

_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi.exit: ; preds = %for.cond26.preheader.i, %for.body82
  %90 = load i32*, i32** %_M_finish.i.i185, align 8, !tbaa !76
  %91 = load i32*, i32** %_M_start.i.i184, align 8, !tbaa !33
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
  %93 = load i32, i32* %add.ptr.i, align 4, !tbaa !46
  %mul108 = shl nsw i32 %93, 1
  %idxprom110 = sext i32 %mul108 to i64
  %arrayidx111 = getelementptr inbounds double, double* %27, i64 %idxprom110
  %94 = load double, double* %arrayidx111, align 8, !tbaa !43
  %95 = trunc i64 %indvars.iv to i32
  %add115 = add nsw i32 %mul114, %95
  %idxprom116 = sext i32 %add115 to i64
  %arrayidx117 = getelementptr inbounds double, double* %jacobian_out, i64 %idxprom116
  store double %94, double* %arrayidx117, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.end124, label %for.body104, !llvm.loop !108

if.end124:                                        ; preds = %for.body104, %_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi.exit, %for.cond.cleanup
  call void @free(i8* %28) #3
  ret void

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread304
  %.pn246 = phi { i8*, i32 } [ %.pn247, %cleanup.action ], [ %20, %if.then.i.i ], [ %20, %ehcleanup.thread304 ]
  resume { i8*, i32 } %.pn246

unreachable:                                      ; preds = %invoke.cont5
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept41dependents_or_independents_not_identifiedD0Ev(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %this) unnamed_addr #8 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
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
  tail call void @_ZdlPv(i8* %1) #3
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #3
  %4 = bitcast %"class.adept::invalid_operation"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #31
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK5adept5Stack23jacobian_reverse_openmpEPd(%"class.adept::Stack"* nocapture nonnull readonly dereferenceable(149) %this, double* nocapture %jacobian_out) local_unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  tail call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.93, i64 0, i64 0)) #30
  unreachable

_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %entry
  %cmp.not.i.i.i.i = icmp eq i32 %3, 0
  br i1 %cmp.not.i.i.i.i, label %invoke.cont.thread, label %invoke.cont

invoke.cont:                                      ; preds = %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %mul.i.i.i.i.i.i = shl nuw nsw i64 %conv, 4
  %call2.i.i.i.i3.i.i243 = tail call noalias nonnull i8* @_Znwm(i64 %mul.i.i.i.i.i.i) #32
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
  %6 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
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
  %25 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !35
  br label %for.body33

for.body17:                                       ; preds = %for.body17, %for.cond14.preheader
  %indvars.iv = phi i64 [ 0, %for.cond14.preheader ], [ %indvars.iv.next, %for.body17 ]
  %26 = add nuw nsw i64 %indvars.iv, %23
  %add.ptr.i239 = getelementptr inbounds i32, i32* %6, i64 %26
  %27 = load i32, i32* %add.ptr.i239, align 4, !tbaa !46
  %conv21 = sext i32 %27 to i64
  %arrayidx.i235 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i267330, i64 %conv21, i32 0, i64 %indvars.iv
  store double 1.000000e+00, double* %arrayidx.i235, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup16, label %for.body17, !llvm.loop !109

for.cond101.preheader:                            ; preds = %if.end95, %for.cond.cleanup16
  br i1 %cmp105285, label %for.cond109.preheader.lr.ph, label %for.cond.cleanup106

for.cond109.preheader.lr.ph:                      ; preds = %for.cond101.preheader
  %28 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !76
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #3
  %index = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %25, i64 %idxprom, i32 0
  %31 = load i32, i32* %index, align 4, !tbaa !41
  %conv39 = sext i32 %31 to i64
  br label %for.body38

for.cond.cleanup37:                               ; preds = %for.body38
  %tobool.not = icmp eq i32 %n_non_zero.1, 0
  br i1 %tobool.not, label %if.end95, label %if.then59

for.body38:                                       ; preds = %for.body38, %for.body33
  %indvars.iv296 = phi i64 [ 0, %for.body33 ], [ %indvars.iv.next297, %for.body38 ]
  %n_non_zero.0271 = phi i32 [ 0, %for.body33 ], [ %n_non_zero.1, %for.body38 ]
  %arrayidx.i231 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i267330, i64 %conv39, i32 0, i64 %indvars.iv296
  %32 = load double, double* %arrayidx.i231, align 8, !tbaa !43
  %arrayidx45 = getelementptr inbounds [2 x double], [2 x double]* %a, i64 0, i64 %indvars.iv296
  store double %32, double* %arrayidx45, align 8, !tbaa !43
  store double 0.000000e+00, double* %arrayidx.i231, align 8, !tbaa !43
  %cmp53 = fcmp fast une double %32, 0.000000e+00
  %n_non_zero.1 = select i1 %cmp53, i32 1, i32 %n_non_zero.0271
  %indvars.iv.next297 = add nuw nsw i64 %indvars.iv296, 1
  %exitcond299.not = icmp eq i64 %indvars.iv.next297, %wide.trip.count
  br i1 %exitcond299.not, label %for.cond.cleanup37, label %for.body38, !llvm.loop !110

if.then59:                                        ; preds = %for.cond.cleanup37
  %sub61 = add nsw i32 %ist.0.in278, -2
  %33 = zext i32 %sub61 to i64
  %end_plus_one = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %25, i64 %33, i32 1
  %34 = load i32, i32* %end_plus_one, align 4, !tbaa !45
  %end_plus_one65 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %25, i64 %idxprom, i32 1
  %35 = load i32, i32* %end_plus_one65, align 4, !tbaa !45
  %cmp66274 = icmp slt i32 %34, %35
  br i1 %cmp66274, label %for.body68.lr.ph, label %if.end95

for.body68.lr.ph:                                 ; preds = %if.then59
  %36 = load double*, double** %multiplier_, align 8, !tbaa !37
  %37 = load i32*, i32** %index_, align 8, !tbaa !38
  %38 = sext i32 %34 to i64
  %39 = sext i32 %35 to i64
  br label %for.body68

for.body68:                                       ; preds = %for.cond.cleanup81, %for.body68.lr.ph
  %indvars.iv304 = phi i64 [ %38, %for.body68.lr.ph ], [ %indvars.iv.next305, %for.cond.cleanup81 ]
  %arrayidx70 = getelementptr inbounds double, double* %36, i64 %indvars.iv304
  %40 = load double, double* %arrayidx70, align 8, !tbaa !43
  %arrayidx72 = getelementptr inbounds i32, i32* %37, i64 %indvars.iv304
  %41 = load i32, i32* %arrayidx72, align 4, !tbaa !46
  %conv73 = sext i32 %41 to i64
  br label %for.body82

for.cond.cleanup81:                               ; preds = %for.body82
  %indvars.iv.next305 = add nsw i64 %indvars.iv304, 1
  %cmp66 = icmp slt i64 %indvars.iv.next305, %39
  br i1 %cmp66, label %for.body68, label %if.end95, !llvm.loop !111

for.body82:                                       ; preds = %for.body82, %for.body68
  %indvars.iv300 = phi i64 [ 0, %for.body68 ], [ %indvars.iv.next301, %for.body82 ]
  %arrayidx84 = getelementptr inbounds [2 x double], [2 x double]* %a, i64 0, i64 %indvars.iv300
  %42 = load double, double* %arrayidx84, align 8, !tbaa !43
  %mul85 = fmul fast double %42, %40
  %arrayidx87 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i267330, i64 %conv73, i32 0, i64 %indvars.iv300
  %43 = load double, double* %arrayidx87, align 8, !tbaa !43
  %add88 = fadd fast double %43, %mul85
  store double %add88, double* %arrayidx87, align 8, !tbaa !43
  %indvars.iv.next301 = add nuw nsw i64 %indvars.iv300, 1
  %exitcond303.not = icmp eq i64 %indvars.iv.next301, %wide.trip.count
  br i1 %exitcond303.not, label %for.cond.cleanup81, label %for.body82, !llvm.loop !112

if.end95:                                         ; preds = %for.cond.cleanup81, %if.then59, %for.cond.cleanup37
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #3
  %cmp31 = icmp sgt i64 %indvars.iv306, 2
  %indvars.iv.next307 = add nsw i64 %indvars.iv306, -1
  br i1 %cmp31, label %for.body33, label %for.cond101.preheader, !llvm.loop !113

for.cond109.preheader:                            ; preds = %for.cond.cleanup111, %for.cond109.preheader.lr.ph
  %indvars.iv313 = phi i64 [ 0, %for.cond109.preheader.lr.ph ], [ %indvars.iv.next314, %for.cond.cleanup111 ]
  %add.ptr.i216 = getelementptr inbounds i32, i32* %10, i64 %indvars.iv313
  %44 = load i32, i32* %add.ptr.i216, align 4, !tbaa !46
  %conv115 = sext i32 %44 to i64
  %45 = mul i64 %indvars.iv313, %30
  br label %for.body112

for.cond.cleanup106:                              ; preds = %for.cond.cleanup111, %for.cond101.preheader
  %indvars.iv.next320 = add nuw nsw i64 %indvars.iv319, 1
  %exitcond324.not = icmp eq i64 %indvars.iv.next320, %wide.trip.count323
  br i1 %exitcond324.not, label %if.then.i.i.i, label %for.body, !llvm.loop !114

for.cond.cleanup111:                              ; preds = %for.body112
  %indvars.iv.next314 = add nuw nsw i64 %indvars.iv313, 1
  %exitcond318.not = icmp eq i64 %indvars.iv.next314, %wide.trip.count317
  br i1 %exitcond318.not, label %for.cond.cleanup106, label %for.cond109.preheader, !llvm.loop !115

for.body112:                                      ; preds = %for.body112, %for.cond109.preheader
  %indvars.iv308 = phi i64 [ 0, %for.cond109.preheader ], [ %indvars.iv.next309, %for.body112 ]
  %arrayidx.i = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i267330, i64 %conv115, i32 0, i64 %indvars.iv308
  %46 = load double, double* %arrayidx.i, align 8, !tbaa !43
  %47 = add nuw nsw i64 %indvars.iv308, %23
  %add124 = add i64 %47, %45
  %sext = shl i64 %add124, 32
  %idxprom125 = ashr exact i64 %sext, 32
  %arrayidx126 = getelementptr inbounds double, double* %jacobian_out, i64 %idxprom125
  store double %46, double* %arrayidx126, align 8, !tbaa !43
  %indvars.iv.next309 = add nuw nsw i64 %indvars.iv308, 1
  %exitcond312.not = icmp eq i64 %indvars.iv.next309, %wide.trip.count
  br i1 %exitcond312.not, label %for.cond.cleanup111, label %for.body112, !llvm.loop !116

if.then.i.i.i:                                    ; preds = %for.cond.cleanup106, %invoke.cont
  %cond.i.i.i.i267289334 = phi i8* [ %call2.i.i.i.i3.i.i243, %invoke.cont ], [ %cond.i.i.i.i267289333, %for.cond.cleanup106 ]
  tail call void @_ZdlPv(i8* nonnull %cond.i.i.i.i267289334) #3
  br label %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EED2Ev.exit

_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EED2Ev.exit: ; preds = %if.then.i.i.i, %invoke.cont.thread
  ret void
}

; Function Attrs: noreturn
declare dso_local void @_ZSt20__throw_length_errorPKc(i8*) local_unnamed_addr #21

; Function Attrs: uwtable
define dso_local void @_ZN5adept5Stack16jacobian_reverseEPd(%"class.adept::Stack"* nonnull readonly dereferenceable(149) %this, double* nocapture %jacobian_out) local_unnamed_addr #0 align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %a = alloca [2 x double], align 16
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %4 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #3
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %6 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !2
  %7 = bitcast %union.anon* %5 to i8*
  %8 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %8) #3
  store i64 79, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i513 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.then
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i513, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %9 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %9, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(79) %call5.i.i.i10.i513, i8* nonnull align 1 dereferenceable(79) getelementptr inbounds ([80 x i8], [80 x i8]* @.str.71, i64 0, i64 0), i64 79, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %9, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i513, i64 %9
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %8) #3
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %10 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %11 = getelementptr inbounds i8, i8* %exception, i64 24
  %12 = bitcast i8* %message_.i.i.i to i8**
  store i8* %11, i8** %12, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i.i514 = getelementptr inbounds i8, i8* %exception, i64 16
  %13 = bitcast i8* %_M_string_length.i.i.i.i.i.i514 to i64*
  store i64 0, i64* %13, align 8, !tbaa !7
  store i8 0, i8* %11, align 1, !tbaa !10
  %14 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept41dependents_or_independents_not_identifiedE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %14, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %10, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont5 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %15 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %14, align 8, !tbaa !17
  %16 = load i8*, i8** %12, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %16, %11
  br i1 %cmp.i.i.i.i.i, label %lpad4.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %16) #3
  br label %lpad4.body

invoke.cont5:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept41dependents_or_independents_not_identifiedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad4.body.thread

ehcleanup.thread:                                 ; preds = %if.then
  %17 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #3
  br label %cleanup.action

lpad4.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %18 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %18) #3
  %19 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %19, %7
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i515.thread

if.then.i.i515.thread:                            ; preds = %lpad4.body
  call void @_ZdlPv(i8* %19) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #3
  br label %cleanup.action

lpad4.body.thread:                                ; preds = %invoke.cont5
  %20 = landingpad { i8*, i32 }
          cleanup
  %21 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i640 = icmp eq i8* %21, %7
  br i1 %cmp.i.i.i640, label %ehcleanup.thread645, label %if.then.i.i515

ehcleanup.thread645:                              ; preds = %lpad4.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #3
  br label %eh.resume

if.then.i.i515:                                   ; preds = %lpad4.body.thread
  call void @_ZdlPv(i8* %21) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad4.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i515.thread, %ehcleanup.thread
  %.pn549 = phi { i8*, i32 } [ %17, %ehcleanup.thread ], [ %15, %ehcleanup ], [ %15, %if.then.i.i515.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

if.end:                                           ; preds = %lor.lhs.false
  %max_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 8
  %22 = load i32, i32* %max_gradient_, align 8, !tbaa !63
  %conv = sext i32 %22 to i64
  %cmp.i.i511 = icmp slt i32 %22, 0
  br i1 %cmp.i.i511, label %if.then.i.i, label %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

if.then.i.i:                                      ; preds = %if.end
  tail call void @_ZSt20__throw_length_errorPKc(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.93, i64 0, i64 0)) #30
  unreachable

_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %if.end
  %cmp.not.i.i.i.i = icmp eq i32 %22, 0
  br i1 %cmp.not.i.i.i.i, label %invoke.cont11, label %_ZNSt16allocator_traitsISaIN5adept5BlockILi2EdEEEE8allocateERS3_m.exit.i.i.i.i

_ZNSt16allocator_traitsISaIN5adept5BlockILi2EdEEEE8allocateERS3_m.exit.i.i.i.i: ; preds = %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %mul.i.i.i.i.i.i = shl nuw nsw i64 %conv, 4
  %call2.i.i.i.i3.i.i512 = tail call noalias nonnull i8* @_Znwm(i64 %mul.i.i.i.i.i.i) #32
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
  %28 = bitcast [2 x double]* %a to i8*
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
  %53 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_, align 8, !tbaa !35
  br label %for.body49

for.body33:                                       ; preds = %for.body24.preheader, %for.cond20.preheader
  %add.ptr.i489 = getelementptr inbounds i32, i32* %24, i64 %indvars.iv632
  %54 = load i32, i32* %add.ptr.i489, align 4, !tbaa !46
  %conv37 = sext i32 %54 to i64
  %arrayidx.i485 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv37, i32 0, i64 0
  store double 1.000000e+00, double* %arrayidx.i485, align 8, !tbaa !43
  %55 = or i64 %indvars.iv632, 1
  %add.ptr.i489.c = getelementptr inbounds i32, i32* %24, i64 %55
  %56 = load i32, i32* %add.ptr.i489.c, align 4, !tbaa !46
  %conv37.c = sext i32 %56 to i64
  %arrayidx.i485.c = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv37.c, i32 0, i64 1
  store double 1.000000e+00, double* %arrayidx.i485.c, align 8, !tbaa !43
  br i1 %cmp47581, label %for.body49.lr.ph, label %for.cond121.preheader

for.cond121.preheader:                            ; preds = %if.end114, %for.body33
  br i1 %cmp125589, label %for.cond129.preheader.lr.ph, label %for.cond.cleanup126

for.cond129.preheader.lr.ph:                      ; preds = %for.cond121.preheader
  %57 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
  %58 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !76
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
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %28) #3
  %index = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %53, i64 %idxprom, i32 0
  %61 = load i32, i32* %index, align 4, !tbaa !41
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
  %62 = load double, double* %arrayidx.i481, align 8, !tbaa !43
  %arrayidx61 = getelementptr inbounds [2 x double], [2 x double]* %a, i64 0, i64 %indvars.iv613
  store double %62, double* %arrayidx61, align 8, !tbaa !43
  store double 0.000000e+00, double* %arrayidx.i481, align 8, !tbaa !43
  %cmp69 = fcmp fast une double %62, 0.000000e+00
  %n_non_zero.1 = select i1 %cmp69, i32 1, i32 %n_non_zero.0575
  br i1 %cmp52, label %for.body54, label %for.cond.cleanup53, !llvm.loop !117

if.then76:                                        ; preds = %for.cond.cleanup53
  %sub78 = add nsw i32 %ist.0.in582, -2
  %63 = zext i32 %sub78 to i64
  %end_plus_one = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %53, i64 %63, i32 1
  %64 = load i32, i32* %end_plus_one, align 4, !tbaa !45
  %end_plus_one82 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %53, i64 %idxprom, i32 1
  %65 = load i32, i32* %end_plus_one82, align 4, !tbaa !45
  %cmp83578 = icmp slt i32 %64, %65
  br i1 %cmp83578, label %for.body85.lr.ph, label %if.end114

for.body85.lr.ph:                                 ; preds = %if.then76
  %66 = load double*, double** %multiplier_, align 8, !tbaa !37
  %67 = load i32*, i32** %index_, align 8, !tbaa !38
  %68 = sext i32 %64 to i64
  %69 = sext i32 %65 to i64
  br label %for.body85

for.body85:                                       ; preds = %for.body85, %for.body85.lr.ph
  %indvars.iv617 = phi i64 [ %68, %for.body85.lr.ph ], [ %indvars.iv.next618, %for.body85 ]
  %arrayidx87 = getelementptr inbounds double, double* %66, i64 %indvars.iv617
  %70 = load double, double* %arrayidx87, align 8, !tbaa !43
  %arrayidx89 = getelementptr inbounds i32, i32* %67, i64 %indvars.iv617
  %71 = load i32, i32* %arrayidx89, align 4, !tbaa !46
  %conv90 = sext i32 %71 to i64
  %arrayidx101 = getelementptr inbounds [2 x double], [2 x double]* %a, i64 0, i64 0
  %72 = load double, double* %arrayidx101, align 16, !tbaa !43
  %mul = fmul fast double %72, %70
  %arrayidx103 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv90, i32 0, i64 0
  %73 = load double, double* %arrayidx103, align 8, !tbaa !43
  %add104 = fadd fast double %73, %mul
  store double %add104, double* %arrayidx103, align 8, !tbaa !43
  %arrayidx101.c = getelementptr inbounds [2 x double], [2 x double]* %a, i64 0, i64 1
  %74 = load double, double* %arrayidx101.c, align 8, !tbaa !43
  %mul.c = fmul fast double %74, %70
  %arrayidx103.c = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv90, i32 0, i64 1
  %75 = load double, double* %arrayidx103.c, align 8, !tbaa !43
  %add104.c = fadd fast double %75, %mul.c
  store double %add104.c, double* %arrayidx103.c, align 8, !tbaa !43
  %indvars.iv.next618 = add nsw i64 %indvars.iv617, 1
  %cmp83 = icmp slt i64 %indvars.iv.next618, %69
  br i1 %cmp83, label %for.body85, label %if.end114, !llvm.loop !118

if.end114:                                        ; preds = %for.body85, %if.then76, %for.cond.cleanup53
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %28) #3
  %cmp47 = icmp sgt i64 %indvars.iv619, 2
  %indvars.iv.next620 = add nsw i64 %indvars.iv619, -1
  br i1 %cmp47, label %for.body49, label %for.cond121.preheader, !llvm.loop !119

for.cond129.preheader:                            ; preds = %for.cond129.preheader, %for.cond129.preheader.lr.ph
  %indvar621 = phi i64 [ 0, %for.cond129.preheader.lr.ph ], [ %indvar.next622, %for.cond129.preheader ]
  %76 = mul nsw i64 %41, %indvar621
  %77 = add nsw i64 %42, %76
  %scevgep = getelementptr double, double* %jacobian_out, i64 %77
  %scevgep623 = bitcast double* %scevgep to i8*
  %add.ptr.i466 = getelementptr inbounds i32, i32* %57, i64 %indvar621
  %78 = load i32, i32* %add.ptr.i466, align 4, !tbaa !46
  %conv136 = sext i32 %78 to i64
  %scevgep624 = getelementptr %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv136
  %scevgep624625 = bitcast %"struct.adept::Block"* %scevgep624 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %scevgep623, i8* nonnull align 8 dereferenceable(16) %scevgep624625, i64 16, i1 false)
  %indvar.next622 = add nuw nsw i64 %indvar621, 1
  %exitcond631.not = icmp eq i64 %indvar.next622, %wide.trip.count630
  br i1 %exitcond631.not, label %for.cond.cleanup126, label %for.cond129.preheader, !llvm.loop !120

for.cond.cleanup126:                              ; preds = %for.cond129.preheader, %for.cond121.preheader
  %indvars.iv.next633 = add nuw nsw i64 %indvars.iv632, 2
  %indvar.next = add nuw nsw i64 %indvar, 1
  %exitcond635.not = icmp eq i64 %indvar.next, %div651
  br i1 %exitcond635.not, label %for.cond.cleanup.loopexit, label %for.cond20.preheader, !llvm.loop !121

for.body180:                                      ; preds = %for.body168.preheader, %for.cond164.preheader
  %conv183 = zext i32 %i_dependent.0.lcssa to i64
  %79 = load i32*, i32** %_M_start.i.i426, align 8, !tbaa !33
  %add.ptr.i452 = getelementptr inbounds i32, i32* %79, i64 %conv183
  %80 = load i32, i32* %add.ptr.i452, align 4, !tbaa !46
  %conv185 = sext i32 %80 to i64
  %arrayidx.i448 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv185, i32 0, i64 0
  store double 1.000000e+00, double* %arrayidx.i448, align 8, !tbaa !43
  %n_statements_195 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 3
  %81 = load i32, i32* %n_statements_195, align 8, !tbaa !40
  %cmp198567 = icmp sgt i32 %81, 1
  br i1 %cmp198567, label %for.body200.lr.ph, label %for.cond289.preheader

for.body200.lr.ph:                                ; preds = %for.body180
  %statement_202 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %82 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_202, align 8, !tbaa !35
  %multiplier_248 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %index_252 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %83 = zext i32 %81 to i64
  br label %for.body200

for.cond289.preheader:                            ; preds = %if.end280, %for.body180
  %84 = load i32*, i32** %_M_finish.i.i, align 8, !tbaa !76
  %85 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
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
  %89 = load i32, i32* %index212, align 4, !tbaa !41
  %conv213 = sext i32 %89 to i64
  %arrayidx.i445 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv213, i32 0, i64 0
  %arrayidx.i445.promoted = load double, double* %arrayidx.i445, align 8, !tbaa !43
  %cmp227 = fcmp fast oeq double %arrayidx.i445.promoted, 0.000000e+00
  store double 0.000000e+00, double* %arrayidx.i445, align 8, !tbaa !43
  br i1 %cmp227, label %if.end280, label %if.then235

if.then235:                                       ; preds = %for.body200
  %sub238 = add nsw i32 %ist194.0.in568, -2
  %90 = zext i32 %sub238 to i64
  %end_plus_one241 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %82, i64 %90, i32 1
  %91 = load i32, i32* %end_plus_one241, align 4, !tbaa !45
  %end_plus_one243 = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %82, i64 %idxprom203, i32 1
  %92 = load i32, i32* %end_plus_one243, align 4, !tbaa !45
  %cmp244564 = icmp slt i32 %91, %92
  br i1 %cmp244564, label %for.body246.lr.ph, label %if.end280

for.body246.lr.ph:                                ; preds = %if.then235
  %93 = load double*, double** %multiplier_248, align 8, !tbaa !37
  %94 = load i32*, i32** %index_252, align 8, !tbaa !38
  %95 = sext i32 %91 to i64
  %96 = sext i32 %92 to i64
  br label %for.body246

for.body246:                                      ; preds = %for.body246, %for.body246.lr.ph
  %indvars.iv596 = phi i64 [ %95, %for.body246.lr.ph ], [ %indvars.iv.next597, %for.body246 ]
  %arrayidx250 = getelementptr inbounds double, double* %93, i64 %indvars.iv596
  %97 = load double, double* %arrayidx250, align 8, !tbaa !43
  %arrayidx254 = getelementptr inbounds i32, i32* %94, i64 %indvars.iv596
  %98 = load i32, i32* %arrayidx254, align 4, !tbaa !46
  %conv255 = sext i32 %98 to i64
  %arrayidx.i439 = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv255, i32 0, i64 0
  %mul267 = fmul fast double %97, %arrayidx.i445.promoted
  %99 = load double, double* %arrayidx.i439, align 8, !tbaa !43
  %add270 = fadd fast double %99, %mul267
  store double %add270, double* %arrayidx.i439, align 8, !tbaa !43
  %indvars.iv.next597 = add nsw i64 %indvars.iv596, 1
  %cmp244 = icmp slt i64 %indvars.iv.next597, %96
  br i1 %cmp244, label %for.body246, label %if.end280, !llvm.loop !122

if.end280:                                        ; preds = %for.body246, %if.then235, %for.body200
  %cmp198 = icmp sgt i64 %indvars.iv598, 2
  %indvars.iv.next599 = add nsw i64 %indvars.iv598, -1
  br i1 %cmp198, label %for.body200, label %for.cond289.preheader, !llvm.loop !123

for.body300:                                      ; preds = %for.body300, %for.body300.lr.ph
  %indvars.iv = phi i64 [ 0, %for.body300.lr.ph ], [ %indvars.iv.next, %for.body300 ]
  %add.ptr.i432 = getelementptr inbounds i32, i32* %85, i64 %indvars.iv
  %100 = load i32, i32* %add.ptr.i432, align 4, !tbaa !46
  %conv304 = sext i32 %100 to i64
  %arrayidx.i = getelementptr inbounds %"struct.adept::Block", %"struct.adept::Block"* %cond.i.i.i.i552, i64 %conv304, i32 0, i64 0
  %101 = load double, double* %arrayidx.i, align 8, !tbaa !43
  %102 = mul nsw i64 %indvars.iv, %87
  %103 = add nsw i64 %102, %88
  %arrayidx315 = getelementptr inbounds double, double* %jacobian_out, i64 %103
  store double %101, double* %arrayidx315, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %if.then.i.i.i, label %for.body300, !llvm.loop !124

if.end324:                                        ; preds = %for.cond.cleanup
  %tobool.not.i.i.i = icmp eq %"struct.adept::Block"* %cond.i.i.i.i552, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIN5adept5BlockILi2EdEESaIS2_EED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end324, %for.body300, %for.cond289.preheader
  tail call void @_ZdlPv(i8* nonnull %cond.i.i.i.i552600) #3
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
define dso_local void @_ZN5adept5Stack8jacobianEPd(%"class.adept::Stack"* nonnull readonly dereferenceable(149) %this, double* nocapture %jacobian_out) local_unnamed_addr #11 align 2 {
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

; Function Attrs: uwtable
define dso_local void @_ZN5adept7versionB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2
  %1 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to %union.anon**
  store %union.anon* %0, %union.anon** %1, align 8, !tbaa !2
  %2 = bitcast %union.anon* %0 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(5) %2, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), i64 5, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1
  store i64 5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %2, i64 5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept16compiler_versionB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i:
  %0 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2
  %1 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to %union.anon**
  store %union.anon* %0, %union.anon** %1, align 8, !tbaa !2
  %2 = bitcast %union.anon* %0 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(7) %2, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i64 7, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1
  store i64 7, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %2, i64 7
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
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
  tail call void @_ZdlPv(i8* %4) #3
  br label %eh.resume

nrvo.skipdtor:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKc.exit.i
  ret void

eh.resume:                                        ; preds = %if.then.i.i, %lpad1
  resume { i8*, i32 } %3
}

declare dso_local nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32), i8*, i64) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN5adept14compiler_flagsB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %0 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 2
  %1 = bitcast %"class.std::__cxx11::basic_string"* %agg.result to %union.anon**
  store %union.anon* %0, %union.anon** %1, align 8, !tbaa !2
  %2 = bitcast %union.anon* %0 to i8*
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(7) %2, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i64 7, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %agg.result, i64 0, i32 1
  store i64 7, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %2, i64 7
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept13configurationB5cxx11Ev(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %s = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp11 = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp24 = alloca %"class.std::__cxx11::basic_string", align 8
  %0 = bitcast %"class.std::__cxx11::basic_stringstream"* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 392, i8* nonnull %0) #3
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull dereferenceable(128) %s)
  %add.ptr = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1
  %1 = bitcast %"class.std::exception"* %add.ptr to %"class.std::basic_ostream"*
  %call1.i52 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([15 x i8], [15 x i8]* @.str.75, i64 0, i64 0), i64 14)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %entry
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #3
  %3 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %4 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %3, %union.anon** %4, align 8, !tbaa !2, !alias.scope !125
  %5 = bitcast %union.anon* %3 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(5) %5, i8* nonnull align 1 dereferenceable(5) getelementptr inbounds ([6 x i8], [6 x i8]* @.str.72, i64 0, i64 0), i64 5, i1 false) #3
  %_M_string_length.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 5, i64* %_M_string_length.i.i.i.i.i.i.i, align 8, !tbaa !7, !alias.scope !125
  %arrayidx.i.i.i.i.i.i = getelementptr inbounds i8, i8* %5, i64 5
  store i8 0, i8* %arrayidx.i.i.i.i.i.i, align 1, !tbaa !10, !alias.scope !125
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
  call void @_ZdlPv(i8* %6) #3
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %invoke.cont6
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #3
  %call1.i58 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([17 x i8], [17 x i8]* @.str.77, i64 0, i64 0), i64 16)
          to label %invoke.cont9 unwind label %lpad

invoke.cont9:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %7 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp11 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %7) #3
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp11, i64 0, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp11 to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !2, !alias.scope !128
  %10 = bitcast %union.anon* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(7) %10, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i64 7, i1 false) #3
  %_M_string_length.i.i.i.i.i.i.i60 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp11, i64 0, i32 1
  store i64 7, i64* %_M_string_length.i.i.i.i.i.i.i60, align 8, !tbaa !7, !alias.scope !128
  %arrayidx.i.i.i.i.i.i61 = getelementptr inbounds i8, i8* %10, i64 7
  store i8 0, i8* %arrayidx.i.i.i.i.i.i61, align 1, !tbaa !10, !alias.scope !128
  %call2.i.i7.i = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.74, i64 0, i64 0), i64 8)
          to label %invoke.cont13 unwind label %lpad1.i

lpad1.i:                                          ; preds = %invoke.cont9
  %11 = landingpad { i8*, i32 }
          cleanup
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp11, i64 0, i32 0, i32 0
  %12 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !11, !alias.scope !128
  %cmp.i.i.i.i = icmp eq i8* %12, %10
  br i1 %cmp.i.i.i.i, label %ehcleanup20, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lpad1.i
  call void @_ZdlPv(i8* %12) #3
  br label %ehcleanup20

invoke.cont13:                                    ; preds = %invoke.cont9
  %_M_p.i.i.i62 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp11, i64 0, i32 0, i32 0
  %13 = load i8*, i8** %_M_p.i.i.i62, align 8, !tbaa !11
  %14 = load i64, i64* %_M_string_length.i.i.i.i.i.i.i60, align 8, !tbaa !7
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
  call void @_ZdlPv(i8* %15) #3
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73: ; preds = %if.then.i.i72, %invoke.cont17
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #3
  %call1.i75 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([19 x i8], [19 x i8]* @.str.78, i64 0, i64 0), i64 18)
          to label %invoke.cont26 unwind label %lpad

invoke.cont26:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit73
  %16 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %16) #3
  %17 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp24, i64 0, i32 2
  %18 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp24 to %union.anon**
  store %union.anon* %17, %union.anon** %18, align 8, !tbaa !2, !alias.scope !131
  %19 = bitcast %union.anon* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(7) %19, i8* nonnull align 1 dereferenceable(7) getelementptr inbounds ([8 x i8], [8 x i8]* @.str.73, i64 0, i64 0), i64 7, i1 false) #3
  %_M_string_length.i.i.i.i.i.i.i77 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp24, i64 0, i32 1
  store i64 7, i64* %_M_string_length.i.i.i.i.i.i.i77, align 8, !tbaa !7, !alias.scope !131
  %arrayidx.i.i.i.i.i.i78 = getelementptr inbounds i8, i8* %19, i64 7
  store i8 0, i8* %arrayidx.i.i.i.i.i.i78, align 1, !tbaa !10, !alias.scope !131
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
  call void @_ZdlPv(i8* %20) #3
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %if.then.i.i89, %invoke.cont30
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #3
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
  call void @_ZdlPv(i8* %29) #3
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %if.then.i.i.i.i.i, %invoke.cont41
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %28, align 8, !tbaa !17
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i) #3
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
  store i64 0, i64* %35, align 8, !tbaa !134
  %36 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216) %36) #3
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %0) #3
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
  call void @_ZdlPv(i8* %39) #3
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i100, %lpad3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #3
  br label %ehcleanup42

lpad14:                                           ; preds = %invoke.cont15, %invoke.cont13
  %40 = landingpad { i8*, i32 }
          cleanup
  %41 = load i8*, i8** %_M_p.i.i.i62, align 8, !tbaa !11
  %cmp.i.i.i104 = icmp eq i8* %41, %10
  br i1 %cmp.i.i.i104, label %ehcleanup20, label %if.then.i.i105

if.then.i.i105:                                   ; preds = %lpad14
  call void @_ZdlPv(i8* %41) #3
  br label %ehcleanup20

ehcleanup20:                                      ; preds = %if.then.i.i105, %lpad14, %if.then.i.i.i, %lpad1.i
  %.pn46 = phi { i8*, i32 } [ %11, %if.then.i.i.i ], [ %11, %lpad1.i ], [ %40, %lpad14 ], [ %40, %if.then.i.i105 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %7) #3
  br label %ehcleanup42

lpad27:                                           ; preds = %invoke.cont28, %invoke.cont26
  %42 = landingpad { i8*, i32 }
          cleanup
  %43 = load i8*, i8** %_M_p.i.i.i79, align 8, !tbaa !11
  %cmp.i.i.i109 = icmp eq i8* %43, %19
  br i1 %cmp.i.i.i109, label %ehcleanup33, label %if.then.i.i110

if.then.i.i110:                                   ; preds = %lpad27
  call void @_ZdlPv(i8* %43) #3
  br label %ehcleanup33

ehcleanup33:                                      ; preds = %if.then.i.i110, %lpad27
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %16) #3
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
  call void @_ZdlPv(i8* %52) #3
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit123

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit123: ; preds = %if.then.i.i.i.i.i118, %ehcleanup42
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %51, align 8, !tbaa !17
  %_M_buf_locale.i.i.i.i119 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i119) #3
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
  store i64 0, i64* %58, align 8, !tbaa !134
  %59 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216) %59) #3
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %0) #3
  resume { i8*, i32 } %.pn49
}

; Function Attrs: uwtable
declare dso_local void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull dereferenceable(128)) unnamed_addr #0 align 2

; Function Attrs: uwtable
declare dso_local void @_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8, %"class.std::__cxx11::basic_stringbuf"* nonnull dereferenceable(104)) local_unnamed_addr #0 align 2

; Function Attrs: nounwind
declare dso_local void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8)) unnamed_addr #6

; Function Attrs: nounwind
declare dso_local void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216)) unnamed_addr #6

; Function Attrs: norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local i32 @_ZN5adept16max_blas_threadsEv() local_unnamed_addr #9 {
entry:
  ret i32 1
}

; Function Attrs: norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local i32 @_ZN5adept20set_max_blas_threadsEi(i32 %n) local_unnamed_addr #9 {
entry:
  ret i32 1
}

; Function Attrs: norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local zeroext i1 @_ZN5adept26have_matrix_multiplicationEv() local_unnamed_addr #9 {
entry:
  ret i1 false
}

; Function Attrs: norecurse nounwind readnone uwtable willreturn mustprogress
define dso_local zeroext i1 @_ZN5adept19have_linear_algebraEv() local_unnamed_addr #9 {
entry:
  ret i1 false
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIfEENS_5ArrayILi1ET_Lb0EEERKNS1_ILi2ES2_Lb0EEERKS3_(%"class.adept::Array.25"* noalias sret(%"class.adept::Array.25") align 8 %agg.result, %"class.adept::Array"* nonnull align 8 dereferenceable(32) %A, %"class.adept::Array.25"* nonnull align 8 dereferenceable(24) %b) local_unnamed_addr #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIfLNS_8internal21SymmMatrixOrientationE0EEENS_5ArrayILi1ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array.25"* noalias sret(%"class.adept::Array.25") align 8 %agg.result, %"class.adept::SpecialMatrix"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array.25"* nonnull align 8 dereferenceable(24) %b) local_unnamed_addr #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIfLNS_8internal21SymmMatrixOrientationE1EEENS_5ArrayILi1ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array.25"* noalias sret(%"class.adept::Array.25") align 8 %agg.result, %"class.adept::SpecialMatrix"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array.25"* nonnull align 8 dereferenceable(24) %b) local_unnamed_addr #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIfEENS_5ArrayILi2ET_Lb0EEERKS3_S5_(%"class.adept::Array"* noalias sret(%"class.adept::Array") align 8 %agg.result, %"class.adept::Array"* nonnull align 8 dereferenceable(32) %A, %"class.adept::Array"* nonnull align 8 dereferenceable(32) %B) local_unnamed_addr #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIfLNS_8internal21SymmMatrixOrientationE0EEENS_5ArrayILi2ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array"* noalias sret(%"class.adept::Array") align 8 %agg.result, %"class.adept::SpecialMatrix"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array"* nonnull align 8 dereferenceable(32) %B) local_unnamed_addr #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIfLNS_8internal21SymmMatrixOrientationE1EEENS_5ArrayILi2ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array"* noalias sret(%"class.adept::Array") align 8 %agg.result, %"class.adept::SpecialMatrix"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array"* nonnull align 8 dereferenceable(32) %B) local_unnamed_addr #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIdEENS_5ArrayILi1ET_Lb0EEERKNS1_ILi2ES2_Lb0EEERKS3_(%"class.adept::Array.28"* noalias sret(%"class.adept::Array.28") align 8 %agg.result, %"class.adept::Array.12"* nonnull align 8 dereferenceable(32) %A, %"class.adept::Array.28"* nonnull align 8 dereferenceable(24) %b) local_unnamed_addr #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIdLNS_8internal21SymmMatrixOrientationE0EEENS_5ArrayILi1ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array.28"* noalias sret(%"class.adept::Array.28") align 8 %agg.result, %"class.adept::SpecialMatrix.15"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array.28"* nonnull align 8 dereferenceable(24) %b) local_unnamed_addr #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIdLNS_8internal21SymmMatrixOrientationE1EEENS_5ArrayILi1ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array.28"* noalias sret(%"class.adept::Array.28") align 8 %agg.result, %"class.adept::SpecialMatrix.15"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array.28"* nonnull align 8 dereferenceable(24) %b) local_unnamed_addr #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIdEENS_5ArrayILi2ET_Lb0EEERKS3_S5_(%"class.adept::Array.12"* noalias sret(%"class.adept::Array.12") align 8 %agg.result, %"class.adept::Array.12"* nonnull align 8 dereferenceable(32) %A, %"class.adept::Array.12"* nonnull align 8 dereferenceable(32) %B) local_unnamed_addr #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIdLNS_8internal21SymmMatrixOrientationE0EEENS_5ArrayILi2ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array.12"* noalias sret(%"class.adept::Array.12") align 8 %agg.result, %"class.adept::SpecialMatrix.15"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array.12"* nonnull align 8 dereferenceable(32) %B) local_unnamed_addr #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define weak_odr dso_local void @_ZN5adept5solveIdLNS_8internal21SymmMatrixOrientationE1EEENS_5ArrayILi2ET_Lb0EEERKNS_13SpecialMatrixIS4_NS1_10SymmEngineIXT0_EEELb0EEERKS5_(%"class.adept::Array.12"* noalias sret(%"class.adept::Array.12") align 8 %agg.result, %"class.adept::SpecialMatrix.15"* nonnull align 8 dereferenceable(24) %A, %"class.adept::Array.12"* nonnull align 8 dereferenceable(32) %B) local_unnamed_addr #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 61, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i9 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i9, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(61) %call5.i.i.i10.i9, i8* nonnull align 1 dereferenceable(61) getelementptr inbounds ([62 x i8], [62 x i8]* @.str.81, i64 0, i64 0), i64 61, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i9, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %6 = bitcast i8* %exception to i32 (...)***
  %message_.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21feature_not_availableE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont3 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %11 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %6, align 8, !tbaa !17
  %12 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %12, %8
  br i1 %cmp.i.i.i.i.i, label %lpad2.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %12) #3
  br label %lpad2.body

invoke.cont3:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21feature_not_availableE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad2.body.thread

ehcleanup.thread:                                 ; preds = %entry
  %13 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %14 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %14) #3
  %15 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %15, %3
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad2.body
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

lpad2.body.thread:                                ; preds = %invoke.cont3
  %16 = landingpad { i8*, i32 }
          cleanup
  %17 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i16 = icmp eq i8* %17, %3
  br i1 %cmp.i.i.i16, label %ehcleanup.thread21, label %if.then.i.i

ehcleanup.thread21:                               ; preds = %lpad2.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad2.body.thread
  call void @_ZdlPv(i8* %17) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad2.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn13 = phi { i8*, i32 } [ %13, %ehcleanup.thread ], [ %11, %ehcleanup ], [ %11, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread21
  %.pn12 = phi { i8*, i32 } [ %.pn13, %cleanup.action ], [ %16, %if.then.i.i ], [ %16, %ehcleanup.thread21 ]
  resume { i8*, i32 } %.pn12

unreachable:                                      ; preds = %invoke.cont3
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN5adept8linspaceEddi(%"class.adept::Array.28"* noalias nonnull sret(%"class.adept::Array.28") align 8 %agg.result, double %x1, double %x2, i32 %n) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %dim.i.i = alloca [7 x i32], align 16
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %storage_.i = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %agg.result, i64 0, i32 1
  store %"class.adept::Storage.14"* null, %"class.adept::Storage.14"** %storage_.i, align 8, !tbaa !136
  %0 = bitcast [7 x i32]* %dim.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 28, i8* nonnull %0) #3
  %arrayinit.begin.i.i = getelementptr inbounds [7 x i32], [7 x i32]* %dim.i.i, i64 0, i64 0
  store i32 %n, i32* %arrayinit.begin.i.i, align 16, !tbaa !46
  %arrayinit.element.i.i = getelementptr inbounds [7 x i32], [7 x i32]* %dim.i.i, i64 0, i64 1
  %1 = bitcast i32* %arrayinit.element.i.i to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 4 dereferenceable(24) %1, i8 -1, i64 24, i1 false)
  call void @_ZN5adept5ArrayILi1EdLb0EE6resizeEPKib(%"class.adept::Array.28"* nonnull dereferenceable(24) %agg.result, i32* nonnull %arrayinit.begin.i.i, i1 zeroext false)
  call void @llvm.lifetime.end.p0i8(i64 28, i8* nonnull %0) #3
  %cmp = icmp sgt i32 %n, 1
  br i1 %cmp, label %invoke.cont.lr.ph, label %if.else

invoke.cont.lr.ph:                                ; preds = %entry
  %data_.i = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %agg.result, i64 0, i32 0
  %2 = load double*, double** %data_.i, align 8, !tbaa !139
  %arrayidx.i4.i = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %agg.result, i64 0, i32 3, i32 0, i64 0
  %3 = load i32, i32* %arrayidx.i4.i, align 4, !tbaa !46
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
  store double %add, double* %arrayidx.i, align 8, !tbaa !43
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %nrvo.skipdtor, label %invoke.cont, !llvm.loop !140

if.else:                                          ; preds = %entry
  %cmp4 = icmp eq i32 %n, 1
  %cmp5 = fcmp fast oeq double %x1, %x2
  %or.cond = and i1 %cmp5, %cmp4
  br i1 %or.cond, label %invoke.cont8, label %if.else10

invoke.cont8:                                     ; preds = %if.else
  %data_.i43 = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %agg.result, i64 0, i32 0
  %8 = load double*, double** %data_.i43, align 8, !tbaa !139
  store double %x1, double* %8, align 8, !tbaa !43
  br label %nrvo.skipdtor

if.else10:                                        ; preds = %if.else
  br i1 %cmp4, label %if.then12, label %nrvo.skipdtor

if.then12:                                        ; preds = %if.else10
  %exception = call i8* @__cxa_allocate_exception(i64 40) #3
  %9 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %9) #3
  %10 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %11 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %10, %union.anon** %11, align 8, !tbaa !2
  %12 = bitcast %union.anon* %10 to i8*
  %13 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %13) #3
  store i64 46, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i45 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.then12
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i45, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %14 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %14, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(46) %call5.i.i.i10.i45, i8* nonnull align 1 dereferenceable(46) getelementptr inbounds ([47 x i8], [47 x i8]* @.str.82, i64 0, i64 0), i64 46, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %14, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i45, i64 %14
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %13) #3
  %15 = bitcast i8* %exception to %"class.adept::invalid_operation"*
  invoke void @_ZN5adept17invalid_operationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %15, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont17 unwind label %lpad16

invoke.cont17:                                    ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_operationE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad16

ehcleanup.thread:                                 ; preds = %if.then12
  %16 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #3
  br label %cleanup.action

lpad16:                                           ; preds = %invoke.cont17, %call5.i.i.i10.i.noexc
  %cleanup.isactive.0 = phi i1 [ false, %invoke.cont17 ], [ true, %call5.i.i.i10.i.noexc ]
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %18, %12
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i

if.then.i.i:                                      ; preds = %lpad16
  call void @_ZdlPv(i8* %18) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #3
  br i1 %cleanup.isactive.0, label %cleanup.action, label %ehcleanup23

ehcleanup:                                        ; preds = %lpad16
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %9) #3
  br i1 %cleanup.isactive.0, label %cleanup.action, label %ehcleanup23

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i, %ehcleanup.thread
  %.pn48 = phi { i8*, i32 } [ %16, %ehcleanup.thread ], [ %17, %ehcleanup ], [ %17, %if.then.i.i ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %ehcleanup23

nrvo.skipdtor:                                    ; preds = %if.else10, %invoke.cont8, %invoke.cont
  ret void

ehcleanup23:                                      ; preds = %cleanup.action, %ehcleanup, %if.then.i.i
  %.pn40 = phi { i8*, i32 } [ %.pn48, %cleanup.action ], [ %17, %ehcleanup ], [ %17, %if.then.i.i ]
  %19 = load %"class.adept::Storage.14"*, %"class.adept::Storage.14"** %storage_.i, align 8, !tbaa !136
  %tobool.not.i = icmp eq %"class.adept::Storage.14"* %19, null
  br i1 %tobool.not.i, label %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit, label %if.then.i

if.then.i:                                        ; preds = %ehcleanup23
  invoke void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage.14"* nonnull dereferenceable(20) %19)
          to label %_ZN5adept5ArrayILi1EdLb0EED2Ev.exit unwind label %terminate.lpad.i

terminate.lpad.i:                                 ; preds = %if.then.i
  %20 = landingpad { i8*, i32 }
          catch i8* null
  %21 = extractvalue { i8*, i32 } %20, 0
  call void @__clang_call_terminate(i8* %21) #34
  unreachable

_ZN5adept5ArrayILi1EdLb0EED2Ev.exit:              ; preds = %if.then.i, %ehcleanup23
  resume { i8*, i32 } %.pn40

unreachable:                                      ; preds = %invoke.cont17
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept5ArrayILi1EdLb0EE6resizeEPKib(%"class.adept::Array.28"* nonnull dereferenceable(24) %this, i32* %dim, i1 zeroext %force_contiguous) local_unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %result.i.i = alloca double*, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp6 = alloca %"class.std::__cxx11::basic_string", align 8
  %storage_ = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %this, i64 0, i32 1
  %0 = load %"class.adept::Storage.14"*, %"class.adept::Storage.14"** %storage_, align 8, !tbaa !136
  %tobool.not = icmp eq %"class.adept::Storage.14"* %0, null
  br i1 %tobool.not, label %for.body.critedge, label %if.then

if.then:                                          ; preds = %entry
  tail call void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage.14"* nonnull dereferenceable(20) %0)
  store %"class.adept::Storage.14"* null, %"class.adept::Storage.14"** %storage_, align 8, !tbaa !136
  br label %for.body.critedge

for.body.critedge:                                ; preds = %if.then, %entry
  %1 = load i32, i32* %dim, align 4, !tbaa !46
  %cmp4 = icmp slt i32 %1, 0
  br i1 %cmp4, label %if.then5, label %if.else

if.then5:                                         ; preds = %for.body.critedge
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %2 = bitcast i8* %exception to %"class.adept::invalid_operation"*
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #3
  %4 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %4) #3
  invoke void @_ZN5adept8internal18exception_locationB5cxx11EPKci(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp6, i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.96, i64 0, i64 0), i32 1969)
          to label %invoke.cont unwind label %ehcleanup11.thread

invoke.cont:                                      ; preds = %if.then5
  %call3.i.i.i57 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp6, i64 0, i64 0, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.95, i64 0, i64 0), i64 34)
          to label %call3.i.i.i.noexc unwind label %lpad7

call3.i.i.i.noexc:                                ; preds = %invoke.cont
  %5 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %6 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %5, %union.anon** %6, align 8, !tbaa !2, !alias.scope !141
  %_M_p.i.i25.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 0, i32 0
  %7 = load i8*, i8** %_M_p.i.i25.i.i, align 8, !tbaa !11
  %8 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 2
  %arraydecay.i.i.i.i = bitcast %union.anon* %8 to i8*
  %cmp.i.i.i = icmp eq i8* %7, %arraydecay.i.i.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %call3.i.i.i.noexc
  %arraydecay.i.i.i = bitcast %union.anon* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %arraydecay.i.i.i, i8* nonnull align 8 dereferenceable(16) %7, i64 16, i1 false) #3
  br label %invoke.cont8

if.else.i.i:                                      ; preds = %call3.i.i.i.noexc
  %_M_p.i23.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %7, i8** %_M_p.i23.i.i, align 8, !tbaa !11, !alias.scope !141
  %_M_allocated_capacity.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 2, i32 0
  %9 = load i64, i64* %_M_allocated_capacity.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %9, i64* %_M_allocated_capacity.i.i.i, align 8, !tbaa !10, !alias.scope !141
  br label %invoke.cont8

invoke.cont8:                                     ; preds = %if.else.i.i, %if.then.i.i
  %_M_string_length.i22.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i57, i64 0, i32 1
  %10 = load i64, i64* %_M_string_length.i22.i.i, align 8, !tbaa !7
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %10, i64* %_M_string_length.i.i.i, align 8, !tbaa !7, !alias.scope !141
  %11 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i57 to %union.anon**
  store %union.anon* %8, %union.anon** %11, align 8, !tbaa !11
  store i64 0, i64* %_M_string_length.i22.i.i, align 8, !tbaa !7
  store i8 0, i8* %arraydecay.i.i.i.i, align 8, !tbaa !10
  invoke void @_ZN5adept17invalid_dimensionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %2, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont8
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_dimensionE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad9

ehcleanup11.thread:                               ; preds = %if.then5
  %12 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #3
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
  call void @_ZdlPv(i8* %15) #3
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
  call void @_ZdlPv(i8* %16) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #3
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

ehcleanup11:                                      ; preds = %ehcleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %4) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #3
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

cleanup.action:                                   ; preds = %ehcleanup11, %if.then.i.i64, %ehcleanup11.thread
  %.pn.pn73 = phi { i8*, i32 } [ %12, %ehcleanup11.thread ], [ %.pn, %ehcleanup11 ], [ %.pn, %if.then.i.i64 ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

if.else:                                          ; preds = %for.body.critedge
  %cmp16 = icmp eq i32 %1, 0
  br i1 %cmp16, label %_ZN5adept5ArrayILi1EdLb0EE5clearEv.exit, label %for.end, !llvm.loop !144

_ZN5adept5ArrayILi1EdLb0EE5clearEv.exit:          ; preds = %if.else
  %data_.i = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %this, i64 0, i32 0
  store double* null, double** %data_.i, align 8, !tbaa !139
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
  %call32 = tail call noalias nonnull dereferenceable(24) i8* @_Znwm(i64 24) #33
  %n_.i = getelementptr inbounds i8, i8* %call32, i64 8
  %19 = bitcast i8* %n_.i to i32*
  store i32 %1, i32* %19, align 8, !tbaa !145
  %n_links_.i = getelementptr inbounds i8, i8* %call32, i64 12
  %20 = bitcast i8* %n_links_.i to i32*
  store i32 1, i32* %20, align 4, !tbaa !147
  %gradient_index_.i = getelementptr inbounds i8, i8* %call32, i64 16
  %21 = bitcast i8* %gradient_index_.i to i32*
  store i32 -1, i32* %21, align 8, !tbaa !148
  %22 = bitcast double** %result.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %22) #3
  %23 = bitcast double** %result.i.i to i8**
  %conv1.i.i74 = zext i32 %1 to i64
  %mul.i.i = shl nuw nsw i64 %conv1.i.i74, 3
  %call2.i.i = call i32 @posix_memalign(i8** nonnull %23, i64 16, i64 %mul.i.i) #3
  %cmp3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %cmp3.not.i.i, label %invoke.cont34, label %if.then4.i.i

if.then4.i.i:                                     ; preds = %for.end
  %exception.i.i = call i8* @__cxa_allocate_exception(i64 8) #3
  %24 = bitcast i8* %exception.i.i to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVSt9bad_alloc, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %24, align 8, !tbaa !17
  invoke void @__cxa_throw(i8* nonnull %exception.i.i, i8* bitcast (i8** @_ZTISt9bad_alloc to i8*), i8* bitcast (void (%"class.std::bad_alloc"*)* @_ZNSt9bad_allocD1Ev to i8*)) #30
          to label %.noexc unwind label %lpad33

.noexc:                                           ; preds = %if.then4.i.i
  unreachable

invoke.cont34:                                    ; preds = %for.end
  %25 = load double*, double** %result.i.i, align 8, !tbaa !26
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %22) #3
  %data_.i67 = bitcast i8* %call32 to double**
  store double* %25, double** %data_.i67, align 8, !tbaa !149
  %26 = load i32, i32* @_ZN5adept8internal26n_storage_objects_created_E, align 4, !tbaa !46
  %inc.i = add nsw i32 %26, 1
  store i32 %inc.i, i32* @_ZN5adept8internal26n_storage_objects_created_E, align 4, !tbaa !46
  %27 = bitcast %"class.adept::Storage.14"** %storage_ to i8**
  store i8* %call32, i8** %27, align 8, !tbaa !136
  %data_ = getelementptr inbounds %"class.adept::Array.28", %"class.adept::Array.28"* %this, i64 0, i32 0
  store double* %25, double** %data_, align 8, !tbaa !139
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
define linkonce_odr dso_local void @_ZN5adept7StorageIdE11remove_linkEv(%"class.adept::Storage.14"* nonnull dereferenceable(20) %this) local_unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %ref.tmp2 = alloca %"class.std::__cxx11::basic_string", align 8
  %n_links_ = getelementptr inbounds %"class.adept::Storage.14", %"class.adept::Storage.14"* %this, i64 0, i32 2
  %0 = load i32, i32* %n_links_, align 4, !tbaa !147
  %cmp = icmp eq i32 %0, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %1 = bitcast i8* %exception to %"class.adept::invalid_operation"*
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %2) #3
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %3) #3
  invoke void @_ZN5adept8internal18exception_locationB5cxx11EPKci(%"class.std::__cxx11::basic_string"* nonnull sret(%"class.std::__cxx11::basic_string") align 8 %ref.tmp2, i8* getelementptr inbounds ([91 x i8], [91 x i8]* @.str.98, i64 0, i64 0), i32 112)
          to label %invoke.cont unwind label %ehcleanup7.thread

invoke.cont:                                      ; preds = %if.then
  %call3.i.i.i17 = invoke nonnull align 8 dereferenceable(32) %"class.std::__cxx11::basic_string"* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp2, i64 0, i64 0, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.97, i64 0, i64 0), i64 57)
          to label %call3.i.i.i.noexc unwind label %lpad3

call3.i.i.i.noexc:                                ; preds = %invoke.cont
  %4 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %5 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %4, %union.anon** %5, align 8, !tbaa !2, !alias.scope !150
  %_M_p.i.i25.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 0, i32 0
  %6 = load i8*, i8** %_M_p.i.i25.i.i, align 8, !tbaa !11
  %7 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 2
  %arraydecay.i.i.i.i = bitcast %union.anon* %7 to i8*
  %cmp.i.i.i = icmp eq i8* %6, %arraydecay.i.i.i.i
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %call3.i.i.i.noexc
  %arraydecay.i.i.i = bitcast %union.anon* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 8 dereferenceable(16) %arraydecay.i.i.i, i8* nonnull align 8 dereferenceable(16) %6, i64 16, i1 false) #3
  br label %invoke.cont4

if.else.i.i:                                      ; preds = %call3.i.i.i.noexc
  %_M_p.i23.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %6, i8** %_M_p.i23.i.i, align 8, !tbaa !11, !alias.scope !150
  %_M_allocated_capacity.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 2, i32 0
  %8 = load i64, i64* %_M_allocated_capacity.i.i, align 8, !tbaa !10
  %_M_allocated_capacity.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %8, i64* %_M_allocated_capacity.i.i.i, align 8, !tbaa !10, !alias.scope !150
  br label %invoke.cont4

invoke.cont4:                                     ; preds = %if.else.i.i, %if.then.i.i
  %_M_string_length.i22.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %call3.i.i.i17, i64 0, i32 1
  %9 = load i64, i64* %_M_string_length.i22.i.i, align 8, !tbaa !7
  %_M_string_length.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %9, i64* %_M_string_length.i.i.i, align 8, !tbaa !7, !alias.scope !150
  %10 = bitcast %"class.std::__cxx11::basic_string"* %call3.i.i.i17 to %union.anon**
  store %union.anon* %7, %union.anon** %10, align 8, !tbaa !11
  store i64 0, i64* %_M_string_length.i22.i.i, align 8, !tbaa !7
  store i8 0, i8* %arraydecay.i.i.i.i, align 8, !tbaa !10
  invoke void @_ZN5adept17invalid_operationC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %1, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont6 unwind label %lpad5

invoke.cont6:                                     ; preds = %invoke.cont4
  invoke void @__cxa_throw(i8* %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept17invalid_operationE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad5

ehcleanup7.thread:                                ; preds = %if.then
  %11 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #3
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
  call void @_ZdlPv(i8* %14) #3
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
  call void @_ZdlPv(i8* %15) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #3
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

ehcleanup7:                                       ; preds = %ehcleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %3) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %2) #3
  br i1 %cleanup.isactive.1, label %cleanup.action, label %eh.resume

cleanup.action:                                   ; preds = %ehcleanup7, %if.then.i.i24, %ehcleanup7.thread
  %.pn.pn29 = phi { i8*, i32 } [ %11, %ehcleanup7.thread ], [ %.pn, %ehcleanup7 ], [ %.pn, %if.then.i.i24 ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

if.else:                                          ; preds = %entry
  %dec = add nsw i32 %0, -1
  store i32 %dec, i32* %n_links_, align 4, !tbaa !147
  %cmp11.not = icmp eq i32 %dec, 0
  br i1 %cmp11.not, label %delete.notnull, label %if.end13

delete.notnull:                                   ; preds = %if.else
  %17 = bitcast %"class.adept::Storage.14"* %this to i8**
  %18 = load i8*, i8** %17, align 8, !tbaa !149
  tail call void @free(i8* %18) #3
  %gradient_index_.i = getelementptr inbounds %"class.adept::Storage.14", %"class.adept::Storage.14"* %this, i64 0, i32 3
  %19 = load i32, i32* %gradient_index_.i, align 8, !tbaa !148
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
  tail call void @__clang_call_terminate(i8* %22) #34
  unreachable

_ZN5adept7StorageIdED2Ev.exit:                    ; preds = %if.then.i, %delete.notnull
  %23 = load i32, i32* @_ZN5adept8internal26n_storage_objects_deleted_E, align 4, !tbaa !46
  %inc.i = add nsw i32 %23, 1
  store i32 %inc.i, i32* @_ZN5adept8internal26n_storage_objects_deleted_E, align 4, !tbaa !46
  %24 = bitcast %"class.adept::Storage.14"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %24) #31
  br label %if.end13

if.end13:                                         ; preds = %_ZN5adept7StorageIdED2Ev.exit, %if.else
  ret void

eh.resume:                                        ; preds = %cleanup.action, %ehcleanup7, %if.then.i.i24
  %.pn.pn28 = phi { i8*, i32 } [ %.pn, %ehcleanup7 ], [ %.pn.pn29, %cleanup.action ], [ %.pn, %if.then.i.i24 ]
  resume { i8*, i32 } %.pn.pn28

unreachable:                                      ; preds = %invoke.cont6
  unreachable
}

; Function Attrs: noinline noreturn nounwind
define linkonce_odr hidden void @__clang_call_terminate(i8* %0) local_unnamed_addr #22 comdat {
  %2 = tail call i8* @__cxa_begin_catch(i8* %0) #3
  tail call void @_ZSt9terminatev() #34
  unreachable
}

declare dso_local i8* @__cxa_begin_catch(i8*) local_unnamed_addr

declare dso_local void @_ZSt9terminatev() local_unnamed_addr

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN5adept8internal18exception_locationB5cxx11EPKci(%"class.std::__cxx11::basic_string"* noalias sret(%"class.std::__cxx11::basic_string") align 8 %agg.result, i8* %file, i32 %line) local_unnamed_addr #23 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %s = alloca %"class.std::__cxx11::basic_stringstream", align 8
  %0 = bitcast %"class.std::__cxx11::basic_stringstream"* %s to i8*
  call void @llvm.lifetime.start.p0i8(i64 392, i8* nonnull %0) #3
  call void @_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEC1Ev(%"class.std::__cxx11::basic_stringstream"* nonnull dereferenceable(128) %s)
  %add.ptr = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 0, i32 1
  %1 = bitcast %"class.std::exception"* %add.ptr to %"class.std::basic_ostream"*
  %call1.i11 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([6 x i8], [6 x i8]* @.str.99, i64 0, i64 0), i64 5)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %tobool.not.i = icmp eq i8* %file, null
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %invoke.cont
  %2 = bitcast %"class.std::exception"* %add.ptr to i8**
  %vtable.i = load i8*, i8** %2, align 8, !tbaa !17
  %vbase.offset.ptr.i = getelementptr i8, i8* %vtable.i, i64 -24
  %3 = bitcast i8* %vbase.offset.ptr.i to i64*
  %vbase.offset.i = load i64, i64* %3, align 8
  %4 = bitcast %"class.std::exception"* %add.ptr to i8*
  %add.ptr.i = getelementptr inbounds i8, i8* %4, i64 %vbase.offset.i
  %5 = bitcast i8* %add.ptr.i to %"class.std::basic_ios"*
  %_M_streambuf_state.i.i.i = getelementptr inbounds i8, i8* %add.ptr.i, i64 32
  %6 = bitcast i8* %_M_streambuf_state.i.i.i to i32*
  %7 = load i32, i32* %6, align 8, !tbaa !153
  %or.i.i.i = or i32 %7, 1
  invoke void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull dereferenceable(264) %5, i32 %or.i.i.i)
          to label %invoke.cont1 unwind label %lpad

if.else.i:                                        ; preds = %invoke.cont
  %call.i.i12 = call i64 @strlen(i8* nonnull dereferenceable(1) %file) #3
  %call1.i13 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull %file, i64 %call.i.i12)
          to label %invoke.cont1 unwind label %lpad

invoke.cont1:                                     ; preds = %if.else.i, %if.then.i
  %call1.i18 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %1, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i64 0, i64 0), i64 1)
          to label %invoke.cont3 unwind label %lpad

invoke.cont3:                                     ; preds = %invoke.cont1
  %call6 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZNSolsEi(%"class.std::basic_ostream"* nonnull dereferenceable(8) %1, i32 %line)
          to label %invoke.cont5 unwind label %lpad

invoke.cont5:                                     ; preds = %invoke.cont3
  %call1.i23 = invoke nonnull align 8 dereferenceable(8) %"class.std::basic_ostream"* @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(%"class.std::basic_ostream"* nonnull align 8 dereferenceable(8) %call6, i8* nonnull getelementptr inbounds ([2 x i8], [2 x i8]* @.str.100, i64 0, i64 0), i64 1)
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
  call void @_ZdlPv(i8* %16) #3
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %if.then.i.i.i.i.i, %invoke.cont9
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %15, align 8, !tbaa !17
  %_M_buf_locale.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i) #3
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
  store i64 0, i64* %22, align 8, !tbaa !134
  %23 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216) %23) #3
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %0) #3
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
  call void @_ZdlPv(i8* %33) #3
  br label %_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit37

_ZNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEED1Ev.exit37: ; preds = %if.then.i.i.i.i.i32, %lpad
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [16 x i8*] }, { [16 x i8*] }* @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %32, align 8, !tbaa !17
  %_M_buf_locale.i.i.i.i33 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 1, i32 0, i32 7
  call void @_ZNSt6localeD1Ev(%"class.std::locale"* nonnull dereferenceable(8) %_M_buf_locale.i.i.i.i33) #3
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
  store i64 0, i64* %39, align 8, !tbaa !134
  %40 = getelementptr inbounds %"class.std::__cxx11::basic_stringstream", %"class.std::__cxx11::basic_stringstream"* %s, i64 0, i32 2, i32 0
  call void @_ZNSt8ios_baseD2Ev(%"class.std::ios_base"* nonnull dereferenceable(216) %40) #3
  call void @llvm.lifetime.end.p0i8(i64 392, i8* nonnull %0) #3
  resume { i8*, i32 } %24
}

declare dso_local void @_ZNSt9basic_iosIcSt11char_traitsIcEE5clearESt12_Ios_Iostate(%"class.std::basic_ios"* nonnull dereferenceable(264), i32) local_unnamed_addr #1

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare dso_local i64 @strlen(i8* nocapture) local_unnamed_addr #24

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept17invalid_dimensionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %this, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %message) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %__dnew.i.i.i.i = alloca i64, align 8
  %ref.tmp = alloca %"class.std::__cxx11::basic_string", align 8
  %0 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %0) #3
  %1 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %2 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %1, %union.anon** %2, align 8, !tbaa !2
  %3 = bitcast %union.anon* %1 to i8*
  %4 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %4) #3
  store i64 27, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i15 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %lpad

call5.i.i.i10.i.noexc:                            ; preds = %entry
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i15, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %5 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %5, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(27) %call5.i.i.i10.i15, i8* nonnull align 1 dereferenceable(27) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.88, i64 0, i64 0), i64 27, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %5, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %6 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %6, i64 %5
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %4) #3
  %7 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0, i32 0
  %message_.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1
  %8 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 2
  %9 = bitcast %"class.std::__cxx11::basic_string"* %message_.i.i to %union.anon**
  store %union.anon* %8, %union.anon** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 1
  store i64 0, i64* %_M_string_length.i.i.i.i.i, align 8, !tbaa !7
  %.cast.i.i.i = bitcast %union.anon* %8 to i8*
  store i8 0, i8* %.cast.i.i.i, align 1, !tbaa !10
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept15array_exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %message_.i.i, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %10 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %7, align 8, !tbaa !17
  %_M_p.i.i.i.i.i.i = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 1, i32 0, i32 0
  %11 = load i8*, i8** %_M_p.i.i.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %11, %.cast.i.i.i
  br i1 %cmp.i.i.i.i.i, label %_ZN5adept9exceptionD2Ev.exit.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %11) #3
  br label %_ZN5adept9exceptionD2Ev.exit.i

_ZN5adept9exceptionD2Ev.exit.i:                   ; preds = %if.then.i.i.i.i, %lpad.i
  %12 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %12) #3
  %13 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i18 = icmp eq i8* %13, %3
  br i1 %cmp.i.i.i18, label %ehcleanup, label %if.then.i.i19

invoke.cont4:                                     ; preds = %call5.i.i.i10.i.noexc
  %14 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %14, %3
  br i1 %cmp.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %invoke.cont4
  call void @_ZdlPv(i8* %14) #3
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %if.then.i.i, %invoke.cont4
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
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
  call void @_ZdlPv(i8* %13) #3
  br label %ehcleanup

ehcleanup:                                        ; preds = %if.then.i.i19, %lpad, %_ZN5adept9exceptionD2Ev.exit.i
  %.pn = phi { i8*, i32 } [ %15, %lpad ], [ %10, %_ZN5adept9exceptionD2Ev.exit.i ], [ %10, %if.then.i.i19 ]
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %0) #3
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
  call void @_ZdlPv(i8* %17) #3
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %lpad7
  %18 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %18) #3
  br label %eh.resume

eh.resume:                                        ; preds = %_ZN5adept9exceptionD2Ev.exit, %ehcleanup
  %.pn12 = phi { i8*, i32 } [ %16, %_ZN5adept9exceptionD2Ev.exit ], [ %.pn, %ehcleanup ]
  resume { i8*, i32 } %.pn12
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept17invalid_dimensionD0Ev(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %this) unnamed_addr #8 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
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
  tail call void @_ZdlPv(i8* %1) #3
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #3
  %4 = bitcast %"class.adept::invalid_operation"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #31
  ret void
}

; Function Attrs: uwtable
define dso_local void @_Z7alorenzRKN5boost5arrayIN5adept6ActiveIdEELm1EEERS4_S3_(%"class.boost::array.31"* nonnull align 8 dereferenceable(16) %x, %"class.boost::array.31"* nocapture nonnull align 8 dereferenceable(16) %dxdt, %"class.adept::Active"* nocapture readnone %t) #17 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !26
  %n_allocated_operations_.i.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %0, i64 0, i32 6
  %1 = load i32, i32* %n_allocated_operations_.i.i.i, align 4, !tbaa !75
  %n_operations_.i.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %0, i64 0, i32 5
  %2 = load i32, i32* %n_operations_.i.i.i, align 8, !tbaa !74
  %add.i.i.i = add nsw i32 %2, 1
  %cmp.not.i.i.i = icmp sgt i32 %1, %add.i.i.i
  %3 = bitcast %"class.adept::internal::StackStorageOrig"* %0 to %"class.adept::Stack"*
  br i1 %cmp.not.i.i.i, label %_ZN5adept6ActiveIdEaSIdNS_8internal18BinaryOpScalarLeftIddNS3_8MultiplyES1_EEEENS3_9enable_ifIXaasrT0_9is_activeeqsrS8_4rankLi0EERS1_E4typeERKNS_10ExpressionIT_S8_EE.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZN5adept8internal16StackStorageOrig20grow_operation_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %0, i32 1)
  %.pre.i = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %4 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %.pre.i, i64 0, i32 0
  br label %_ZN5adept6ActiveIdEaSIdNS_8internal18BinaryOpScalarLeftIddNS3_8MultiplyES1_EEEENS3_9enable_ifIXaasrT0_9is_activeeqsrS8_4rankLi0EERS1_E4typeERKNS_10ExpressionIT_S8_EE.exit

_ZN5adept6ActiveIdEaSIdNS_8internal18BinaryOpScalarLeftIddNS3_8MultiplyES1_EEEENS3_9enable_ifIXaasrT0_9is_activeeqsrS8_4rankLi0EERS1_E4typeERKNS_10ExpressionIT_S8_EE.exit: ; preds = %if.then.i.i.i, %entry
  %5 = phi %"class.adept::internal::StackStorageOrig"* [ %0, %entry ], [ %4, %if.then.i.i.i ]
  %6 = phi %"class.adept::Stack"* [ %3, %entry ], [ %.pre.i, %if.then.i.i.i ]
  %val_.i.i.i.i.i = getelementptr inbounds %"class.boost::array.31", %"class.boost::array.31"* %x, i64 0, i32 0, i64 0, i32 0
  %7 = load double, double* %val_.i.i.i.i.i, align 8, !tbaa !159
  %mul.i.i.i.i.i = fmul fast double %7, -1.200000e+00
  %gradient_index_.i.i.i.i.i.i = getelementptr inbounds %"class.boost::array.31", %"class.boost::array.31"* %x, i64 0, i32 0, i64 0, i32 1
  %multiplier_.i.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %6, i64 0, i32 0, i32 1
  %8 = load double*, double** %multiplier_.i.i.i.i.i.i.i, align 8, !tbaa !37
  %n_operations_.i.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %6, i64 0, i32 0, i32 5
  %9 = load i32, i32* %n_operations_.i.i.i.i.i.i.i, align 8, !tbaa !74
  %idxprom.i.i.i.i.i.i.i = sext i32 %9 to i64
  %arrayidx.i.i.i.i.i.i.i = getelementptr inbounds double, double* %8, i64 %idxprom.i.i.i.i.i.i.i
  store double -1.200000e+00, double* %arrayidx.i.i.i.i.i.i.i, align 8, !tbaa !43
  %10 = load i32, i32* %gradient_index_.i.i.i.i.i.i, align 8, !tbaa !46
  %index_.i.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %6, i64 0, i32 0, i32 2
  %11 = load i32*, i32** %index_.i.i.i.i.i.i.i, align 8, !tbaa !38
  %inc.i.i.i.i.i.i.i = add nsw i32 %9, 1
  store i32 %inc.i.i.i.i.i.i.i, i32* %n_operations_.i.i.i.i.i.i.i, align 8, !tbaa !74
  %arrayidx4.i.i.i.i.i.i.i = getelementptr inbounds i32, i32* %11, i64 %idxprom.i.i.i.i.i.i.i
  store i32 %10, i32* %arrayidx4.i.i.i.i.i.i.i, align 4, !tbaa !46
  %val_.i = getelementptr inbounds %"class.boost::array.31", %"class.boost::array.31"* %dxdt, i64 0, i32 0, i64 0, i32 0
  store double %mul.i.i.i.i.i, double* %val_.i, align 8, !tbaa !159
  %n_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %5, i64 0, i32 3
  %12 = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %5, i64 0, i32 4
  %13 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %cmp.not.i = icmp slt i32 %12, %13
  br i1 %cmp.not.i, label %entry.if.end_crit_edge.i, label %if.then.i

entry.if.end_crit_edge.i:                         ; preds = %_ZN5adept6ActiveIdEaSIdNS_8internal18BinaryOpScalarLeftIddNS3_8MultiplyES1_EEEENS3_9enable_ifIXaasrT0_9is_activeeqsrS8_4rankLi0EERS1_E4typeERKNS_10ExpressionIT_S8_EE.exit
  %statement_.phi.trans.insert.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %5, i64 0, i32 0
  %.pre.i5 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i, align 8, !tbaa !35
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

if.then.i:                                        ; preds = %_ZN5adept6ActiveIdEaSIdNS_8internal18BinaryOpScalarLeftIddNS3_8MultiplyES1_EEEENS3_9enable_ifIXaasrT0_9is_activeeqsrS8_4rankLi0EERS1_E4typeERKNS_10ExpressionIT_S8_EE.exit
  %mul.i.i = shl nsw i32 %13, 1
  %conv.i.i = sext i32 %mul.i.i to i64
  %14 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i, i64 8)
  %15 = extractvalue { i64, i1 } %14, 1
  %16 = extractvalue { i64, i1 } %14, 0
  %17 = select i1 %15, i64 -1, i64 %16
  %call.i.i = tail call noalias nonnull i8* @_Znam(i64 %17) #33
  %18 = bitcast %"class.adept::internal::StackStorageOrig"* %5 to i8**
  %19 = load i8*, i8** %18, align 8, !tbaa !35
  %conv5.i.i = sext i32 %12 to i64
  %mul6.i.i = shl nsw i64 %conv5.i.i, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call.i.i, i8* align 4 %19, i64 %mul6.i.i, i1 false)
  %isnull.i.i = icmp eq i8* %19, null
  br i1 %isnull.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %if.then.i
  tail call void @_ZdaPv(i8* nonnull %19) #31
  %.pre7.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i: ; preds = %delete.notnull.i.i, %if.then.i
  %.pre7.i = phi i32 [ %12, %if.then.i ], [ %.pre7.pre.i, %delete.notnull.i.i ]
  store i8* %call.i.i, i8** %18, align 8, !tbaa !35
  store i32 %mul.i.i, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %20 = bitcast i8* %call.i.i to %"struct.adept::internal::Statement"*
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, %entry.if.end_crit_edge.i
  %21 = phi i32 [ %12, %entry.if.end_crit_edge.i ], [ %.pre7.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %22 = phi %"struct.adept::internal::Statement"* [ %.pre.i5, %entry.if.end_crit_edge.i ], [ %20, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %gradient_index_.i = getelementptr inbounds %"class.boost::array.31", %"class.boost::array.31"* %dxdt, i64 0, i32 0, i64 0, i32 1
  %23 = load i32, i32* %gradient_index_.i, align 8, !tbaa !46
  %idxprom.i = sext i32 %21 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %22, i64 %idxprom.i, i32 0
  store i32 %23, i32* %index.i, align 4, !tbaa !41
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %5, i64 0, i32 5
  %24 = load i32, i32* %n_operations_.i, align 8, !tbaa !74
  %inc.i = add nsw i32 %21, 1
  store i32 %inc.i, i32* %n_statements_.i, align 8, !tbaa !40
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %22, i64 %idxprom.i, i32 1
  store i32 %24, i32* %end_plus_one.i, align 4, !tbaa !45
  ret void
}

; Function Attrs: uwtable
define dso_local void @_Z7afoobarN5adept6ActiveIdEEm(%"class.adept::Active"* noalias sret(%"class.adept::Active") align 8 %agg.result, %"class.adept::Active"* %t, i64 %iters) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %iters.addr = alloca i64, align 8
  %x = alloca %"class.boost::array.31", align 8
  %ref.tmp = alloca double, align 8
  %start = alloca %"class.adept::Active", align 8
  %ref.tmp2 = alloca double, align 8
  %step = alloca %"class.adept::Active", align 8
  %ref.tmp5 = alloca %"struct.adept::internal::BinaryOperation", align 8
  %ref.tmp6 = alloca %"class.adept::Active", align 8
  %agg.tmp = alloca %"class.boost::numeric::odeint::euler", align 8
  %agg.tmp16 = alloca %"class.adept::Active", align 8
  %agg.tmp19 = alloca %"class.adept::Active", align 8
  %agg.tmp22 = alloca %"class.adept::Active", align 8
  store i64 %iters, i64* %iters.addr, align 8, !tbaa !12
  %0 = bitcast %"class.boost::array.31"* %x to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #3
  %arrayinit.begin = getelementptr inbounds %"class.boost::array.31", %"class.boost::array.31"* %x, i64 0, i32 0, i64 0
  %1 = bitcast double* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %1) #3
  store double 1.000000e+00, double* %ref.tmp, align 8, !tbaa !43
  call void @_ZN5adept6ActiveIdEC2IdEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %arrayinit.begin, double* nonnull align 8 dereferenceable(8) %ref.tmp, i8* null)
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %1) #3
  %2 = bitcast %"class.adept::Active"* %start to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #3
  %3 = bitcast double* %ref.tmp2 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %3) #3
  store double 0.000000e+00, double* %ref.tmp2, align 8, !tbaa !43
  invoke void @_ZN5adept6ActiveIdEC2IdEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %start, double* nonnull align 8 dereferenceable(8) %ref.tmp2, i8* null)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %entry
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #3
  %4 = bitcast %"class.adept::Active"* %step to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %4) #3
  %5 = bitcast %"struct.adept::internal::BinaryOperation"* %ref.tmp5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %5) #3
  %6 = bitcast %"class.adept::Active"* %ref.tmp6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #3
  invoke void @_ZN5adept6ActiveIdEC2ImEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %ref.tmp6, i64* nonnull align 8 dereferenceable(8) %iters.addr, i8* null)
          to label %invoke.cont10 unwind label %lpad7

invoke.cont10:                                    ; preds = %invoke.cont4
  %7 = getelementptr inbounds %"struct.adept::internal::BinaryOperation", %"struct.adept::internal::BinaryOperation"* %ref.tmp5, i64 0, i32 0
  store %"class.adept::Active"* %t, %"class.adept::Active"** %7, align 8
  %8 = getelementptr inbounds %"struct.adept::internal::BinaryOperation", %"struct.adept::internal::BinaryOperation"* %ref.tmp5, i64 0, i32 1
  store %"class.adept::Active"* %ref.tmp6, %"class.adept::Active"** %8, align 8
  %9 = bitcast %"struct.adept::internal::BinaryOperation"* %ref.tmp5 to %"struct.adept::internal::EndIndex"*
  invoke void @_ZN5adept6ActiveIdEC2IdNS_8internal15BinaryOperationIdS1_NS3_6DivideES1_EEEERKNS_10ExpressionIT_T0_EEPNS3_9enable_ifIXaaeqsrS9_4rankLi0EsrS9_9is_activeEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %step, %"struct.adept::internal::EndIndex"* nonnull align 1 dereferenceable(1) %9, i8* null)
          to label %invoke.cont11 unwind label %lpad9

invoke.cont11:                                    ; preds = %invoke.cont10
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %ref.tmp6) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #3
  %m_initialized.i.i.i = getelementptr inbounds %"class.boost::numeric::odeint::euler", %"class.boost::numeric::odeint::euler"* %agg.tmp, i64 0, i32 0, i32 1, i32 0
  store i8 0, i8* %m_initialized.i.i.i, align 1, !tbaa !161
  %val_.i.i.i.i.i = getelementptr inbounds %"class.boost::numeric::odeint::euler", %"class.boost::numeric::odeint::euler"* %agg.tmp, i64 0, i32 0, i32 3, i32 0, i32 0, i64 0, i32 0
  store double 0.000000e+00, double* %val_.i.i.i.i.i, align 8, !tbaa !159
  %10 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %n_gradients_registered_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %10, i64 0, i32 9
  %11 = load i32, i32* %n_gradients_registered_.i.i.i.i.i.i, align 4, !tbaa !51
  %inc.i.i.i.i.i.i = add nsw i32 %11, 1
  store i32 %inc.i.i.i.i.i.i, i32* %n_gradients_registered_.i.i.i.i.i.i, align 4, !tbaa !51
  %gap_list_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %10, i64 0, i32 4
  %12 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i.i.i.i.i.i, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i.i.i.i.i.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %13 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i.i.i.i.i.i, align 8, !tbaa !28
  %cmp.i.i.i.i.i.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %13, %12
  br i1 %cmp.i.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.else.i.i.i.i.i.i

if.then.i.i.i.i.i.i:                              ; preds = %invoke.cont11
  %i_gradient_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %10, i64 0, i32 6
  %14 = load i32, i32* %i_gradient_.i.i.i.i.i.i, align 8, !tbaa !62
  %inc2.i.i.i.i.i.i = add nsw i32 %14, 1
  store i32 %inc2.i.i.i.i.i.i, i32* %i_gradient_.i.i.i.i.i.i, align 8, !tbaa !62
  %max_gradient_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %10, i64 0, i32 8
  %15 = load i32, i32* %max_gradient_.i.i.i.i.i.i, align 8, !tbaa !63
  %cmp.not.i.i.i.i.i.i = icmp slt i32 %14, %15
  br i1 %cmp.not.i.i.i.i.i.i, label %invoke.cont15, label %if.then4.i.i.i.i.i.i

if.then4.i.i.i.i.i.i:                             ; preds = %if.then.i.i.i.i.i.i
  store i32 %inc2.i.i.i.i.i.i, i32* %max_gradient_.i.i.i.i.i.i, align 8, !tbaa !63
  br label %invoke.cont15

if.else.i.i.i.i.i.i:                              ; preds = %invoke.cont11
  %16 = bitcast %"struct.std::__detail::_List_node_base"* %13 to %"struct.std::_List_node"*
  %_M_storage.i.i.i.i.i.i.i.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %13, i64 1
  %start.i.i.i.i.i.i = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i.i.i.i.i.i.i.i to i32*
  %17 = load i32, i32* %start.i.i.i.i.i.i, align 4, !tbaa !54
  %inc11.i.i.i.i.i.i = add nsw i32 %17, 1
  store i32 %inc11.i.i.i.i.i.i, i32* %start.i.i.i.i.i.i, align 4, !tbaa !54
  %end.i.i.i.i.i.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %16, i64 0, i32 1, i32 0, i64 4
  %18 = bitcast i8* %end.i.i.i.i.i.i to i32*
  %19 = load i32, i32* %18, align 4, !tbaa !52
  %cmp13.not.i.i.i.i.i.i = icmp slt i32 %17, %19
  br i1 %cmp13.not.i.i.i.i.i.i, label %invoke.cont15, label %if.then14.i.i.i.i.i.i

if.then14.i.i.i.i.i.i:                            ; preds = %if.else.i.i.i.i.i.i
  %_M_node.i.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %10, i64 0, i32 5, i32 0
  %20 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i.i.i.i.i.i.i, align 8, !tbaa !55
  %cmp.i35.i.i.i.i.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %20, %13
  br i1 %cmp.i35.i.i.i.i.i.i, label %if.then18.i.i.i.i.i.i, label %if.end24.i.i.i.i.i.i

if.then18.i.i.i.i.i.i:                            ; preds = %if.then14.i.i.i.i.i.i
  store %"struct.std::__detail::_List_node_base"* %12, %"struct.std::__detail::_List_node_base"** %_M_node.i.i.i.i.i.i.i, align 8, !tbaa.struct !60
  br label %if.end24.i.i.i.i.i.i

if.end24.i.i.i.i.i.i:                             ; preds = %if.then18.i.i.i.i.i.i, %if.then14.i.i.i.i.i.i
  %_M_size.i.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %10, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %21 = load i64, i64* %_M_size.i.i.i.i.i.i.i.i.i, align 8, !tbaa !56
  %sub.i.i.i.i.i.i.i.i.i = add i64 %21, -1
  store i64 %sub.i.i.i.i.i.i.i.i.i, i64* %_M_size.i.i.i.i.i.i.i.i.i, align 8, !tbaa !56
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %13) #3
  %22 = bitcast %"struct.std::__detail::_List_node_base"* %13 to i8*
  call void @_ZdlPv(i8* nonnull %22) #3
  br label %invoke.cont15

invoke.cont15:                                    ; preds = %if.end24.i.i.i.i.i.i, %if.else.i.i.i.i.i.i, %if.then4.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %return_val.0.i.i.i.i.i.i = phi i32 [ %17, %if.end24.i.i.i.i.i.i ], [ %17, %if.else.i.i.i.i.i.i ], [ %14, %if.then4.i.i.i.i.i.i ], [ %14, %if.then.i.i.i.i.i.i ]
  %gradient_index_.i.i.i.i.i = getelementptr inbounds %"class.boost::numeric::odeint::euler", %"class.boost::numeric::odeint::euler"* %agg.tmp, i64 0, i32 0, i32 3, i32 0, i32 0, i64 0, i32 1
  store i32 %return_val.0.i.i.i.i.i.i, i32* %gradient_index_.i.i.i.i.i, align 8, !tbaa !163
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp16, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %start)
          to label %invoke.cont18 unwind label %lpad17

invoke.cont18:                                    ; preds = %invoke.cont15
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp19, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %t)
          to label %invoke.cont21 unwind label %lpad20

invoke.cont21:                                    ; preds = %invoke.cont18
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp22, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %step)
          to label %invoke.cont24 unwind label %lpad23

invoke.cont24:                                    ; preds = %invoke.cont21
  %call27 = invoke i64 @_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIN5adept6ActiveIdEELm1EEES7_S8_S7_NS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS8_RS8_S7_ES8_S7_EEmT_T0_RT1_T2_SM_SM_(%"class.boost::numeric::odeint::euler"* nonnull %agg.tmp, void (%"class.boost::array.31"*, %"class.boost::array.31"*, %"class.adept::Active"*)* nonnull @_Z7alorenzRKN5boost5arrayIN5adept6ActiveIdEELm1EEERS4_S3_, %"class.boost::array.31"* nonnull align 8 dereferenceable(16) %x, %"class.adept::Active"* nonnull %agg.tmp16, %"class.adept::Active"* nonnull %agg.tmp19, %"class.adept::Active"* nonnull %agg.tmp22)
          to label %invoke.cont26 unwind label %lpad25

invoke.cont26:                                    ; preds = %invoke.cont24
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp22) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp19) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp16) #3
  %arraydestroy.element.i.i.i = getelementptr inbounds %"class.boost::numeric::odeint::euler", %"class.boost::numeric::odeint::euler"* %agg.tmp, i64 0, i32 0, i32 3, i32 0, i32 0, i64 0
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %arraydestroy.element.i.i.i) #3
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.result, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %arrayinit.begin)
          to label %invoke.cont36 unwind label %lpad33

invoke.cont36:                                    ; preds = %invoke.cont26
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %step) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %start) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %arrayinit.begin) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #3
  ret void

lpad3:                                            ; preds = %entry
  %23 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %3) #3
  br label %ehcleanup40

lpad7:                                            ; preds = %invoke.cont4
  %24 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad9:                                            ; preds = %invoke.cont10
  %25 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %ref.tmp6) #3
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad7
  %.pn = phi { i8*, i32 } [ %25, %lpad9 ], [ %24, %lpad7 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #3
  br label %ehcleanup38

lpad17:                                           ; preds = %invoke.cont15
  %26 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup31

lpad20:                                           ; preds = %invoke.cont18
  %27 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup30

lpad23:                                           ; preds = %invoke.cont21
  %28 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup29

lpad25:                                           ; preds = %invoke.cont24
  %29 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp22) #3
  br label %ehcleanup29

ehcleanup29:                                      ; preds = %lpad25, %lpad23
  %.pn45 = phi { i8*, i32 } [ %29, %lpad25 ], [ %28, %lpad23 ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp19) #3
  br label %ehcleanup30

ehcleanup30:                                      ; preds = %ehcleanup29, %lpad20
  %.pn45.pn = phi { i8*, i32 } [ %.pn45, %ehcleanup29 ], [ %27, %lpad20 ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp16) #3
  br label %ehcleanup31

ehcleanup31:                                      ; preds = %ehcleanup30, %lpad17
  %.pn45.pn.pn = phi { i8*, i32 } [ %.pn45.pn, %ehcleanup30 ], [ %26, %lpad17 ]
  %arraydestroy.element.i.i.i56 = getelementptr inbounds %"class.boost::numeric::odeint::euler", %"class.boost::numeric::odeint::euler"* %agg.tmp, i64 0, i32 0, i32 3, i32 0, i32 0, i64 0
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %arraydestroy.element.i.i.i56) #3
  br label %ehcleanup37

lpad33:                                           ; preds = %invoke.cont26
  %30 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup37

ehcleanup37:                                      ; preds = %lpad33, %ehcleanup31
  %.pn46 = phi { i8*, i32 } [ %30, %lpad33 ], [ %.pn45.pn.pn, %ehcleanup31 ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %step) #3
  br label %ehcleanup38

ehcleanup38:                                      ; preds = %ehcleanup37, %ehcleanup
  %.pn46.pn = phi { i8*, i32 } [ %.pn46, %ehcleanup37 ], [ %.pn, %ehcleanup ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %4) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %start) #3
  br label %ehcleanup40

ehcleanup40:                                      ; preds = %ehcleanup38, %lpad3
  %.pn46.pn.pn = phi { i8*, i32 } [ %.pn46.pn, %ehcleanup38 ], [ %23, %lpad3 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %arrayinit.begin) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #3
  resume { i8*, i32 } %.pn46.pn.pn
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept6ActiveIdEC2IdEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %this, double* nonnull align 8 dereferenceable(8) %rhs, i8* %dummy) unnamed_addr #0 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %val_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 0
  %0 = load double, double* %rhs, align 8, !tbaa !43
  store double %0, double* %val_, align 8, !tbaa !159
  %gradient_index_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 1
  %1 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %n_gradients_registered_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 9
  %2 = load i32, i32* %n_gradients_registered_.i, align 4, !tbaa !51
  %inc.i = add nsw i32 %2, 1
  store i32 %inc.i, i32* %n_gradients_registered_.i, align 4, !tbaa !51
  %gap_list_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 4
  %3 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %4 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i, align 8, !tbaa !28
  %cmp.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %4, %3
  %5 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 0
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %i_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 6
  %6 = load i32, i32* %i_gradient_.i, align 8, !tbaa !62
  %inc2.i = add nsw i32 %6, 1
  store i32 %inc2.i, i32* %i_gradient_.i, align 8, !tbaa !62
  %max_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 8
  %7 = load i32, i32* %max_gradient_.i, align 8, !tbaa !63
  %cmp.not.i = icmp slt i32 %6, %7
  br i1 %cmp.not.i, label %_ZN5adept5Stack17register_gradientEv.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  store i32 %inc2.i, i32* %max_gradient_.i, align 8, !tbaa !63
  br label %_ZN5adept5Stack17register_gradientEv.exit

if.else.i:                                        ; preds = %entry
  %8 = bitcast %"struct.std::__detail::_List_node_base"* %4 to %"struct.std::_List_node"*
  %_M_storage.i.i.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %4, i64 1
  %start.i = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i.i.i to i32*
  %9 = load i32, i32* %start.i, align 4, !tbaa !54
  %inc11.i = add nsw i32 %9, 1
  store i32 %inc11.i, i32* %start.i, align 4, !tbaa !54
  %end.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %8, i64 0, i32 1, i32 0, i64 4
  %10 = bitcast i8* %end.i to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !52
  %cmp13.not.i = icmp slt i32 %9, %11
  br i1 %cmp13.not.i, label %_ZN5adept5Stack17register_gradientEv.exit, label %if.then14.i

if.then14.i:                                      ; preds = %if.else.i
  %_M_node.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 5, i32 0
  %12 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa !55
  %cmp.i35.i = icmp eq %"struct.std::__detail::_List_node_base"* %12, %4
  br i1 %cmp.i35.i, label %if.then18.i, label %if.end24.i

if.then18.i:                                      ; preds = %if.then14.i
  store %"struct.std::__detail::_List_node_base"* %3, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa.struct !60
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then18.i, %if.then14.i
  %_M_size.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %13 = load i64, i64* %_M_size.i.i.i.i, align 8, !tbaa !56
  %sub.i.i.i.i = add i64 %13, -1
  store i64 %sub.i.i.i.i, i64* %_M_size.i.i.i.i, align 8, !tbaa !56
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %4) #3
  %14 = bitcast %"struct.std::__detail::_List_node_base"* %4 to i8*
  tail call void @_ZdlPv(i8* nonnull %14) #3
  %.pre = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !26
  br label %_ZN5adept5Stack17register_gradientEv.exit

_ZN5adept5Stack17register_gradientEv.exit:        ; preds = %if.end24.i, %if.else.i, %if.then4.i, %if.then.i
  %15 = phi %"class.adept::internal::StackStorageOrig"* [ %.pre, %if.end24.i ], [ %5, %if.else.i ], [ %5, %if.then4.i ], [ %5, %if.then.i ]
  %return_val.0.i = phi i32 [ %9, %if.end24.i ], [ %9, %if.else.i ], [ %6, %if.then4.i ], [ %6, %if.then.i ]
  store i32 %return_val.0.i, i32* %gradient_index_, align 8, !tbaa !163
  %n_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %15, i64 0, i32 3
  %16 = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %15, i64 0, i32 4
  %17 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %cmp.not.i3 = icmp slt i32 %16, %17
  br i1 %cmp.not.i3, label %entry.if.end_crit_edge.i, label %if.then.i4

entry.if.end_crit_edge.i:                         ; preds = %_ZN5adept5Stack17register_gradientEv.exit
  %statement_.phi.trans.insert.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %15, i64 0, i32 0
  %.pre.i = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i, align 8, !tbaa !35
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

if.then.i4:                                       ; preds = %_ZN5adept5Stack17register_gradientEv.exit
  %mul.i.i = shl nsw i32 %17, 1
  %conv.i.i = sext i32 %mul.i.i to i64
  %18 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i, i64 8)
  %19 = extractvalue { i64, i1 } %18, 1
  %20 = extractvalue { i64, i1 } %18, 0
  %21 = select i1 %19, i64 -1, i64 %20
  %call.i.i = tail call noalias nonnull i8* @_Znam(i64 %21) #33
  %22 = bitcast %"class.adept::internal::StackStorageOrig"* %15 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !35
  %conv5.i.i = sext i32 %16 to i64
  %mul6.i.i = shl nsw i64 %conv5.i.i, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call.i.i, i8* align 4 %23, i64 %mul6.i.i, i1 false)
  %isnull.i.i = icmp eq i8* %23, null
  br i1 %isnull.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %if.then.i4
  tail call void @_ZdaPv(i8* nonnull %23) #31
  %.pre7.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i: ; preds = %delete.notnull.i.i, %if.then.i4
  %.pre7.i = phi i32 [ %16, %if.then.i4 ], [ %.pre7.pre.i, %delete.notnull.i.i ]
  store i8* %call.i.i, i8** %22, align 8, !tbaa !35
  store i32 %mul.i.i, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %24 = bitcast i8* %call.i.i to %"struct.adept::internal::Statement"*
  %.pre6 = load i32, i32* %gradient_index_, align 4, !tbaa !46
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, %entry.if.end_crit_edge.i
  %25 = phi i32 [ %return_val.0.i, %entry.if.end_crit_edge.i ], [ %.pre6, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %26 = phi i32 [ %16, %entry.if.end_crit_edge.i ], [ %.pre7.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %27 = phi %"struct.adept::internal::Statement"* [ %.pre.i, %entry.if.end_crit_edge.i ], [ %24, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %idxprom.i = sext i32 %26 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %27, i64 %idxprom.i, i32 0
  store i32 %25, i32* %index.i, align 4, !tbaa !41
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %15, i64 0, i32 5
  %28 = load i32, i32* %n_operations_.i, align 8, !tbaa !74
  %inc.i5 = add nsw i32 %26, 1
  store i32 %inc.i5, i32* %n_statements_.i, align 8, !tbaa !40
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %27, i64 %idxprom.i, i32 1
  store i32 %28, i32* %end_plus_one.i, align 4, !tbaa !45
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept6ActiveIdEC2ImEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %this, i64* nonnull align 8 dereferenceable(8) %rhs, i8* %dummy) unnamed_addr #0 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %val_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 0
  %0 = load i64, i64* %rhs, align 8, !tbaa !12
  %conv = uitofp i64 %0 to double
  store double %conv, double* %val_, align 8, !tbaa !159
  %gradient_index_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 1
  %1 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %n_gradients_registered_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 9
  %2 = load i32, i32* %n_gradients_registered_.i, align 4, !tbaa !51
  %inc.i = add nsw i32 %2, 1
  store i32 %inc.i, i32* %n_gradients_registered_.i, align 4, !tbaa !51
  %gap_list_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 4
  %3 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %4 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i, align 8, !tbaa !28
  %cmp.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %4, %3
  %5 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 0
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %i_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 6
  %6 = load i32, i32* %i_gradient_.i, align 8, !tbaa !62
  %inc2.i = add nsw i32 %6, 1
  store i32 %inc2.i, i32* %i_gradient_.i, align 8, !tbaa !62
  %max_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 8
  %7 = load i32, i32* %max_gradient_.i, align 8, !tbaa !63
  %cmp.not.i = icmp slt i32 %6, %7
  br i1 %cmp.not.i, label %_ZN5adept5Stack17register_gradientEv.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  store i32 %inc2.i, i32* %max_gradient_.i, align 8, !tbaa !63
  br label %_ZN5adept5Stack17register_gradientEv.exit

if.else.i:                                        ; preds = %entry
  %8 = bitcast %"struct.std::__detail::_List_node_base"* %4 to %"struct.std::_List_node"*
  %_M_storage.i.i.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %4, i64 1
  %start.i = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i.i.i to i32*
  %9 = load i32, i32* %start.i, align 4, !tbaa !54
  %inc11.i = add nsw i32 %9, 1
  store i32 %inc11.i, i32* %start.i, align 4, !tbaa !54
  %end.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %8, i64 0, i32 1, i32 0, i64 4
  %10 = bitcast i8* %end.i to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !52
  %cmp13.not.i = icmp slt i32 %9, %11
  br i1 %cmp13.not.i, label %_ZN5adept5Stack17register_gradientEv.exit, label %if.then14.i

if.then14.i:                                      ; preds = %if.else.i
  %_M_node.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 5, i32 0
  %12 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa !55
  %cmp.i35.i = icmp eq %"struct.std::__detail::_List_node_base"* %12, %4
  br i1 %cmp.i35.i, label %if.then18.i, label %if.end24.i

if.then18.i:                                      ; preds = %if.then14.i
  store %"struct.std::__detail::_List_node_base"* %3, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa.struct !60
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then18.i, %if.then14.i
  %_M_size.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %13 = load i64, i64* %_M_size.i.i.i.i, align 8, !tbaa !56
  %sub.i.i.i.i = add i64 %13, -1
  store i64 %sub.i.i.i.i, i64* %_M_size.i.i.i.i, align 8, !tbaa !56
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %4) #3
  %14 = bitcast %"struct.std::__detail::_List_node_base"* %4 to i8*
  tail call void @_ZdlPv(i8* nonnull %14) #3
  %.pre = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !26
  br label %_ZN5adept5Stack17register_gradientEv.exit

_ZN5adept5Stack17register_gradientEv.exit:        ; preds = %if.end24.i, %if.else.i, %if.then4.i, %if.then.i
  %15 = phi %"class.adept::internal::StackStorageOrig"* [ %.pre, %if.end24.i ], [ %5, %if.else.i ], [ %5, %if.then4.i ], [ %5, %if.then.i ]
  %return_val.0.i = phi i32 [ %9, %if.end24.i ], [ %9, %if.else.i ], [ %6, %if.then4.i ], [ %6, %if.then.i ]
  store i32 %return_val.0.i, i32* %gradient_index_, align 8, !tbaa !163
  %n_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %15, i64 0, i32 3
  %16 = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %15, i64 0, i32 4
  %17 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %cmp.not.i3 = icmp slt i32 %16, %17
  br i1 %cmp.not.i3, label %entry.if.end_crit_edge.i, label %if.then.i4

entry.if.end_crit_edge.i:                         ; preds = %_ZN5adept5Stack17register_gradientEv.exit
  %statement_.phi.trans.insert.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %15, i64 0, i32 0
  %.pre.i = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i, align 8, !tbaa !35
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

if.then.i4:                                       ; preds = %_ZN5adept5Stack17register_gradientEv.exit
  %mul.i.i = shl nsw i32 %17, 1
  %conv.i.i = sext i32 %mul.i.i to i64
  %18 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i, i64 8)
  %19 = extractvalue { i64, i1 } %18, 1
  %20 = extractvalue { i64, i1 } %18, 0
  %21 = select i1 %19, i64 -1, i64 %20
  %call.i.i = tail call noalias nonnull i8* @_Znam(i64 %21) #33
  %22 = bitcast %"class.adept::internal::StackStorageOrig"* %15 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !35
  %conv5.i.i = sext i32 %16 to i64
  %mul6.i.i = shl nsw i64 %conv5.i.i, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call.i.i, i8* align 4 %23, i64 %mul6.i.i, i1 false)
  %isnull.i.i = icmp eq i8* %23, null
  br i1 %isnull.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %if.then.i4
  tail call void @_ZdaPv(i8* nonnull %23) #31
  %.pre7.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i: ; preds = %delete.notnull.i.i, %if.then.i4
  %.pre7.i = phi i32 [ %16, %if.then.i4 ], [ %.pre7.pre.i, %delete.notnull.i.i ]
  store i8* %call.i.i, i8** %22, align 8, !tbaa !35
  store i32 %mul.i.i, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %24 = bitcast i8* %call.i.i to %"struct.adept::internal::Statement"*
  %.pre6 = load i32, i32* %gradient_index_, align 4, !tbaa !46
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, %entry.if.end_crit_edge.i
  %25 = phi i32 [ %return_val.0.i, %entry.if.end_crit_edge.i ], [ %.pre6, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %26 = phi i32 [ %16, %entry.if.end_crit_edge.i ], [ %.pre7.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %27 = phi %"struct.adept::internal::Statement"* [ %.pre.i, %entry.if.end_crit_edge.i ], [ %24, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %idxprom.i = sext i32 %26 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %27, i64 %idxprom.i, i32 0
  store i32 %25, i32* %index.i, align 4, !tbaa !41
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %15, i64 0, i32 5
  %28 = load i32, i32* %n_operations_.i, align 8, !tbaa !74
  %inc.i5 = add nsw i32 %26, 1
  store i32 %inc.i5, i32* %n_statements_.i, align 8, !tbaa !40
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %27, i64 %idxprom.i, i32 1
  store i32 %28, i32* %end_plus_one.i, align 4, !tbaa !45
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept6ActiveIdEC2IdNS_8internal15BinaryOperationIdS1_NS3_6DivideES1_EEEERKNS_10ExpressionIT_T0_EEPNS3_9enable_ifIXaaeqsrS9_4rankLi0EsrS9_9is_activeEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %this, %"struct.adept::internal::EndIndex"* nonnull align 1 dereferenceable(1) %rhs, i8* %dummy) unnamed_addr #0 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
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
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %3) #3
  %13 = bitcast %"struct.std::__detail::_List_node_base"* %3 to i8*
  tail call void @_ZdlPv(i8* nonnull %13) #3
  %.pre = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !26
  %14 = bitcast %"class.adept::internal::StackStorageOrig"* %.pre to %"class.adept::Stack"*
  br label %_ZN5adept5Stack17register_gradientEv.exit

_ZN5adept5Stack17register_gradientEv.exit:        ; preds = %if.end24.i, %if.else.i, %if.then4.i, %if.then.i
  %15 = phi %"class.adept::Stack"* [ %14, %if.end24.i ], [ %0, %if.else.i ], [ %0, %if.then4.i ], [ %0, %if.then.i ]
  %16 = phi %"class.adept::internal::StackStorageOrig"* [ %.pre, %if.end24.i ], [ %4, %if.else.i ], [ %4, %if.then4.i ], [ %4, %if.then.i ]
  %return_val.0.i = phi i32 [ %8, %if.end24.i ], [ %8, %if.else.i ], [ %5, %if.then4.i ], [ %5, %if.then.i ]
  store i32 %return_val.0.i, i32* %gradient_index_, align 8, !tbaa !163
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
  %left.i.i.i = bitcast %"struct.adept::internal::EndIndex"* %rhs to %"class.adept::Active"**
  %22 = load %"class.adept::Active"*, %"class.adept::Active"** %left.i.i.i, align 8, !tbaa !164
  %val_.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %22, i64 0, i32 0
  %23 = load double, double* %val_.i.i.i.i, align 8, !tbaa !159
  %right.i.i.i = getelementptr inbounds %"struct.adept::internal::EndIndex", %"struct.adept::internal::EndIndex"* %rhs, i64 8
  %24 = bitcast %"struct.adept::internal::EndIndex"* %right.i.i.i to %"class.adept::Active"**
  %25 = load %"class.adept::Active"*, %"class.adept::Active"** %24, align 8, !tbaa !166
  %val_.i12.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %25, i64 0, i32 0
  %26 = load double, double* %val_.i12.i.i.i, align 8, !tbaa !159
  %div.i.i.i.i = fdiv fast double 1.000000e+00, %26
  %mul.i.i.i5.i = fmul fast double %div.i.i.i.i, %23
  %gradient_index_.i.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %22, i64 0, i32 1
  %multiplier_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0, i32 1
  %27 = load double*, double** %multiplier_.i.i.i.i.i.i, align 8, !tbaa !37
  %n_operations_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0, i32 5
  %28 = load i32, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !74
  %idxprom.i.i.i.i.i.i = sext i32 %28 to i64
  %arrayidx.i.i.i.i.i.i = getelementptr inbounds double, double* %27, i64 %idxprom.i.i.i.i.i.i
  store double %div.i.i.i.i, double* %arrayidx.i.i.i.i.i.i, align 8, !tbaa !43
  %29 = load i32, i32* %gradient_index_.i.i.i.i.i, align 8, !tbaa !46
  %index_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0, i32 2
  %30 = load i32*, i32** %index_.i.i.i.i.i.i, align 8, !tbaa !38
  %inc.i.i.i.i.i.i = add nsw i32 %28, 1
  store i32 %inc.i.i.i.i.i.i, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !74
  %arrayidx4.i.i.i.i.i.i = getelementptr inbounds i32, i32* %30, i64 %idxprom.i.i.i.i.i.i
  store i32 %29, i32* %arrayidx4.i.i.i.i.i.i, align 4, !tbaa !46
  %fneg.i.i.i.i = fneg fast double %div.i.i.i.i
  %mul.i.i.i.i = fmul fast double %mul.i.i.i5.i, %fneg.i.i.i.i
  %gradient_index_.i.i.i6.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %25, i64 0, i32 1
  %31 = load i32, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !74
  %idxprom.i.i.i.i9.i.i = sext i32 %31 to i64
  %arrayidx.i.i.i.i10.i.i = getelementptr inbounds double, double* %27, i64 %idxprom.i.i.i.i9.i.i
  store double %mul.i.i.i.i, double* %arrayidx.i.i.i.i10.i.i, align 8, !tbaa !43
  %32 = load i32, i32* %gradient_index_.i.i.i6.i.i, align 8, !tbaa !46
  %inc.i.i.i.i12.i.i = add nsw i32 %31, 1
  store i32 %inc.i.i.i.i12.i.i, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !74
  %arrayidx4.i.i.i.i13.i.i = getelementptr inbounds i32, i32* %30, i64 %idxprom.i.i.i.i9.i.i
  store i32 %32, i32* %arrayidx4.i.i.i.i13.i.i, align 4, !tbaa !46
  %val_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 0
  store double %mul.i.i.i5.i, double* %val_, align 8, !tbaa !159
  %n_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %20, i64 0, i32 3
  %33 = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %20, i64 0, i32 4
  %34 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %cmp.not.i4 = icmp slt i32 %33, %34
  br i1 %cmp.not.i4, label %entry.if.end_crit_edge.i, label %if.then.i5

entry.if.end_crit_edge.i:                         ; preds = %_ZN5adept8internal16StackStorageOrig18check_space_staticILi2EEEvv.exit
  %statement_.phi.trans.insert.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %20, i64 0, i32 0
  %.pre.i = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i, align 8, !tbaa !35
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

if.then.i5:                                       ; preds = %_ZN5adept8internal16StackStorageOrig18check_space_staticILi2EEEvv.exit
  %mul.i.i = shl nsw i32 %34, 1
  %conv.i.i = sext i32 %mul.i.i to i64
  %35 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i, i64 8)
  %36 = extractvalue { i64, i1 } %35, 1
  %37 = extractvalue { i64, i1 } %35, 0
  %38 = select i1 %36, i64 -1, i64 %37
  %call.i.i = tail call noalias nonnull i8* @_Znam(i64 %38) #33
  %39 = bitcast %"class.adept::internal::StackStorageOrig"* %20 to i8**
  %40 = load i8*, i8** %39, align 8, !tbaa !35
  %conv5.i.i = sext i32 %33 to i64
  %mul6.i.i = shl nsw i64 %conv5.i.i, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call.i.i, i8* align 4 %40, i64 %mul6.i.i, i1 false)
  %isnull.i.i = icmp eq i8* %40, null
  br i1 %isnull.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %if.then.i5
  tail call void @_ZdaPv(i8* nonnull %40) #31
  %.pre7.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i: ; preds = %delete.notnull.i.i, %if.then.i5
  %.pre7.i = phi i32 [ %33, %if.then.i5 ], [ %.pre7.pre.i, %delete.notnull.i.i ]
  store i8* %call.i.i, i8** %39, align 8, !tbaa !35
  store i32 %mul.i.i, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %41 = bitcast i8* %call.i.i to %"struct.adept::internal::Statement"*
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, %entry.if.end_crit_edge.i
  %42 = phi i32 [ %33, %entry.if.end_crit_edge.i ], [ %.pre7.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %43 = phi %"struct.adept::internal::Statement"* [ %.pre.i, %entry.if.end_crit_edge.i ], [ %41, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %44 = load i32, i32* %gradient_index_, align 4, !tbaa !46
  %idxprom.i = sext i32 %42 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %43, i64 %idxprom.i, i32 0
  store i32 %44, i32* %index.i, align 4, !tbaa !41
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %20, i64 0, i32 5
  %45 = load i32, i32* %n_operations_.i, align 8, !tbaa !74
  %inc.i6 = add nsw i32 %42, 1
  store i32 %inc.i6, i32* %n_statements_.i, align 8, !tbaa !40
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %43, i64 %idxprom.i, i32 1
  store i32 %45, i32* %end_plus_one.i, align 4, !tbaa !45
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %this) unnamed_addr #2 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %10) #3
  %14 = bitcast %"struct.std::_List_node"* %7 to i8*
  tail call void @_ZdlPv(i8* nonnull %14) #3
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
  tail call void @__clang_call_terminate(i8* %16) #34
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %this, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %rhs) unnamed_addr #0 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %val_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 0
  store double 0.000000e+00, double* %val_, align 8, !tbaa !159
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
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %3) #3
  %13 = bitcast %"struct.std::__detail::_List_node_base"* %3 to i8*
  tail call void @_ZdlPv(i8* nonnull %13) #3
  %.pre = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !26
  br label %_ZN5adept5Stack17register_gradientEv.exit

_ZN5adept5Stack17register_gradientEv.exit:        ; preds = %if.end24.i, %if.else.i, %if.then4.i, %if.then.i
  %14 = phi %"class.adept::internal::StackStorageOrig"* [ %.pre, %if.end24.i ], [ %4, %if.else.i ], [ %4, %if.then4.i ], [ %4, %if.then.i ]
  %return_val.0.i = phi i32 [ %8, %if.end24.i ], [ %8, %if.else.i ], [ %5, %if.then4.i ], [ %5, %if.then.i ]
  store i32 %return_val.0.i, i32* %gradient_index_, align 8, !tbaa !163
  %n_allocated_operations_.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %14, i64 0, i32 6
  %15 = load i32, i32* %n_allocated_operations_.i.i, align 4, !tbaa !75
  %n_operations_.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %14, i64 0, i32 5
  %16 = load i32, i32* %n_operations_.i.i, align 8, !tbaa !74
  %add.i.i = add nsw i32 %16, 1
  %cmp.not.i.i = icmp sgt i32 %15, %add.i.i
  %17 = bitcast %"class.adept::internal::StackStorageOrig"* %14 to %"class.adept::Stack"*
  br i1 %cmp.not.i.i, label %_ZN5adept6ActiveIdEaSERKS1_.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %_ZN5adept5Stack17register_gradientEv.exit
  tail call void @_ZN5adept8internal16StackStorageOrig20grow_operation_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %14, i32 1)
  %.pre.i = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %18 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %.pre.i, i64 0, i32 0
  br label %_ZN5adept6ActiveIdEaSERKS1_.exit

_ZN5adept6ActiveIdEaSERKS1_.exit:                 ; preds = %if.then.i.i, %_ZN5adept5Stack17register_gradientEv.exit
  %19 = phi %"class.adept::internal::StackStorageOrig"* [ %14, %_ZN5adept5Stack17register_gradientEv.exit ], [ %18, %if.then.i.i ]
  %20 = phi %"class.adept::Stack"* [ %17, %_ZN5adept5Stack17register_gradientEv.exit ], [ %.pre.i, %if.then.i.i ]
  %val_.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %rhs, i64 0, i32 0
  %21 = load double, double* %val_.i.i.i, align 8, !tbaa !159
  %gradient_index_.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %rhs, i64 0, i32 1
  %multiplier_.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %20, i64 0, i32 0, i32 1
  %22 = load double*, double** %multiplier_.i.i.i.i, align 8, !tbaa !37
  %n_operations_.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %20, i64 0, i32 0, i32 5
  %23 = load i32, i32* %n_operations_.i.i.i.i, align 8, !tbaa !74
  %idxprom.i.i.i.i = sext i32 %23 to i64
  %arrayidx.i.i.i.i = getelementptr inbounds double, double* %22, i64 %idxprom.i.i.i.i
  store double 1.000000e+00, double* %arrayidx.i.i.i.i, align 8, !tbaa !43
  %24 = load i32, i32* %gradient_index_.i.i.i, align 8, !tbaa !46
  %index_.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %20, i64 0, i32 0, i32 2
  %25 = load i32*, i32** %index_.i.i.i.i, align 8, !tbaa !38
  %inc.i.i.i.i = add nsw i32 %23, 1
  store i32 %inc.i.i.i.i, i32* %n_operations_.i.i.i.i, align 8, !tbaa !74
  %arrayidx4.i.i.i.i = getelementptr inbounds i32, i32* %25, i64 %idxprom.i.i.i.i
  store i32 %24, i32* %arrayidx4.i.i.i.i, align 4, !tbaa !46
  store double %21, double* %val_, align 8, !tbaa !159
  %n_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %19, i64 0, i32 3
  %26 = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %19, i64 0, i32 4
  %27 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %cmp.not.i3 = icmp slt i32 %26, %27
  br i1 %cmp.not.i3, label %entry.if.end_crit_edge.i, label %if.then.i5

entry.if.end_crit_edge.i:                         ; preds = %_ZN5adept6ActiveIdEaSERKS1_.exit
  %statement_.phi.trans.insert.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %19, i64 0, i32 0
  %.pre.i4 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i, align 8, !tbaa !35
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

if.then.i5:                                       ; preds = %_ZN5adept6ActiveIdEaSERKS1_.exit
  %mul.i.i = shl nsw i32 %27, 1
  %conv.i.i = sext i32 %mul.i.i to i64
  %28 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i, i64 8)
  %29 = extractvalue { i64, i1 } %28, 1
  %30 = extractvalue { i64, i1 } %28, 0
  %31 = select i1 %29, i64 -1, i64 %30
  %call.i.i = tail call noalias nonnull i8* @_Znam(i64 %31) #33
  %32 = bitcast %"class.adept::internal::StackStorageOrig"* %19 to i8**
  %33 = load i8*, i8** %32, align 8, !tbaa !35
  %conv5.i.i = sext i32 %26 to i64
  %mul6.i.i = shl nsw i64 %conv5.i.i, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call.i.i, i8* align 4 %33, i64 %mul6.i.i, i1 false)
  %isnull.i.i = icmp eq i8* %33, null
  br i1 %isnull.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %if.then.i5
  tail call void @_ZdaPv(i8* nonnull %33) #31
  %.pre7.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i: ; preds = %delete.notnull.i.i, %if.then.i5
  %.pre7.i = phi i32 [ %26, %if.then.i5 ], [ %.pre7.pre.i, %delete.notnull.i.i ]
  store i8* %call.i.i, i8** %32, align 8, !tbaa !35
  store i32 %mul.i.i, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %34 = bitcast i8* %call.i.i to %"struct.adept::internal::Statement"*
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, %entry.if.end_crit_edge.i
  %35 = phi i32 [ %26, %entry.if.end_crit_edge.i ], [ %.pre7.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %36 = phi %"struct.adept::internal::Statement"* [ %.pre.i4, %entry.if.end_crit_edge.i ], [ %34, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %37 = load i32, i32* %gradient_index_, align 4, !tbaa !46
  %idxprom.i = sext i32 %35 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %36, i64 %idxprom.i, i32 0
  store i32 %37, i32* %index.i, align 4, !tbaa !41
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %19, i64 0, i32 5
  %38 = load i32, i32* %n_operations_.i, align 8, !tbaa !74
  %inc.i6 = add nsw i32 %35, 1
  store i32 %inc.i6, i32* %n_statements_.i, align 8, !tbaa !40
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %36, i64 %idxprom.i, i32 1
  store i32 %38, i32* %end_plus_one.i, align 4, !tbaa !45
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local i64 @_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIN5adept6ActiveIdEELm1EEES7_S8_S7_NS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS8_RS8_S7_ES8_S7_EEmT_T0_RT1_T2_SM_SM_(%"class.boost::numeric::odeint::euler"* %stepper, void (%"class.boost::array.31"*, %"class.boost::array.31"*, %"class.adept::Active"*)* %system, %"class.boost::array.31"* nonnull align 8 dereferenceable(16) %start_state, %"class.adept::Active"* %start_time, %"class.adept::Active"* %end_time, %"class.adept::Active"* %dt) local_unnamed_addr #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"class.boost::numeric::odeint::euler", align 8
  %agg.tmp1 = alloca %"class.adept::Active", align 8
  %agg.tmp2 = alloca %"class.adept::Active", align 8
  %agg.tmp5 = alloca %"class.adept::Active", align 8
  %0 = getelementptr inbounds %"class.boost::numeric::odeint::euler", %"class.boost::numeric::odeint::euler"* %agg.tmp, i64 0, i32 0, i32 0, i32 0, i32 0
  %1 = getelementptr inbounds %"class.boost::numeric::odeint::euler", %"class.boost::numeric::odeint::euler"* %stepper, i64 0, i32 0, i32 0, i32 0, i32 0
  %2 = load i8, i8* %1, align 8
  store i8 %2, i8* %0, align 8
  %3 = getelementptr inbounds %"class.boost::numeric::odeint::euler", %"class.boost::numeric::odeint::euler"* %agg.tmp, i64 0, i32 0, i32 1, i32 0
  %4 = getelementptr inbounds %"class.boost::numeric::odeint::euler", %"class.boost::numeric::odeint::euler"* %stepper, i64 0, i32 0, i32 1, i32 0
  %5 = load i8, i8* %4, align 1, !tbaa !13
  store i8 %5, i8* %3, align 1, !tbaa !13
  %arrayinit.begin.i.i.i.i = getelementptr inbounds %"class.boost::numeric::odeint::euler", %"class.boost::numeric::odeint::euler"* %agg.tmp, i64 0, i32 0, i32 3, i32 0, i32 0, i64 0
  %arrayidx.i.i.i.i = getelementptr inbounds %"class.boost::numeric::odeint::euler", %"class.boost::numeric::odeint::euler"* %stepper, i64 0, i32 0, i32 3, i32 0, i32 0, i64 0
  call void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %arrayinit.begin.i.i.i.i, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %arrayidx.i.i.i.i)
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp1, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %start_time)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp2, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %end_time)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp5, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %dt)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %invoke.cont4
  %call = invoke i64 @_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIN5adept6ActiveIdEELm1EEES7_S8_S7_NS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS8_RS8_S7_ES8_S7_NS1_13null_observerEEEmT_T0_RT1_T2_SN_SN_T3_(%"class.boost::numeric::odeint::euler"* nonnull %agg.tmp, void (%"class.boost::array.31"*, %"class.boost::array.31"*, %"class.adept::Active"*)* %system, %"class.boost::array.31"* nonnull align 8 dereferenceable(16) %start_state, %"class.adept::Active"* nonnull %agg.tmp1, %"class.adept::Active"* nonnull %agg.tmp2, %"class.adept::Active"* nonnull %agg.tmp5)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont7
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp5) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp2) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp1) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %arrayinit.begin.i.i.i.i) #3
  ret i64 %call

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup12

lpad3:                                            ; preds = %invoke.cont
  %7 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup11

lpad6:                                            ; preds = %invoke.cont4
  %8 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad9:                                            ; preds = %invoke.cont7
  %9 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp5) #3
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad6
  %.pn = phi { i8*, i32 } [ %9, %lpad9 ], [ %8, %lpad6 ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp2) #3
  br label %ehcleanup11

ehcleanup11:                                      ; preds = %ehcleanup, %lpad3
  %.pn.pn = phi { i8*, i32 } [ %.pn, %ehcleanup ], [ %7, %lpad3 ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp1) #3
  br label %ehcleanup12

ehcleanup12:                                      ; preds = %ehcleanup11, %lpad
  %.pn.pn.pn = phi { i8*, i32 } [ %.pn.pn, %ehcleanup11 ], [ %6, %lpad ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %arrayinit.begin.i.i.i.i) #3
  resume { i8*, i32 } %.pn.pn.pn
}

; Function Attrs: uwtable
define linkonce_odr dso_local i64 @_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIN5adept6ActiveIdEELm1EEES7_S8_S7_NS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS8_RS8_S7_ES8_S7_NS1_13null_observerEEEmT_T0_RT1_T2_SN_SN_T3_(%"class.boost::numeric::odeint::euler"* %stepper, void (%"class.boost::array.31"*, %"class.boost::array.31"*, %"class.adept::Active"*)* %system, %"class.boost::array.31"* nonnull align 8 dereferenceable(16) %start_state, %"class.adept::Active"* %start_time, %"class.adept::Active"* %end_time, %"class.adept::Active"* %dt) local_unnamed_addr #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"class.boost::numeric::odeint::euler", align 8
  %agg.tmp1 = alloca %"class.adept::Active", align 8
  %agg.tmp2 = alloca %"class.adept::Active", align 8
  %agg.tmp5 = alloca %"class.adept::Active", align 8
  %0 = getelementptr inbounds %"class.boost::numeric::odeint::euler", %"class.boost::numeric::odeint::euler"* %agg.tmp, i64 0, i32 0, i32 0, i32 0, i32 0
  %1 = getelementptr inbounds %"class.boost::numeric::odeint::euler", %"class.boost::numeric::odeint::euler"* %stepper, i64 0, i32 0, i32 0, i32 0, i32 0
  %2 = load i8, i8* %1, align 8
  store i8 %2, i8* %0, align 8
  %3 = getelementptr inbounds %"class.boost::numeric::odeint::euler", %"class.boost::numeric::odeint::euler"* %agg.tmp, i64 0, i32 0, i32 1, i32 0
  %4 = getelementptr inbounds %"class.boost::numeric::odeint::euler", %"class.boost::numeric::odeint::euler"* %stepper, i64 0, i32 0, i32 1, i32 0
  %5 = load i8, i8* %4, align 1, !tbaa !13
  store i8 %5, i8* %3, align 1, !tbaa !13
  %arrayinit.begin.i.i.i.i = getelementptr inbounds %"class.boost::numeric::odeint::euler", %"class.boost::numeric::odeint::euler"* %agg.tmp, i64 0, i32 0, i32 3, i32 0, i32 0, i64 0
  %arrayidx.i.i.i.i = getelementptr inbounds %"class.boost::numeric::odeint::euler", %"class.boost::numeric::odeint::euler"* %stepper, i64 0, i32 0, i32 3, i32 0, i32 0, i64 0
  call void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %arrayinit.begin.i.i.i.i, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %arrayidx.i.i.i.i)
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp1, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %start_time)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp2, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %end_time)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp5, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %dt)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %invoke.cont4
  %call = invoke i64 @_ZN5boost7numeric6odeint6detail15integrate_constINS1_5eulerINS_5arrayIN5adept6ActiveIdEELm1EEES8_S9_S8_NS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS9_RS9_S8_ES9_S8_NS1_13null_observerEEEmT_T0_RT1_T2_SO_SO_T3_NS1_11stepper_tagE(%"class.boost::numeric::odeint::euler"* nonnull %agg.tmp, void (%"class.boost::array.31"*, %"class.boost::array.31"*, %"class.adept::Active"*)* %system, %"class.boost::array.31"* nonnull align 8 dereferenceable(16) %start_state, %"class.adept::Active"* nonnull %agg.tmp1, %"class.adept::Active"* nonnull %agg.tmp2, %"class.adept::Active"* nonnull %agg.tmp5)
          to label %invoke.cont11 unwind label %lpad10

invoke.cont11:                                    ; preds = %invoke.cont7
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp5) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp2) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp1) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %arrayinit.begin.i.i.i.i) #3
  ret i64 %call

lpad:                                             ; preds = %entry
  %6 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup13

lpad3:                                            ; preds = %invoke.cont
  %7 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup12

lpad6:                                            ; preds = %invoke.cont4
  %8 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad10:                                           ; preds = %invoke.cont7
  %9 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp5) #3
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad10, %lpad6
  %.pn = phi { i8*, i32 } [ %9, %lpad10 ], [ %8, %lpad6 ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp2) #3
  br label %ehcleanup12

ehcleanup12:                                      ; preds = %ehcleanup, %lpad3
  %.pn.pn = phi { i8*, i32 } [ %.pn, %ehcleanup ], [ %7, %lpad3 ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp1) #3
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup12, %lpad
  %.pn.pn.pn = phi { i8*, i32 } [ %.pn.pn, %ehcleanup12 ], [ %6, %lpad ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %arrayinit.begin.i.i.i.i) #3
  resume { i8*, i32 } %.pn.pn.pn
}

; Function Attrs: uwtable
define linkonce_odr dso_local i64 @_ZN5boost7numeric6odeint6detail15integrate_constINS1_5eulerINS_5arrayIN5adept6ActiveIdEELm1EEES8_S9_S8_NS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS9_RS9_S8_ES9_S8_NS1_13null_observerEEEmT_T0_RT1_T2_SO_SO_T3_NS1_11stepper_tagE(%"class.boost::numeric::odeint::euler"* %stepper, void (%"class.boost::array.31"*, %"class.boost::array.31"*, %"class.adept::Active"*)* %system, %"class.boost::array.31"* nonnull align 8 dereferenceable(16) %start_state, %"class.adept::Active"* %start_time, %"class.adept::Active"* %end_time, %"class.adept::Active"* %dt) local_unnamed_addr #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %time = alloca %"class.adept::Active", align 8
  %step = alloca i32, align 4
  %agg.tmp = alloca %"class.adept::Active", align 8
  %ref.tmp = alloca %"struct.adept::internal::BinaryOperation", align 8
  %agg.tmp3 = alloca %"class.adept::Active", align 8
  %agg.tmp6 = alloca %"class.adept::Active", align 8
  %agg.tmp14 = alloca %"class.adept::Active", align 8
  %agg.tmp20 = alloca %"class.adept::Active", align 8
  %agg.tmp22 = alloca %"class.adept::Active", align 8
  %ref.tmp29 = alloca %"struct.adept::internal::BinaryOperation.43", align 8
  %ref.tmp31 = alloca %"class.adept::Active", align 8
  %agg.tmp44 = alloca %"class.adept::Active", align 8
  %0 = bitcast %"class.adept::Active"* %time to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #3
  call void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %time, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %start_time)
  %1 = bitcast i32* %step to i8*
  call void @llvm.lifetime.start.p0i8(i64 4, i8* nonnull %1) #3
  store i32 0, i32* %step, align 4, !tbaa !46
  %2 = bitcast %"struct.adept::internal::BinaryOperation"* %ref.tmp to i8*
  %3 = getelementptr inbounds %"struct.adept::internal::BinaryOperation", %"struct.adept::internal::BinaryOperation"* %ref.tmp, i64 0, i32 0
  %4 = getelementptr inbounds %"struct.adept::internal::BinaryOperation", %"struct.adept::internal::BinaryOperation"* %ref.tmp, i64 0, i32 1
  %5 = bitcast %"struct.adept::internal::BinaryOperation"* %ref.tmp to %"struct.adept::internal::EndIndex"*
  %6 = getelementptr %"class.boost::numeric::odeint::euler", %"class.boost::numeric::odeint::euler"* %stepper, i64 0, i32 0
  %7 = bitcast %"struct.adept::internal::BinaryOperation.43"* %ref.tmp29 to i8*
  %8 = bitcast %"class.adept::Active"* %ref.tmp31 to i8*
  %9 = getelementptr inbounds %"struct.adept::internal::BinaryOperation.43", %"struct.adept::internal::BinaryOperation.43"* %ref.tmp29, i64 0, i32 0
  %ref.tmp30.sroa.0.0..sroa_idx = getelementptr inbounds %"struct.adept::internal::BinaryOperation.43", %"struct.adept::internal::BinaryOperation.43"* %ref.tmp29, i64 0, i32 1, i32 0
  %ref.tmp30.sroa.5.0..sroa_idx76 = getelementptr inbounds %"struct.adept::internal::BinaryOperation.43", %"struct.adept::internal::BinaryOperation.43"* %ref.tmp29, i64 0, i32 1, i32 1
  %10 = bitcast %"struct.adept::internal::BinaryOperation.43"* %ref.tmp29 to %"struct.adept::internal::EndIndex"*
  br label %invoke.cont

invoke.cont:                                      ; preds = %invoke.cont38, %entry
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #3
  store %"class.adept::Active"* %time, %"class.adept::Active"** %3, align 8
  store %"class.adept::Active"* %dt, %"class.adept::Active"** %4, align 8
  invoke void @_ZN5adept6ActiveIdEC2IdNS_8internal15BinaryOperationIdS1_NS3_3AddES1_EEEERKNS_10ExpressionIT_T0_EEPNS3_9enable_ifIXaaeqsrS9_4rankLi0EsrS9_9is_activeEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp, %"struct.adept::internal::EndIndex"* nonnull align 1 dereferenceable(1) %5, i8* null)
          to label %invoke.cont2 unwind label %lpad

invoke.cont2:                                     ; preds = %invoke.cont
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp3, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %end_time)
          to label %invoke.cont5 unwind label %lpad4

invoke.cont5:                                     ; preds = %invoke.cont2
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp6, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %dt)
          to label %invoke.cont8 unwind label %lpad7

invoke.cont8:                                     ; preds = %invoke.cont5
  %call11 = invoke zeroext i1 @_ZN5boost7numeric6odeint6detail17less_eq_with_signIN5adept6ActiveIdEEEEbT_S7_S7_(%"class.adept::Active"* nonnull %agg.tmp, %"class.adept::Active"* nonnull %agg.tmp3, %"class.adept::Active"* nonnull %agg.tmp6)
          to label %invoke.cont10 unwind label %lpad9

invoke.cont10:                                    ; preds = %invoke.cont8
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp6) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp3) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #3
  br i1 %call11, label %while.body, label %while.end

while.body:                                       ; preds = %invoke.cont10
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp14, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %time)
          to label %invoke.cont16 unwind label %lpad15.loopexit

invoke.cont16:                                    ; preds = %while.body
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp14) #3
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp20, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %time)
          to label %invoke.cont21 unwind label %lpad15.loopexit

invoke.cont21:                                    ; preds = %invoke.cont16
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp22, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %dt)
          to label %invoke.cont24 unwind label %lpad23

invoke.cont24:                                    ; preds = %invoke.cont21
  invoke void @_ZN5boost7numeric6odeint21explicit_stepper_baseINS1_5eulerINS_5arrayIN5adept6ActiveIdEELm1EEES7_S8_S7_NS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEELt1ES8_S7_S8_S7_S9_SA_SB_E7do_stepIPFvRKS8_RS8_S7_ES8_EEvT_RT0_S7_S7_(%"class.boost::numeric::odeint::explicit_stepper_base"* nonnull dereferenceable(24) %6, void (%"class.boost::array.31"*, %"class.boost::array.31"*, %"class.adept::Active"*)* %system, %"class.boost::array.31"* nonnull align 8 dereferenceable(16) %start_state, %"class.adept::Active"* nonnull %agg.tmp20, %"class.adept::Active"* nonnull %agg.tmp22)
          to label %invoke.cont26 unwind label %lpad25

invoke.cont26:                                    ; preds = %invoke.cont24
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp22) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp20) #3
  %11 = load i32, i32* %step, align 4, !tbaa !46
  %inc = add nsw i32 %11, 1
  store i32 %inc, i32* %step, align 4, !tbaa !46
  call void @llvm.lifetime.start.p0i8(i64 24, i8* nonnull %7) #3
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %8) #3
  invoke void @_ZN5adept6ActiveIdEC2IiEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %ref.tmp31, i32* nonnull align 4 dereferenceable(4) %step, i8* null)
          to label %invoke.cont37 unwind label %lpad32

invoke.cont37:                                    ; preds = %invoke.cont26
  store %"class.adept::Active"* %start_time, %"class.adept::Active"** %9, align 8, !tbaa !26, !alias.scope !167
  store %"class.adept::Active"* %ref.tmp31, %"class.adept::Active"** %ref.tmp30.sroa.0.0..sroa_idx, align 8
  store %"class.adept::Active"* %dt, %"class.adept::Active"** %ref.tmp30.sroa.5.0..sroa_idx76, align 8
  %call39 = invoke nonnull align 8 dereferenceable(12) %"class.adept::Active"* @_ZN5adept6ActiveIdEaSIdNS_8internal15BinaryOperationIdS1_NS3_3AddENS4_IdS1_NS3_8MultiplyES1_EEEEEENS3_9enable_ifIXaasrT0_9is_activeeqsrSA_4rankLi0EERS1_E4typeERKNS_10ExpressionIT_SA_EE(%"class.adept::Active"* nonnull dereferenceable(12) %time, %"struct.adept::internal::EndIndex"* nonnull align 1 dereferenceable(1) %10)
          to label %invoke.cont38 unwind label %lpad34

invoke.cont38:                                    ; preds = %invoke.cont37
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %ref.tmp31) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #3
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #3
  br label %invoke.cont, !llvm.loop !170

lpad:                                             ; preds = %invoke.cont
  %12 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup13

lpad4:                                            ; preds = %invoke.cont2
  %13 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup12

lpad7:                                            ; preds = %invoke.cont5
  %14 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad9:                                            ; preds = %invoke.cont8
  %15 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp6) #3
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad9, %lpad7
  %.pn = phi { i8*, i32 } [ %15, %lpad9 ], [ %14, %lpad7 ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp3) #3
  br label %ehcleanup12

ehcleanup12:                                      ; preds = %ehcleanup, %lpad4
  %.pn.pn = phi { i8*, i32 } [ %.pn, %ehcleanup ], [ %13, %lpad4 ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp) #3
  br label %ehcleanup13

ehcleanup13:                                      ; preds = %ehcleanup12, %lpad
  %.pn.pn.pn = phi { i8*, i32 } [ %.pn.pn, %ehcleanup12 ], [ %12, %lpad ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #3
  br label %ehcleanup49

lpad15.loopexit:                                  ; preds = %invoke.cont16, %while.body
  %lpad.loopexit = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup49

lpad15.loopexit.split-lp:                         ; preds = %while.end
  %lpad.loopexit.split-lp = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup49

lpad23:                                           ; preds = %invoke.cont21
  %16 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup28

lpad25:                                           ; preds = %invoke.cont24
  %17 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp22) #3
  br label %ehcleanup28

ehcleanup28:                                      ; preds = %lpad25, %lpad23
  %.pn65 = phi { i8*, i32 } [ %17, %lpad25 ], [ %16, %lpad23 ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp20) #3
  br label %ehcleanup49

lpad32:                                           ; preds = %invoke.cont26
  %18 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup41

lpad34:                                           ; preds = %invoke.cont37
  %19 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %ref.tmp31) #3
  br label %ehcleanup41

ehcleanup41:                                      ; preds = %lpad34, %lpad32
  %.pn67 = phi { i8*, i32 } [ %19, %lpad34 ], [ %18, %lpad32 ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %8) #3
  call void @llvm.lifetime.end.p0i8(i64 24, i8* nonnull %7) #3
  br label %ehcleanup49

while.end:                                        ; preds = %invoke.cont10
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp44, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %time)
          to label %invoke.cont45 unwind label %lpad15.loopexit.split-lp

invoke.cont45:                                    ; preds = %while.end
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp44) #3
  %20 = load i32, i32* %step, align 4, !tbaa !46
  %conv = sext i32 %20 to i64
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %time) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #3
  ret i64 %conv

ehcleanup49:                                      ; preds = %ehcleanup41, %ehcleanup28, %lpad15.loopexit.split-lp, %lpad15.loopexit, %ehcleanup13
  %.pn67.pn = phi { i8*, i32 } [ %.pn67, %ehcleanup41 ], [ %.pn65, %ehcleanup28 ], [ %.pn.pn.pn, %ehcleanup13 ], [ %lpad.loopexit, %lpad15.loopexit ], [ %lpad.loopexit.split-lp, %lpad15.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0i8(i64 4, i8* nonnull %1) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %time) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #3
  resume { i8*, i32 } %.pn67.pn
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept6ActiveIdEC2IdNS_8internal15BinaryOperationIdS1_NS3_3AddES1_EEEERKNS_10ExpressionIT_T0_EEPNS3_9enable_ifIXaaeqsrS9_4rankLi0EsrS9_9is_activeEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %this, %"struct.adept::internal::EndIndex"* nonnull align 1 dereferenceable(1) %rhs, i8* %dummy) unnamed_addr #0 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
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
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %3) #3
  %13 = bitcast %"struct.std::__detail::_List_node_base"* %3 to i8*
  tail call void @_ZdlPv(i8* nonnull %13) #3
  %.pre = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !26
  %14 = bitcast %"class.adept::internal::StackStorageOrig"* %.pre to %"class.adept::Stack"*
  br label %_ZN5adept5Stack17register_gradientEv.exit

_ZN5adept5Stack17register_gradientEv.exit:        ; preds = %if.end24.i, %if.else.i, %if.then4.i, %if.then.i
  %15 = phi %"class.adept::Stack"* [ %14, %if.end24.i ], [ %0, %if.else.i ], [ %0, %if.then4.i ], [ %0, %if.then.i ]
  %16 = phi %"class.adept::internal::StackStorageOrig"* [ %.pre, %if.end24.i ], [ %4, %if.else.i ], [ %4, %if.then4.i ], [ %4, %if.then.i ]
  %return_val.0.i = phi i32 [ %8, %if.end24.i ], [ %8, %if.else.i ], [ %5, %if.then4.i ], [ %5, %if.then.i ]
  store i32 %return_val.0.i, i32* %gradient_index_, align 8, !tbaa !163
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
  %left.i.i.i = bitcast %"struct.adept::internal::EndIndex"* %rhs to %"class.adept::Active"**
  %22 = load %"class.adept::Active"*, %"class.adept::Active"** %left.i.i.i, align 8, !tbaa !171
  %val_.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %22, i64 0, i32 0
  %23 = load double, double* %val_.i.i.i.i, align 8, !tbaa !159
  %right.i.i.i = getelementptr inbounds %"struct.adept::internal::EndIndex", %"struct.adept::internal::EndIndex"* %rhs, i64 8
  %24 = bitcast %"struct.adept::internal::EndIndex"* %right.i.i.i to %"class.adept::Active"**
  %25 = load %"class.adept::Active"*, %"class.adept::Active"** %24, align 8, !tbaa !173
  %val_.i7.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %25, i64 0, i32 0
  %26 = load double, double* %val_.i7.i.i.i, align 8, !tbaa !159
  %add.i.i.i.i = fadd fast double %26, %23
  %gradient_index_.i.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %22, i64 0, i32 1
  %multiplier_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0, i32 1
  %27 = load double*, double** %multiplier_.i.i.i.i.i.i, align 8, !tbaa !37
  %n_operations_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0, i32 5
  %28 = load i32, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !74
  %idxprom.i.i.i.i.i.i = sext i32 %28 to i64
  %arrayidx.i.i.i.i.i.i = getelementptr inbounds double, double* %27, i64 %idxprom.i.i.i.i.i.i
  store double 1.000000e+00, double* %arrayidx.i.i.i.i.i.i, align 8, !tbaa !43
  %29 = load i32, i32* %gradient_index_.i.i.i.i.i, align 8, !tbaa !46
  %index_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %21, i64 0, i32 0, i32 2
  %30 = load i32*, i32** %index_.i.i.i.i.i.i, align 8, !tbaa !38
  %inc.i.i.i.i.i.i = add nsw i32 %28, 1
  store i32 %inc.i.i.i.i.i.i, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !74
  %arrayidx4.i.i.i.i.i.i = getelementptr inbounds i32, i32* %30, i64 %idxprom.i.i.i.i.i.i
  store i32 %29, i32* %arrayidx4.i.i.i.i.i.i, align 4, !tbaa !46
  %gradient_index_.i.i.i5.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %25, i64 0, i32 1
  %31 = load i32, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !74
  %idxprom.i.i.i.i8.i.i = sext i32 %31 to i64
  %arrayidx.i.i.i.i9.i.i = getelementptr inbounds double, double* %27, i64 %idxprom.i.i.i.i8.i.i
  store double 1.000000e+00, double* %arrayidx.i.i.i.i9.i.i, align 8, !tbaa !43
  %32 = load i32, i32* %gradient_index_.i.i.i5.i.i, align 8, !tbaa !46
  %inc.i.i.i.i11.i.i = add nsw i32 %31, 1
  store i32 %inc.i.i.i.i11.i.i, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !74
  %arrayidx4.i.i.i.i12.i.i = getelementptr inbounds i32, i32* %30, i64 %idxprom.i.i.i.i8.i.i
  store i32 %32, i32* %arrayidx4.i.i.i.i12.i.i, align 4, !tbaa !46
  %val_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 0
  store double %add.i.i.i.i, double* %val_, align 8, !tbaa !159
  %n_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %20, i64 0, i32 3
  %33 = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %20, i64 0, i32 4
  %34 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %cmp.not.i4 = icmp slt i32 %33, %34
  br i1 %cmp.not.i4, label %entry.if.end_crit_edge.i, label %if.then.i5

entry.if.end_crit_edge.i:                         ; preds = %_ZN5adept8internal16StackStorageOrig18check_space_staticILi2EEEvv.exit
  %statement_.phi.trans.insert.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %20, i64 0, i32 0
  %.pre.i = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i, align 8, !tbaa !35
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

if.then.i5:                                       ; preds = %_ZN5adept8internal16StackStorageOrig18check_space_staticILi2EEEvv.exit
  %mul.i.i = shl nsw i32 %34, 1
  %conv.i.i = sext i32 %mul.i.i to i64
  %35 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i, i64 8)
  %36 = extractvalue { i64, i1 } %35, 1
  %37 = extractvalue { i64, i1 } %35, 0
  %38 = select i1 %36, i64 -1, i64 %37
  %call.i.i = tail call noalias nonnull i8* @_Znam(i64 %38) #33
  %39 = bitcast %"class.adept::internal::StackStorageOrig"* %20 to i8**
  %40 = load i8*, i8** %39, align 8, !tbaa !35
  %conv5.i.i = sext i32 %33 to i64
  %mul6.i.i = shl nsw i64 %conv5.i.i, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call.i.i, i8* align 4 %40, i64 %mul6.i.i, i1 false)
  %isnull.i.i = icmp eq i8* %40, null
  br i1 %isnull.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %if.then.i5
  tail call void @_ZdaPv(i8* nonnull %40) #31
  %.pre7.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i: ; preds = %delete.notnull.i.i, %if.then.i5
  %.pre7.i = phi i32 [ %33, %if.then.i5 ], [ %.pre7.pre.i, %delete.notnull.i.i ]
  store i8* %call.i.i, i8** %39, align 8, !tbaa !35
  store i32 %mul.i.i, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %41 = bitcast i8* %call.i.i to %"struct.adept::internal::Statement"*
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, %entry.if.end_crit_edge.i
  %42 = phi i32 [ %33, %entry.if.end_crit_edge.i ], [ %.pre7.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %43 = phi %"struct.adept::internal::Statement"* [ %.pre.i, %entry.if.end_crit_edge.i ], [ %41, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %44 = load i32, i32* %gradient_index_, align 4, !tbaa !46
  %idxprom.i = sext i32 %42 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %43, i64 %idxprom.i, i32 0
  store i32 %44, i32* %index.i, align 4, !tbaa !41
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %20, i64 0, i32 5
  %45 = load i32, i32* %n_operations_.i, align 8, !tbaa !74
  %inc.i6 = add nsw i32 %42, 1
  store i32 %inc.i6, i32* %n_statements_.i, align 8, !tbaa !40
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %43, i64 %idxprom.i, i32 1
  store i32 %45, i32* %end_plus_one.i, align 4, !tbaa !45
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local zeroext i1 @_ZN5boost7numeric6odeint6detail17less_eq_with_signIN5adept6ActiveIdEEEEbT_S7_S7_(%"class.adept::Active"* %t1, %"class.adept::Active"* %t2, %"class.adept::Active"* %dt) local_unnamed_addr #0 comdat personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
invoke.cont:
  %ref.tmp = alloca %"class.adept::Active", align 8
  %ref.tmp4 = alloca %"class.adept::Active", align 8
  %ref.tmp10 = alloca %"class.adept::Active", align 8
  %0 = bitcast %"class.adept::Active"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #3
  call void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %ref.tmp, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %dt)
  %val_.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %ref.tmp, i64 0, i32 0
  %1 = load double, double* %val_.i.i.i, align 8, !tbaa !159
  %cmp.i = fcmp fast ogt double %1, 0.000000e+00
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %ref.tmp) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #3
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %invoke.cont
  %2 = bitcast %"class.adept::Active"* %ref.tmp4 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %2) #3
  call void @llvm.experimental.noalias.scope.decl(metadata !174)
  %val_.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %ref.tmp4, i64 0, i32 0
  store double 0.000000e+00, double* %val_.i.i, align 8, !tbaa !159, !alias.scope !174
  %3 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26, !noalias !174
  %n_gradients_registered_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %3, i64 0, i32 9
  %4 = load i32, i32* %n_gradients_registered_.i.i.i, align 4, !tbaa !51, !noalias !174
  %inc.i.i.i = add nsw i32 %4, 1
  store i32 %inc.i.i.i, i32* %n_gradients_registered_.i.i.i, align 4, !tbaa !51, !noalias !174
  %gap_list_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %3, i64 0, i32 4
  %5 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i.i.i, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i.i.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %6 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i.i.i, align 8, !tbaa !28, !noalias !174
  %cmp.i.i.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %6, %5
  br i1 %cmp.i.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %if.then
  %i_gradient_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %3, i64 0, i32 6
  %7 = load i32, i32* %i_gradient_.i.i.i, align 8, !tbaa !62, !noalias !174
  %inc2.i.i.i = add nsw i32 %7, 1
  store i32 %inc2.i.i.i, i32* %i_gradient_.i.i.i, align 8, !tbaa !62, !noalias !174
  %max_gradient_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %3, i64 0, i32 8
  %8 = load i32, i32* %max_gradient_.i.i.i, align 8, !tbaa !63, !noalias !174
  %cmp.not.i.i.i = icmp slt i32 %7, %8
  br i1 %cmp.not.i.i.i, label %invoke.cont6, label %if.then4.i.i.i

if.then4.i.i.i:                                   ; preds = %if.then.i.i.i
  store i32 %inc2.i.i.i, i32* %max_gradient_.i.i.i, align 8, !tbaa !63, !noalias !174
  br label %invoke.cont6

if.else.i.i.i:                                    ; preds = %if.then
  %9 = bitcast %"struct.std::__detail::_List_node_base"* %6 to %"struct.std::_List_node"*
  %_M_storage.i.i.i.i.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %6, i64 1
  %start.i.i.i = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i.i.i.i.i to i32*
  %10 = load i32, i32* %start.i.i.i, align 4, !tbaa !54, !noalias !174
  %inc11.i.i.i = add nsw i32 %10, 1
  store i32 %inc11.i.i.i, i32* %start.i.i.i, align 4, !tbaa !54, !noalias !174
  %end.i.i.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %9, i64 0, i32 1, i32 0, i64 4
  %11 = bitcast i8* %end.i.i.i to i32*
  %12 = load i32, i32* %11, align 4, !tbaa !52, !noalias !174
  %cmp13.not.i.i.i = icmp slt i32 %10, %12
  br i1 %cmp13.not.i.i.i, label %invoke.cont6, label %if.then14.i.i.i

if.then14.i.i.i:                                  ; preds = %if.else.i.i.i
  %_M_node.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %3, i64 0, i32 5, i32 0
  %13 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i.i.i.i, align 8, !tbaa !55, !noalias !174
  %cmp.i35.i.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %13, %6
  br i1 %cmp.i35.i.i.i, label %if.then18.i.i.i, label %if.end24.i.i.i

if.then18.i.i.i:                                  ; preds = %if.then14.i.i.i
  store %"struct.std::__detail::_List_node_base"* %5, %"struct.std::__detail::_List_node_base"** %_M_node.i.i.i.i, align 8, !tbaa.struct !60, !noalias !174
  br label %if.end24.i.i.i

if.end24.i.i.i:                                   ; preds = %if.then18.i.i.i, %if.then14.i.i.i
  %_M_size.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %3, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %14 = load i64, i64* %_M_size.i.i.i.i.i.i, align 8, !tbaa !56, !noalias !174
  %sub.i.i.i.i.i.i = add i64 %14, -1
  store i64 %sub.i.i.i.i.i.i, i64* %_M_size.i.i.i.i.i.i, align 8, !tbaa !56, !noalias !174
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %6) #3, !noalias !174
  %15 = bitcast %"struct.std::__detail::_List_node_base"* %6 to i8*
  call void @_ZdlPv(i8* nonnull %15) #3, !noalias !174
  %.pre65 = load double, double* %val_.i.i, align 8, !tbaa !159
  br label %invoke.cont6

invoke.cont6:                                     ; preds = %if.end24.i.i.i, %if.else.i.i.i, %if.then4.i.i.i, %if.then.i.i.i
  %16 = phi double [ %.pre65, %if.end24.i.i.i ], [ 0.000000e+00, %if.else.i.i.i ], [ 0.000000e+00, %if.then4.i.i.i ], [ 0.000000e+00, %if.then.i.i.i ]
  %return_val.0.i.i.i = phi i32 [ %10, %if.end24.i.i.i ], [ %10, %if.else.i.i.i ], [ %7, %if.then4.i.i.i ], [ %7, %if.then.i.i.i ]
  %gradient_index_.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %ref.tmp4, i64 0, i32 1
  store i32 %return_val.0.i.i.i, i32* %gradient_index_.i.i, align 8, !tbaa !163, !alias.scope !174
  %val_.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %t1, i64 0, i32 0
  %17 = load double, double* %val_.i.i.i.i, align 8, !tbaa !159
  %val_.i6.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %t2, i64 0, i32 0
  %18 = load double, double* %val_.i6.i.i.i, align 8, !tbaa !159
  %sub.i.i.i.i = fsub fast double %17, %18
  %cmp.i17 = fcmp fast ole double %sub.i.i.i.i, %16
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %ref.tmp4) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %2) #3
  br label %return

if.else:                                          ; preds = %invoke.cont
  %19 = bitcast %"class.adept::Active"* %ref.tmp10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %19) #3
  call void @llvm.experimental.noalias.scope.decl(metadata !177)
  %val_.i.i27 = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %ref.tmp10, i64 0, i32 0
  store double 0.000000e+00, double* %val_.i.i27, align 8, !tbaa !159, !alias.scope !177
  %20 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26, !noalias !177
  %n_gradients_registered_.i.i.i28 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %20, i64 0, i32 9
  %21 = load i32, i32* %n_gradients_registered_.i.i.i28, align 4, !tbaa !51, !noalias !177
  %inc.i.i.i29 = add nsw i32 %21, 1
  store i32 %inc.i.i.i29, i32* %n_gradients_registered_.i.i.i28, align 4, !tbaa !51, !noalias !177
  %gap_list_.i.i.i30 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %20, i64 0, i32 4
  %22 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i.i.i30, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i.i.i.i31 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i.i.i30, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %23 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i.i.i31, align 8, !tbaa !28, !noalias !177
  %cmp.i.i.i.i32 = icmp eq %"struct.std::__detail::_List_node_base"* %23, %22
  br i1 %cmp.i.i.i.i32, label %if.then.i.i.i37, label %if.else.i.i.i44

if.then.i.i.i37:                                  ; preds = %if.else
  %i_gradient_.i.i.i33 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %20, i64 0, i32 6
  %24 = load i32, i32* %i_gradient_.i.i.i33, align 8, !tbaa !62, !noalias !177
  %inc2.i.i.i34 = add nsw i32 %24, 1
  store i32 %inc2.i.i.i34, i32* %i_gradient_.i.i.i33, align 8, !tbaa !62, !noalias !177
  %max_gradient_.i.i.i35 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %20, i64 0, i32 8
  %25 = load i32, i32* %max_gradient_.i.i.i35, align 8, !tbaa !63, !noalias !177
  %cmp.not.i.i.i36 = icmp slt i32 %24, %25
  br i1 %cmp.not.i.i.i36, label %invoke.cont12, label %if.then4.i.i.i38

if.then4.i.i.i38:                                 ; preds = %if.then.i.i.i37
  store i32 %inc2.i.i.i34, i32* %max_gradient_.i.i.i35, align 8, !tbaa !63, !noalias !177
  br label %invoke.cont12

if.else.i.i.i44:                                  ; preds = %if.else
  %26 = bitcast %"struct.std::__detail::_List_node_base"* %23 to %"struct.std::_List_node"*
  %_M_storage.i.i.i.i.i.i39 = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %23, i64 1
  %start.i.i.i40 = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i.i.i.i.i39 to i32*
  %27 = load i32, i32* %start.i.i.i40, align 4, !tbaa !54, !noalias !177
  %inc11.i.i.i41 = add nsw i32 %27, 1
  store i32 %inc11.i.i.i41, i32* %start.i.i.i40, align 4, !tbaa !54, !noalias !177
  %end.i.i.i42 = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %26, i64 0, i32 1, i32 0, i64 4
  %28 = bitcast i8* %end.i.i.i42 to i32*
  %29 = load i32, i32* %28, align 4, !tbaa !52, !noalias !177
  %cmp13.not.i.i.i43 = icmp slt i32 %27, %29
  br i1 %cmp13.not.i.i.i43, label %invoke.cont12, label %if.then14.i.i.i47

if.then14.i.i.i47:                                ; preds = %if.else.i.i.i44
  %_M_node.i.i.i.i45 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %20, i64 0, i32 5, i32 0
  %30 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i.i.i.i45, align 8, !tbaa !55, !noalias !177
  %cmp.i35.i.i.i46 = icmp eq %"struct.std::__detail::_List_node_base"* %30, %23
  br i1 %cmp.i35.i.i.i46, label %if.then18.i.i.i48, label %if.end24.i.i.i51

if.then18.i.i.i48:                                ; preds = %if.then14.i.i.i47
  store %"struct.std::__detail::_List_node_base"* %22, %"struct.std::__detail::_List_node_base"** %_M_node.i.i.i.i45, align 8, !tbaa.struct !60, !noalias !177
  br label %if.end24.i.i.i51

if.end24.i.i.i51:                                 ; preds = %if.then18.i.i.i48, %if.then14.i.i.i47
  %_M_size.i.i.i.i.i.i49 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %20, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %31 = load i64, i64* %_M_size.i.i.i.i.i.i49, align 8, !tbaa !56, !noalias !177
  %sub.i.i.i.i.i.i50 = add i64 %31, -1
  store i64 %sub.i.i.i.i.i.i50, i64* %_M_size.i.i.i.i.i.i49, align 8, !tbaa !56, !noalias !177
  call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %23) #3, !noalias !177
  %32 = bitcast %"struct.std::__detail::_List_node_base"* %23 to i8*
  call void @_ZdlPv(i8* nonnull %32) #3, !noalias !177
  %.pre = load double, double* %val_.i.i27, align 8, !tbaa !159
  br label %invoke.cont12

invoke.cont12:                                    ; preds = %if.end24.i.i.i51, %if.else.i.i.i44, %if.then4.i.i.i38, %if.then.i.i.i37
  %33 = phi double [ %.pre, %if.end24.i.i.i51 ], [ 0.000000e+00, %if.else.i.i.i44 ], [ 0.000000e+00, %if.then4.i.i.i38 ], [ 0.000000e+00, %if.then.i.i.i37 ]
  %return_val.0.i.i.i52 = phi i32 [ %27, %if.end24.i.i.i51 ], [ %27, %if.else.i.i.i44 ], [ %24, %if.then4.i.i.i38 ], [ %24, %if.then.i.i.i37 ]
  %gradient_index_.i.i53 = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %ref.tmp10, i64 0, i32 1
  store i32 %return_val.0.i.i.i52, i32* %gradient_index_.i.i53, align 8, !tbaa !163, !alias.scope !177
  %val_.i.i.i.i21 = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %t2, i64 0, i32 0
  %34 = load double, double* %val_.i.i.i.i21, align 8, !tbaa !159
  %val_.i6.i.i.i23 = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %t1, i64 0, i32 0
  %35 = load double, double* %val_.i6.i.i.i23, align 8, !tbaa !159
  %sub.i.i.i.i24 = fsub fast double %34, %35
  %cmp.i26 = fcmp fast ole double %sub.i.i.i.i24, %33
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %ref.tmp10) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %19) #3
  br label %return

return:                                           ; preds = %invoke.cont12, %invoke.cont6
  %retval.0 = phi i1 [ %cmp.i17, %invoke.cont6 ], [ %cmp.i26, %invoke.cont12 ]
  ret i1 %retval.0
}

; Function Attrs: uwtable mustprogress
define linkonce_odr dso_local void @_ZN5boost7numeric6odeint21explicit_stepper_baseINS1_5eulerINS_5arrayIN5adept6ActiveIdEELm1EEES7_S8_S7_NS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEELt1ES8_S7_S8_S7_S9_SA_SB_E7do_stepIPFvRKS8_RS8_S7_ES8_EEvT_RT0_S7_S7_(%"class.boost::numeric::odeint::explicit_stepper_base"* nonnull dereferenceable(24) %this, void (%"class.boost::array.31"*, %"class.boost::array.31"*, %"class.adept::Active"*)* %system, %"class.boost::array.31"* nonnull align 8 dereferenceable(16) %x, %"class.adept::Active"* %t, %"class.adept::Active"* %dt) local_unnamed_addr #11 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"class.adept::Active", align 8
  %agg.tmp2 = alloca %"class.adept::Active", align 8
  call void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %t)
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp2, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %dt)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_ZN5boost7numeric6odeint21explicit_stepper_baseINS1_5eulerINS_5arrayIN5adept6ActiveIdEELm1EEES7_S8_S7_NS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEELt1ES8_S7_S8_S7_S9_SA_SB_E10do_step_v1IPFvRKS8_RS8_S7_ES8_EEvT_RT0_S7_S7_(%"class.boost::numeric::odeint::explicit_stepper_base"* nonnull dereferenceable(24) %this, void (%"class.boost::array.31"*, %"class.boost::array.31"*, %"class.adept::Active"*)* %system, %"class.boost::array.31"* nonnull align 8 dereferenceable(16) %x, %"class.adept::Active"* nonnull %agg.tmp, %"class.adept::Active"* nonnull %agg.tmp2)
          to label %invoke.cont4 unwind label %lpad3

invoke.cont4:                                     ; preds = %invoke.cont
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp2) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp) #3
  ret void

lpad:                                             ; preds = %entry
  %0 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad3:                                            ; preds = %invoke.cont
  %1 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp2) #3
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad3, %lpad
  %.pn = phi { i8*, i32 } [ %1, %lpad3 ], [ %0, %lpad ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp) #3
  resume { i8*, i32 } %.pn
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept6ActiveIdEC2IiEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %this, i32* nonnull align 4 dereferenceable(4) %rhs, i8* %dummy) unnamed_addr #0 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %val_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 0
  %0 = load i32, i32* %rhs, align 4, !tbaa !46
  %conv = sitofp i32 %0 to double
  store double %conv, double* %val_, align 8, !tbaa !159
  %gradient_index_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 1
  %1 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %n_gradients_registered_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 9
  %2 = load i32, i32* %n_gradients_registered_.i, align 4, !tbaa !51
  %inc.i = add nsw i32 %2, 1
  store i32 %inc.i, i32* %n_gradients_registered_.i, align 4, !tbaa !51
  %gap_list_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 4
  %3 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_next.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_.i, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  %4 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next.i.i, align 8, !tbaa !28
  %cmp.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %4, %3
  %5 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 0
  br i1 %cmp.i.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  %i_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 6
  %6 = load i32, i32* %i_gradient_.i, align 8, !tbaa !62
  %inc2.i = add nsw i32 %6, 1
  store i32 %inc2.i, i32* %i_gradient_.i, align 8, !tbaa !62
  %max_gradient_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 8
  %7 = load i32, i32* %max_gradient_.i, align 8, !tbaa !63
  %cmp.not.i = icmp slt i32 %6, %7
  br i1 %cmp.not.i, label %_ZN5adept5Stack17register_gradientEv.exit, label %if.then4.i

if.then4.i:                                       ; preds = %if.then.i
  store i32 %inc2.i, i32* %max_gradient_.i, align 8, !tbaa !63
  br label %_ZN5adept5Stack17register_gradientEv.exit

if.else.i:                                        ; preds = %entry
  %8 = bitcast %"struct.std::__detail::_List_node_base"* %4 to %"struct.std::_List_node"*
  %_M_storage.i.i.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %4, i64 1
  %start.i = bitcast %"struct.std::__detail::_List_node_base"* %_M_storage.i.i.i.i to i32*
  %9 = load i32, i32* %start.i, align 4, !tbaa !54
  %inc11.i = add nsw i32 %9, 1
  store i32 %inc11.i, i32* %start.i, align 4, !tbaa !54
  %end.i = getelementptr inbounds %"struct.std::_List_node", %"struct.std::_List_node"* %8, i64 0, i32 1, i32 0, i64 4
  %10 = bitcast i8* %end.i to i32*
  %11 = load i32, i32* %10, align 4, !tbaa !52
  %cmp13.not.i = icmp slt i32 %9, %11
  br i1 %cmp13.not.i, label %_ZN5adept5Stack17register_gradientEv.exit, label %if.then14.i

if.then14.i:                                      ; preds = %if.else.i
  %_M_node.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 5, i32 0
  %12 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa !55
  %cmp.i35.i = icmp eq %"struct.std::__detail::_List_node_base"* %12, %4
  br i1 %cmp.i35.i, label %if.then18.i, label %if.end24.i

if.then18.i:                                      ; preds = %if.then14.i
  store %"struct.std::__detail::_List_node_base"* %3, %"struct.std::__detail::_List_node_base"** %_M_node.i.i, align 8, !tbaa.struct !60
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then18.i, %if.then14.i
  %_M_size.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %1, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  %13 = load i64, i64* %_M_size.i.i.i.i, align 8, !tbaa !56
  %sub.i.i.i.i = add i64 %13, -1
  store i64 %sub.i.i.i.i, i64* %_M_size.i.i.i.i, align 8, !tbaa !56
  tail call void @_ZNSt8__detail15_List_node_base9_M_unhookEv(%"struct.std::__detail::_List_node_base"* nonnull dereferenceable(16) %4) #3
  %14 = bitcast %"struct.std::__detail::_List_node_base"* %4 to i8*
  tail call void @_ZdlPv(i8* nonnull %14) #3
  %.pre = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !26
  br label %_ZN5adept5Stack17register_gradientEv.exit

_ZN5adept5Stack17register_gradientEv.exit:        ; preds = %if.end24.i, %if.else.i, %if.then4.i, %if.then.i
  %15 = phi %"class.adept::internal::StackStorageOrig"* [ %.pre, %if.end24.i ], [ %5, %if.else.i ], [ %5, %if.then4.i ], [ %5, %if.then.i ]
  %return_val.0.i = phi i32 [ %9, %if.end24.i ], [ %9, %if.else.i ], [ %6, %if.then4.i ], [ %6, %if.then.i ]
  store i32 %return_val.0.i, i32* %gradient_index_, align 8, !tbaa !163
  %n_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %15, i64 0, i32 3
  %16 = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %15, i64 0, i32 4
  %17 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %cmp.not.i3 = icmp slt i32 %16, %17
  br i1 %cmp.not.i3, label %entry.if.end_crit_edge.i, label %if.then.i4

entry.if.end_crit_edge.i:                         ; preds = %_ZN5adept5Stack17register_gradientEv.exit
  %statement_.phi.trans.insert.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %15, i64 0, i32 0
  %.pre.i = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i, align 8, !tbaa !35
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

if.then.i4:                                       ; preds = %_ZN5adept5Stack17register_gradientEv.exit
  %mul.i.i = shl nsw i32 %17, 1
  %conv.i.i = sext i32 %mul.i.i to i64
  %18 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i, i64 8)
  %19 = extractvalue { i64, i1 } %18, 1
  %20 = extractvalue { i64, i1 } %18, 0
  %21 = select i1 %19, i64 -1, i64 %20
  %call.i.i = tail call noalias nonnull i8* @_Znam(i64 %21) #33
  %22 = bitcast %"class.adept::internal::StackStorageOrig"* %15 to i8**
  %23 = load i8*, i8** %22, align 8, !tbaa !35
  %conv5.i.i = sext i32 %16 to i64
  %mul6.i.i = shl nsw i64 %conv5.i.i, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call.i.i, i8* align 4 %23, i64 %mul6.i.i, i1 false)
  %isnull.i.i = icmp eq i8* %23, null
  br i1 %isnull.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %if.then.i4
  tail call void @_ZdaPv(i8* nonnull %23) #31
  %.pre7.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i: ; preds = %delete.notnull.i.i, %if.then.i4
  %.pre7.i = phi i32 [ %16, %if.then.i4 ], [ %.pre7.pre.i, %delete.notnull.i.i ]
  store i8* %call.i.i, i8** %22, align 8, !tbaa !35
  store i32 %mul.i.i, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %24 = bitcast i8* %call.i.i to %"struct.adept::internal::Statement"*
  %.pre6 = load i32, i32* %gradient_index_, align 4, !tbaa !46
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, %entry.if.end_crit_edge.i
  %25 = phi i32 [ %return_val.0.i, %entry.if.end_crit_edge.i ], [ %.pre6, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %26 = phi i32 [ %16, %entry.if.end_crit_edge.i ], [ %.pre7.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %27 = phi %"struct.adept::internal::Statement"* [ %.pre.i, %entry.if.end_crit_edge.i ], [ %24, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %idxprom.i = sext i32 %26 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %27, i64 %idxprom.i, i32 0
  store i32 %25, i32* %index.i, align 4, !tbaa !41
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %15, i64 0, i32 5
  %28 = load i32, i32* %n_operations_.i, align 8, !tbaa !74
  %inc.i5 = add nsw i32 %26, 1
  store i32 %inc.i5, i32* %n_statements_.i, align 8, !tbaa !40
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %27, i64 %idxprom.i, i32 1
  store i32 %28, i32* %end_plus_one.i, align 4, !tbaa !45
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local nonnull align 8 dereferenceable(12) %"class.adept::Active"* @_ZN5adept6ActiveIdEaSIdNS_8internal15BinaryOperationIdS1_NS3_3AddENS4_IdS1_NS3_8MultiplyES1_EEEEEENS3_9enable_ifIXaasrT0_9is_activeeqsrSA_4rankLi0EERS1_E4typeERKNS_10ExpressionIT_SA_EE(%"class.adept::Active"* nonnull dereferenceable(12) %this, %"struct.adept::internal::EndIndex"* nonnull align 1 dereferenceable(1) %rhs) local_unnamed_addr #0 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !26
  %n_allocated_operations_.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %0, i64 0, i32 6
  %1 = load i32, i32* %n_allocated_operations_.i.i, align 4, !tbaa !75
  %n_operations_.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %0, i64 0, i32 5
  %2 = load i32, i32* %n_operations_.i.i, align 8, !tbaa !74
  %add.i.i = add nsw i32 %2, 3
  %cmp.not.i.i = icmp sgt i32 %1, %add.i.i
  %3 = bitcast %"class.adept::internal::StackStorageOrig"* %0 to %"class.adept::Stack"*
  br i1 %cmp.not.i.i, label %_ZN5adept8internal16StackStorageOrig18check_space_staticILi3EEEvv.exit, label %if.then.i.i

if.then.i.i:                                      ; preds = %entry
  tail call void @_ZN5adept8internal16StackStorageOrig20grow_operation_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %0, i32 3)
  %.pre = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %4 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %.pre, i64 0, i32 0
  br label %_ZN5adept8internal16StackStorageOrig18check_space_staticILi3EEEvv.exit

_ZN5adept8internal16StackStorageOrig18check_space_staticILi3EEEvv.exit: ; preds = %if.then.i.i, %entry
  %5 = phi %"class.adept::internal::StackStorageOrig"* [ %0, %entry ], [ %4, %if.then.i.i ]
  %6 = phi %"class.adept::Stack"* [ %3, %entry ], [ %.pre, %if.then.i.i ]
  %left.i.i.i = bitcast %"struct.adept::internal::EndIndex"* %rhs to %"class.adept::Active"**
  %7 = load %"class.adept::Active"*, %"class.adept::Active"** %left.i.i.i, align 8, !tbaa !180
  %val_.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %7, i64 0, i32 0
  %8 = load double, double* %val_.i.i.i.i, align 8, !tbaa !159
  %left.i.i.i.i5.i = getelementptr inbounds %"struct.adept::internal::EndIndex", %"struct.adept::internal::EndIndex"* %rhs, i64 8
  %9 = bitcast %"struct.adept::internal::EndIndex"* %left.i.i.i.i5.i to %"class.adept::Active"**
  %10 = load %"class.adept::Active"*, %"class.adept::Active"** %9, align 8, !tbaa !183
  %val_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %10, i64 0, i32 0
  %11 = load double, double* %val_.i.i.i.i.i.i, align 8, !tbaa !159
  %right.i.i.i.i.i = getelementptr inbounds %"struct.adept::internal::EndIndex", %"struct.adept::internal::EndIndex"* %rhs, i64 16
  %12 = bitcast %"struct.adept::internal::EndIndex"* %right.i.i.i.i.i to %"class.adept::Active"**
  %13 = load %"class.adept::Active"*, %"class.adept::Active"** %12, align 8, !tbaa !184
  %val_.i9.i.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %13, i64 0, i32 0
  %14 = load double, double* %val_.i9.i.i.i.i.i, align 8, !tbaa !159
  %mul.i.i.i.i.i.i = fmul fast double %14, %11
  %add.i.i.i.i = fadd fast double %mul.i.i.i.i.i.i, %8
  %gradient_index_.i.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %7, i64 0, i32 1
  %multiplier_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %6, i64 0, i32 0, i32 1
  %15 = load double*, double** %multiplier_.i.i.i.i.i.i, align 8, !tbaa !37
  %n_operations_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %6, i64 0, i32 0, i32 5
  %16 = load i32, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !74
  %idxprom.i.i.i.i.i.i = sext i32 %16 to i64
  %arrayidx.i.i.i.i.i.i = getelementptr inbounds double, double* %15, i64 %idxprom.i.i.i.i.i.i
  store double 1.000000e+00, double* %arrayidx.i.i.i.i.i.i, align 8, !tbaa !43
  %17 = load i32, i32* %gradient_index_.i.i.i.i.i, align 8, !tbaa !46
  %index_.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %6, i64 0, i32 0, i32 2
  %18 = load i32*, i32** %index_.i.i.i.i.i.i, align 8, !tbaa !38
  %inc.i.i.i.i.i.i = add nsw i32 %16, 1
  store i32 %inc.i.i.i.i.i.i, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !74
  %arrayidx4.i.i.i.i.i.i = getelementptr inbounds i32, i32* %18, i64 %idxprom.i.i.i.i.i.i
  store i32 %17, i32* %arrayidx4.i.i.i.i.i.i, align 4, !tbaa !46
  %19 = load double, double* %val_.i9.i.i.i.i.i, align 8, !tbaa !159
  %gradient_index_.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %10, i64 0, i32 1
  %20 = load i32, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !74
  %idxprom.i.i.i.i.i.i.i.i.i = sext i32 %20 to i64
  %arrayidx.i.i.i.i.i.i.i.i.i = getelementptr inbounds double, double* %15, i64 %idxprom.i.i.i.i.i.i.i.i.i
  store double %19, double* %arrayidx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %21 = load i32, i32* %gradient_index_.i.i.i.i.i.i.i.i, align 8, !tbaa !46
  %inc.i.i.i.i.i.i.i.i.i = add nsw i32 %20, 1
  store i32 %inc.i.i.i.i.i.i.i.i.i, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !74
  %arrayidx4.i.i.i.i.i.i.i.i.i = getelementptr inbounds i32, i32* %18, i64 %idxprom.i.i.i.i.i.i.i.i.i
  store i32 %21, i32* %arrayidx4.i.i.i.i.i.i.i.i.i, align 4, !tbaa !46
  %22 = load double, double* %val_.i.i.i.i.i.i, align 8, !tbaa !159
  %gradient_index_.i.i.i6.i.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %13, i64 0, i32 1
  %23 = load i32, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !74
  %idxprom.i.i.i.i9.i.i.i.i.i = sext i32 %23 to i64
  %arrayidx.i.i.i.i10.i.i.i.i.i = getelementptr inbounds double, double* %15, i64 %idxprom.i.i.i.i9.i.i.i.i.i
  store double %22, double* %arrayidx.i.i.i.i10.i.i.i.i.i, align 8, !tbaa !43
  %24 = load i32, i32* %gradient_index_.i.i.i6.i.i.i.i.i, align 8, !tbaa !46
  %inc.i.i.i.i12.i.i.i.i.i = add nsw i32 %23, 1
  store i32 %inc.i.i.i.i12.i.i.i.i.i, i32* %n_operations_.i.i.i.i.i.i, align 8, !tbaa !74
  %arrayidx4.i.i.i.i13.i.i.i.i.i = getelementptr inbounds i32, i32* %18, i64 %idxprom.i.i.i.i9.i.i.i.i.i
  store i32 %24, i32* %arrayidx4.i.i.i.i13.i.i.i.i.i, align 4, !tbaa !46
  %val_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 0
  store double %add.i.i.i.i, double* %val_, align 8, !tbaa !159
  %n_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %5, i64 0, i32 3
  %25 = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %5, i64 0, i32 4
  %26 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %cmp.not.i = icmp slt i32 %25, %26
  br i1 %cmp.not.i, label %entry.if.end_crit_edge.i, label %if.then.i

entry.if.end_crit_edge.i:                         ; preds = %_ZN5adept8internal16StackStorageOrig18check_space_staticILi3EEEvv.exit
  %statement_.phi.trans.insert.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %5, i64 0, i32 0
  %.pre.i = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i, align 8, !tbaa !35
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

if.then.i:                                        ; preds = %_ZN5adept8internal16StackStorageOrig18check_space_staticILi3EEEvv.exit
  %mul.i.i = shl nsw i32 %26, 1
  %conv.i.i = sext i32 %mul.i.i to i64
  %27 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i, i64 8)
  %28 = extractvalue { i64, i1 } %27, 1
  %29 = extractvalue { i64, i1 } %27, 0
  %30 = select i1 %28, i64 -1, i64 %29
  %call.i.i = tail call noalias nonnull i8* @_Znam(i64 %30) #33
  %31 = bitcast %"class.adept::internal::StackStorageOrig"* %5 to i8**
  %32 = load i8*, i8** %31, align 8, !tbaa !35
  %conv5.i.i = sext i32 %25 to i64
  %mul6.i.i = shl nsw i64 %conv5.i.i, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call.i.i, i8* align 4 %32, i64 %mul6.i.i, i1 false)
  %isnull.i.i = icmp eq i8* %32, null
  br i1 %isnull.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %if.then.i
  tail call void @_ZdaPv(i8* nonnull %32) #31
  %.pre7.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i: ; preds = %delete.notnull.i.i, %if.then.i
  %.pre7.i = phi i32 [ %25, %if.then.i ], [ %.pre7.pre.i, %delete.notnull.i.i ]
  store i8* %call.i.i, i8** %31, align 8, !tbaa !35
  store i32 %mul.i.i, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %33 = bitcast i8* %call.i.i to %"struct.adept::internal::Statement"*
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, %entry.if.end_crit_edge.i
  %34 = phi i32 [ %25, %entry.if.end_crit_edge.i ], [ %.pre7.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %35 = phi %"struct.adept::internal::Statement"* [ %.pre.i, %entry.if.end_crit_edge.i ], [ %33, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %gradient_index_ = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %this, i64 0, i32 1
  %36 = load i32, i32* %gradient_index_, align 4, !tbaa !46
  %idxprom.i = sext i32 %34 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %35, i64 %idxprom.i, i32 0
  store i32 %36, i32* %index.i, align 4, !tbaa !41
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %5, i64 0, i32 5
  %37 = load i32, i32* %n_operations_.i, align 8, !tbaa !74
  %inc.i = add nsw i32 %34, 1
  store i32 %inc.i, i32* %n_statements_.i, align 8, !tbaa !40
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %35, i64 %idxprom.i, i32 1
  store i32 %37, i32* %end_plus_one.i, align 4, !tbaa !45
  ret %"class.adept::Active"* %this
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5boost7numeric6odeint21explicit_stepper_baseINS1_5eulerINS_5arrayIN5adept6ActiveIdEELm1EEES7_S8_S7_NS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEELt1ES8_S7_S8_S7_S9_SA_SB_E10do_step_v1IPFvRKS8_RS8_S7_ES8_EEvT_RT0_S7_S7_(%"class.boost::numeric::odeint::explicit_stepper_base"* nonnull dereferenceable(24) %this, void (%"class.boost::array.31"*, %"class.boost::array.31"*, %"class.adept::Active"*)* %system, %"class.boost::array.31"* nonnull align 8 dereferenceable(16) %x, %"class.adept::Active"* %t, %"class.adept::Active"* %dt) local_unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp4 = alloca %"class.adept::Active", align 8
  %agg.tmp8 = alloca %"class.adept::Active", align 8
  %agg.tmp9 = alloca %"class.adept::Active", align 8
  %m_initialized.i = getelementptr inbounds %"class.boost::numeric::odeint::explicit_stepper_base", %"class.boost::numeric::odeint::explicit_stepper_base"* %this, i64 0, i32 1, i32 0
  %0 = load i8, i8* %m_initialized.i, align 1, !tbaa !161, !range !25
  %tobool.not.i = icmp eq i8 %0, 0
  br i1 %tobool.not.i, label %_ZNSt5_BindIFMN5boost7numeric6odeint21explicit_stepper_baseINS2_5eulerINS0_5arrayIN5adept6ActiveIdEELm1EEES8_S9_S8_NS2_13array_algebraENS2_18default_operationsENS2_17initially_resizerEEELt1ES9_S8_S9_S8_SA_SB_SC_EEFbRKS9_ESt17reference_wrapperISE_ESt12_PlaceholderILi1EEEEclIJSG_EbEET0_DpOT_.exit.i, label %_ZN5boost7numeric6odeint17initially_resizer11adjust_sizeINS_5arrayIN5adept6ActiveIdEELm1EEESt5_BindIFMNS1_21explicit_stepper_baseINS1_5eulerIS8_S7_S8_S7_NS1_13array_algebraENS1_18default_operationsES2_EELt1ES8_S7_S8_S7_SC_SD_S2_EEFbRKS8_ESt17reference_wrapperISF_ESt12_PlaceholderILi1EEEEEEbRKT_T0_.exit

_ZNSt5_BindIFMN5boost7numeric6odeint21explicit_stepper_baseINS2_5eulerINS0_5arrayIN5adept6ActiveIdEELm1EEES8_S9_S8_NS2_13array_algebraENS2_18default_operationsENS2_17initially_resizerEEELt1ES9_S8_S9_S8_SA_SB_SC_EEFbRKS9_ESt17reference_wrapperISE_ESt12_PlaceholderILi1EEEEclIJSG_EbEET0_DpOT_.exit.i: ; preds = %entry
  store i8 1, i8* %m_initialized.i, align 1, !tbaa !161
  br label %_ZN5boost7numeric6odeint17initially_resizer11adjust_sizeINS_5arrayIN5adept6ActiveIdEELm1EEESt5_BindIFMNS1_21explicit_stepper_baseINS1_5eulerIS8_S7_S8_S7_NS1_13array_algebraENS1_18default_operationsES2_EELt1ES8_S7_S8_S7_SC_SD_S2_EEFbRKS8_ESt17reference_wrapperISF_ESt12_PlaceholderILi1EEEEEEbRKT_T0_.exit

_ZN5boost7numeric6odeint17initially_resizer11adjust_sizeINS_5arrayIN5adept6ActiveIdEELm1EEESt5_BindIFMNS1_21explicit_stepper_baseINS1_5eulerIS8_S7_S8_S7_NS1_13array_algebraENS1_18default_operationsES2_EELt1ES8_S7_S8_S7_SC_SD_S2_EEFbRKS8_ESt17reference_wrapperISF_ESt12_PlaceholderILi1EEEEEEbRKT_T0_.exit: ; preds = %_ZNSt5_BindIFMN5boost7numeric6odeint21explicit_stepper_baseINS2_5eulerINS0_5arrayIN5adept6ActiveIdEELm1EEES8_S9_S8_NS2_13array_algebraENS2_18default_operationsENS2_17initially_resizerEEELt1ES9_S8_S9_S8_SA_SB_SC_EEFbRKS9_ESt17reference_wrapperISE_ESt12_PlaceholderILi1EEEEclIJSG_EbEET0_DpOT_.exit.i, %entry
  %m_v = getelementptr inbounds %"class.boost::numeric::odeint::explicit_stepper_base", %"class.boost::numeric::odeint::explicit_stepper_base"* %this, i64 0, i32 3, i32 0
  call void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp4, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %t)
  invoke void %system(%"class.boost::array.31"* nonnull align 8 dereferenceable(16) %x, %"class.boost::array.31"* nonnull align 8 dereferenceable(16) %m_v, %"class.adept::Active"* nonnull %agg.tmp4)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %_ZN5boost7numeric6odeint17initially_resizer11adjust_sizeINS_5arrayIN5adept6ActiveIdEELm1EEESt5_BindIFMNS1_21explicit_stepper_baseINS1_5eulerIS8_S7_S8_S7_NS1_13array_algebraENS1_18default_operationsES2_EELt1ES8_S7_S8_S7_SC_SD_S2_EEFbRKS8_ESt17reference_wrapperISF_ESt12_PlaceholderILi1EEEEEEbRKT_T0_.exit
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp4) #3
  call void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp8, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %t)
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp9, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %dt)
          to label %invoke.cont11 unwind label %lpad10

invoke.cont11:                                    ; preds = %invoke.cont
  %1 = bitcast %"class.boost::numeric::odeint::explicit_stepper_base"* %this to %"class.boost::numeric::odeint::euler"*
  invoke void @_ZN5boost7numeric6odeint5eulerINS_5arrayIN5adept6ActiveIdEELm1EEES6_S7_S6_NS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEE12do_step_implIPFvRKS7_RS7_S6_ES7_S7_S7_EEvT_RKT0_RKT1_S6_RT2_S6_(%"class.boost::numeric::odeint::euler"* nonnull dereferenceable(24) %1, void (%"class.boost::array.31"*, %"class.boost::array.31"*, %"class.adept::Active"*)* %system, %"class.boost::array.31"* nonnull align 8 dereferenceable(16) %x, %"class.boost::array.31"* nonnull align 8 dereferenceable(16) %m_v, %"class.adept::Active"* nonnull %agg.tmp8, %"class.boost::array.31"* nonnull align 8 dereferenceable(16) %x, %"class.adept::Active"* nonnull %agg.tmp9)
          to label %invoke.cont13 unwind label %lpad12

invoke.cont13:                                    ; preds = %invoke.cont11
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp9) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp8) #3
  ret void

lpad:                                             ; preds = %_ZN5boost7numeric6odeint17initially_resizer11adjust_sizeINS_5arrayIN5adept6ActiveIdEELm1EEESt5_BindIFMNS1_21explicit_stepper_baseINS1_5eulerIS8_S7_S8_S7_NS1_13array_algebraENS1_18default_operationsES2_EELt1ES8_S7_S8_S7_SC_SD_S2_EEFbRKS8_ESt17reference_wrapperISF_ESt12_PlaceholderILi1EEEEEEbRKT_T0_.exit
  %2 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup14

lpad10:                                           ; preds = %invoke.cont
  %3 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup14

lpad12:                                           ; preds = %invoke.cont11
  %4 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp9) #3
  br label %ehcleanup14

ehcleanup14:                                      ; preds = %lpad12, %lpad10, %lpad
  %agg.tmp8.sink = phi %"class.adept::Active"* [ %agg.tmp4, %lpad ], [ %agg.tmp8, %lpad12 ], [ %agg.tmp8, %lpad10 ]
  %.pn.pn = phi { i8*, i32 } [ %2, %lpad ], [ %4, %lpad12 ], [ %3, %lpad10 ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp8.sink) #3
  resume { i8*, i32 } %.pn.pn
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5boost7numeric6odeint5eulerINS_5arrayIN5adept6ActiveIdEELm1EEES6_S7_S6_NS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEE12do_step_implIPFvRKS7_RS7_S6_ES7_S7_S7_EEvT_RKT0_RKT1_S6_RT2_S6_(%"class.boost::numeric::odeint::euler"* nonnull dereferenceable(24) %this, void (%"class.boost::array.31"*, %"class.boost::array.31"*, %"class.adept::Active"*)* %0, %"class.boost::array.31"* nonnull align 8 dereferenceable(16) %in, %"class.boost::array.31"* nonnull align 8 dereferenceable(16) %dxdt, %"class.adept::Active"* %1, %"class.boost::array.31"* nonnull align 8 dereferenceable(16) %out, %"class.adept::Active"* %dt) local_unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %agg.tmp = alloca %"struct.boost::numeric::odeint::default_operations::scale_sum2", align 8
  %agg.tmp2 = alloca %"class.adept::Active", align 8
  %ref.tmp = alloca double, align 8
  %agg.tmp3 = alloca %"class.adept::Active", align 8
  %2 = bitcast double* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %2) #3
  store double 1.000000e+00, double* %ref.tmp, align 8, !tbaa !43
  call void @_ZN5adept6ActiveIdEC2IdEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp2, double* nonnull align 8 dereferenceable(8) %ref.tmp, i8* null)
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp3, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %dt)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  %m_alpha1.i = getelementptr inbounds %"struct.boost::numeric::odeint::default_operations::scale_sum2", %"struct.boost::numeric::odeint::default_operations::scale_sum2"* %agg.tmp, i64 0, i32 0
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %m_alpha1.i, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %agg.tmp2)
          to label %.noexc unwind label %lpad4

.noexc:                                           ; preds = %invoke.cont
  %m_alpha2.i = getelementptr inbounds %"struct.boost::numeric::odeint::default_operations::scale_sum2", %"struct.boost::numeric::odeint::default_operations::scale_sum2"* %agg.tmp, i64 0, i32 1
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %m_alpha2.i, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %agg.tmp3)
          to label %invoke.cont5 unwind label %lpad.i

lpad.i:                                           ; preds = %.noexc
  %3 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %m_alpha1.i) #3
  br label %ehcleanup

invoke.cont5:                                     ; preds = %.noexc
  %arrayidx.i.i = getelementptr inbounds %"class.boost::array.31", %"class.boost::array.31"* %out, i64 0, i32 0, i64 0
  %arrayidx.i8.i = getelementptr inbounds %"class.boost::array.31", %"class.boost::array.31"* %in, i64 0, i32 0, i64 0
  %arrayidx.i9.i = getelementptr inbounds %"class.boost::array.31", %"class.boost::array.31"* %dxdt, i64 0, i32 0, i64 0
  invoke void @_ZNK5boost7numeric6odeint18default_operations10scale_sum2IN5adept6ActiveIdEES6_EclIS6_S6_S6_EEvRT_RKT0_RKT1_(%"struct.boost::numeric::odeint::default_operations::scale_sum2"* nonnull dereferenceable(32) %agg.tmp, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %arrayidx.i.i, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %arrayidx.i8.i, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %arrayidx.i9.i)
          to label %invoke.cont7 unwind label %lpad6

invoke.cont7:                                     ; preds = %invoke.cont5
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %m_alpha2.i) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %m_alpha1.i) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp3) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp2) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #3
  ret void

lpad:                                             ; preds = %entry
  %4 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup8

lpad4:                                            ; preds = %invoke.cont
  %5 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad6:                                            ; preds = %invoke.cont5
  %6 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %m_alpha2.i) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %m_alpha1.i) #3
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad6, %lpad4, %lpad.i
  %.pn = phi { i8*, i32 } [ %6, %lpad6 ], [ %5, %lpad4 ], [ %3, %lpad.i ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp3) #3
  br label %ehcleanup8

ehcleanup8:                                       ; preds = %ehcleanup, %lpad
  %.pn.pn = phi { i8*, i32 } [ %.pn, %ehcleanup ], [ %4, %lpad ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp2) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %2) #3
  resume { i8*, i32 } %.pn.pn
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK5boost7numeric6odeint18default_operations10scale_sum2IN5adept6ActiveIdEES6_EclIS6_S6_S6_EEvRT_RKT0_RKT1_(%"struct.boost::numeric::odeint::default_operations::scale_sum2"* nonnull dereferenceable(32) %this, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %t1, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %t2, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %t3) local_unnamed_addr #0 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %0 = load %"class.adept::internal::StackStorageOrig"*, %"class.adept::internal::StackStorageOrig"** bitcast (%"class.adept::Stack"** @_ZN5adept21_stack_current_threadE to %"class.adept::internal::StackStorageOrig"**), align 8, !tbaa !26
  %n_allocated_operations_.i.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %0, i64 0, i32 6
  %1 = load i32, i32* %n_allocated_operations_.i.i.i, align 4, !tbaa !75
  %n_operations_.i.i.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %0, i64 0, i32 5
  %2 = load i32, i32* %n_operations_.i.i.i, align 8, !tbaa !74
  %add.i.i.i = add nsw i32 %2, 4
  %cmp.not.i.i.i = icmp sgt i32 %1, %add.i.i.i
  %3 = bitcast %"class.adept::internal::StackStorageOrig"* %0 to %"class.adept::Stack"*
  br i1 %cmp.not.i.i.i, label %_ZN5adept6ActiveIdEaSIdNS_8internal15BinaryOperationIdNS4_IdS1_NS3_8MultiplyES1_EENS3_3AddES6_EEEENS3_9enable_ifIXaasrT0_9is_activeeqsrSA_4rankLi0EERS1_E4typeERKNS_10ExpressionIT_SA_EE.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %entry
  tail call void @_ZN5adept8internal16StackStorageOrig20grow_operation_stackEi(%"class.adept::internal::StackStorageOrig"* nonnull dereferenceable(40) %0, i32 4)
  %.pre = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %4 = getelementptr %"class.adept::Stack", %"class.adept::Stack"* %.pre, i64 0, i32 0
  br label %_ZN5adept6ActiveIdEaSIdNS_8internal15BinaryOperationIdNS4_IdS1_NS3_8MultiplyES1_EENS3_3AddES6_EEEENS3_9enable_ifIXaasrT0_9is_activeeqsrSA_4rankLi0EERS1_E4typeERKNS_10ExpressionIT_SA_EE.exit

_ZN5adept6ActiveIdEaSIdNS_8internal15BinaryOperationIdNS4_IdS1_NS3_8MultiplyES1_EENS3_3AddES6_EEEENS3_9enable_ifIXaasrT0_9is_activeeqsrSA_4rankLi0EERS1_E4typeERKNS_10ExpressionIT_SA_EE.exit: ; preds = %if.then.i.i.i, %entry
  %5 = phi %"class.adept::internal::StackStorageOrig"* [ %0, %entry ], [ %4, %if.then.i.i.i ]
  %6 = phi %"class.adept::Stack"* [ %3, %entry ], [ %.pre, %if.then.i.i.i ]
  %val_.i.i.i.i.i.i = getelementptr inbounds %"struct.boost::numeric::odeint::default_operations::scale_sum2", %"struct.boost::numeric::odeint::default_operations::scale_sum2"* %this, i64 0, i32 0, i32 0
  %7 = load double, double* %val_.i.i.i.i.i.i, align 8, !tbaa !159
  %val_.i9.i.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %t2, i64 0, i32 0
  %8 = load double, double* %val_.i9.i.i.i.i.i, align 8, !tbaa !159
  %mul.i.i.i.i.i.i = fmul fast double %8, %7
  %val_.i.i.i8.i.i.i = getelementptr inbounds %"struct.boost::numeric::odeint::default_operations::scale_sum2", %"struct.boost::numeric::odeint::default_operations::scale_sum2"* %this, i64 0, i32 1, i32 0
  %9 = load double, double* %val_.i.i.i8.i.i.i, align 8, !tbaa !159
  %val_.i9.i.i10.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %t3, i64 0, i32 0
  %10 = load double, double* %val_.i9.i.i10.i.i.i, align 8, !tbaa !159
  %mul.i.i.i11.i.i.i = fmul fast double %10, %9
  %add.i.i.i.i = fadd fast double %mul.i.i.i11.i.i.i, %mul.i.i.i.i.i.i
  %gradient_index_.i.i.i.i.i.i.i.i = getelementptr inbounds %"struct.boost::numeric::odeint::default_operations::scale_sum2", %"struct.boost::numeric::odeint::default_operations::scale_sum2"* %this, i64 0, i32 0, i32 1
  %multiplier_.i.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %6, i64 0, i32 0, i32 1
  %11 = load double*, double** %multiplier_.i.i.i.i.i.i.i.i.i, align 8, !tbaa !37
  %n_operations_.i.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %6, i64 0, i32 0, i32 5
  %12 = load i32, i32* %n_operations_.i.i.i.i.i.i.i.i.i, align 8, !tbaa !74
  %idxprom.i.i.i.i.i.i.i.i.i = sext i32 %12 to i64
  %arrayidx.i.i.i.i.i.i.i.i.i = getelementptr inbounds double, double* %11, i64 %idxprom.i.i.i.i.i.i.i.i.i
  store double %8, double* %arrayidx.i.i.i.i.i.i.i.i.i, align 8, !tbaa !43
  %13 = load i32, i32* %gradient_index_.i.i.i.i.i.i.i.i, align 8, !tbaa !46
  %index_.i.i.i.i.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %6, i64 0, i32 0, i32 2
  %14 = load i32*, i32** %index_.i.i.i.i.i.i.i.i.i, align 8, !tbaa !38
  %inc.i.i.i.i.i.i.i.i.i = add nsw i32 %12, 1
  store i32 %inc.i.i.i.i.i.i.i.i.i, i32* %n_operations_.i.i.i.i.i.i.i.i.i, align 8, !tbaa !74
  %arrayidx4.i.i.i.i.i.i.i.i.i = getelementptr inbounds i32, i32* %14, i64 %idxprom.i.i.i.i.i.i.i.i.i
  store i32 %13, i32* %arrayidx4.i.i.i.i.i.i.i.i.i, align 4, !tbaa !46
  %15 = load double, double* %val_.i.i.i.i.i.i, align 8, !tbaa !159
  %gradient_index_.i.i.i6.i.i.i.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %t2, i64 0, i32 1
  %16 = load i32, i32* %n_operations_.i.i.i.i.i.i.i.i.i, align 8, !tbaa !74
  %idxprom.i.i.i.i9.i.i.i.i.i = sext i32 %16 to i64
  %arrayidx.i.i.i.i10.i.i.i.i.i = getelementptr inbounds double, double* %11, i64 %idxprom.i.i.i.i9.i.i.i.i.i
  store double %15, double* %arrayidx.i.i.i.i10.i.i.i.i.i, align 8, !tbaa !43
  %17 = load i32, i32* %gradient_index_.i.i.i6.i.i.i.i.i, align 8, !tbaa !46
  %inc.i.i.i.i12.i.i.i.i.i = add nsw i32 %16, 1
  store i32 %inc.i.i.i.i12.i.i.i.i.i, i32* %n_operations_.i.i.i.i.i.i.i.i.i, align 8, !tbaa !74
  %arrayidx4.i.i.i.i13.i.i.i.i.i = getelementptr inbounds i32, i32* %14, i64 %idxprom.i.i.i.i9.i.i.i.i.i
  store i32 %17, i32* %arrayidx4.i.i.i.i13.i.i.i.i.i, align 4, !tbaa !46
  %18 = load double, double* %val_.i9.i.i10.i.i.i, align 8, !tbaa !159
  %gradient_index_.i.i.i.i.i.i8.i.i = getelementptr inbounds %"struct.boost::numeric::odeint::default_operations::scale_sum2", %"struct.boost::numeric::odeint::default_operations::scale_sum2"* %this, i64 0, i32 1, i32 1
  %19 = load i32, i32* %n_operations_.i.i.i.i.i.i.i.i.i, align 8, !tbaa !74
  %idxprom.i.i.i.i.i.i.i11.i.i = sext i32 %19 to i64
  %arrayidx.i.i.i.i.i.i.i12.i.i = getelementptr inbounds double, double* %11, i64 %idxprom.i.i.i.i.i.i.i11.i.i
  store double %18, double* %arrayidx.i.i.i.i.i.i.i12.i.i, align 8, !tbaa !43
  %20 = load i32, i32* %gradient_index_.i.i.i.i.i.i8.i.i, align 8, !tbaa !46
  %inc.i.i.i.i.i.i.i14.i.i = add nsw i32 %19, 1
  store i32 %inc.i.i.i.i.i.i.i14.i.i, i32* %n_operations_.i.i.i.i.i.i.i.i.i, align 8, !tbaa !74
  %arrayidx4.i.i.i.i.i.i.i15.i.i = getelementptr inbounds i32, i32* %14, i64 %idxprom.i.i.i.i.i.i.i11.i.i
  store i32 %20, i32* %arrayidx4.i.i.i.i.i.i.i15.i.i, align 4, !tbaa !46
  %21 = load double, double* %val_.i.i.i8.i.i.i, align 8, !tbaa !159
  %gradient_index_.i.i.i6.i.i.i17.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %t3, i64 0, i32 1
  %22 = load i32, i32* %n_operations_.i.i.i.i.i.i.i.i.i, align 8, !tbaa !74
  %idxprom.i.i.i.i9.i.i.i18.i.i = sext i32 %22 to i64
  %arrayidx.i.i.i.i10.i.i.i19.i.i = getelementptr inbounds double, double* %11, i64 %idxprom.i.i.i.i9.i.i.i18.i.i
  store double %21, double* %arrayidx.i.i.i.i10.i.i.i19.i.i, align 8, !tbaa !43
  %23 = load i32, i32* %gradient_index_.i.i.i6.i.i.i17.i.i, align 8, !tbaa !46
  %inc.i.i.i.i12.i.i.i20.i.i = add nsw i32 %22, 1
  store i32 %inc.i.i.i.i12.i.i.i20.i.i, i32* %n_operations_.i.i.i.i.i.i.i.i.i, align 8, !tbaa !74
  %arrayidx4.i.i.i.i13.i.i.i21.i.i = getelementptr inbounds i32, i32* %14, i64 %idxprom.i.i.i.i9.i.i.i18.i.i
  store i32 %23, i32* %arrayidx4.i.i.i.i13.i.i.i21.i.i, align 4, !tbaa !46
  %val_.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %t1, i64 0, i32 0
  store double %add.i.i.i.i, double* %val_.i, align 8, !tbaa !159
  %n_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %5, i64 0, i32 3
  %24 = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  %n_allocated_statements_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %5, i64 0, i32 4
  %25 = load i32, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %cmp.not.i = icmp slt i32 %24, %25
  br i1 %cmp.not.i, label %entry.if.end_crit_edge.i, label %if.then.i

entry.if.end_crit_edge.i:                         ; preds = %_ZN5adept6ActiveIdEaSIdNS_8internal15BinaryOperationIdNS4_IdS1_NS3_8MultiplyES1_EENS3_3AddES6_EEEENS3_9enable_ifIXaasrT0_9is_activeeqsrSA_4rankLi0EERS1_E4typeERKNS_10ExpressionIT_SA_EE.exit
  %statement_.phi.trans.insert.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %5, i64 0, i32 0
  %.pre.i6 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i, align 8, !tbaa !35
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

if.then.i:                                        ; preds = %_ZN5adept6ActiveIdEaSIdNS_8internal15BinaryOperationIdNS4_IdS1_NS3_8MultiplyES1_EENS3_3AddES6_EEEENS3_9enable_ifIXaasrT0_9is_activeeqsrSA_4rankLi0EERS1_E4typeERKNS_10ExpressionIT_SA_EE.exit
  %mul.i.i = shl nsw i32 %25, 1
  %conv.i.i = sext i32 %mul.i.i to i64
  %26 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i, i64 8)
  %27 = extractvalue { i64, i1 } %26, 1
  %28 = extractvalue { i64, i1 } %26, 0
  %29 = select i1 %27, i64 -1, i64 %28
  %call.i.i = tail call noalias nonnull i8* @_Znam(i64 %29) #33
  %30 = bitcast %"class.adept::internal::StackStorageOrig"* %5 to i8**
  %31 = load i8*, i8** %30, align 8, !tbaa !35
  %conv5.i.i = sext i32 %24 to i64
  %mul6.i.i = shl nsw i64 %conv5.i.i, 3
  tail call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 4 %call.i.i, i8* align 4 %31, i64 %mul6.i.i, i1 false)
  %isnull.i.i = icmp eq i8* %31, null
  br i1 %isnull.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %if.then.i
  tail call void @_ZdaPv(i8* nonnull %31) #31
  %.pre7.pre.i = load i32, i32* %n_statements_.i, align 8, !tbaa !40
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i: ; preds = %delete.notnull.i.i, %if.then.i
  %.pre7.i = phi i32 [ %24, %if.then.i ], [ %.pre7.pre.i, %delete.notnull.i.i ]
  store i8* %call.i.i, i8** %30, align 8, !tbaa !35
  store i32 %mul.i.i, i32* %n_allocated_statements_.i, align 4, !tbaa !73
  %32 = bitcast i8* %call.i.i to %"struct.adept::internal::Statement"*
  br label %_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit

_ZN5adept8internal16StackStorageOrig8push_lhsERKi.exit: ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, %entry.if.end_crit_edge.i
  %33 = phi i32 [ %24, %entry.if.end_crit_edge.i ], [ %.pre7.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %34 = phi %"struct.adept::internal::Statement"* [ %.pre.i6, %entry.if.end_crit_edge.i ], [ %32, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i ]
  %gradient_index_.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %t1, i64 0, i32 1
  %35 = load i32, i32* %gradient_index_.i, align 8, !tbaa !46
  %idxprom.i = sext i32 %33 to i64
  %index.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %34, i64 %idxprom.i, i32 0
  store i32 %35, i32* %index.i, align 4, !tbaa !41
  %n_operations_.i = getelementptr inbounds %"class.adept::internal::StackStorageOrig", %"class.adept::internal::StackStorageOrig"* %5, i64 0, i32 5
  %36 = load i32, i32* %n_operations_.i, align 8, !tbaa !74
  %inc.i = add nsw i32 %33, 1
  store i32 %inc.i, i32* %n_statements_.i, align 8, !tbaa !40
  %end_plus_one.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %34, i64 %idxprom.i, i32 1
  store i32 %36, i32* %end_plus_one.i, align 4, !tbaa !45
  ret void
}

; Function Attrs: uwtable
define dso_local void @_Z12adept_sincosdm(double %inp, i64 %iters) local_unnamed_addr #0 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %gradient.i.i = alloca double, align 8
  %xin.addr.i = alloca double, align 8
  %stack.i = alloca %"class.adept::Stack", align 8
  %x.i = alloca %"class.adept::Active", align 8
  %y.i = alloca %"class.adept::Active", align 8
  %agg.tmp.i = alloca %"class.adept::Active", align 8
  %ref.tmp.i = alloca double, align 8
  %inp.addr = alloca double, align 8
  %start = alloca %struct.timeval, align 8
  %end = alloca %struct.timeval, align 8
  %start5 = alloca %struct.timeval, align 8
  %end6 = alloca %struct.timeval, align 8
  %stack = alloca %"class.adept::Stack", align 8
  %resa = alloca %"class.adept::Active", align 8
  %agg.tmp = alloca %"class.adept::Active", align 8
  %start24 = alloca %struct.timeval, align 8
  %end25 = alloca %struct.timeval, align 8
  store double %inp, double* %inp.addr, align 8, !tbaa !43
  %0 = bitcast %struct.timeval* %start to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %0) #3
  %1 = bitcast %struct.timeval* %end to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %1) #3
  %call = call i32 @gettimeofday(%struct.timeval* nonnull %start, i8* null) #3
  %call1 = tail call fast double @_Z6foobardm(double %inp, i64 %iters)
  %call2 = call i32 @gettimeofday(%struct.timeval* nonnull %end, i8* null) #3
  %tv_sec.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end, i64 0, i32 0
  %2 = load i64, i64* %tv_sec.i, align 8, !tbaa !185
  %tv_sec1.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 0
  %3 = load i64, i64* %tv_sec1.i, align 8, !tbaa !185
  %sub.i = sub nsw i64 %2, %3
  %conv.i = sitofp i64 %sub.i to double
  %tv_usec.i = getelementptr inbounds %struct.timeval, %struct.timeval* %end, i64 0, i32 1
  %4 = load i64, i64* %tv_usec.i, align 8, !tbaa !187
  %tv_usec2.i = getelementptr inbounds %struct.timeval, %struct.timeval* %start, i64 0, i32 1
  %5 = load i64, i64* %tv_usec2.i, align 8, !tbaa !187
  %sub3.i = sub nsw i64 %4, %5
  %conv4.i = sitofp i64 %sub3.i to double
  %mul.i = fmul fast double %conv4.i, 0x3EB0C6F7A0B5ED8D
  %add.i = fadd fast double %mul.i, %conv.i
  %conv5.i = fptrunc double %add.i to float
  %conv = fpext float %conv5.i to double
  %call4 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([25 x i8], [25 x i8]* @.str.85, i64 0, i64 0), double %conv, double %call1)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %1) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %0) #3
  %6 = bitcast %struct.timeval* %start5 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %6) #3
  %7 = bitcast %struct.timeval* %end6 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %7) #3
  %call7 = call i32 @gettimeofday(%struct.timeval* nonnull %start5, i8* null) #3
  %8 = bitcast %"class.adept::Stack"* %stack to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %8) #3
  call void @_ZN5adept5StackC2Eb(%"class.adept::Stack"* nonnull dereferenceable(149) %stack, i1 zeroext true)
  %9 = bitcast %"class.adept::Active"* %resa to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %9) #3
  invoke void @_ZN5adept6ActiveIdEC2IdEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp, double* nonnull align 8 dereferenceable(8) %inp.addr, i8* null)
          to label %invoke.cont unwind label %lpad

invoke.cont:                                      ; preds = %entry
  invoke void @_Z7afoobarN5adept6ActiveIdEEm(%"class.adept::Active"* nonnull sret(%"class.adept::Active") align 8 %resa, %"class.adept::Active"* nonnull %agg.tmp, i64 %iters)
          to label %invoke.cont9 unwind label %lpad8

invoke.cont9:                                     ; preds = %invoke.cont
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp) #3
  %val_.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %resa, i64 0, i32 0
  %10 = load double, double* %val_.i, align 8, !tbaa !159
  %call14 = call i32 @gettimeofday(%struct.timeval* nonnull %end6, i8* null) #3
  %tv_sec.i39 = getelementptr inbounds %struct.timeval, %struct.timeval* %end6, i64 0, i32 0
  %11 = load i64, i64* %tv_sec.i39, align 8, !tbaa !185
  %tv_sec1.i40 = getelementptr inbounds %struct.timeval, %struct.timeval* %start5, i64 0, i32 0
  %12 = load i64, i64* %tv_sec1.i40, align 8, !tbaa !185
  %sub.i41 = sub nsw i64 %11, %12
  %conv.i42 = sitofp i64 %sub.i41 to double
  %tv_usec.i43 = getelementptr inbounds %struct.timeval, %struct.timeval* %end6, i64 0, i32 1
  %13 = load i64, i64* %tv_usec.i43, align 8, !tbaa !187
  %tv_usec2.i44 = getelementptr inbounds %struct.timeval, %struct.timeval* %start5, i64 0, i32 1
  %14 = load i64, i64* %tv_usec2.i44, align 8, !tbaa !187
  %sub3.i45 = sub nsw i64 %13, %14
  %conv4.i46 = sitofp i64 %sub3.i45 to double
  %mul.i47 = fmul fast double %conv4.i46, 0x3EB0C6F7A0B5ED8D
  %add.i48 = fadd fast double %mul.i47, %conv.i42
  %conv5.i49 = fptrunc double %add.i48 to float
  %conv17 = fpext float %conv5.i49 to double
  %call19 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([28 x i8], [28 x i8]* @.str.86, i64 0, i64 0), double %conv17, double %10)
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %resa) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #3
  call void @_ZN5adept5StackD2Ev(%"class.adept::Stack"* nonnull dereferenceable(149) %stack) #3
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %8) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #3
  %15 = bitcast %struct.timeval* %start24 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %15) #3
  %16 = bitcast %struct.timeval* %end25 to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %16) #3
  %call26 = call i32 @gettimeofday(%struct.timeval* nonnull %start24, i8* null) #3
  %17 = load double, double* %inp.addr, align 8, !tbaa !43
  %18 = bitcast double* %xin.addr.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %18)
  %19 = bitcast %"class.adept::Active"* %agg.tmp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %19)
  store double %17, double* %xin.addr.i, align 8, !tbaa !43
  %20 = bitcast %"class.adept::Stack"* %stack.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 152, i8* nonnull %20) #3
  call void @_ZN5adept5StackC2Eb(%"class.adept::Stack"* nonnull dereferenceable(149) %stack.i, i1 zeroext true)
  %21 = bitcast %"class.adept::Active"* %x.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %21) #3
  invoke void @_ZN5adept6ActiveIdEC2IdEERKT_PNS_8internal9enable_ifIXsr17is_not_expressionIS3_EE5valueEvE4typeE(%"class.adept::Active"* nonnull dereferenceable(12) %x.i, double* nonnull align 8 dereferenceable(8) %xin.addr.i, i8* null)
          to label %invoke.cont.i unwind label %lpad.i

invoke.cont.i:                                    ; preds = %invoke.cont9
  %n_operations_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 0, i32 5
  store i32 0, i32* %n_operations_.i.i.i, align 8, !tbaa !74
  %n_statements_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 0, i32 3
  store i32 0, i32* %n_statements_.i.i.i, align 8, !tbaa !40
  %_M_start.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %22 = load i32*, i32** %_M_start.i.i.i.i, align 8, !tbaa !33
  %_M_finish.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 2, i32 0, i32 0, i32 0, i32 1
  %23 = load i32*, i32** %_M_finish.i.i.i.i.i, align 8, !tbaa !76
  %tobool.not.i.i.i.i.i = icmp eq i32* %23, %22
  br i1 %tobool.not.i.i.i.i.i, label %_ZN5adept5Stack18clear_independentsEv.exit.i.i, label %invoke.cont.i.i.i.i.i

invoke.cont.i.i.i.i.i:                            ; preds = %invoke.cont.i
  store i32* %22, i32** %_M_finish.i.i.i.i.i, align 8, !tbaa !76
  br label %_ZN5adept5Stack18clear_independentsEv.exit.i.i

_ZN5adept5Stack18clear_independentsEv.exit.i.i:   ; preds = %invoke.cont.i.i.i.i.i, %invoke.cont.i
  %_M_start.i.i4.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %24 = load i32*, i32** %_M_start.i.i4.i.i, align 8, !tbaa !33
  %_M_finish.i.i.i5.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 3, i32 0, i32 0, i32 0, i32 1
  %25 = load i32*, i32** %_M_finish.i.i.i5.i.i, align 8, !tbaa !76
  %tobool.not.i.i.i6.i.i = icmp eq i32* %25, %24
  br i1 %tobool.not.i.i.i6.i.i, label %_ZN5adept5Stack16clear_dependentsEv.exit.i.i, label %invoke.cont.i.i.i7.i.i

invoke.cont.i.i.i7.i.i:                           ; preds = %_ZN5adept5Stack18clear_independentsEv.exit.i.i
  store i32* %24, i32** %_M_finish.i.i.i5.i.i, align 8, !tbaa !76
  br label %_ZN5adept5Stack16clear_dependentsEv.exit.i.i

_ZN5adept5Stack16clear_dependentsEv.exit.i.i:     ; preds = %invoke.cont.i.i.i7.i.i, %_ZN5adept5Stack18clear_independentsEv.exit.i.i
  %gradients_initialized_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 10
  store i8 0, i8* %gradients_initialized_.i.i.i, align 8, !tbaa !39
  %i_gradient_.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 6
  %26 = load i32, i32* %i_gradient_.i.i, align 8, !tbaa !62
  %add.i.i = add nsw i32 %26, 1
  %max_gradient_.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 8
  store i32 %add.i.i, i32* %max_gradient_.i.i, align 8, !tbaa !63
  %n_allocated_statements_.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 0, i32 4
  %27 = load i32, i32* %n_allocated_statements_.i.i.i, align 4, !tbaa !73
  %cmp.not.i.i.i = icmp sgt i32 %27, 0
  br i1 %cmp.not.i.i.i, label %entry.if.end_crit_edge.i.i.i, label %if.then.i.i.i

entry.if.end_crit_edge.i.i.i:                     ; preds = %_ZN5adept5Stack16clear_dependentsEv.exit.i.i
  %statement_.phi.trans.insert.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %stack.i, i64 0, i32 0, i32 0
  %.pre.i.i.i = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.phi.trans.insert.i.i.i, align 8, !tbaa !35
  br label %invoke.cont2.i

if.then.i.i.i:                                    ; preds = %_ZN5adept5Stack16clear_dependentsEv.exit.i.i
  %mul.i.i.i.i = shl nsw i32 %27, 1
  %conv.i.i.i.i = sext i32 %mul.i.i.i.i to i64
  %28 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i.i.i.i, i64 8)
  %29 = extractvalue { i64, i1 } %28, 1
  %30 = extractvalue { i64, i1 } %28, 0
  %31 = select i1 %29, i64 -1, i64 %30
  %call.i.i.i5.i = invoke noalias nonnull i8* @_Znam(i64 %31) #33
          to label %call.i.i.i.noexc.i unwind label %lpad1.i

call.i.i.i.noexc.i:                               ; preds = %if.then.i.i.i
  %32 = bitcast %"class.adept::Stack"* %stack.i to i8**
  %33 = load i8*, i8** %32, align 8, !tbaa !35
  %isnull.i.i.i.i = icmp eq i8* %33, null
  br i1 %isnull.i.i.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i.i, label %delete.notnull.i.i.i.i

delete.notnull.i.i.i.i:                           ; preds = %call.i.i.i.noexc.i
  call void @_ZdaPv(i8* nonnull %33) #31
  %.pre7.pre.i.i.i = load i32, i32* %n_statements_.i.i.i, align 8, !tbaa !40
  %.pre.pre.i.i = load i32, i32* %n_operations_.i.i.i, align 8, !tbaa !74
  br label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i.i

_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i.i: ; preds = %delete.notnull.i.i.i.i, %call.i.i.i.noexc.i
  %.pre.i.i = phi i32 [ 0, %call.i.i.i.noexc.i ], [ %.pre.pre.i.i, %delete.notnull.i.i.i.i ]
  %.pre7.i.i.i = phi i32 [ 0, %call.i.i.i.noexc.i ], [ %.pre7.pre.i.i.i, %delete.notnull.i.i.i.i ]
  store i8* %call.i.i.i5.i, i8** %32, align 8, !tbaa !35
  store i32 %mul.i.i.i.i, i32* %n_allocated_statements_.i.i.i, align 4, !tbaa !73
  %34 = bitcast i8* %call.i.i.i5.i to %"struct.adept::internal::Statement"*
  br label %invoke.cont2.i

invoke.cont2.i:                                   ; preds = %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i.i, %entry.if.end_crit_edge.i.i.i
  %35 = phi i32 [ 0, %entry.if.end_crit_edge.i.i.i ], [ %.pre.i.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i.i ]
  %36 = phi i32 [ 0, %entry.if.end_crit_edge.i.i.i ], [ %.pre7.i.i.i, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i.i ]
  %37 = phi %"struct.adept::internal::Statement"* [ %.pre.i.i.i, %entry.if.end_crit_edge.i.i.i ], [ %34, %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i.i.i ]
  %idxprom.i.i.i = sext i32 %36 to i64
  %index.i.i.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %37, i64 %idxprom.i.i.i, i32 0
  store i32 -1, i32* %index.i.i.i, align 4, !tbaa !41
  %inc.i.i.i = add nsw i32 %36, 1
  store i32 %inc.i.i.i, i32* %n_statements_.i.i.i, align 8, !tbaa !40
  %end_plus_one.i.i.i = getelementptr inbounds %"struct.adept::internal::Statement", %"struct.adept::internal::Statement"* %37, i64 %idxprom.i.i.i, i32 1
  store i32 %35, i32* %end_plus_one.i.i.i, align 4, !tbaa !45
  %38 = bitcast %"class.adept::Active"* %y.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 16, i8* nonnull %38) #3
  invoke void @_ZN5adept6ActiveIdEC2ERKS1_(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp.i, %"class.adept::Active"* nonnull align 8 dereferenceable(12) %x.i)
          to label %invoke.cont4.i unwind label %lpad3.i

invoke.cont4.i:                                   ; preds = %invoke.cont2.i
  invoke void @_Z7afoobarN5adept6ActiveIdEEm(%"class.adept::Active"* nonnull sret(%"class.adept::Active") align 8 %y.i, %"class.adept::Active"* nonnull %agg.tmp.i, i64 %iters)
          to label %invoke.cont6.i unwind label %lpad5.i

invoke.cont6.i:                                   ; preds = %invoke.cont4.i
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp.i) #3
  %39 = bitcast double* %ref.tmp.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %39) #3
  store double 1.000000e+00, double* %ref.tmp.i, align 8, !tbaa !43
  %40 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %gradient_index_.i.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %y.i, i64 0, i32 1
  %41 = load i32, i32* %gradient_index_.i.i, align 8, !tbaa !163
  %add.i6.i = add nsw i32 %41, 1
  invoke void @_ZN5adept5Stack13set_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPKS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %40, i32 %41, i32 %add.i6.i, double* nonnull %ref.tmp.i)
          to label %invoke.cont8.i unwind label %lpad7.i

invoke.cont8.i:                                   ; preds = %invoke.cont6.i
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39) #3
  invoke void @_ZN5adept5Stack15compute_adjointEv(%"class.adept::Stack"* nonnull dereferenceable(149) %stack.i)
          to label %invoke.cont10.i unwind label %lpad9.i

invoke.cont10.i:                                  ; preds = %invoke.cont8.i
  %42 = bitcast double* %gradient.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %42) #3
  store double 0.000000e+00, double* %gradient.i.i, align 8, !tbaa !43
  %43 = load %"class.adept::Stack"*, %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE, align 8, !tbaa !26
  %gradient_index_.i7.i = getelementptr inbounds %"class.adept::Active", %"class.adept::Active"* %x.i, i64 0, i32 1
  %44 = load i32, i32* %gradient_index_.i7.i, align 8, !tbaa !163
  %add.i8.i = add nsw i32 %44, 1
  invoke void @_ZNK5adept5Stack13get_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %43, i32 %44, i32 %add.i8.i, double* nonnull %gradient.i.i)
          to label %_ZL20afoobar_and_gradientdRdm.exit unwind label %lpad9.i

lpad.i:                                           ; preds = %invoke.cont9
  %45 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup16.i

lpad1.i:                                          ; preds = %if.then.i.i.i
  %46 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup15.i

lpad3.i:                                          ; preds = %invoke.cont2.i
  %47 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup14.i

lpad5.i:                                          ; preds = %invoke.cont4.i
  %48 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp.i) #3
  br label %ehcleanup14.i

lpad7.i:                                          ; preds = %invoke.cont6.i
  %49 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %39) #3
  br label %ehcleanup.i

lpad9.i:                                          ; preds = %invoke.cont10.i, %invoke.cont8.i
  %50 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup.i

ehcleanup.i:                                      ; preds = %lpad9.i, %lpad7.i
  %.pn.i = phi { i8*, i32 } [ %50, %lpad9.i ], [ %49, %lpad7.i ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %y.i) #3
  br label %ehcleanup14.i

ehcleanup14.i:                                    ; preds = %ehcleanup.i, %lpad5.i, %lpad3.i
  %.pn.pn.i = phi { i8*, i32 } [ %.pn.i, %ehcleanup.i ], [ %48, %lpad5.i ], [ %47, %lpad3.i ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %38) #3
  br label %ehcleanup15.i

ehcleanup15.i:                                    ; preds = %ehcleanup14.i, %lpad1.i
  %.pn.pn.pn.i = phi { i8*, i32 } [ %.pn.pn.i, %ehcleanup14.i ], [ %46, %lpad1.i ]
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %x.i) #3
  br label %ehcleanup16.i

ehcleanup16.i:                                    ; preds = %ehcleanup15.i, %lpad.i
  %.pn.pn.pn.pn.i = phi { i8*, i32 } [ %.pn.pn.pn.i, %ehcleanup15.i ], [ %45, %lpad.i ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #3
  call void @_ZN5adept5StackD2Ev(%"class.adept::Stack"* nonnull dereferenceable(149) %stack.i) #3
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %20) #3
  resume { i8*, i32 } %.pn.pn.pn.pn.i

_ZL20afoobar_and_gradientdRdm.exit:               ; preds = %invoke.cont10.i
  %51 = load double, double* %gradient.i.i, align 8, !tbaa !43
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %42) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %y.i) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %38) #3
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %x.i) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %21) #3
  call void @_ZN5adept5StackD2Ev(%"class.adept::Stack"* nonnull dereferenceable(149) %stack.i) #3
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %20) #3
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %18)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %19)
  %call28 = call i32 @gettimeofday(%struct.timeval* nonnull %end25, i8* null) #3
  %tv_sec.i50 = getelementptr inbounds %struct.timeval, %struct.timeval* %end25, i64 0, i32 0
  %52 = load i64, i64* %tv_sec.i50, align 8, !tbaa !185
  %tv_sec1.i51 = getelementptr inbounds %struct.timeval, %struct.timeval* %start24, i64 0, i32 0
  %53 = load i64, i64* %tv_sec1.i51, align 8, !tbaa !185
  %sub.i52 = sub nsw i64 %52, %53
  %conv.i53 = sitofp i64 %sub.i52 to double
  %tv_usec.i54 = getelementptr inbounds %struct.timeval, %struct.timeval* %end25, i64 0, i32 1
  %54 = load i64, i64* %tv_usec.i54, align 8, !tbaa !187
  %tv_usec2.i55 = getelementptr inbounds %struct.timeval, %struct.timeval* %start24, i64 0, i32 1
  %55 = load i64, i64* %tv_usec2.i55, align 8, !tbaa !187
  %sub3.i56 = sub nsw i64 %54, %55
  %conv4.i57 = sitofp i64 %sub3.i56 to double
  %mul.i58 = fmul fast double %conv4.i57, 0x3EB0C6F7A0B5ED8D
  %add.i59 = fadd fast double %mul.i58, %conv.i53
  %conv5.i60 = fptrunc double %add.i59 to float
  %conv30 = fpext float %conv5.i60 to double
  %call31 = call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([30 x i8], [30 x i8]* @.str.87, i64 0, i64 0), double %conv30, double %51)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %16) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %15) #3
  ret void

lpad:                                             ; preds = %entry
  %56 = landingpad { i8*, i32 }
          cleanup
  br label %ehcleanup

lpad8:                                            ; preds = %invoke.cont
  %57 = landingpad { i8*, i32 }
          cleanup
  call void @_ZN5adept6ActiveIdED2Ev(%"class.adept::Active"* nonnull dereferenceable(12) %agg.tmp) #3
  br label %ehcleanup

ehcleanup:                                        ; preds = %lpad8, %lpad
  %.pn = phi { i8*, i32 } [ %57, %lpad8 ], [ %56, %lpad ]
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %9) #3
  call void @_ZN5adept5StackD2Ev(%"class.adept::Stack"* nonnull dereferenceable(149) %stack) #3
  call void @llvm.lifetime.end.p0i8(i64 152, i8* nonnull %8) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %7) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #3
  resume { i8*, i32 } %.pn
}

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @gettimeofday(%struct.timeval* nocapture noundef, i8* nocapture noundef) local_unnamed_addr #18

; Function Attrs: nofree nounwind
declare dso_local noundef i32 @printf(i8* nocapture noundef readonly, ...) local_unnamed_addr #18

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept5StackC2Eb(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i1 zeroext %activate_immediately) unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
entry:
  %gap_list_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4
  %0 = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0
  %_M_prev.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 0, i32 1
  %1 = bitcast %"class.adept::Stack"* %this to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(96) %1, i8 0, i64 96, i1 false)
  store %"struct.std::__detail::_List_node_base"* %0, %"struct.std::__detail::_List_node_base"** %_M_prev.i.i.i.i.i, align 8, !tbaa !65
  %_M_next.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::list", %"class.std::__cxx11::list"* %gap_list_, i64 0, i32 0, i32 0, i32 0, i32 0, i32 0
  store %"struct.std::__detail::_List_node_base"* %0, %"struct.std::__detail::_List_node_base"** %_M_next.i.i.i.i.i, align 8, !tbaa !28
  %_M_size.i.i.i.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 4, i32 0, i32 0, i32 0, i32 1
  store i64 0, i64* %_M_size.i.i.i.i.i, align 8, !tbaa !188
  %coerce.dive = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 5, i32 0
  store %"struct.std::__detail::_List_node_base"* %0, %"struct.std::__detail::_List_node_base"** %coerce.dive, align 8
  %i_gradient_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 6
  %is_recording_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 12
  %2 = bitcast i32* %i_gradient_ to i8*
  call void @llvm.memset.p0i8.i64(i8* nonnull align 8 dereferenceable(18) %2, i8 0, i64 18, i1 false)
  store i8 1, i8* %is_recording_, align 2, !tbaa !72
  %have_openmp_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 13
  store i8 0, i8* %have_openmp_, align 1, !tbaa !189
  %openmp_manually_disabled_ = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 14
  store i8 0, i8* %openmp_manually_disabled_, align 4, !tbaa !190
  %call.i12 = invoke noalias nonnull dereferenceable(8388608) i8* @_Znam(i64 8388608) #33
          to label %call.i.noexc unwind label %lpad

call.i.noexc:                                     ; preds = %entry
  %multiplier_.i10 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %3 = bitcast double** %multiplier_.i10 to i8**
  store i8* %call.i12, i8** %3, align 8, !tbaa !37
  %call3.i13 = invoke noalias nonnull dereferenceable(4194304) i8* @_Znam(i64 4194304) #33
          to label %call3.i.noexc unwind label %lpad

call3.i.noexc:                                    ; preds = %call.i.noexc
  %index_.i11 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %4 = bitcast i32** %index_.i11 to i8**
  store i8* %call3.i13, i8** %4, align 8, !tbaa !38
  %n_allocated_operations_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 6
  store i32 1048576, i32* %n_allocated_operations_.i, align 4, !tbaa !75
  %call5.i14 = invoke noalias nonnull dereferenceable(8388608) i8* @_Znam(i64 8388608) #33
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

while.body.i.i:                                   ; preds = %while.body.i.i, %lpad
  %__cur.013.i.i = phi %"struct.std::__detail::_List_node_base"* [ %8, %while.body.i.i ], [ %7, %lpad ]
  %_M_next4.i.i = getelementptr inbounds %"struct.std::__detail::_List_node_base", %"struct.std::__detail::_List_node_base"* %__cur.013.i.i, i64 0, i32 0
  %8 = load %"struct.std::__detail::_List_node_base"*, %"struct.std::__detail::_List_node_base"** %_M_next4.i.i, align 8, !tbaa !28
  %9 = bitcast %"struct.std::__detail::_List_node_base"* %__cur.013.i.i to i8*
  tail call void @_ZdlPv(i8* %9) #3
  %cmp.not.i.i = icmp eq %"struct.std::__detail::_List_node_base"* %8, %0
  br i1 %cmp.not.i.i, label %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit, label %while.body.i.i, !llvm.loop !30

_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit: ; preds = %while.body.i.i, %lpad
  %_M_start.i.i6 = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 3, i32 0, i32 0, i32 0, i32 0
  %10 = load i32*, i32** %_M_start.i.i6, align 8, !tbaa !33
  %tobool.not.i.i.i7 = icmp eq i32* %10, null
  br i1 %tobool.not.i.i.i7, label %_ZNSt6vectorIiSaIiEED2Ev.exit9, label %if.then.i.i.i8

if.then.i.i.i8:                                   ; preds = %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit
  %11 = bitcast i32* %10 to i8*
  tail call void @_ZdlPv(i8* nonnull %11) #3
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit9

_ZNSt6vectorIiSaIiEED2Ev.exit9:                   ; preds = %if.then.i.i.i8, %_ZNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EED2Ev.exit
  %_M_start.i.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 2, i32 0, i32 0, i32 0, i32 0
  %12 = load i32*, i32** %_M_start.i.i, align 8, !tbaa !33
  %tobool.not.i.i.i = icmp eq i32* %12, null
  br i1 %tobool.not.i.i.i, label %_ZNSt6vectorIiSaIiEED2Ev.exit, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit9
  %13 = bitcast i32* %12 to i8*
  tail call void @_ZdlPv(i8* nonnull %13) #3
  br label %_ZNSt6vectorIiSaIiEED2Ev.exit

_ZNSt6vectorIiSaIiEED2Ev.exit:                    ; preds = %if.then.i.i.i, %_ZNSt6vectorIiSaIiEED2Ev.exit9
  %statement_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 0
  %14 = load %"struct.adept::internal::Statement"*, %"struct.adept::internal::Statement"** %statement_.i, align 8, !tbaa !35
  %tobool.not.i = icmp eq %"struct.adept::internal::Statement"* %14, null
  br i1 %tobool.not.i, label %if.end.i, label %delete.notnull.i

delete.notnull.i:                                 ; preds = %_ZNSt6vectorIiSaIiEED2Ev.exit
  %15 = bitcast %"struct.adept::internal::Statement"* %14 to i8*
  tail call void @_ZdaPv(i8* %15) #31
  br label %if.end.i

if.end.i:                                         ; preds = %delete.notnull.i, %_ZNSt6vectorIiSaIiEED2Ev.exit
  %multiplier_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 1
  %16 = load double*, double** %multiplier_.i, align 8, !tbaa !37
  %tobool3.not.i = icmp eq double* %16, null
  br i1 %tobool3.not.i, label %if.end9.i, label %delete.notnull7.i

delete.notnull7.i:                                ; preds = %if.end.i
  %17 = bitcast double* %16 to i8*
  tail call void @_ZdaPv(i8* %17) #31
  br label %if.end9.i

if.end9.i:                                        ; preds = %delete.notnull7.i, %if.end.i
  %index_.i = getelementptr inbounds %"class.adept::Stack", %"class.adept::Stack"* %this, i64 0, i32 0, i32 2
  %18 = load i32*, i32** %index_.i, align 8, !tbaa !38
  %tobool10.not.i = icmp eq i32* %18, null
  br i1 %tobool10.not.i, label %_ZN5adept8internal16StackStorageOrigD2Ev.exit, label %delete.notnull14.i

delete.notnull14.i:                               ; preds = %if.end9.i
  %19 = bitcast i32* %18 to i8*
  tail call void @_ZdaPv(i8* %19) #31
  br label %_ZN5adept8internal16StackStorageOrigD2Ev.exit

_ZN5adept8internal16StackStorageOrigD2Ev.exit:    ; preds = %delete.notnull14.i, %if.end9.i
  resume { i8*, i32 } %6

if.end:                                           ; preds = %if.then, %invoke.cont3
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept5Stack13set_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPKS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i32 %start, i32 %end_plus_one, double* %gradient) local_unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  tail call void @_ZdaPv(i8* %4) #31
  %.pre.i = load i32, i32* %max_gradient_.i, align 8, !tbaa !63
  br label %if.end11.i

if.end11.i:                                       ; preds = %delete.notnull.i, %if.then4.i
  %5 = phi i32 [ %.pre.i, %delete.notnull.i ], [ %1, %if.then4.i ]
  %conv.i = sext i32 %5 to i64
  %6 = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %conv.i, i64 8)
  %7 = extractvalue { i64, i1 } %6, 1
  %8 = extractvalue { i64, i1 } %6, 0
  %9 = select i1 %7, i64 -1, i64 %8
  %call.i = tail call noalias nonnull i8* @_Znam(i64 %9) #33
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
  br label %for.body

if.then2:                                         ; preds = %if.end
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %19 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %19) #3
  %20 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %21 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %20, %union.anon** %21, align 8, !tbaa !2
  %22 = bitcast %union.anon* %20 to i8*
  %23 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %23) #3
  store i64 98, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i23 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.then2
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i23, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %24 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %24, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(98) %call5.i.i.i10.i23, i8* nonnull align 1 dereferenceable(98) getelementptr inbounds ([99 x i8], [99 x i8]* @.str.89, i64 0, i64 0), i64 98, i1 false) #3
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %24, i64* %_M_string_length.i.i.i.i.i.i, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i23, i64 %24
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %23) #3
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception, i64 8
  %25 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %26 = getelementptr inbounds i8, i8* %exception, i64 24
  %27 = bitcast i8* %message_.i.i.i to i8**
  store i8* %26, i8** %27, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i.i24 = getelementptr inbounds i8, i8* %exception, i64 16
  %28 = bitcast i8* %_M_string_length.i.i.i.i.i.i24 to i64*
  store i64 0, i64* %28, align 8, !tbaa !7
  store i8 0, i8* %26, align 1, !tbaa !10
  %29 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21gradient_out_of_rangeE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %29, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %25, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont5 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc
  %30 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %29, align 8, !tbaa !17
  %31 = load i8*, i8** %27, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %31, %26
  br i1 %cmp.i.i.i.i.i, label %lpad4.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %31) #3
  br label %lpad4.body

invoke.cont5:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21gradient_out_of_rangeE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad4.body.thread

ehcleanup.thread:                                 ; preds = %if.then2
  %32 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #3
  br label %cleanup.action

lpad4.body:                                       ; preds = %if.then.i.i.i.i, %lpad.i
  %33 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %33) #3
  %34 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %34, %22
  br i1 %cmp.i.i.i, label %ehcleanup, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad4.body
  call void @_ZdlPv(i8* %34) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #3
  br label %cleanup.action

lpad4.body.thread:                                ; preds = %invoke.cont5
  %35 = landingpad { i8*, i32 }
          cleanup
  %36 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i37 = icmp eq i8* %36, %22
  br i1 %cmp.i.i.i37, label %ehcleanup.thread42, label %if.then.i.i

ehcleanup.thread42:                               ; preds = %lpad4.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad4.body.thread
  call void @_ZdlPv(i8* %36) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad4.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %19) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i.thread, %ehcleanup.thread
  %.pn28 = phi { i8*, i32 } [ %32, %ehcleanup.thread ], [ %30, %ehcleanup ], [ %30, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
  br label %eh.resume

for.cond.cleanup:                                 ; preds = %for.body, %for.cond.preheader
  ret void

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv33 = phi i64 [ %17, %for.body.lr.ph ], [ %indvars.iv.next34, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double, double* %gradient, i64 %indvars.iv
  %37 = load double, double* %arrayidx, align 8, !tbaa !43
  %arrayidx12 = getelementptr inbounds double, double* %16, i64 %indvars.iv33
  store double %37, double* %arrayidx12, align 8, !tbaa !43
  %indvars.iv.next34 = add nsw i64 %indvars.iv33, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !191

eh.resume:                                        ; preds = %cleanup.action, %if.then.i.i, %ehcleanup.thread42
  %.pn27 = phi { i8*, i32 } [ %.pn28, %cleanup.action ], [ %35, %if.then.i.i ], [ %35, %ehcleanup.thread42 ]
  resume { i8*, i32 } %.pn27

unreachable:                                      ; preds = %invoke.cont5
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK5adept5Stack13get_gradientsIdEENS_8internal9enable_ifIXsr8internal17is_floating_pointIT_EE5valueEvE4typeEiiPS4_(%"class.adept::Stack"* nonnull dereferenceable(149) %this, i32 %start, i32 %end_plus_one, double* %gradient) local_unnamed_addr #0 comdat align 2 personality i8* bitcast (i32 (...)* @__gxx_personality_v0 to i8*) {
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
  %exception = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %1 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %1) #3
  %2 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2
  %3 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp to %union.anon**
  store %union.anon* %2, %union.anon** %3, align 8, !tbaa !2
  %4 = bitcast %union.anon* %2 to i8*
  %5 = bitcast i64* %__dnew.i.i.i.i to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %5) #3
  store i64 106, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %call5.i.i.i10.i42 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i, i64 0)
          to label %call5.i.i.i10.i.noexc unwind label %ehcleanup.thread

call5.i.i.i10.i.noexc:                            ; preds = %if.then
  %_M_p.i13.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i42, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %6 = load i64, i64* %__dnew.i.i.i.i, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 2, i32 0
  store i64 %6, i64* %_M_allocated_capacity.i.i.i.i.i, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(106) %call5.i.i.i10.i42, i8* nonnull align 1 dereferenceable(106) getelementptr inbounds ([107 x i8], [107 x i8]* @.str.27, i64 0, i64 0), i64 106, i1 false) #3
  %_M_string_length.i.i.i.i.i.i41 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp, i64 0, i32 1
  store i64 %6, i64* %_M_string_length.i.i.i.i.i.i41, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i = getelementptr inbounds i8, i8* %call5.i.i.i10.i42, i64 %6
  store i8 0, i8* %arrayidx.i.i.i.i.i, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %5) #3
  %message_.i.i.i43 = getelementptr inbounds i8, i8* %exception, i64 8
  %7 = bitcast i8* %message_.i.i.i43 to %"class.std::__cxx11::basic_string"*
  %8 = getelementptr inbounds i8, i8* %exception, i64 24
  %9 = bitcast i8* %message_.i.i.i43 to i8**
  store i8* %8, i8** %9, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i.i44 = getelementptr inbounds i8, i8* %exception, i64 16
  %10 = bitcast i8* %_M_string_length.i.i.i.i.i.i44 to i64*
  store i64 0, i64* %10, align 8, !tbaa !7
  store i8 0, i8* %8, align 1, !tbaa !10
  %11 = bitcast i8* %exception to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept25gradients_not_initializedE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %11, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %7, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp)
          to label %invoke.cont4 unwind label %lpad.i48

lpad.i48:                                         ; preds = %call5.i.i.i10.i.noexc
  %12 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %11, align 8, !tbaa !17
  %13 = load i8*, i8** %9, align 8, !tbaa !11
  %cmp.i.i.i.i.i47 = icmp eq i8* %13, %8
  br i1 %cmp.i.i.i.i.i47, label %lpad3.body, label %if.then.i.i.i.i49

if.then.i.i.i.i49:                                ; preds = %lpad.i48
  call void @_ZdlPv(i8* %13) #3
  br label %lpad3.body

invoke.cont4:                                     ; preds = %call5.i.i.i10.i.noexc
  invoke void @__cxa_throw(i8* nonnull %exception, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept25gradients_not_initializedE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad3.body.thread

ehcleanup.thread:                                 ; preds = %if.then
  %14 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #3
  br label %cleanup.action

lpad3.body:                                       ; preds = %if.then.i.i.i.i49, %lpad.i48
  %15 = bitcast i8* %exception to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %15) #3
  %16 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i54 = icmp eq i8* %16, %4
  br i1 %cmp.i.i.i54, label %ehcleanup, label %if.then.i.i55.thread

if.then.i.i55.thread:                             ; preds = %lpad3.body
  call void @_ZdlPv(i8* %16) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #3
  br label %cleanup.action

lpad3.body.thread:                                ; preds = %invoke.cont4
  %17 = landingpad { i8*, i32 }
          cleanup
  %18 = load i8*, i8** %_M_p.i13.i.i.i.i, align 8, !tbaa !11
  %cmp.i.i.i5486 = icmp eq i8* %18, %4
  br i1 %cmp.i.i.i5486, label %ehcleanup.thread91, label %if.then.i.i55

ehcleanup.thread91:                               ; preds = %lpad3.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #3
  br label %eh.resume

if.then.i.i55:                                    ; preds = %lpad3.body.thread
  call void @_ZdlPv(i8* %18) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #3
  br label %eh.resume

ehcleanup:                                        ; preds = %lpad3.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %1) #3
  br label %cleanup.action

cleanup.action:                                   ; preds = %ehcleanup, %if.then.i.i55.thread, %ehcleanup.thread
  %.pn74 = phi { i8*, i32 } [ %14, %ehcleanup.thread ], [ %12, %ehcleanup ], [ %12, %if.then.i.i55.thread ]
  call void @__cxa_free_exception(i8* %exception) #3
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
  br label %for.body

if.then8:                                         ; preds = %if.end
  %exception9 = tail call i8* @__cxa_allocate_exception(i64 40) #3
  %23 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp10 to i8*
  call void @llvm.lifetime.start.p0i8(i64 32, i8* nonnull %23) #3
  %24 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp10, i64 0, i32 2
  %25 = bitcast %"class.std::__cxx11::basic_string"* %ref.tmp10 to %union.anon**
  store %union.anon* %24, %union.anon** %25, align 8, !tbaa !2
  %26 = bitcast %union.anon* %24 to i8*
  %27 = bitcast i64* %__dnew.i.i.i.i57 to i8*
  call void @llvm.lifetime.start.p0i8(i64 8, i8* nonnull %27) #3
  store i64 98, i64* %__dnew.i.i.i.i57, align 8, !tbaa !12
  %call5.i.i.i10.i70 = invoke i8* @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %ref.tmp10, i64* nonnull align 8 dereferenceable(8) %__dnew.i.i.i.i57, i64 0)
          to label %call5.i.i.i10.i.noexc69 unwind label %ehcleanup18.thread

call5.i.i.i10.i.noexc69:                          ; preds = %if.then8
  %_M_p.i13.i.i.i.i60 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp10, i64 0, i32 0, i32 0
  store i8* %call5.i.i.i10.i70, i8** %_M_p.i13.i.i.i.i60, align 8, !tbaa !11
  %28 = load i64, i64* %__dnew.i.i.i.i57, align 8, !tbaa !12
  %_M_allocated_capacity.i.i.i.i.i61 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp10, i64 0, i32 2, i32 0
  store i64 %28, i64* %_M_allocated_capacity.i.i.i.i.i61, align 8, !tbaa !10
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* nonnull align 1 dereferenceable(98) %call5.i.i.i10.i70, i8* nonnull align 1 dereferenceable(98) getelementptr inbounds ([99 x i8], [99 x i8]* @.str.89, i64 0, i64 0), i64 98, i1 false) #3
  %_M_string_length.i.i.i.i.i.i67 = getelementptr inbounds %"class.std::__cxx11::basic_string", %"class.std::__cxx11::basic_string"* %ref.tmp10, i64 0, i32 1
  store i64 %28, i64* %_M_string_length.i.i.i.i.i.i67, align 8, !tbaa !7
  %arrayidx.i.i.i.i.i68 = getelementptr inbounds i8, i8* %call5.i.i.i10.i70, i64 %28
  store i8 0, i8* %arrayidx.i.i.i.i.i68, align 1, !tbaa !10
  call void @llvm.lifetime.end.p0i8(i64 8, i8* nonnull %27) #3
  %message_.i.i.i = getelementptr inbounds i8, i8* %exception9, i64 8
  %29 = bitcast i8* %message_.i.i.i to %"class.std::__cxx11::basic_string"*
  %30 = getelementptr inbounds i8, i8* %exception9, i64 24
  %31 = bitcast i8* %message_.i.i.i to i8**
  store i8* %30, i8** %31, align 8, !tbaa !2
  %_M_string_length.i.i.i.i.i.i = getelementptr inbounds i8, i8* %exception9, i64 16
  %32 = bitcast i8* %_M_string_length.i.i.i.i.i.i to i64*
  store i64 0, i64* %32, align 8, !tbaa !7
  store i8 0, i8* %30, align 1, !tbaa !10
  %33 = bitcast i8* %exception9 to i32 (...)***
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept21gradient_out_of_rangeE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %33, align 8, !tbaa !17
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(%"class.std::__cxx11::basic_string"* nonnull dereferenceable(32) %29, %"class.std::__cxx11::basic_string"* nonnull align 8 dereferenceable(32) %ref.tmp10)
          to label %invoke.cont15 unwind label %lpad.i

lpad.i:                                           ; preds = %call5.i.i.i10.i.noexc69
  %34 = landingpad { i8*, i32 }
          cleanup
  store i32 (...)** bitcast (i8** getelementptr inbounds ({ [5 x i8*] }, { [5 x i8*] }* @_ZTVN5adept9exceptionE, i64 0, inrange i32 0, i64 2) to i32 (...)**), i32 (...)*** %33, align 8, !tbaa !17
  %35 = load i8*, i8** %31, align 8, !tbaa !11
  %cmp.i.i.i.i.i = icmp eq i8* %35, %30
  br i1 %cmp.i.i.i.i.i, label %lpad14.body, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %lpad.i
  call void @_ZdlPv(i8* %35) #3
  br label %lpad14.body

invoke.cont15:                                    ; preds = %call5.i.i.i10.i.noexc69
  invoke void @__cxa_throw(i8* nonnull %exception9, i8* bitcast ({ i8*, i8*, i8* }* @_ZTIN5adept21gradient_out_of_rangeE to i8*), i8* bitcast (void (%"class.adept::exception"*)* @_ZN5adept9exceptionD2Ev to i8*)) #30
          to label %unreachable unwind label %lpad14.body.thread

ehcleanup18.thread:                               ; preds = %if.then8
  %36 = landingpad { i8*, i32 }
          cleanup
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %23) #3
  br label %cleanup.action23

lpad14.body:                                      ; preds = %if.then.i.i.i.i, %lpad.i
  %37 = bitcast i8* %exception9 to %"class.std::exception"*
  call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %37) #3
  %38 = load i8*, i8** %_M_p.i13.i.i.i.i60, align 8, !tbaa !11
  %cmp.i.i.i = icmp eq i8* %38, %26
  br i1 %cmp.i.i.i, label %ehcleanup18, label %if.then.i.i.thread

if.then.i.i.thread:                               ; preds = %lpad14.body
  call void @_ZdlPv(i8* %38) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %23) #3
  br label %cleanup.action23

lpad14.body.thread:                               ; preds = %invoke.cont15
  %39 = landingpad { i8*, i32 }
          cleanup
  %40 = load i8*, i8** %_M_p.i13.i.i.i.i60, align 8, !tbaa !11
  %cmp.i.i.i96 = icmp eq i8* %40, %26
  br i1 %cmp.i.i.i96, label %ehcleanup18.thread101, label %if.then.i.i

ehcleanup18.thread101:                            ; preds = %lpad14.body.thread
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %23) #3
  br label %eh.resume

if.then.i.i:                                      ; preds = %lpad14.body.thread
  call void @_ZdlPv(i8* %40) #3
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %23) #3
  br label %eh.resume

ehcleanup18:                                      ; preds = %lpad14.body
  call void @llvm.lifetime.end.p0i8(i64 32, i8* nonnull %23) #3
  br label %cleanup.action23

cleanup.action23:                                 ; preds = %ehcleanup18, %if.then.i.i.thread, %ehcleanup18.thread
  %.pn3877 = phi { i8*, i32 } [ %36, %ehcleanup18.thread ], [ %34, %ehcleanup18 ], [ %34, %if.then.i.i.thread ]
  call void @__cxa_free_exception(i8* %exception9) #3
  br label %eh.resume

for.cond.cleanup:                                 ; preds = %for.body, %for.cond.preheader
  ret void

for.body:                                         ; preds = %for.body, %for.body.lr.ph
  %indvars.iv82 = phi i64 [ %21, %for.body.lr.ph ], [ %indvars.iv.next83, %for.body ]
  %indvars.iv = phi i64 [ 0, %for.body.lr.ph ], [ %indvars.iv.next, %for.body ]
  %arrayidx = getelementptr inbounds double, double* %20, i64 %indvars.iv82
  %41 = load double, double* %arrayidx, align 8, !tbaa !43
  %arrayidx28 = getelementptr inbounds double, double* %gradient, i64 %indvars.iv
  store double %41, double* %arrayidx28, align 8, !tbaa !43
  %indvars.iv.next83 = add nsw i64 %indvars.iv82, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %for.cond.cleanup, label %for.body, !llvm.loop !192

eh.resume:                                        ; preds = %cleanup.action23, %if.then.i.i, %ehcleanup18.thread101, %cleanup.action, %if.then.i.i55, %ehcleanup.thread91
  %.pn38.pn = phi { i8*, i32 } [ %.pn3877, %cleanup.action23 ], [ %.pn74, %cleanup.action ], [ %17, %if.then.i.i55 ], [ %39, %if.then.i.i ], [ %17, %ehcleanup.thread91 ], [ %39, %ehcleanup18.thread101 ]
  resume { i8*, i32 } %.pn38.pn

unreachable:                                      ; preds = %invoke.cont15, %invoke.cont4
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN5adept21gradient_out_of_rangeD0Ev(%"class.adept::invalid_operation"* nonnull dereferenceable(40) %this) unnamed_addr #8 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
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
  tail call void @_ZdlPv(i8* %1) #3
  br label %_ZN5adept9exceptionD2Ev.exit

_ZN5adept9exceptionD2Ev.exit:                     ; preds = %if.then.i.i.i, %entry
  %3 = getelementptr inbounds %"class.adept::invalid_operation", %"class.adept::invalid_operation"* %this, i64 0, i32 0, i32 0, i32 0
  tail call void @_ZNSt9exceptionD2Ev(%"class.std::exception"* nonnull dereferenceable(8) %3) #3
  %4 = bitcast %"class.adept::invalid_operation"* %this to i8*
  tail call void @_ZdlPv(i8* nonnull %4) #31
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN5adept5Stack13new_recordingEv(%"class.adept::Stack"* nonnull dereferenceable(149) %this) local_unnamed_addr #0 comdat align 2 personality i32 (...)* @__gxx_personality_v0 {
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
  %call.i.i = tail call noalias nonnull i8* @_Znam(i64 %9) #33
  %10 = bitcast %"class.adept::Stack"* %this to i8**
  %11 = load i8*, i8** %10, align 8, !tbaa !35
  %isnull.i.i = icmp eq i8* %11, null
  br i1 %isnull.i.i, label %_ZN5adept8internal16StackStorageOrig20grow_statement_stackEi.exit.i, label %delete.notnull.i.i

delete.notnull.i.i:                               ; preds = %if.then.i
  tail call void @_ZdaPv(i8* nonnull %11) #31
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

; Function Attrs: uwtable willreturn
define weak_odr hidden %"class.adept::Stack"** @_ZTWN5adept21_stack_current_threadE() local_unnamed_addr #25 comdat {
  ret %"class.adept::Stack"** @_ZN5adept21_stack_current_threadE
}

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_ode.cpp() #0 section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitC1Ev(%"struct.adept::internal::EndIndex"* nonnull dereferenceable(1) @_ZStL8__ioinit.2)
  %0 = tail call i32 @atexit(void ()* nonnull @__dtor__ZStL8__ioinit.3) #3
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @__dtor__ZStL8__ioinit.3() #2 section ".text.startup" {
entry:
  tail call void @_ZNSt8ios_base4InitD1Ev(%"struct.adept::internal::EndIndex"* @_ZStL8__ioinit.2)
  ret void
}

; Function Attrs: nofree norecurse nounwind uwtable willreturn mustprogress
define dso_local void @_Z6lorenzRKN5boost5arrayIdLm1EEERS1_d(%"class.boost::array.1"* nocapture nonnull readonly align 8 dereferenceable(8) %x, %"class.boost::array.1"* nocapture nonnull align 8 dereferenceable(8) %dxdt, double %t) local_unnamed_addr #26 {
entry:
  %arrayidx.i = getelementptr inbounds %"class.boost::array.1", %"class.boost::array.1"* %x, i64 0, i32 0, i64 0
  %0 = load double, double* %arrayidx.i, align 8, !tbaa !43
  %mul = fmul fast double %0, -1.200000e+00
  %arrayidx.i3 = getelementptr inbounds %"class.boost::array.1", %"class.boost::array.1"* %dxdt, i64 0, i32 0, i64 0
  store double %mul, double* %arrayidx.i3, align 8, !tbaa !43
  ret void
}

; Function Attrs: nounwind readnone uwtable
define dso_local double @_Z6foobardm(double %t, i64 %iters) #27 personality i32 (...)* @__gxx_personality_v0 {
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

while.body.i.i.i:                                 ; preds = %while.body.i.i.i, %while.body.i.i.i.preheader
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
  br i1 %retval.0.i.i.i.i, label %while.body.i.i.i, label %_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit, !llvm.loop !193

_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit: ; preds = %while.body.i.i.i, %entry
  %x.sroa.0.1 = phi double [ 1.000000e+00, %entry ], [ %0, %while.body.i.i.i ]
  ret double %x.sroa.0.1
}

; Function Attrs: norecurse uwtable
define dso_local i32 @main(i32 %argc, i8** nocapture readonly %argv) local_unnamed_addr #28 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %start.i = alloca %struct.timeval, align 8
  %end.i = alloca %struct.timeval, align 8
  %start5.i = alloca %struct.timeval, align 8
  %end6.i = alloca %struct.timeval, align 8
  %start14.i = alloca %struct.timeval, align 8
  %end15.i = alloca %struct.timeval, align 8
  %arrayidx = getelementptr inbounds i8*, i8** %argv, i64 1
  %0 = load i8*, i8** %arrayidx, align 8, !tbaa !26
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

for.body:                                         ; preds = %_ZL13enzyme_sincosdm.exit, %for.body.lr.ph
  %indvars.iv = phi i64 [ %7, %for.body.lr.ph ], [ %indvars.iv.next, %_ZL13enzyme_sincosdm.exit ]
  %9 = trunc i64 %indvars.iv to i32
  %call1 = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i32 %9)
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
  br i1 %retval.0.i.i.i.i.i.i, label %while.body.i.i.i.i.i, label %_Z6foobardm.exit.i, !llvm.loop !193

_Z6foobardm.exit.i:                               ; preds = %while.body.i.i.i.i.i, %for.body
  %x.sroa.0.1.i.i = phi double [ 1.000000e+00, %for.body ], [ %11, %while.body.i.i.i.i.i ]
  %call2.i = call i32 @gettimeofday(%struct.timeval* nonnull %end.i, i8* null) #3
  %12 = load i64, i64* %tv_sec.i38.i, align 8, !tbaa !185
  %13 = load i64, i64* %tv_sec1.i39.i, align 8, !tbaa !185
  %sub.i40.i = sub nsw i64 %12, %13
  %conv.i41.i = sitofp i64 %sub.i40.i to double
  %14 = load i64, i64* %tv_usec.i42.i, align 8, !tbaa !187
  %15 = load i64, i64* %tv_usec2.i43.i, align 8, !tbaa !187
  %sub3.i44.i = sub nsw i64 %14, %15
  %conv4.i45.i = sitofp i64 %sub3.i44.i to double
  %mul.i46.i = fmul fast double %conv4.i45.i, 0x3EB0C6F7A0B5ED8D
  %add.i47.i = fadd fast double %mul.i46.i, %conv.i41.i
  %conv5.i48.i = fptrunc double %add.i47.i to float
  %conv.i13 = fpext float %conv5.i48.i to double
  %call4.i = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3.7, i64 0, i64 0), double %conv.i13, double %x.sroa.0.1.i.i)
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
  br i1 %retval.0.i.i.i.i.i34.i, label %while.body.i.i.i.i35.i, label %_ZL13enzyme_sincosdm.exit, !llvm.loop !193

_ZL13enzyme_sincosdm.exit:                        ; preds = %while.body.i.i.i.i35.i, %_Z6foobardm.exit.i
  %x.sroa.0.1.i36.i = phi double [ 1.000000e+00, %_Z6foobardm.exit.i ], [ %16, %while.body.i.i.i.i35.i ]
  %call10.i = call i32 @gettimeofday(%struct.timeval* nonnull %end6.i, i8* null) #3
  %17 = load i64, i64* %tv_sec.i2.i, align 8, !tbaa !185
  %18 = load i64, i64* %tv_sec1.i3.i, align 8, !tbaa !185
  %sub.i4.i = sub nsw i64 %17, %18
  %conv.i5.i = sitofp i64 %sub.i4.i to double
  %19 = load i64, i64* %tv_usec.i6.i, align 8, !tbaa !187
  %20 = load i64, i64* %tv_usec2.i7.i, align 8, !tbaa !187
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
  %21 = call { double } @diffe_Z6foobardm(double 2.100000e+00, i64 %indvars.iv, double 1.000000e+00)
  %22 = extractvalue { double } %21, 0
  %call18.i = call i32 @gettimeofday(%struct.timeval* nonnull %end15.i, i8* null) #3
  %23 = load i64, i64* %tv_sec.i.i, align 8, !tbaa !185
  %24 = load i64, i64* %tv_sec1.i.i, align 8, !tbaa !185
  %sub.i.i = sub nsw i64 %23, %24
  %conv.i1.i = sitofp i64 %sub.i.i to double
  %25 = load i64, i64* %tv_usec.i.i, align 8, !tbaa !187
  %26 = load i64, i64* %tv_usec2.i.i, align 8, !tbaa !187
  %sub3.i.i = sub nsw i64 %25, %26
  %conv4.i.i = sitofp i64 %sub3.i.i to double
  %mul.i.i = fmul fast double %conv4.i.i, 0x3EB0C6F7A0B5ED8D
  %add.i.i = fadd fast double %mul.i.i, %conv.i1.i
  %conv5.i.i = fptrunc double %add.i.i to float
  %conv20.i = fpext float %conv5.i.i to double
  %call21.i = tail call i32 (i8*, ...) @printf(i8* nonnull dereferenceable(1) getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5.8, i64 0, i64 0), double %conv20.i, double %22)
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %6) #3
  call void @llvm.lifetime.end.p0i8(i64 16, i8* nonnull %5) #3
  %indvars.iv.next = add i64 %indvars.iv, %7
  %cmp.not = icmp sgt i64 %indvars.iv.next, %8
  br i1 %cmp.not, label %for.cond.cleanup, label %for.body, !llvm.loop !194
}

; Function Attrs: nofree nounwind willreturn
declare dso_local i64 @strtol(i8* readonly, i8** nocapture, i32) local_unnamed_addr #29

; Function Attrs: nounwind readnone uwtable
define internal { double } @diffe_Z6foobardm(double %t, i64 %iters, double %differeturn) #27 personality i32 (...)* @__gxx_personality_v0 {
entry:
  %"iv'ac" = alloca i64, align 8
  %loopLimit_cache = alloca i64, align 8
  %"x.sroa.0.1'de" = alloca double, align 8
  store double 0.000000e+00, double* %"x.sroa.0.1'de", align 8
  %"div'de" = alloca double, align 8
  store double 0.000000e+00, double* %"div'de", align 8
  %"t'de" = alloca double, align 8
  store double 0.000000e+00, double* %"t'de", align 8
  %"mul.i'de" = alloca double, align 8
  store double 0.000000e+00, double* %"mul.i'de", align 8
  %"'de" = alloca double, align 8
  store double 0.000000e+00, double* %"'de", align 8
  %"x.sroa.0.0'de" = alloca double, align 8
  store double 0.000000e+00, double* %"x.sroa.0.0'de", align 8
  %"mul2.i.i.i.i.i.i.i.i'de" = alloca double, align 8
  store double 0.000000e+00, double* %"mul2.i.i.i.i.i.i.i.i'de", align 8
  %x.sroa.0.0_cache = alloca double*, align 8
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
  store double* null, double** %x.sroa.0.0_cache, align 8
  br label %while.body.i.i.i

while.body.i.i.i:                                 ; preds = %__enzyme_exponentialallocation.exit, %while.body.i.i.i.preheader
  %iv = phi i64 [ %iv.next, %__enzyme_exponentialallocation.exit ], [ 0, %while.body.i.i.i.preheader ]
  %x.sroa.0.0 = phi double [ %16, %__enzyme_exponentialallocation.exit ], [ 1.000000e+00, %while.body.i.i.i.preheader ]
  %iv.next = add nuw nsw i64 %iv, 1
  %0 = load double*, double** %x.sroa.0.0_cache, align 8
  %1 = bitcast double* %0 to i8*
  %2 = and i64 %iv.next, 1
  %3 = icmp ne i64 %2, 0
  %4 = call i64 @llvm.ctpop.i64(i64 %iv.next) #3
  %5 = icmp ult i64 %4, 3
  %6 = and i1 %5, %3
  br i1 %6, label %grow.i, label %__enzyme_exponentialallocation.exit

grow.i:                                           ; preds = %while.body.i.i.i
  %7 = call i64 @llvm.ctlz.i64(i64 %iv.next, i1 true) #3
  %8 = sub nuw nsw i64 64, %7
  %9 = shl i64 8, %8
  %10 = call i8* @realloc(i8* %1, i64 %9) #3
  br label %__enzyme_exponentialallocation.exit

__enzyme_exponentialallocation.exit:              ; preds = %grow.i, %while.body.i.i.i
  %11 = phi i8* [ %10, %grow.i ], [ %1, %while.body.i.i.i ]
  %12 = bitcast i8* %11 to double*
  store double* %12, double** %x.sroa.0.0_cache, align 8
  %13 = load double*, double** %x.sroa.0.0_cache, align 8, !dereferenceable !195, !invariant.group !196
  %14 = getelementptr inbounds double, double* %13, i64 %iv
  store double %x.sroa.0.0, double* %14, align 8, !invariant.group !197, !write !198
  %15 = trunc i64 %iv to i32
  %mul2.i.i.i.i.i.i.i.i = fmul fast double %mul.i, %x.sroa.0.0
  %16 = fsub fast double %x.sroa.0.0, %mul2.i.i.i.i.i.i.i.i
  %inc.i.i.i = add nuw nsw i32 %15, 1
  %conv.i.i.i = sitofp i32 %inc.i.i.i to double
  %mul.i.i.i = fmul fast double %div, %conv.i.i.i
  %add.i.i.i = fadd fast double %mul.i.i.i, %div
  %sub.i.i.i.i = fsub fast double %add.i.i.i, %t
  %cmp2.i.i.i.i = fcmp fast ole double %sub.i.i.i.i, 0x3CB0000000000000
  %sub3.i.i.i.i = fsub fast double %t, %add.i.i.i
  %cmp5.i.i.i.i = fcmp fast ole double %sub3.i.i.i.i, 0x3CB0000000000000
  %retval.0.i.i.i.i = select i1 %cmp.i.i.i.i, i1 %cmp2.i.i.i.i, i1 %cmp5.i.i.i.i
  %17 = alloca i32, align 4, !size !199
  br i1 %retval.0.i.i.i.i, label %while.body.i.i.i, label %_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit.loopexit, !llvm.loop !193, !push_to_bin !199

_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit.loopexit: ; preds = %__enzyme_exponentialallocation.exit
  %18 = phi i64 [ %iv, %__enzyme_exponentialallocation.exit ]
  store i64 %18, i64* %loopLimit_cache, align 8, !invariant.group !200
  br label %_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit

_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit: ; preds = %_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit.loopexit, %entry
  br label %invert_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit

invertentry:                                      ; preds = %invert_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit, %invertwhile.body.i.i.i.preheader
  %19 = load double, double* %"div'de", align 8
  %d0diffet = fdiv fast double %19, %conv
  store double 0.000000e+00, double* %"div'de", align 8
  %20 = load double, double* %"t'de", align 8
  %21 = fadd fast double %20, %d0diffet
  store double %21, double* %"t'de", align 8
  %22 = load double, double* %"t'de", align 8
  %23 = insertvalue { double } undef, double %22, 0
  ret { double } %23

invertwhile.body.i.i.i.preheader:                 ; preds = %invertwhile.body.i.i.i
  %24 = load double, double* %"mul.i'de", align 8
  %m0diffediv = fmul fast double %24, 1.200000e+00
  store double 0.000000e+00, double* %"mul.i'de", align 8
  %25 = load double, double* %"div'de", align 8
  %26 = fadd fast double %25, %m0diffediv
  store double %26, double* %"div'de", align 8
  %27 = load i64, i64* %"iv'ac", align 8
  %forfree = load double*, double** %x.sroa.0.0_cache, align 8, !dereferenceable !195, !invariant.group !196
  %28 = bitcast double* %forfree to i8*
  tail call void @free(i8* nonnull %28)
  br label %invertentry

invertwhile.body.i.i.i:                           ; preds = %mergeinvertwhile.body.i.i.i__ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit.loopexit, %incinvertwhile.body.i.i.i
  %29 = alloca i32, align 4, !size !199, !pop_from_bin !199
  %30 = load double, double* %"'de", align 8, !pop_from_bin !199
  %31 = fneg fast double %30
  store double 0.000000e+00, double* %"'de", align 8
  %32 = load double, double* %"x.sroa.0.0'de", align 8
  %33 = fadd fast double %32, %30
  store double %33, double* %"x.sroa.0.0'de", align 8
  %34 = load double, double* %"mul2.i.i.i.i.i.i.i.i'de", align 8
  %35 = fadd fast double %34, %31
  store double %35, double* %"mul2.i.i.i.i.i.i.i.i'de", align 8
  %36 = load double, double* %"mul2.i.i.i.i.i.i.i.i'de", align 8
  %37 = load i64, i64* %"iv'ac", align 8
  %38 = load double*, double** %x.sroa.0.0_cache, align 8, !dereferenceable !195, !invariant.group !196
  %39 = load i64, i64* %"iv'ac", align 8
  %40 = getelementptr inbounds double, double* %38, i64 %39
  %41 = load double, double* %40, align 8, !invariant.group !197
  %m0diffemul.i = fmul fast double %36, %41, !read_from_bin !199, !operand1 !198
  %42 = load i64, i64* %"iv'ac", align 8
  %mul.i_unwrap = fmul fast double %div, 1.200000e+00
  %m1diffex.sroa.0.0 = fmul fast double %36, %mul.i_unwrap
  store double 0.000000e+00, double* %"mul2.i.i.i.i.i.i.i.i'de", align 8
  %43 = load double, double* %"mul.i'de", align 8
  %44 = fadd fast double %43, %m0diffemul.i
  store double %44, double* %"mul.i'de", align 8
  %45 = load double, double* %"x.sroa.0.0'de", align 8
  %46 = fadd fast double %45, %m1diffex.sroa.0.0
  store double %46, double* %"x.sroa.0.0'de", align 8
  %47 = load double, double* %"x.sroa.0.0'de", align 8
  store double 0.000000e+00, double* %"x.sroa.0.0'de", align 8
  %48 = load i64, i64* %"iv'ac", align 8
  %49 = icmp eq i64 %48, 0
  %50 = xor i1 %49, true
  %51 = select fast i1 %50, double %47, double 0.000000e+00
  %52 = load double, double* %"'de", align 8
  %53 = fadd fast double %52, %47
  %54 = select fast i1 %49, double %52, double %53
  store double %54, double* %"'de", align 8
  br i1 %49, label %invertwhile.body.i.i.i.preheader, label %incinvertwhile.body.i.i.i

incinvertwhile.body.i.i.i:                        ; preds = %invertwhile.body.i.i.i
  %55 = load i64, i64* %"iv'ac", align 8
  %56 = add nsw i64 %55, -1
  store i64 %56, i64* %"iv'ac", align 8
  br label %invertwhile.body.i.i.i

invert_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit.loopexit: ; preds = %invert_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit
  %57 = load i64, i64* %loopLimit_cache, align 8, !invariant.group !200
  br label %mergeinvertwhile.body.i.i.i__ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit.loopexit

mergeinvertwhile.body.i.i.i__ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit.loopexit: ; preds = %invert_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit.loopexit
  store i64 %57, i64* %"iv'ac", align 8
  br label %invertwhile.body.i.i.i

invert_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit: ; preds = %_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit
  store double %differeturn, double* %"x.sroa.0.1'de", align 8
  %58 = load double, double* %"x.sroa.0.1'de", align 8
  store double 0.000000e+00, double* %"x.sroa.0.1'de", align 8
  %59 = select fast i1 %retval.0.i25.i.i.i, double %58, double 0.000000e+00
  %60 = load double, double* %"'de", align 8
  %61 = fadd fast double %60, %58
  %62 = select fast i1 %retval.0.i25.i.i.i, double %61, double %60
  store double %62, double* %"'de", align 8
  br i1 %retval.0.i25.i.i.i, label %invert_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit.loopexit, label %invertentry
}

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctpop.i64(i64) #12

; Function Attrs: nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #12

declare i8* @realloc(i8*, i64)

; Function Attrs: nounwind readnone uwtable
define dso_local double @preprocess__Z6foobardm(double %t, i64 %iters) #27 personality i32 (...)* @__gxx_personality_v0 {
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

while.body.i.i.i:                                 ; preds = %while.body.i.i.i, %while.body.i.i.i.preheader
  %tiv = phi i64 [ %tiv.next, %while.body.i.i.i ], [ 0, %while.body.i.i.i.preheader ]
  %x.sroa.0.0 = phi double [ %1, %while.body.i.i.i ], [ 1.000000e+00, %while.body.i.i.i.preheader ]
  %0 = trunc i64 %tiv to i32
  %tiv.next = add nuw nsw i64 %tiv, 1
  %mul2.i.i.i.i.i.i.i.i = fmul fast double %mul.i, %x.sroa.0.0
  %1 = fsub fast double %x.sroa.0.0, %mul2.i.i.i.i.i.i.i.i
  %inc.i.i.i = add nuw nsw i32 %0, 1
  %conv.i.i.i = sitofp i32 %inc.i.i.i to double
  %mul.i.i.i = fmul fast double %div, %conv.i.i.i
  %add.i.i.i = fadd fast double %mul.i.i.i, %div
  %sub.i.i.i.i = fsub fast double %add.i.i.i, %t
  %cmp2.i.i.i.i = fcmp fast ole double %sub.i.i.i.i, 0x3CB0000000000000
  %sub3.i.i.i.i = fsub fast double %t, %add.i.i.i
  %cmp5.i.i.i.i = fcmp fast ole double %sub3.i.i.i.i, 0x3CB0000000000000
  %retval.0.i.i.i.i = select i1 %cmp.i.i.i.i, i1 %cmp2.i.i.i.i, i1 %cmp5.i.i.i.i
  br i1 %retval.0.i.i.i.i, label %while.body.i.i.i, label %_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit.loopexit, !llvm.loop !193

_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit.loopexit: ; preds = %while.body.i.i.i
  br label %_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit

_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit: ; preds = %_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit.loopexit, %entry
  %x.sroa.0.1 = phi double [ 1.000000e+00, %entry ], [ %1, %_ZN5boost7numeric6odeint15integrate_constINS1_5eulerINS_5arrayIdLm1EEEdS5_dNS1_13array_algebraENS1_18default_operationsENS1_17initially_resizerEEEPFvRKS5_RS5_dES5_dEEmT_T0_RT1_T2_SJ_SJ_.exit.loopexit ]
  ret double %x.sroa.0.1
}

attributes #0 = { uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #1 = { "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #2 = { nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { argmemonly nofree nosync nounwind willreturn }
attributes #5 = { nobuiltin nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #6 = { nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #7 = { nounwind uwtable willreturn mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #8 = { inlinehint nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #9 = { norecurse nounwind readnone uwtable willreturn mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #10 = { nobuiltin nofree allocsize(0) "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #11 = { uwtable mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #12 = { nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { argmemonly nofree nosync nounwind willreturn writeonly }
attributes #14 = { noreturn uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #15 = { nofree nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #16 = { nofree nounwind uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #17 = { uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="128" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #18 = { nofree nounwind "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #19 = { inaccessiblememonly nofree nosync nounwind willreturn }
attributes #20 = { inaccessiblemem_or_argmemonly nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #21 = { noreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #22 = { noinline noreturn nounwind }
attributes #23 = { inlinehint uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #24 = { argmemonly nofree nounwind readonly willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #25 = { uwtable willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #26 = { nofree norecurse nounwind uwtable willreturn mustprogress "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #27 = { nounwind readnone uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #28 = { norecurse uwtable "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="true" "no-jump-tables"="false" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #29 = { nofree nounwind willreturn "denormal-fp-math"="preserve-sign,preserve-sign" "denormal-fp-math-f32"="ieee,ieee" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="true" "no-nans-fp-math"="true" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "unsafe-fp-math"="true" "use-soft-float"="false" }
attributes #30 = { noreturn }
attributes #31 = { builtin nounwind }
attributes #32 = { allocsize(0) }
attributes #33 = { builtin allocsize(0) }
attributes #34 = { noreturn nounwind }

!llvm.ident = !{!0, !0}
!llvm.module.flags = !{!1}

!0 = !{!"clang version 12.0.1 (https://github.com/llvm/llvm-project.git fed41342a82f5a3a9201819a82bf7a48313e296b)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{!3, !4, i64 0}
!3 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !4, i64 0}
!4 = !{!"any pointer", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 8}
!8 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !3, i64 0, !9, i64 8, !5, i64 16}
!9 = !{!"long", !5, i64 0}
!10 = !{!5, !5, i64 0}
!11 = !{!8, !4, i64 0}
!12 = !{!9, !9, i64 0}
!13 = !{!14, !14, i64 0}
!14 = !{!"bool", !5, i64 0}
!15 = !{!16, !16, i64 0}
!16 = !{!"_ZTSN5adept15ArrayPrintStyleE", !5, i64 0}
!17 = !{!18, !18, i64 0}
!18 = !{!"vtable pointer", !6, i64 0}
!19 = !{!20, !14, i64 145}
!20 = !{!"_ZTSN5adept5StackE", !4, i64 40, !21, i64 48, !21, i64 72, !22, i64 96, !23, i64 120, !24, i64 128, !24, i64 132, !24, i64 136, !24, i64 140, !14, i64 144, !14, i64 145, !14, i64 146, !14, i64 147, !14, i64 148}
!21 = !{!"_ZTSSt6vectorIiSaIiEE"}
!22 = !{!"_ZTSNSt7__cxx114listIN5adept3GapESaIS2_EEE"}
!23 = !{!"_ZTSSt14_List_iteratorIN5adept3GapEE", !4, i64 0}
!24 = !{!"int", !5, i64 0}
!25 = !{i8 0, i8 2}
!26 = !{!4, !4, i64 0}
!27 = !{!20, !4, i64 40}
!28 = !{!29, !4, i64 0}
!29 = !{!"_ZTSNSt8__detail15_List_node_baseE", !4, i64 0, !4, i64 8}
!30 = distinct !{!30, !31, !32}
!31 = !{!"llvm.loop.mustprogress"}
!32 = !{!"llvm.loop.unroll.disable"}
!33 = !{!34, !4, i64 0}
!34 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !4, i64 0, !4, i64 8, !4, i64 16}
!35 = !{!36, !4, i64 0}
!36 = !{!"_ZTSN5adept8internal16StackStorageOrigE", !4, i64 0, !4, i64 8, !4, i64 16, !24, i64 24, !24, i64 28, !24, i64 32, !24, i64 36}
!37 = !{!36, !4, i64 8}
!38 = !{!36, !4, i64 16}
!39 = !{!20, !14, i64 144}
!40 = !{!36, !24, i64 24}
!41 = !{!42, !24, i64 0}
!42 = !{!"_ZTSN5adept8internal9StatementE", !24, i64 0, !24, i64 4}
!43 = !{!44, !44, i64 0}
!44 = !{!"double", !5, i64 0}
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
!55 = !{!23, !4, i64 0}
!56 = !{!57, !9, i64 16}
!57 = !{!"_ZTSNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EEE", !58, i64 0}
!58 = !{!"_ZTSNSt7__cxx1110_List_baseIN5adept3GapESaIS2_EE10_List_implE", !59, i64 0}
!59 = !{!"_ZTSNSt8__detail17_List_node_headerE", !9, i64 16}
!60 = !{i64 0, i64 8, !26}
!61 = distinct !{!61, !31, !32}
!62 = !{!20, !24, i64 128}
!63 = !{!20, !24, i64 136}
!64 = distinct !{!64, !31, !32}
!65 = !{!29, !4, i64 8}
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
!76 = !{!34, !4, i64 8}
!77 = distinct !{!77, !31, !32}
!78 = distinct !{!78, !31, !32}
!79 = !{!80}
!80 = distinct !{!80, !81, !"_ZNK5adept8internal6PacketIdE3putEPd: %d"}
!81 = distinct !{!81, !"_ZNK5adept8internal6PacketIdE3putEPd"}
!82 = distinct !{!82, !31, !32}
!83 = distinct !{!83, !31, !32}
!84 = distinct !{!84, !31, !32}
!85 = distinct !{!85, !31, !32}
!86 = distinct !{!86, !31, !32}
!87 = !{!88}
!88 = distinct !{!88, !89, !"_ZNK5adept5Stack23jacobian_forward_kernelEPd: %gradient_multipass_b"}
!89 = distinct !{!89, !"_ZNK5adept5Stack23jacobian_forward_kernelEPd"}
!90 = !{!91, !88}
!91 = distinct !{!91, !92, !"_ZNK5adept8internal6PacketIdE3putEPd: %d"}
!92 = distinct !{!92, !"_ZNK5adept8internal6PacketIdE3putEPd"}
!93 = distinct !{!93, !31, !32}
!94 = distinct !{!94, !31, !32}
!95 = distinct !{!95, !31, !32}
!96 = distinct !{!96, !31, !32}
!97 = !{!98}
!98 = distinct !{!98, !99, !"_ZNK5adept5Stack23jacobian_forward_kernelEPd: %gradient_multipass_b"}
!99 = distinct !{!99, !"_ZNK5adept5Stack23jacobian_forward_kernelEPd"}
!100 = !{!101, !98}
!101 = distinct !{!101, !102, !"_ZNK5adept8internal6PacketIdE3putEPd: %d"}
!102 = distinct !{!102, !"_ZNK5adept8internal6PacketIdE3putEPd"}
!103 = distinct !{!103, !31, !32}
!104 = distinct !{!104, !31, !32}
!105 = !{!106}
!106 = distinct !{!106, !107, !"_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi: %gradient_multipass_b"}
!107 = distinct !{!107, !"_ZNK5adept5Stack29jacobian_forward_kernel_extraEPdi"}
!108 = distinct !{!108, !31, !32}
!109 = distinct !{!109, !31, !32}
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
!125 = !{!126}
!126 = distinct !{!126, !127, !"_ZN5adept7versionB5cxx11Ev: %agg.result"}
!127 = distinct !{!127, !"_ZN5adept7versionB5cxx11Ev"}
!128 = !{!129}
!129 = distinct !{!129, !130, !"_ZN5adept16compiler_versionB5cxx11Ev: %agg.result"}
!130 = distinct !{!130, !"_ZN5adept16compiler_versionB5cxx11Ev"}
!131 = !{!132}
!132 = distinct !{!132, !133, !"_ZN5adept14compiler_flagsB5cxx11Ev: %agg.result"}
!133 = distinct !{!133, !"_ZN5adept14compiler_flagsB5cxx11Ev"}
!134 = !{!135, !9, i64 8}
!135 = !{!"_ZTSSi", !9, i64 8}
!136 = !{!137, !4, i64 8}
!137 = !{!"_ZTSN5adept5ArrayILi1EdLb0EEE", !4, i64 0, !4, i64 8, !138, i64 16, !138, i64 20}
!138 = !{!"_ZTSN5adept14ExpressionSizeILi1EEE", !5, i64 0}
!139 = !{!137, !4, i64 0}
!140 = distinct !{!140, !31, !32}
!141 = !{!142}
!142 = distinct !{!142, !143, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: %agg.result"}
!143 = distinct !{!143, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!144 = distinct !{!144, !31, !32}
!145 = !{!146, !24, i64 8}
!146 = !{!"_ZTSN5adept7StorageIdEE", !4, i64 0, !24, i64 8, !24, i64 12, !24, i64 16}
!147 = !{!146, !24, i64 12}
!148 = !{!146, !24, i64 16}
!149 = !{!146, !4, i64 0}
!150 = !{!151}
!151 = distinct !{!151, !152, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_: %agg.result"}
!152 = distinct !{!152, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_OS8_"}
!153 = !{!154, !156, i64 32}
!154 = !{!"_ZTSSt8ios_base", !9, i64 8, !9, i64 16, !155, i64 24, !156, i64 28, !156, i64 32, !4, i64 40, !157, i64 48, !5, i64 64, !24, i64 192, !4, i64 200, !158, i64 208}
!155 = !{!"_ZTSSt13_Ios_Fmtflags", !5, i64 0}
!156 = !{!"_ZTSSt12_Ios_Iostate", !5, i64 0}
!157 = !{!"_ZTSNSt8ios_base6_WordsE", !4, i64 0, !9, i64 8}
!158 = !{!"_ZTSSt6locale", !4, i64 0}
!159 = !{!160, !44, i64 0}
!160 = !{!"_ZTSN5adept6ActiveIdEE", !44, i64 0, !24, i64 8}
!161 = !{!162, !14, i64 0}
!162 = !{!"_ZTSN5boost7numeric6odeint17initially_resizerE", !14, i64 0}
!163 = !{!160, !24, i64 8}
!164 = !{!165, !4, i64 0}
!165 = !{!"_ZTSN5adept8internal15BinaryOperationIdNS_6ActiveIdEENS0_6DivideES3_EE", !4, i64 0, !4, i64 8}
!166 = !{!165, !4, i64 8}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZN5adeptplINS_6ActiveIdEENS_8internal15BinaryOperationIdS2_NS3_8MultiplyES2_EEEENS3_9enable_ifIXsr8internal15rank_compatibleIXsrT_4rankEXsrT0_4rankEEE5valueENS4_INS3_7promoteINS8_4typeENS9_4typeEE4typeES8_NS3_3AddES9_EEE4typeERKNS_10ExpressionISB_S8_EERKNSJ_ISC_S9_EE: %agg.result"}
!169 = distinct !{!169, !"_ZN5adeptplINS_6ActiveIdEENS_8internal15BinaryOperationIdS2_NS3_8MultiplyES2_EEEENS3_9enable_ifIXsr8internal15rank_compatibleIXsrT_4rankEXsrT0_4rankEEE5valueENS4_INS3_7promoteINS8_4typeENS9_4typeEE4typeES8_NS3_3AddES9_EEE4typeERKNS_10ExpressionISB_S8_EERKNSJ_ISC_S9_EE"}
!170 = distinct !{!170, !31, !32}
!171 = !{!172, !4, i64 0}
!172 = !{!"_ZTSN5adept8internal15BinaryOperationIdNS_6ActiveIdEENS0_3AddES3_EE", !4, i64 0, !4, i64 8}
!173 = !{!172, !4, i64 8}
!174 = !{!175}
!175 = distinct !{!175, !176, !"_ZNSt14numeric_limitsIN5adept6ActiveIdEEE7epsilonEv: %agg.result"}
!176 = distinct !{!176, !"_ZNSt14numeric_limitsIN5adept6ActiveIdEEE7epsilonEv"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_ZNSt14numeric_limitsIN5adept6ActiveIdEEE7epsilonEv: %agg.result"}
!179 = distinct !{!179, !"_ZNSt14numeric_limitsIN5adept6ActiveIdEEE7epsilonEv"}
!180 = !{!181, !4, i64 0}
!181 = !{!"_ZTSN5adept8internal15BinaryOperationIdNS_6ActiveIdEENS0_3AddENS1_IdS3_NS0_8MultiplyES3_EEEE", !4, i64 0, !182, i64 8}
!182 = !{!"_ZTSN5adept8internal15BinaryOperationIdNS_6ActiveIdEENS0_8MultiplyES3_EE", !4, i64 0, !4, i64 8}
!183 = !{!182, !4, i64 0}
!184 = !{!182, !4, i64 8}
!185 = !{!186, !9, i64 0}
!186 = !{!"_ZTS7timeval", !9, i64 0, !9, i64 8}
!187 = !{!186, !9, i64 8}
!188 = !{!59, !9, i64 16}
!189 = !{!20, !14, i64 147}
!190 = !{!20, !14, i64 148}
!191 = distinct !{!191, !31, !32}
!192 = distinct !{!192, !31, !32}
!193 = distinct !{!193, !31, !32}
!194 = distinct !{!194, !31, !32}
!195 = !{i64 8}
!196 = distinct !{}
!197 = distinct !{}
!198 = !{!"0"}
!199 = !{!"1"}
!200 = distinct !{}
