@echo off

set VER=2.0.0
title Network Drive Adder Batch Program Ver %VER%

set DRIVE_LETTER_1=R
set DRIVE_LETTER_2=S
set DRIVE_LETTER_3=T
set DRIVE_LETTER_4=U
set DRIVE_LETTER_5=V
set PATH_1="\\192.168.1.4\cloud\GoogleDrive(20cc0226)\1_学校\ネットプログラミング1\Python"
set PATH_2="\\192.168.1.4\cloud"
set PATH_3="\\192.168.1.4\public"
set PATH_4="\\192.168.1.4\school"
set PATH_5="\\192.168.1.48\surveillance"

echo.
echo.

echo ネットワークの使用するドライブを切断します。
echo.
echo #切断するドライブ一覧
echo ---------------------------------------------------------------
if exist %DRIVE_LETTER_1%:\ (
	net use %DRIVE_LETTER_1%:
) else (
	echo %DRIVE_LETTER_1%: は割り当てられていません。
	)
)
echo ---------------------------------------------------------------
if exist %DRIVE_LETTER_2%:\ (
	net use %DRIVE_LETTER_2%:
) else (
	echo %DRIVE_LETTER_2%: は割り当てられていません。
	)
)
echo ---------------------------------------------------------------
if exist %DRIVE_LETTER_3%:\ (
	net use %DRIVE_LETTER_3%:
) else (
	echo %DRIVE_LETTER_3%: は割り当てられていません。
	)
)
echo ---------------------------------------------------------------
if exist %DRIVE_LETTER_4%:\ (
	net use %DRIVE_LETTER_4%:
) else (
	echo %DRIVE_LETTER_4%: は割り当てられていません。
	)
)
echo ---------------------------------------------------------------
if exist %DRIVE_LETTER_5%:\ (
	net use %DRIVE_LETTER_5%:
) else (
	echo %DRIVE_LETTER_5%: は割り当てられていません。
	)
)
echo ---------------------------------------------------------------
TIMEOUT /t 2 /nobreak >nul

echo.
echo #ドライブを切断します
echo ---------------------------------------------------------------
if exist %DRIVE_LETTER_1%:\ (
	net use %DRIVE_LETTER_1%: /delete
) else (
	echo %DRIVE_LETTER_1%:\ は割り当てられていません。
	)
)

if exist %DRIVE_LETTER_2%:\ (
	net use %DRIVE_LETTER_2%: /delete
) else (
	echo %DRIVE_LETTER_2%:\ は割り当てられていません。
	)
)

if exist %DRIVE_LETTER_3%:\ (
	net use %DRIVE_LETTER_3%: /delete
) else (
	echo %DRIVE_LETTER_3%:\ は割り当てられていません。
	)
)
if exist %DRIVE_LETTER_4%:\ (
	net use %DRIVE_LETTER_4%: /delete
) else (
	echo %DRIVE_LETTER_4%:\ は割り当てられていません。
	)
)
if exist %DRIVE_LETTER_5%:\ (
	net use %DRIVE_LETTER_5%: /delete
) else (
	echo %DRIVE_LETTER_5%:\ は割り当てられていません。
	)
)
echo.
TIMEOUT /t 3 /nobreak >nul

echo #割り当てるドライブ一覧
echo ---------------------------------------------------------------
echo %DRIVE_LETTER_1%:\は "%PATH_1%" です
echo ---------------------------------------------------------------
echo %DRIVE_LETTER_2%:\は "%PATH_2%" です
echo ---------------------------------------------------------------
echo %DRIVE_LETTER_3%:\は "%PATH_3%" です
echo ---------------------------------------------------------------
echo %DRIVE_LETTER_4%:\は "%PATH_4%" です
echo ---------------------------------------------------------------
echo %DRIVE_LETTER_5%:\は "%PATH_5%" です
echo ---------------------------------------------------------------
echo.

echo #ネットワークドライブの割当を実行します。
timeout /t 1 /nobreak >nul
echo 割り当て中...
echo.

timeout /t 2 /nobreak >nul
net use %DRIVE_LETTER_1%: %PATH_1%  /PERSISTENT:NO
net use %DRIVE_LETTER_2%: %PATH_2%  /PERSISTENT:NO
net use %DRIVE_LETTER_3%: %PATH_3%  /PERSISTENT:NO
net use %DRIVE_LETTER_4%: %PATH_4%  /PERSISTENT:NO
net use %DRIVE_LETTER_5%: %PATH_5%  /PERSISTENT:NO

echo 割り当てが完了しました!
TIMEOUT /t 1 /nobreak >nul