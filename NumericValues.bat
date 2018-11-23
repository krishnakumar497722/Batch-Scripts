Rem Numeric Values
echo Numeric Values Exampls:
@echo off 
SET /A a=5 
SET /A b=10 
SET /A c=%a% + %b% 
echo %c%
echo a+b
echo %a%+%b%

Rem Arithmetics 
@echo off 
echo Arithmetics Examples:
SET /A a=5 
SET /A b=10 
SET /A c=%a% + %b% 
echo %c% 
SET /A c=%a% - %b% 
echo %c% 
SET /A c=%b% / %a% 
echo %c% 
SET /A c=%b% * %a% 
echo %c%