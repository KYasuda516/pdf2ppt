@echo off
call %~dp0\..\.scripts\yes_no_input.bat �C���X�g�[�����J�n���܂���
if %errorlevel%==1 (
  call %~dp0\..\.scripts\activate_env.bat ^
  && conda env create -f %~dp0\..\.scripts\environment.yml
)
