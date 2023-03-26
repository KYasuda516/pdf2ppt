@echo off
call %~dp0\..\.scripts\yes_no_input.bat ライブラリを更新しますか
if %errorlevel%==1 (
  %~dp0\..\.scripts\activate_env.bat ^
  && conda update --all
)
