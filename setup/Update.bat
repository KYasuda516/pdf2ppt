@echo off
call %~dp0\..\.scripts\yes_no_input.bat ライブラリを更新しますか
(
  if %errorlevel%==1 (
    call %~dp0\..\.scripts\activate_env.bat 1 ^
    && conda update --all
  )
) && call %~dp0\..\.scripts\display_finish.bat
