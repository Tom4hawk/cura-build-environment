ExternalProject_Add(UrlLib3
    URL https://pypi.python.org/packages/96/d9/40e4e515d3e17ed0adbbde1078e8518f8c4e3628496b56eb8f026a02b9e4/urllib3-1.21.1.tar.gz
    URL_MD5 ef6c72c79b9c6bcd68c204f9b92abc86
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ${PYTHON_EXECUTABLE} setup.py build
    INSTALL_COMMAND ${PYTHON_EXECUTABLE} setup.py install --single-version-externally-managed --record=urllib3-install.log
    BUILD_IN_SOURCE 1
)
SetProjectDependencies(TARGET UrlLib3 DEPENDS Python)