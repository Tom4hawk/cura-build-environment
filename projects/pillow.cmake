if(BUILD_OS_WINDOWS)
	if(BUILD_OS_WIN64)
		set(pillow_url "https://pypi.python.org/packages/1d/7a/c246a587db18194a7fd520c383b5dca7f154d378344dc00c3135d54ad54d/Pillow-4.1.1-cp35-cp35m-win_amd64.whl")
	else()
		set(pillow_url "https://pypi.python.org/packages/64/b7/fc4fba0628b0d3102b83724bfc03e5f8fb222ad7da5cd3e39e9826f75361/Pillow-4.1.1-cp35-cp35m-win32.whl")
	endif()
endif()

if(BUILD_OS_LINUX)
	set(pillow_url "https://pypi.python.org/packages/97/17/fadfc92ffa5db9da7b0d902d72972a16b807b51219f4017f45899d0a5f7c/Pillow-4.1.1-cp35-cp35m-manylinux1_x86_64.whl")
endif()
	
if(BUILD_OS_OSX)
	set(pillow_url https://pypi.python.org/packages/1f/26/77ee85b5eb48cd90fe4899eb5e8b3f3f84fde856d61f85d4b94c81370b31/Pillow-4.1.1-cp35-cp35m-macosx_10_6_intel.macosx_10_9_intel.macosx_10_9_x86_64.macosx_10_10_intel.macosx_10_10_x86_64.whl)
endif()

add_custom_target(Pillow
	COMMAND ${PYTHON_EXECUTABLE} -m pip install ${pillow_url}
	COMMENT "Installing Pillow"
)
	
SetProjectDependencies(TARGET Pillow DEPENDS Python)