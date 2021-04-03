@ECHO OFF
REM
REM pgpass.conf should be set for promptless action
REM
REM Call script with:
REM
REM - No parameters: both structure and data as dump
REM - STRUCT - only structure
REM - DATA - dump of data
REM - INSERTS if you want data as INSERT 
REM
REM (c) 2021 Vesic.Org
REM 

setlocal

REM Default values - structures definiton and data as dump

set suffix=struct_with_data
set struct=

REM STRUCT: Just structure of the tables
if /i [%1] NEQ [struct] goto check_data
set struct=--schema-only
set suffix=struct_only
goto do_dump

REM DATA: dump of data
:check_data
if /i [%1] NEQ [data] goto check_inserts
set struct=-a
set suffix=just_data
goto do_dump


REM INSERTS: data as INSERT
:check_inserts
if /i [%1] NEQ [inserts] goto do_dump
set struct=-a --column-inserts
set suffix=just_data_as_inserts
goto do_dump

:do_dump

REM Database structure details
REM ----------------------------------------------------------------------------
SET tables=-t fullname.table1 -t fullname.table1
set db_name=database_name
SET db_username=postgress
REM ----------------------------------------------------------------------------


SET dump="C:\Program Files\PostgreSQL\11\bin\pg_dump.exe"

for /f "skip=1" %%x in ('wmic os get localdatetime') do if not defined MyDate set MyDate=%%x
set today=%MyDate:~0,4%-%MyDate:~4,2%-%MyDate:~6,2%-%MyDate:~8,2%-%MyDate:~10,2%-%MyDate:~12,2%

SET out_file=Data\%today%_%suffix%.sql

%dump% %tables% --username=%db_username% --dbname=%db_name% --file=%out_file% %struct%

endlocal