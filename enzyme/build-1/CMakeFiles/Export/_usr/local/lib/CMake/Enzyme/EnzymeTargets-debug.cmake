#----------------------------------------------------------------
# Generated CMake target import file for configuration "Debug".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "Enzyme::LLVMEnzyme-12" for configuration "Debug"
set_property(TARGET Enzyme::LLVMEnzyme-12 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Enzyme::LLVMEnzyme-12 PROPERTIES
  IMPORTED_COMMON_LANGUAGE_RUNTIME_DEBUG ""
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/LLVMEnzyme-12.so"
  IMPORTED_NO_SONAME_DEBUG "TRUE"
  )

list(APPEND _IMPORT_CHECK_TARGETS Enzyme::LLVMEnzyme-12 )
list(APPEND _IMPORT_CHECK_FILES_FOR_Enzyme::LLVMEnzyme-12 "${_IMPORT_PREFIX}/lib/LLVMEnzyme-12.so" )

# Import target "Enzyme::ClangEnzyme-12" for configuration "Debug"
set_property(TARGET Enzyme::ClangEnzyme-12 APPEND PROPERTY IMPORTED_CONFIGURATIONS DEBUG)
set_target_properties(Enzyme::ClangEnzyme-12 PROPERTIES
  IMPORTED_COMMON_LANGUAGE_RUNTIME_DEBUG ""
  IMPORTED_LOCATION_DEBUG "${_IMPORT_PREFIX}/lib/ClangEnzyme-12.so"
  IMPORTED_NO_SONAME_DEBUG "TRUE"
  )

list(APPEND _IMPORT_CHECK_TARGETS Enzyme::ClangEnzyme-12 )
list(APPEND _IMPORT_CHECK_FILES_FOR_Enzyme::ClangEnzyme-12 "${_IMPORT_PREFIX}/lib/ClangEnzyme-12.so" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
