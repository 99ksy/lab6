include(InstallRequiredSystemLibraries)
# подключает какие-то библиотеки, необходимые для работы

# дальше идёт задача кучи переменных с информацией о нашей программе (точнее, о пакете с нашей программой)

set(CPACK_PACKAGE_VERSION ${PRINT_VERSION})
set(CPACK_PACKAGE_NAME "solverapp")
set(CPACK_PACKAGE_DESCRIPTION_SUMMARY "solver application")
set(CPACK_PACKAGE_VENDOR "99ksy")
set(CPACK_PACKAGE_PACK_NAME "solver-${PRINT_VERSION}")

# файлы с описанием, лицензией, README
set(CPACK_PACKAGE_DESCRIPTION_FILE ${CMAKE_CURRENT_SOURCE_DIR}/DESCRIPTION)
set(CPACK_RESOURCE_FILE_LICENSE ${CMAKE_CURRENT_SOURCE_DIR}/LICENSE)
set(CPACK_RESOURCE_FILE_README ${CMAKE_CURRENT_SOURCE_DIR}/README.md)

# тут пишется, какие папки куда прикручиваются при создании архива с исходным кодом
set(CPACK_SOURCE_INSTALLED_DIRECTORIES 
	"${CMAKE_SOURCE_DIR}/solver_application; solver_application"
	"${CMAKE_SOURCE_DIR}/solver_lib; solver_lib"
	"${CMAKE_SOURCE_DIR}/formatter_ex_lib; formatter_ex_lib"
	"${CMAKE_SOURCE_DIR}/formatter_lib; formatter_lib")

# для архивов исходного кода используем форматы .tar.gz (линуксовый архив) и .zip
# для самих пакетов (установочных файлов) - .deb и .rpm (тоже для линукса)
set(CPACK_SOURCE_GENERATOR "TGZ;ZIP")
set(CPACK_GENERATOR "DEB;RPM")

# ещё переменные с информацией о пакете, но отдельно для каждого формата
set(CPACK_DEBIAN_PACKAGE_VERSION ${PRINT_VERSION})
set(CPACK_DEBIAN_PACKAGE_ARCHITECTURE "all")
set(CPACK_DEBIAN_PACKAGE_DESCRIPTION "Solves quadratic equations, yo")

set(CPACK_RPM_PACKAGE_SUMMARY "Solves quadratic equations, yo")

# используем утилиту СPack
include(CPack)