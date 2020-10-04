@echo

del "%AppData%\Microsoft\Windows\SendTo\Bluetooth ファイル転送.lnk"
del "%AppData%\Microsoft\Windows\SendTo\Fax Recipient.lnk"
del "%AppData%\Microsoft\Windows\SendTo\ドキュメント.mydocs"
del "%AppData%\Microsoft\Windows\SendTo\Mail Recipient.MAPIMail"

echo 設定完了

TIMEOUT /t 5 /nobreak >nul

exit