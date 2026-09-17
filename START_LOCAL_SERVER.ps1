# PowerShell Script to Start Local Server for Offline Website

Write-Host "============================================" -ForegroundColor Cyan
Write-Host "    Lawia Law Firm - Local Server Starter" -ForegroundColor Cyan
Write-Host "============================================" -ForegroundColor Cyan
Write-Host ""

# Check if Python is installed
try {
    $pythonVersion = python --version 2>&1
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Using Python HTTP Server..." -ForegroundColor Green
        Write-Host ""
        Write-Host "Opening: http://localhost:8000" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "Press Ctrl+C to stop the server" -ForegroundColor Yellow
        Write-Host ""

        Start-Process "http://localhost:8000"
        python -m http.server 8000
        exit
    }
}
catch {
    # Python not found
}

# Check if Node.js is installed
try {
    $nodeVersion = node --version 2>&1
    if ($LASTEXITCODE -eq 0) {
        Write-Host "Using Node.js HTTP Server..." -ForegroundColor Green
        Write-Host ""
        Write-Host "Note: Install http-server if needed: npm install -g http-server" -ForegroundColor Yellow
        Write-Host ""
        Write-Host "Opening: http://localhost:8080" -ForegroundColor Yellow
        Write-Host ""

        Start-Process "http://localhost:8080"
        npx http-server
        exit
    }
}
catch {
    # Node.js not found
}

# Neither found, suggest XAMPP
Write-Host ""
Write-Host "ERROR: Neither Python nor Node.js found on your system." -ForegroundColor Red
Write-Host ""
Write-Host "SOLUTION: Use XAMPP instead:" -ForegroundColor Yellow
Write-Host ""
Write-Host "1. Open XAMPP Control Panel" -ForegroundColor Gray
Write-Host "2. Click 'Start' for Apache" -ForegroundColor Gray
Write-Host "3. Open browser: http://localhost/sampletwo/HOME1.html" -ForegroundColor Gray
Write-Host ""
Write-Host "Press any key to exit..." -ForegroundColor Yellow
$null = $Host.UI.RawUI.ReadKey("NoEcho,IncludeKeyDown")
