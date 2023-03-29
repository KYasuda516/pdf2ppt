@REM Copyright (c) 2023 Kanta Yasuda (GitHub: @kyasuda516)
@REM This software is released under the MIT License, see LICENSE.

@echo off
cd %~dp0\..
call .scripts\activate.bat
activate %_conda_env_name% && ^
python .scripts\pdf2img.py %1 %2 && ^
conda deactivate && conda deactivate
