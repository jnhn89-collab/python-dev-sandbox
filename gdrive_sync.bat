@echo off
:: Google Drive 양방향 동기화 (로컬 <-> gdrive:SaveToHome)
SET RCLONE="C:\Users\USER\AppData\Local\Microsoft\WinGet\Packages\Rclone.Rclone_Microsoft.Winget.Source_8wekyb3d8bbwe\rclone-v1.73.0-windows-amd64\rclone.exe"
SET LOCAL=D:\claude_project_sct\google_drive
SET REMOTE=gdrive:SaveToHome

%RCLONE% bisync "%LOCAL%" "%REMOTE%" --log-file "D:\claude_project_sct\sync_log.txt" --log-level INFO

if %ERRORLEVEL% NEQ 0 (
    echo [오류] 동기화 실패. sync_log.txt 확인 바람.
    exit /b 1
)
