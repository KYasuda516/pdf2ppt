@REM Copyright (c) 2023 Kanta Yasuda (GitHub: @kyasuda516)
@REM This software is released under the MIT License, see LICENSE.

@echo off
call %~dp0\..\.scripts\yes_no_input.bat 本当にアンインストールしますか
(
  if %errorlevel%==1 (
    call %~dp0\..\.scripts\activate_env.bat 0 ^
    && activate base ^
    && conda remove -n pdf2ppt-env --all
  )
) && call %~dp0\..\.scripts\display_finish.bat
