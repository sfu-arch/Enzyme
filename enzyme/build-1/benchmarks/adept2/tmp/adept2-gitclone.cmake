
if(NOT "/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src/adept2-stamp/adept2-gitinfo.txt" IS_NEWER_THAN "/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src/adept2-stamp/adept2-gitclone-lastrun.txt")
  message(STATUS "Avoiding repeated git clone, stamp file is up to date: '/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src/adept2-stamp/adept2-gitclone-lastrun.txt'")
  return()
endif()

execute_process(
  COMMAND ${CMAKE_COMMAND} -E rm -rf "/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src/adept2"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to remove directory: '/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src/adept2'")
endif()

# try the clone 3 times in case there is an odd git clone issue
set(error_code 1)
set(number_of_tries 0)
while(error_code AND number_of_tries LESS 3)
  execute_process(
    COMMAND "/usr/bin/git"  clone --no-checkout --config "advice.detachedHead=false" "https://github.com/rjhogan/Adept-2" "adept2"
    WORKING_DIRECTORY "/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src"
    RESULT_VARIABLE error_code
    )
  math(EXPR number_of_tries "${number_of_tries} + 1")
endwhile()
if(number_of_tries GREATER 1)
  message(STATUS "Had to git clone more than once:
          ${number_of_tries} times.")
endif()
if(error_code)
  message(FATAL_ERROR "Failed to clone repository: 'https://github.com/rjhogan/Adept-2'")
endif()

execute_process(
  COMMAND "/usr/bin/git"  checkout 4dc3d72c25d120a80745c44599dc8602a4f8fdeb --
  WORKING_DIRECTORY "/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src/adept2"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to checkout tag: '4dc3d72c25d120a80745c44599dc8602a4f8fdeb'")
endif()

set(init_submodules TRUE)
if(init_submodules)
  execute_process(
    COMMAND "/usr/bin/git"  submodule update --recursive --init 
    WORKING_DIRECTORY "/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src/adept2"
    RESULT_VARIABLE error_code
    )
endif()
if(error_code)
  message(FATAL_ERROR "Failed to update submodules in: '/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src/adept2'")
endif()

# Complete success, update the script-last-run stamp file:
#
execute_process(
  COMMAND ${CMAKE_COMMAND} -E copy
    "/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src/adept2-stamp/adept2-gitinfo.txt"
    "/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src/adept2-stamp/adept2-gitclone-lastrun.txt"
  RESULT_VARIABLE error_code
  )
if(error_code)
  message(FATAL_ERROR "Failed to copy script-last-run stamp file: '/localhome/mha157/Enzyme/enzyme/build/benchmarks/adept2/src/adept2-stamp/adept2-gitclone-lastrun.txt'")
endif()

