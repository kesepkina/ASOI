@echo off

if %1. == /?. goto help
if !%1 == ! goto _0given
if !%2 == ! goto _1given
if !%3 == ! goto _2given
if !%4 == ! goto _3given
if !%5 == ! goto correct_pass
if not !%5 == ! goto enough_params


:help
	echo Outputting of your fist, last names and patronymic. 
	echo.
	echo FIO[.bat] pas s f p  
	echo.    
	echo		pas	password
	echo		l	last name
	echo		f	first name
	echo		p	patronymic
goto exit


:_0given
	echo FIO has 4 required parameters (0 entered)
goto exit


:incorrect_pass
	echo invalid password
goto exit


:_1given
	echo FIO has 4 required parameters (1 entered)
goto exit


:_2given
	echo FIO has 4 required parameters (2 entered)
goto exit


:_3given
	echo FIO has 4 required parameters (3 entered)
goto exit


:correct_pass
	if not %1 == 1qaz goto incorrect_pass
	echo %2 %3 %4 
goto exit


:enough_params
	echo FIO has 4 required parameters (more than 4 entered)
goto exit


:exit