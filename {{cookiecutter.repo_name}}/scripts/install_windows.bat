@echo off
setlocal

set "CMAKE_GENERATOR=Visual Studio 18 2026"
set "CMAKE_GENERATOR_TOOLSET=ClangCL"

echo Installing the Pixi environment with the Windows Harmony build toolchain...
pixi install
if errorlevel 1 exit /b %errorlevel%

pixi run python -c "import harmonypy, inmoose; print('harmonypy', harmonypy.__version__); print('inmoose imported')"
exit /b %errorlevel%
