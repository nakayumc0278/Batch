@echo off
rem 861教室の機器にpingを送るプログラム

rem バージョン指定とタイトル指定
set ver = 1.0.0
title 861 Room Ping Program %ver%

echo pingを開始します...

rem 2秒待機
TIMEOUT /t 2 /nobreak >nul

rem NWアドレスを 3rd Oct まで指定
set ipaddress=10.40.144.

rem forを使ったループ(1~254まで1ずつ増分)
for /l %%n in (1, 1, 254) do (
  rem コマンドプロンプト画面にメッセージを出力
  echo.
  echo %ipaddress%%%n に送信しています...
  ping  %ipaddress%%%n >> a.txt
  
  rem 結果出力(0: 正常終了 1: エラー)
  if %ERRORLEVEL% == 0 (
    echo %ipaddress%%%n はpingできました。
  ) else if %ERRORLEVEL% == 1 (
    echo %ipaddress%%%n はpingできませんでした。
  )
)
