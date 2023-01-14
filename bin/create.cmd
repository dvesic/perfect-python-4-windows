@ECHO OFF
SET ENV_FILE=environment.yml

IF %CONDA_DEFAULT_ENV%==base        GOTO :CREATE_ENV

GOTO :NO_CONDA

:NO_CONDA
ECHO.
ECHO It seems that CONDA can't be detected. Use CONDA shell and try again
ECHO.
GOTO :END

:CREATE_ENV
IF NOT EXIST %ENV_FILE% GOTO :NO_FILE
CALL conda env create -f %ENV_FILE%
GOTO :END

:NO_FILE
ECHO.
ECHO It seems that I can't detect "%ENV_FILE%" - please verify existence of the file.
ECHO.
GOTO :END


:ACTIVATED
ECHO.
ECHO Please deactivate environment before creating new one.
ECHO.
GOTO :END

:END

