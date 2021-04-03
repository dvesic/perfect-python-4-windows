@ECHO OFF
CALL conda env create -f environment.yml
GOTO :END

%CONDA_PREFIX%
:NOT_ACTIVATED
ECHO There is problem with activation - please copy /etc manually
GOTO :END

:END

