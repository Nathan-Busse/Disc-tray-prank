@echo off 
:start 
set /a var+=1
if %var% EQU 100 goto end 

:: Command
powershell (New-Object -com "WMPlayer.OCX.7").cdromcollection.item(0).eject()

goto start 
echo var has reached %var%
pause
exit

:: Nathan-Busse