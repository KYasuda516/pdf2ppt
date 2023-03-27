@REM Copyright (c) 2023 Kanta Yasuda (GitHub: @kyasuda516)
@REM This software is released under the MIT License, see LICENSE.

@echo off
call %~dp0\..\.scripts\yes_no_input.bat Would you like to refresh the libraries
(
  if %errorlevel%==1 (
    call %~dp0\..\.scripts\activate_env.bat 1 ^
    && conda update --all
  )
) && call %~dp0\..\.scripts\display_finish.bat
