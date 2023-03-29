@REM Copyright (c) 2023 Kanta Yasuda (GitHub: @kyasuda516)
@REM This software is released under the MIT License, see LICENSE.

@echo off
cd %~dp0\..
call .scripts\init_proc.bat Would you like to refresh the libraries
(
  if %errorlevel%==1 (
    activate %_conda_env_name% 
    conda update --all
  )
  call .scripts\end_proc.bat
)
