@echo off
:: 최초 1회만 실행 - Google Drive 양방향 동기화 초기화
SET RCLONE="C:\Users\USER\AppData\Local\Microsoft\WinGet\Packages\Rclone.Rclone_Microsoft.Winget.Source_8wekyb3d8bbwe\rclone-v1.73.0-windows-amd64\rclone.exe"
SET LOCAL=D:\claude_project_sct\google_drive
SET REMOTE=gdrive:SaveToHome

echo [초기화] 최초 bisync 설정 중... (로컬 기준으로 동기화)
%RCLONE% bisync "%LOCAL%" "%REMOTE%" --resync --log-file "D:\claude_project_sct\sync_log.txt" --log-level INFO

echo.
echo 초기화 완료! 앞으로는 gdrive_sync.bat 을 사용하세요.
pause
