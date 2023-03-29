@REM Copyright (c) 2023 Kanta Yasuda (GitHub: @kyasuda516)
@REM This software is released under the MIT License, see LICENSE.

@echo off

@REM move to current directory
cd %~dp0\..

@REM get environment name from yaml file
for /f "tokens=1,2" %%a in (.scripts\environment.yml) do (
  if "%%a"=="name:" (
    set _conda_env_name=%%b
    goto :breakLabel
  )
)
:breakLabel

@REM open anaconda prompt
call %userprofile%\anaconda3\Scripts\activate.bat
