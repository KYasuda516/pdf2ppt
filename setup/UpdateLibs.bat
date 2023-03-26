@echo off
:startLabel
set /P choice="ライブラリを更新しますか (Y/N)? "
if /i "%choice%"=="y" (goto :label)
if /i "%choice%"=="ye" (goto :label)
if /i "%choice%"=="yes" (goto :label)
if /i "%choice%"=="n" (goto :endLabel)
if /i "%choice%"=="no" (goto :endLabel)
echo それは不適切な回答です。
goto :startLabel

:label
%~dp0\..\.scripts\activate_env.bat ^
&& conda update --all

:endLabel
