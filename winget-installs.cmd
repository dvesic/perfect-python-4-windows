@ECHO OFF
REM https://github.com/dvesic/perfect-python-4-windows
REM Suggested to be run in elevated (admin) prompt

ECHO.
ECHO It is strongly suggested to run this script in elevated (Admin) CMD prompt
ECHO.
ECHO Press Ctrl-C if this is not the case and you want to stop script
ECHO (otherwise, press Enter to continue installation)
ECHO.
PAUSE > NUL

REM Mandatory software

winget install -e --id Anaconda.Miniconda3

REM Recommended software

winget install -e --id 7zip.7zip
winget install -e --id GnuWin32.Wget
winget install -e --id WinMerge.WinMerge
winget install -e --id Skillbrains.Lightshot
