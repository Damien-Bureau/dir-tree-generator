@echo off
echo.
echo ===== UPLOADING TO PYPI =====

call .venv-publish\Scripts\activate.bat
twine upload dist\* --verbose

echo.
echo ===== DONE =====
echo.
