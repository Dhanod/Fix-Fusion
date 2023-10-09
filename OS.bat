
@echo off
cls
Title FixFusion v 1.0
color 19

:Boot
echo Detecting Boot Device...
echo Detected Succesfully!: %username%
echo                                             =============
echo                                             [@@@@ : @@@@]
echo                                             [@@@@ : @@@@]
echo                                             [=====:=====]
echo                                             [@@@@ : @@@@]
echo                                             [@@@@ : @@@@]
echo                                             =============
echo                                            :Starting Windows:
echo                                            ================                                                        
timeout /t 9 /NOBREAK >nul
cls

:PlaySound
powershell -c "(New-Object Media.SoundPlayer 'Windows Logon.wav').PlaySync()"


:Choose a Session
echo Welcome to FixFusion version 1.0! Your Computer Fixing Hub!
echo [===================================================================================]
echo [   Chosce your Session...                                                          ]
echo [      A.Administrator   B.System  Note:The System accoount has Less Privileges...  ]
echo [===================================================================================]
set /p input=
if /i %input%==A goto Login
if /i %input%==B goto Login2
cls


:Login
color a
echo Loading Administrator Session...
timeout /t 10 /NOBREAK >nul
echo Hello Welcome To Windows PE Please Input Your Password:The Default Password Is 321 Change By Going to The Batch File.  
set /p "password="
if "%password%"=="321" goto Welcome
echo Incorrect password!
timeout /t 2
goto Login


:Welcome
echo Administrator Welcome....
goto Tools

:Login2
color a
echo Loading System Session...
timeout /t 10 /NOBREAK >nul
echo Hello Welcome To Windows PE Please Input Your Password:The Default Password Is 123 Change By Going to The Batch File 1.Forgot Password?
set /p "password="
if "%password%"=="123" goto Welcome2
echo Incorrect password!
timeout /t 2
goto Login2

:Welcome2
echo System Welcome
goto 2Tools



:Tools
timeout /t 4 /NOBREAK
cls
echo Here Are the Tools: 1.Command Prompt  2.Notepad  3.SystemInfo  4.Task Manager 5.ShutDown 7.Restart 8.Registry 9.Editor 10.Boot Data
pause
echo If You Want To Open One of These Tools Do This: 

:Type Number
echo 1.CMD 2.Notepad 3.Systeminfo 4.Task Manager. 5.ShutDown(This Device) 6.Restart(This Device) 7.Registry Editor 8.Help 9.Restart This Windows PE 10.logOff 11.Boot Data
echo Type The Tool Number
echo ==========================================================================================================================================================
pause
set /p input=
if /i %input%==1 goto CMD
if /i %input%==2 goto Notepad
if /i %input%==3 goto System Information
if /i %input%==4 goto Task Manager
if /i %input%==5 goto ShutDown
if /i %input%==6 goto Restart
if /i %input%==7 goto Registry Editor
if /i %input%==8 goto Help
if /i %input%==9 goto Boot
if /i %input%==10 goto Chose a Session
if /i %input%==11 goto Boot Data

:2Tools
timeout /t 4 /NOBREAK
cls
echo Here Are the Tools: CMD  Notepad  SystemInfo  Task Manager ShutDown Restart 
pause
echo If You Want To Open One of These Tools Do This: 

:2Type Number
echo 1.CMD 2.Notepad 3.Systeminfo 4.Task Manager. 5.ShutDown(This Device) 6.Restart(This Device) 7.log off of Windows PE
echo Type The Tool Number
echo ===========================================================================================================
Set /p input=
if /i %input%==1 goto 2CMD
if /i %input%==2 goto 2Notepad
if /i %input%==3 goto 2System Information
if /i %input%==4 goto 2Task Manager
if /i %input%==5 goto 2ShutDown
if /i %input%==6 goto 2Restart
if /i %input%==7 goto Chose a Session

:CMD
Start cmd
pause
goto Type Number

:Notepad
notepad
pause
goto Type Number

:System Information
start C:/Windows/System32/msinfo32
pause
goto Type Number

:Task Manager
lanchtm
pause
goto Type Number

:ShutDown
echo Are You Sure... Yes or No? This will ShutDown Your Whole Computer
set /p input=
if /i %input%==Yes goto Shutdown2
if /i %input%==No goto Type Number

:Shutdown2
color 19
wpeutil shutdown

:Restart
echo Sure? Yes or No
set /p input=
if /i %input%== Yes goto Restart2
if /i %input%==No goto Type Number

:Restart2
color 19
wpeutil reboot
goto 2Type Number

:Help
echo This Product is not Assiocted With Microsoft....
echo This Product is Under Devolepment...
echo This Product Has a Market Share...About 1.3 Percent...
echo The Product Main Goal is to Tell the World That Batch Programing is The Best...
echo This "OS" Has Two Accounts:Administrator and System...
echo The System Account has Less Privelges than the Administrator Account...
echo Both of These Accounts Cannot Be Modified or Deleted
echo This Operating System Has No FileSystem or Registry...But I can Fuction Without Them Using The Data We Put On The Batch File...
echo This Product is NOT For Everyday Use.But for Emergency...Please Keep This Batch File in Your Portable USB or HHD... Esitamted Size:- 2 KiloBytes!!!
echo This Product is Open-Source...
echo This is a Very Hard Project...
echo Thanks For Buying...
pause
goto 2Type Number

:Registry Editor
start C:/Windows/regedit
pause 
goto Type Number

:Boot Data
bcdedit
pause
goto Type Number

:Forgot Password
echo Who am the Creator Of this Windows pe   Dhanod or Jorge Washinton?
set /p input=
if /i %input%==Dhanod goto Welcome
if /i %input%==Shutdown2

:2Forgot Password
echo Who am the Creator Of this Windows pe   Dhanod or Jorge Washinton?
set /p input=
if /i %input%==Dhanod goto Welcome2
if /i %input%==Jorge Washinton goto Shutdown2
if /i not %input%==goto Shutdown2

:2CMD
Start cmd
pause
goto 2Type Number

:2Notepad
notepad
pause
goto 2Type Number

:2System Information
start C:/Windows/System32/msinfo32
pause
goto 2Type Number

:2Task Manager
lanchtm
pause
goto :2Type Number


:2ShutDown
echo Are You Sure... Yes or No? This will ShutDown Your Whole Computer
set /p input=
if /i %input%==Yes goto Shutdown2
if /i %input%==No goto 2Type Number

:Shutdown2
color 19
wpeutil shutdown
goto 2Type Number

:2Restart
echo Sure? Yes or No
set /p input=
if /i %input%== Yes goto Restart2
if /i %input%==No goto 2Type Number

:Restart2
color 19
timeout /t 10 /NOBREAK
wpeutil reboot
pause


