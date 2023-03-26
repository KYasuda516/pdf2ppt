@REM Copyright (c) 2023 Kanta Yasuda (GitHub: @kyasuda516)
@REM This software is released under the MIT License, see LICENSE.

@echo off
@REM 第1引数はbaseとconda環境のどちらを開くかを意味する。
@REM 0ならbaseを開き、1ならconda環境を開く。
if %1==0 (
  call %userprofile%\anaconda3\Scripts\activate.bat
) 
if %1==1 (
  call %userprofile%\anaconda3\Scripts\activate.bat pdf2ppt-env
)
