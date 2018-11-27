::===============================================================
:: Run this file with
::>> Statements.bat 1 2 3
::===============================================================


:: If Statement Numbers
@echo off 
SET /A a=5 
SET /A b=10 
SET /A c=%a% + %b% 
if %c%==15 (echo "The value of variable c is 15") else (echo "Unknown value") 
if %c%==10 (echo "The value of variable c is 10") else (echo "Unknown value")


:: If Statement Strings
@echo off 
SET str1=String1 
SET str2=String2 
if %str1%==String1 (echo "The value of variable String1") else (echo "Unknown value") 
if %str2%==String3 (echo "The value of variable c is String3") else (echo "Unknown value")


:: Checking command line arguments
echo %1 
echo off 
echo %2 
echo %3 
if %1%==1 echo "The value is 1" 
if %2%==2 echo "The value is 2" 
if %3%==3 echo "The value is 3"


:: Special cases:

:: If Defined
@echo off
if defined a echo The value of variable a: %a%


:: If Exists
@echo off
if exist c:\dev\batch-scripts\Statements.bat echo file exists
if exist Statements.bat echo file exists
if exist C:\Camera1.log (echo file exists) else (echo file doesn't exist)



:: Nested If
@echo off 
if %a%==5 if %b%==10 echo "The value of the a: %a%, the value of b: %b%"


:: If Errorlevel
:: n is the exit code integer
@echo off
if errorlevel 1 (echo "error!") else (echo no error)


if not exist c:\lists.txt exit 7 
if not defined userprofile exit 9 
::exit 0


Call Find.cmd  :: calling Find.cmd and getting back the error code
if errorlevel gtr 0 exit 
echo “Successful completion”

