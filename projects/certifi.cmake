set(pillow_url "https://pypi.python.org/packages/eb/01/c1f58987b777d6c4ec535b4e004a4a07bfc9db06f0c7533367ca6da8f2a6/certifi-2017.4.17-py2.py3-none-any.whl")

add_custom_target(Certifi
	COMMAND ${PYTHON_EXECUTABLE} -m pip install ${pillow_url}
	COMMENT "Installing Pillow"
)
	
SetProjectDependencies(TARGET Certifi DEPENDS Python)