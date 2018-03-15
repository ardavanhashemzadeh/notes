@ECHO OFF
REM Ardavan Hashemzadeh
REM Remove the entries you'd like to keep, save and continue

SET remotecomputer=telehealth7

wmic /node:%remotecomputer% product get name | sort >> uninstall.list
notepad uninstall.list
pause
ECHO @ECHO OFF > batchuninstall.bat
for /F "tokens=*" %%A in (uninstall.list) do echo wmic/node:%remotecomputer% product where name="%%A" call uninstall >> batchuninstall.bat
batchuninstall.bat >> uninstall.log
