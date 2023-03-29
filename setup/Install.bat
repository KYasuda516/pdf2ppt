@REM Copyright (c) 2023 Kanta Yasuda (GitHub: @kyasuda516)
@REM This software is released under the MIT License, see LICENSE.

@echo off
cd %~dp0\..
call .scripts\activate.bat ^
&& call .scripts\yes_no_input.bat Are you ready to begin the installation
(
  if %errorlevel%==1 (
    conda env create -f .scripts\environment.yml
    activate %_conda_env_name%
    echo y | conda update --all
  )
  call .scripts\end_proc.bat
)
