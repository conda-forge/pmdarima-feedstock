@echo on

%PYTHON% -m pip install --no-deps -vv .
if %ERRORLEVEL% neq 0 exit 1
