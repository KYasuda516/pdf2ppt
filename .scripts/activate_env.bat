@REM Copyright (c) 2023 Kanta Yasuda (GitHub: @kyasuda516)
@REM This software is released under the MIT License, see LICENSE.

@echo off
@REM ��1������base��conda���̂ǂ�����J�������Ӗ�����B
@REM 0�Ȃ�base���J���A1�Ȃ�conda�����J���B
if %1==0 (
  call %userprofile%\anaconda3\Scripts\activate.bat
) 
if %1==1 (
  call %userprofile%\anaconda3\Scripts\activate.bat pdf2ppt-env
)
