@echo off

if not "%PROGRAMFILES(X86)%"=="" set PF86=%PROGRAMFILES(X86)%
if "%PF86%"=="" set PF86=%PROGRAMFILES%
if "%PF86%"=="" (echo PROGRAMFILES not set & goto error)

call "%PF86%\Microsoft Visual Studio\2019\Enterprise\VC\Auxiliary\Build\vcvarsall.bat" amd64

for /f "delims=" %%i in ('where cl') do set result=%%i

set VC_COMPILER_PATH=%result:~0,-7%
echo FOUND CL.EXE
echo %VC_COMPILER_PATH%