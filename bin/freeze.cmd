@ECHO OFF
IF NOT DEFINED CONDA_DEFAULT_ENV    GOTO :NOT_ACTIVATED
IF %CONDA_DEFAULT_ENV%==base        GOTO :NOT_ACTIVATED

pip freeze > requirements.txt
CALL conda env export > environment.yml
GOTO :END

:NOT_ACTIVATED
ECHO Please Activate Environment BEFORE running freeze.cmd
GOTO :END

:END

