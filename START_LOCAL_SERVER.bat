@echo off
REM Simple HTTP Server Launcher for Offline Website
REM This script starts a local web server for the website

echo.
echo ============================================
echo    Lawia Law Firm - Local Server Starter
echo ============================================
echo.

REM Check if Python is installed
python --version >nul 2>&1
if %errorlevel% equ 0 (
    echo Using Python HTTP Server...
    echo.
    echo Opening: http://localhost:8000
    echo.
    echo Press Ctrl+C to stop the server
    echo.
    start http://localhost:8000
    python -m http.server 8000
    goto end
)

REM If Python not found, try Node.js
node --version >nul 2>&1
if %errorlevel% equ 0 (
    echo Using Node.js HTTP Server...
    echo.
    echo Install http-server first: npm install -g http-server
    echo.
    start http://localhost:8080
    npx http-server
    goto end
)

REM If neither Python nor Node.js found, suggest XAMPP
echo.
echo ERROR: Neither Python nor Node.js found on your system.
echo.
echo SOLUTION: Use XAMPP instead:
echo.
echo 1. Open XAMPP Control Panel
echo 2. Click "Start" for Apache
echo 3. Open browser: http://localhost/sampletwo/HOME1.html
echo.
pause

:end
