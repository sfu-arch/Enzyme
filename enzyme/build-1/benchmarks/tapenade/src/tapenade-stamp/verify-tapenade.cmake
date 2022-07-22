# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

if("/localhome/mha157/Enzyme/enzyme/benchmarks/ADFirstAidKit.tar" STREQUAL "")
  message(FATAL_ERROR "LOCAL can't be empty")
endif()

if(NOT EXISTS "/localhome/mha157/Enzyme/enzyme/benchmarks/ADFirstAidKit.tar")
  message(FATAL_ERROR "File not found: /localhome/mha157/Enzyme/enzyme/benchmarks/ADFirstAidKit.tar")
endif()

if("" STREQUAL "")
  message(WARNING "File will not be verified since no URL_HASH specified")
  return()
endif()

if("" STREQUAL "")
  message(FATAL_ERROR "EXPECT_VALUE can't be empty")
endif()

message(STATUS "verifying file...
     file='/localhome/mha157/Enzyme/enzyme/benchmarks/ADFirstAidKit.tar'")

file("" "/localhome/mha157/Enzyme/enzyme/benchmarks/ADFirstAidKit.tar" actual_value)

if(NOT "${actual_value}" STREQUAL "")
  message(FATAL_ERROR "error:  hash of
  /localhome/mha157/Enzyme/enzyme/benchmarks/ADFirstAidKit.tar
does not match expected value
  expected: ''
    actual: '${actual_value}'
")
endif()

message(STATUS "verifying file... done")
