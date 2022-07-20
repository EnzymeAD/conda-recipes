cd build
cmake --build . --target install
if %ERRORLEVEL% neq 0 exit 1

if "%PKG_NAME%" == "llvm-tools" (
    del /f %LIBRARY_BIN%\*.dll
    rmdir /S /Q %LIBRARY_LIB%
    rmdir /S /Q %LIBRARY_INC%
    rmdir /S /Q %LIBRARY_PREFIX%\libexec
)

