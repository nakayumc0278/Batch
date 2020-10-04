@echo off

echo.
echo ====================================================
echo 「初回サインインのアニメーションを表示する」の無効化
echo ====================================================
echo.

rem -----「初回サインインのアニメーションを表示する」の無効化 -----
reg add "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" /v "EnableFirstLogonAnimation" /t REG_DWORD /d "0" /f

TIMEOUT /t 5 /nobreak >nul

exit