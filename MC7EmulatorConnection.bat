echo off
title MC7EmulatorConnection  ,  M-CAP7AIN

cls
if exist "platform-tools" ( cd platform-tools ) else (goto :NotFound) 
:main

cls
echo   +++++++++++++++++++++++++++++++++++++++++++
echo   +   MC7EmulatorConnection  ,  M-CAP7AIN   +
echo   +        http://ictcaptain.blog.ir        +
echo   +    Copy Script To Android SDK Folder    +
echo   +++++++++++++++++++++++++++++++++++++++++++
echo.

echo  List Emulators : 
echo.
echo   0.	Kill Server
echo   1.	Connect To AVD
echo   2.	Connect To Nox
echo   3.	Connect To Nox2
echo   4.	Connect To Genymotion
echo   5.	Connect To Droid4X
echo   6.	Connect To BlueStacks
echo   7.	Connect To Youwave
echo   8.	Connect To Memu

echo.
echo.

SET /P UserInput=   Select Emulator or Enter Port Number:
cls

echo   ++++++++++++++++++++++++++++
echo   +           Logs           +
echo   ++++++++++++++++++++++++++++
echo.

if %UserInput% GTR 9 ( goto :custom )
if %UserInput%==0 (adb kill-server)
if %UserInput%==1 (adb connect 127.0.0.1:5554)
if %UserInput%==2 (adb connect 127.0.0.1:57001)
if %UserInput%==3 (adb connect 127.0.0.1:62025)
if %UserInput%==4 (adb connect 127.0.0.1:5037)
if %UserInput%==5 (adb connect 127.0.0.1:5565)
if %UserInput%==6 (adb connect 127.0.0.1:5555)
if %UserInput%==7 (adb connect 127.0.0.1:5558)
if %UserInput%==8 (adb connect 127.0.0.1:21503)

echo.
echo.
pause
goto :main
exit

:NotFound
color C
echo   ++++++++++++++++++++++++++++++++++
echo   +    platform-tools Not Found.   +
echo   ++++++++++++++++++++++++++++++++++
echo.
pause
exit

:custom
(adb connect 127.0.0.1:%UserInput%)
pause
goto :main
exit