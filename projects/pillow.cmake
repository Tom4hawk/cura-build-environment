ExternalProject_Add(Pillow
    URL https://pypi.python.org/packages/93/73/66854f63b1941aad9af18a1de59f9cf95ad1a87c801540222e332f6688d7/Pillow-4.1.1.tar.gz
    URL_MD5 f2565954955c8d10f3b4f1f72f852bf7
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ${PYTHON_EXECUTABLE} setup.py build
    INSTALL_COMMAND ${PYTHON_EXECUTABLE} setup.py install --single-version-externally-managed --record=pillow-install.log
    BUILD_IN_SOURCE 1
)
SetProjectDependencies(TARGET Pillow DEPENDS Python)
