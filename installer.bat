@echo off
SETLOCAL

REM Check if Node.js is installed
node -v >nul 2>&1
IF ERRORLEVEL 1 (
    echo Node.js is not installed. Please install Node.js and try again.
    pause
    EXIT /B 1
)

REM Navigate to the script's directory
cd /d "%~dp0"

REM Install the required Node.js modules
echo Installing Node.js dependencies...
npm install

REM Check if the installation was successful
IF ERRORLEVEL 1 (
    echo There was an error installing the dependencies.
    pause
    EXIT /B 1
)

echo Dependencies installed successfully!
pause
EXIT /B 0
