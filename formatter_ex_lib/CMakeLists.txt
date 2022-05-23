cmake_minimum_required(VERSION 3.4)

project(formatter_ex_lib)

set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(${CMAKE_CURRENT_SOURCE_DIR}/../formatter_lib formatter_lib_dir)
# для этой библиотеки нужна предыдущая, собираем ее одной командой, т.к. Инструкции для нее уже есть в другой папке
# add_subdirectory включает CMakeLists, лежащий в указанной папке

add_library(formatter_ex_lib STATIC ${CMAKE_CURRENT_SOURCE_DIR}/formatter_ex.cpp)

target_include_directories(formatter_ex_lib PUBLIC
${CMAKE_CURRENT_SOURCE_DIR}/../formatter_lib
)
# даем нашей библиотеке видеть папку formatter_lib, чтобы она имела доступ к заголовочному файлу

target_link_libraries(formatter_ex_lib formatter_lib)
# подключаем одну библиотеку к другой