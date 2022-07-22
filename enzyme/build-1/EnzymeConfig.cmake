# - Config file for the Enzyme package

# Compute paths
get_filename_component(Enzyme_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(Enzyme_LLVM_VERSION_MAJOR "12")
set(Enzyme_LLVM_VERSION_MINOR "0")
set(Enzyme_LLVM_VERSION_PATCH "1")
set(Enzyme_LLVM_DIR "/local-scratch/localhome/mha157/llvm-project/build/lib/cmake/llvm")
set(Enzyme_LLVM_BINARY_DIR "/local-scratch/localhome/mha157/llvm-project/build")

set(_supported_components LLVMEnzyme ClangEnzyme LLVM)

foreach(_comp ${Enzyme_FIND_COMPONENTS})
  if (_comp STREQUAL "LLVMEnzyme" OR _comp STREQUAL "ClangEnzyme")
    # Our library dependencies (contains definitions for IMPORTED targets)
    if(NOT TARGET LLVMEnzyme-${Enzyme_LLVM_VERSION_MAJOR} AND NOT TARGET ClangEnzyme-${Enzyme_LLVM_VERSION_MAJOR} AND NOT Enzyme_BINARY_DIR)
        include("${Enzyme_CMAKE_DIR}/EnzymeTargets.cmake")
    endif()
    # These are IMPORTED targets created by EnzymeTargets.cmake
    set(Enzyme_LIBRARIES LLVMEnzyme-${Enzyme_LLVM_VERSION_MAJOR} ClangEnzyme-${Enzyme_LLVM_VERSION_MAJOR})
  endif()
endforeach()
