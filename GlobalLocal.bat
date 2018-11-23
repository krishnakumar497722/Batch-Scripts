@echo off 
set globalvar=5
SETLOCAL
set var=13145
echo %var%
set /A var=%var% + 5
echo %globalvar%
ENDLOCAL