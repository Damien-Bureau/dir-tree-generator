@echo off
echo.
echo ===== UPLOADING TO PYPI =====

@REM .venv-publish\Scripts\activate.bat
twine upload dist\*

echo.
echo ===== DONE =====
pause
