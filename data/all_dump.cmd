@ECHO OFF
CALL "%~dp0\dump_tables.cmd" struct
CALL "%~dp0\dump_tables.cmd"
CALL "%~dp0\dump_tables.cmd" inserts
CALL "%~dp0\dump_tables.cmd" data
