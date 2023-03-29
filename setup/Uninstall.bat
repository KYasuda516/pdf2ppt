@REM Copyright (c) 2023 Kanta Yasuda (GitHub: @kyasuda516)
@REM This software is released under the MIT License, see LICENSE.

@echo off
cd %~dp0\..
call .scripts\init_proc.bat Are you sure you want to UNINSTALL
(
  if %errorlevel%==1 (
    conda remove -n %_conda_env_name% --all
  )
  call .scripts\end_proc.bat
)
