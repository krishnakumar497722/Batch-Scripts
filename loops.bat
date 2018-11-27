:: While loop

@echo off
SET /A "index=1"
SET /A "count=5"
:while
if %index% leq %count% (
   echo The value of index is %index%
   SET /A "index=index + 1"
   goto :while
)


:: Break statement
@echo off 
SET /A "index=1" 
SET /A "count=5" 
:while 
if %index% leq %count% ( 
   if %index%==2 goto :Increment 
      echo The value of index is %index% 
:Increment 
   SET /A "index=index + 1" 
   goto :while 
)


:: For loop
@echo off 
FOR %%F IN (1 2 3 4 5) DO echo %%F

::different way to define a range (0,1,5)
@ECHO OFF 
FOR /L %%X IN (0,1,5) DO ECHO %%X  

:: Classic for loop
@echo off 
SET /A i=1 
:loop 

IF %i%==5 GOTO END 
echo The value of i is %i% 
SET /a i=%i%+1 
GOTO :LOOP 
:END


:: Looping through command line argumnets
@ECHO OFF 
:Loop 

IF "%1"=="" GOTO completed 
FOR %%F IN (%1) DO echo %%F 
SHIFT 
GOTO Loop 
:completed
