@echo off

cd ".."

start z-1CopyInput.bat

timeout 3 >nul

cd "."

start z-2PNGConvert.bat

timeout 3 >nul

cd "."

start z-3Resize.bat

timeout 3 >nul

cd "."

start z-4PNG-Pallete-256.bat

timeout 3 >nul

exit