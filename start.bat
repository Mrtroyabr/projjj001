@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Server 2019 By LionGemingYT" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run" /f /v Wallpaper /t REG_SZ /d D:\a\wallpaper.bat
net user  LionGemingYT LionYT@3500 /add >nul
net localgroup administrators LionGemingYT /add >nul
net user LionGemingYT /active:yes >nul
net user installer /delete
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant LionGemingYT:F >nul
ICACLS C:\Windows\installer /grant LionGemingYT:F >nul
echo Successfully installed! If PC is dead, rebuild again.
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Failed to retreive ktoken authtoken - check again your authtoken"
echo Username:  LionGemingYT
echo Password: LionYT@3500
echo You can login now!
ping -n 10 127.0.0.1 >nul
 