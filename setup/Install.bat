@echo off
call %~dp0\..\.scripts\yes_no_input.bat インストールを開始しますか
(
  if %errorlevel%==1 (
    call %~dp0\..\.scripts\activate_env.bat 0 ^
    && conda env create -f %~dp0\..\.scripts\environment.yml
  )
) && call %~dp0\..\.scripts\display_finish.bat
