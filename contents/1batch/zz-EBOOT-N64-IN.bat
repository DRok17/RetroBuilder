@echo off

cd "..\1resources\games\N64\1gameinput\"

start zz-OLD-2PrepCore-1coreinput.bat-SC.bat

timeout 3 >nul

cd "."

start zz-OLD-3MoveCore-zzz-CoreInput.bat-SC.bat

exit
