@ECHO OFF

:: ======================================================================================================================================================
::  ActivateWindows10.bat
::  Written by AAAA
::  Github Page : https://github.com/Anonymous-AAAA/
::  Reference : 
::      https://iv0107.pixnet.net/blog/post/471010913-%E6%83%B1%E4%BA%BA%E7%9A%84windows-10%E6%A1%8C%E9%9D%A2%E6%B5%AE%E6%B0%B4%E5%8D%B0~
:: ======================================================================================================================================================

::::::::::::::::
::Run as Admin::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
TITLE Asking for Administrator access
CHCP 950
MODE CON COLS=44 LINES=7
COLOR CF
ECHO.
ECHO Asking for Administrator access . . .
ECHO.
ECHO.
ECHO Please click on "Yes"to continue . . .
ECHO.
CD /D "%~dp0" && ( if exist "%temp%\getadmin.vbs" del "%temp%\getadmin.vbs" ) && fsutil dirty query %systemdrive% 1>nul 2>nul || ( cmd /u /c echo set UAC = CreateObject^("Shell.Application"^) : UAC.ShellExecute "cmd.exe", "/k cd ""%~sdp0"" && ""%~s0"" %Apply%", "", "runas", 1 >> "%temp%\getadmin.vbs" && TIMEOUT /T 3 > nul && call "%temp%\getadmin.vbs" && exit /B )
CLS
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::::
::ANNOYING DISCLAIMER::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
CHCP 950
:Q
COLOR CF
MODE CON COLS=116 LINES=30
TITLE Confirmation
CLS
ECHO.
ECHO ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO ::                                                                                                                ::
ECHO ::   WARNING    WARNING    WARNING    WARNING    WARNING    WARNING    WARNING    WARNING    WARNING    WARNING   ::
ECHO ::                                                                                                                ::
ECHO ::                         This program will clear your previous Windows 10 License Key.                          ::
ECHO ::                                                                                                                ::
ECHO ::                      If you don't agree to this then please stop the program imediately.                       ::
ECHO ::                                                                                                                ::
ECHO ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
ECHO.
ECHO.
ECHO Type "yes" to continue, or type "no"  to cancel.
SET act=0
SET /P act=[yes/no]:

IF %act%==yes (goto Y)
IF %act%==no (goto N)
CLS
MODE CON COLS=52 LINES=5
TITLE ERROR
ECHO.
ECHO ERROR
ECHO.
ECHO You can only type "yes" to continue or "no" to exit.
TIMEOUT /t 5 > nul
GOTO Q

:N
EXIT
:Y
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::
::Clean::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
COLOR 0A
MODE CON COLS=45 LINES=10
TITLE Clear previous key value
ECHO.
ECHO ^        Cleaning previous key value
ECHO.
ECHO.
cscript //nologo c:\windows\system32\slmgr.vbs -upk 1>nul 2>nul
TIMEOUT /t 1 >nul
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

::::::::::::::::::::::::::::::
::Select windows 10 editions::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
CLS
:Q2
TITLE Select your windows 10 editions
ECHO.
ECHO Please select your windows 10 editions :
ECHO.
ECHO ^       1: Windows 10 Home
ECHO ^       2: Windows 10 Pro
ECHO ^       3: Windows 10 Enterprise
ECHO.
ECHO.
SET act=0
SET /P act=[1/2/3]:

IF %act%==1 (goto 1)
IF %act%==2 (goto 2)
IF %act%==3 (goto 3)

CLS
TITLE ERROR
ECHO.
ECHO ERROR
ECHO.
ECHO ^         Please select number [1/2/3]
ECHO.
ECHO.
TIMEOUT /t 5 >nul
GOTO Q2
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::::::::::::::::
::Replace key value::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:1
CLS
TITLE Windows 10 Home editions
ECHO.
ECHO Please wait for a while . . .
ECHO.
ECHO.
cscript //nologo c:\windows\system32\slmgr.vbs /ipk TX9XD-98N7V-6WMQ6-BX7FG-H8Q99 >nul
GOTO end
:2
CLS
TITLE Windows 10 Pro editions
ECHO.
ECHO Please wait for a while . . .
ECHO.
ECHO.
cscript //nologo c:\windows\system32\slmgr.vbs /ipk W269N-WFGWX-YVC9B-4J6C9-T83GX >nul
GOTO end
:3
CLS
TITLE Windows 10 Enterprise editions
ECHO.
ECHO Please wait for a while . . .
ECHO.
ECHO.
cscript //nologo c:\windows\system32\slmgr.vbs /ipk NPPR9-FWDCX-D2C8J-H872K-2YT43 >nul
GOTO end
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

:::::::
::End::
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
:end
CLS
TITLE Almost done . . .
cscript //nologo c:\windows\system32\slmgr.vbs /skms zh.us.to 1>nul 2>nul
ECHO.
ECHO Please wait for a while . . .
ECHO.
ECHO.
cscript //nologo c:\windows\system32\slmgr.vbs /ato 1>nul 2>nul
CLS
ECHO.
ECHO Successfully activated windows 10
ECHO.
ECHO.
ECHO Auto exit in 5
TIMEOUT /t 1 >NUL
CLS
ECHO.
ECHO Successfully activated windows 10
ECHO.
ECHO.
ECHO Auto exit in 4
TIMEOUT /t 1 >NUL
CLS
ECHO.
ECHO Successfully activated windows 10
ECHO.
ECHO.
ECHO Auto exit in 3
TIMEOUT /t 1 >NUL
CLS
ECHO.
ECHO Successfully activated windows 10
ECHO.
ECHO.
ECHO Auto exit in 2
TIMEOUT /t 1 >NUL
CLS
ECHO.
ECHO Successfully activated windows 10
ECHO.
ECHO.
ECHO Auto exit in 1
TIMEOUT /t 1 >NUL
EXIT
:BOOM
ECHO BOOM
pause
:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::