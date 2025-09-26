@echo off
echo 🔷 Diamond Sorter - Easy Installation
echo ================================================

REM Check if Python is available
python --version >nul 2>&1
if errorlevel 1 (
    echo ❌ Python is not installed or not in PATH
    echo Please install Python 3.8+ and try again
    pause
    exit /b 1
)

REM Run the installation script
echo 📦 Installing dependencies...
python install.py

if errorlevel 1 (
    echo.
    echo ❌ Installation failed
    echo Try running: pip install PyQt5 requests beautifulsoup4
    pause
    exit /b 1
)

echo.
echo ✅ Installation completed!
echo You can now run the application with: python main.py
pause
