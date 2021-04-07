@echo off

for %%i in (..\*.txt*) do if not "%%i"=="..\core.txt" if not "%%i"=="..\rom.txt" if not "%%i"=="..\rom-id.txt" if not "%%i"=="..\rom-name.txt" if not "%%i"=="..\sys-id.txt" del /q "%%i"

cd "..\input"

dir *.nes *.smc *.gbc *.gba *.gb *.gen *.bin *.smd *.gg *.sfc *.n64 *.z64 *.v64 /b > .\0splitter\nes-fileslist.txt


timeout 2 >nul

@ECHO OFF
SETLOCAL
SET /a fcount=1
SET /a llimit=1
SET /a lcount=%llimit%
FOR /f "usebackqdelims=" %%a IN (".\0splitter\nes-fileslist.txt") DO (
 CALL :select
 FOR /f "tokens=1*delims==" %%b IN ('set dfile') DO IF /i "%%b"=="dfile" >>"%%c" ECHO(%%a
)
GOTO :EOF
:select
SET /a lcount+=1
IF %lcount% lss %llimit% GOTO :EOF
SET /a lcount=0
SET /a fcount+=1
SET "dfile=..\file%fcount:~-2%.txt"
GOTO :EOF
