@ECHO OFF
SET ENV_FILE=environment.yml

IF NOT DEFINED CONDA_DEFAULT_ENV    GOTO :NOT_ACTIVATED
IF %CONDA_DEFAULT_ENV%==base        GOTO :NOT_ACTIVATED

pip freeze > requirements.txt
CALL conda env export --from-history > %ENV_FILE%
GOTO :END

:NOT_ACTIVATED
ECHO.
ECHO Please activate CONDA environment BEFORE running %~n0
ECHO.
GOTO :END

:END

