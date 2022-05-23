cmake_minimum_required(VERSION 3.4)
# требуемая версия cmake

project(formatter_lib)
# имя проекта

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
# требуем как минимум 11 стандарт С++

add_library(formatter_lib STATIC ${CMAKE_CURRENT_SOURCE_DIR}/formatter.cpp)
# добавляем библиотеку на основе исходного файла с расширением .cpp
