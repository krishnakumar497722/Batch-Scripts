@echo off 
SETLOCAL 
CALL :Display 
ECHO function finished with errorlevel: %errorlevel%
REM EXIT /B %ERRORLEVEL% 
GOTO :NextTest
:Display 
SET /A index=2 
echo The value of index is %index% 
EXIT /B 0  REM used to exit the function properly


:NextTest
:: functions with parameters
@echo off
SETLOCAL
CALL :Display2 5,10 REM 5 & 10 are two parameters passed to the function
REM EXIT /B %ERRORLEVEL%
GOTO :NextTest2
:Display2
echo The value of parameter 1 is %~1
echo The value of parameter 2 is %~2
EXIT /B 0


:: Functions with return values
:NextTest2
@echo off
SETLOCAL
CALL :SetValue value1,value2
echo %value1%
echo %value2%
REM EXIT /B %ERRORLEVEL%
:SetValue
set "%~1=5"
set "%~2=10"
EXIT /B 0