:: Launcher for file-D.ps1
@echo off
if not "%1" == "min" start /MIN cmd /c %0 min & exit 0 >nul 2>&1
type .\file-D.ps1 | powershell -
exit 0
