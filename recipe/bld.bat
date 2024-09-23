if "%ARCH%"=="arm64" (
  copy C:\cpython-bin-deps\arm64\libffi-8.lib libffi-8.lib
) else (
  call %BUILD_PREFIX%\Library\bin\run_autotools_clang_conda_build.bat
)
if %ERRORLEVEL% neq 0 exit 1
copy libffi-8.lib %LIBRARY_LIB%\ffi.lib
