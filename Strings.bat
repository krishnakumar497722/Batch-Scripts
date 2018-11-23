@echo off 
:: This program just displays Hello World 
set message=Hello World 
echo %message%


@echo off 
:: Empty strings
SET a=
SET b=Hello
if [%a%]==[] echo "String A is empty" 
if [%b%]==[] echo "String B is empty "


@echo off 
:: String Interpolation
echo String Interpolation:
SET a=Hello
SET b=World
SET /A d=50
SET c=%a% and %b% %d%
echo %c%


@echo off 
:: String Concatenation
echo String Concatenation:
SET a=Hello
SET b=World
SET c=%a% and %b% 
echo %c%


@echo off
:: String to Int
echo String to Int: ("13145" + 5)
set var=13145
set /A var=%var% + 5
echo %var%


@echo off
:: String Length
echo String Length: ("Hello World")
set str=Hello World
call :strLen str strlen  :: passes str to the function and saves result into strlen
echo String is %strlen% characters long
exit /b

:strLen
setlocal enabledelayedexpansion

:strLen_Loop
   if not "!%1:~%len%!"=="" set /A len+=1 & goto :strLen_Loop
(endlocal & set %2=%len%)
goto :eof
