@echo off
call %~dp0\..\.scripts\yes_no_input.bat �{���ɃA���C���X�g�[�����܂���
if %errorlevel%==1 (
  %~dp0\..\.scripts\activate_env.bat ^
  && conda remove -n pdf2ppt-env --all
)
