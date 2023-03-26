@REM Copyright (c) 2023 Kanta Yasuda (GitHub: @kyasuda516)
@REM This software is released under the MIT License, see LICENSE.

@echo off
call %~dp0\activate_env.bat && ^
python %~dp0\pdf2img.py %1 %2 && ^
conda deactivate
