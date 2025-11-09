@echo off
echo ============================================================
echo Starting SHEEP Server from SHEEP-master
echo ============================================================
echo.
echo This script assumes you have built the SHEEP server.
echo.
echo Option 1: Using Docker (recommended)
echo   cd SHEEP-master
echo   docker-compose up sheep-server
echo.
echo Option 2: Running the built executable
echo   cd SHEEP-master\backend\build
echo   bin\run-sheep-server.exe
echo.
echo Make sure the SHEEP server is running on http://localhost:34568/SheepServer
echo ============================================================
pause

