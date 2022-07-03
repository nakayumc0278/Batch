@ECHO OFF
mkdir %date:~-10,4%%date:~-5,2%%date:~-2,2%
cd %~dp0%date:~-10,4%%date:~-5,2%%date:~-2,2%
copy "%userprofile%\AppData\Local\Google\Chrome\User Data\Profile 1\Bookmarks.bak"
copy "%userprofile%\AppData\Local\Google\Chrome\User Data\Profile 1\Bookmarks"
TIMEOUT /t 1 /nobreak > nul
