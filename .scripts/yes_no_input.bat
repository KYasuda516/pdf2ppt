@echo off
:startLabel
set /P choice="%1 (Y/N)? "
if /i "%choice%"=="y" (goto :ret1Label)
if /i "%choice%"=="ye" (goto :ret1Label)
if /i "%choice%"=="yes" (goto :ret1Label)
if /i "%choice%"=="n" (goto :ret0Label)
if /i "%choice%"=="no" (goto :ret0Label)
echo ÇªÇÍÇÕïsìKêÿÇ»âÒìöÇ≈Ç∑ÅB
goto :startLabel

:ret1Label
exit /b 1

:ret0Label
exit /b 0
