@Echo Off
Title Reg Converter v1.2 & Color 1A
cd %systemroot%\system32
call :IsAdmin

Reg.exe add "HKCR\ChromeHTML\shell\open\command" /ve /t REG_SZ /d "\"C:\Program Files\Google\Chrome\Application\chrome.exe\" --user-data-dir=\"你的路徑\User Data\" --single-argument %%1" /f
Exit

:IsAdmin
Reg.exe query "HKU\S-1-5-19\Environment"
If Not %ERRORLEVEL% EQU 0 (
 Cls & Echo You must have administrator rights to continue ... 
 Pause & Exit
)
Cls
goto:eof
