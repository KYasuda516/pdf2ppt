@echo off
call %~dp0\..\.scripts\yes_no_input.bat ���C�u�������X�V���܂���
if %errorlevel%==1 (
  %~dp0\..\.scripts\activate_env.bat ^
  && conda update --all
)
