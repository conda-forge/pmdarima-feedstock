:: Removing the egg-info directory is necessary until https://github.com/alkaline-ml/pmdarima/issues/448 is resolved
RMDIR /S /Q .\pmdarima.egg-info\
python -m pip install . -vv