@ECHO OFF

REM Batch creation for auto-cd drive and folder on CONDA Activate
REM https://github.com/dvesic/perfect-python-4-windows

IF NOT DEFINED CONDA_DEFAULT_ENV    GOTO :NOT_ACTIVATED
IF %CONDA_DEFAULT_ENV%==base        GOTO :NOT_ACTIVATED

SET activate_D=%CONDA_PREFIX%\etc\conda\activate.d
SET working_dir=%activate_D%\set_working_directory.bat

MKDIR %activate_D%

ECHO @ECHO OFF                                                  > %working_dir%
ECHO REM Auto-CD drive and folder on CONDA Activate             >> %working_dir%
ECHO REM https://github.com/dvesic/perfect-python-4-windows     >> %working_dir%
ECHO.           >> %working_dir%
ECHO %CD:~0,2%  >> %working_dir%
ECHO CD %CD%    >> %working_dir%

GOTO :END

:NOT_ACTIVATED
ECHO.
ECHO Please activate CONDA environment BEFORE running %~n0
ECHO.

GOTO :END

:END




