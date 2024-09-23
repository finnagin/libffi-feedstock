if "%ARCH%"=="arm64" (
  copy C:\cpython-bin-deps\arm64\libffi-8.lib %LIBRARY_LIB%\libffi.lib
) else (
  call %BUILD_PREFIX%\Library\bin\run_autotools_clang_conda_build.bat
)
if %ERRORLEVEL% neq 0 exit 1
copy %LIBRARY_LIB%\libffi.lib %LIBRARY_LIB%\ffi.lib
