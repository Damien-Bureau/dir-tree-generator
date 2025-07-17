@echo off
echo.
echo ===== CLEANING OLD BUILDS =====

rmdir /s /q dist 2>nul
rmdir /s /q build 2>nul
for /d %%D in (*.egg-info) do rmdir /s /q "%%D"

echo.
echo ===== REBUILDING PACKAGE =====

call .venv-publish\Scripts\activate.bat
python -m build

echo.
echo ===== DONE =====
echo.
