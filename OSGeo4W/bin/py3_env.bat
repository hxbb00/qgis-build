SET PYTHONHOME=%OSGEO4W_ROOT%\apps\Python39
SET PYTHONPATH=%PYTHONHOME%;%PYTHONHOME%\Scripts;%PYTHONHOME%\Lib;%PYTHONHOME%\Lib\site-packages
SET PYTHONUTF8=1
SET PYTHON_EXECUTABLE=%PYTHONHOME%\python.exe
SET Python_ROOT_DIR=%PYTHONHOME%\
PATH %PYTHONPATH%;%PATH%
pip uninstall -y PyQt5
pip install PyQt5 -i https://pypi.tuna.tsinghua.edu.cn/simple/
