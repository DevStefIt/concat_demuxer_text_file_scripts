REM 2020 - Dev Stef

@echo off

REM The first command line parameter is the folder where the files are.
if "%1" == "" goto usage

REM The second command line parameter is the files extension we want to get.
if "%2" == "" goto usage

REM Set the proper command and create the text file with all the containing file in it.
REM To get the file: listfiles.bat FOLDER EXT > fileslist.txt
(for %%i in ("%~f1\*.%2") do echo file '%%i')
goto end

:usage
echo Error: did not set all the command line parameters properly
echo.
echo %0 path extension

:end