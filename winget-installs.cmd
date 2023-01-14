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

winget install -e --id Anaconda.Miniconda3      --accept-package-agreements

REM Recommended software

winget install -e --id 7zip.7zip                --accept-package-agreements
winget install -e --id GnuWin32.Wget            --accept-package-agreements
winget install -e --id WinMerge.WinMerge        --accept-package-agreements
winget install -e --id Skillbrains.Lightshot    --accept-package-agreements
winget install -e --id Git.Git                  --accept-package-agreements
winget install -e --id GitHub.cli               --accept-package-agreements
