cmake_minimum_required(VERSION 3.4)

project(hello_world)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex_lib formatter_ex_lib_dir)

add_executable(hello_world ${CMAKE_CURRENT_SOURCE_DIR}/hello_world.cpp)
# добавляем исполняемый файл на основе исходного кода

target_include_directories(formatter_ex_lib PUBLIC
${CMAKE_CURRENT_SOURCE_DIR}/../formatter_lib
${CMAKE_CURRENT_SOURCE_DIR}/../formatter_ex_lib
)

target_link_libraries(hello_world formatter_ex_lib formatter_lib)
# подключаем к исполняемому файлу библиотеки