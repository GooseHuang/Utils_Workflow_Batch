@echo off

REM Get cwd
set CURRENT_DIR=%CD%

REM Get the directory of the batch file
set "BATCH_DIR=%~dp0"

REM Change to the batch file directory
cd /d "%BATCH_DIR%"


set ROOT=D:\Programs\Anaconda3
call %ROOT%\Scripts\activate.bat %ROOT%
call conda activate gucci_yolo

:: `::` -- for comment

:: `REM` -- for remark

:: `pushd` -- for push directoty to stack and change to that directory

:: python Wait4SomeTime.py


:: Exit if Any Error
set "lg=2> %CURRENT_DIR%\error.log|| echo.>>%CURRENT_DIR%\info.log && type %CURRENT_DIR%\error.log>>%CURRENT_DIR%\info.log && echo.>>%CURRENT_DIR%\info.log && echo. && echo. && type %CURRENT_DIR%\error.log && echo. && echo Error encountered. Exiting... && echo Error encountered. Exiting...>>%CURRENT_DIR%\info.log && sleep 5 && exit /b 1"
REM %lg%




set "START=echo. && echo ####################################### START ###################################### && echo.&&echo.>>info.log&& echo ########################################## START ##########################################>>info.log && echo.>>info.log"


%START%

echo Start at: %DATE% %TIME%>> info.log

echo. >> info.log


REM TESTING
REM python xx.py %lg%


:: Deploy Similarity Code
set TMP=Deploy XXXX Code...
echo. && echo %TMP% && echo %TMP% >> info.log
pushd XXXX/data %lg%
python AutoDeploy.py %lg%
pushd %CURRENT_DIR% 

:: Batch Run Similarity Code
set TMP=Batch Run XXXX Code...
echo. && echo %TMP% && echo %TMP% >> info.log
pushd XXXX/input %lg%
python ToDo.py %lg%
python ./output/AutoDeploy.py %lg%
pushd %CURRENT_DIR%


set TMP=Batch Job Finished!
echo. && echo %TMP% && echo. >> info.log && echo %TMP% >> info.log

echo End at: %DATE% %TIME% >> info.log
sleep 5