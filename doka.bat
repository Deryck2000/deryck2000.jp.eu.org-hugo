@echo off
setlocal


set "commit_message=%~1"


set "repo1_path=E:\GitHub\deryck2000.jp.eu.org-hugo"


set "repo2_path=E:\GitHub\deryck2000.jp.eu.org"

if "%commit_message%"=="" (
    echo set commit
    exit /b 1
)


cd /d "%repo1_path%"
git fetch
git pull
git add .
git commit -m "%commit_message%"
git push origin main


cd /d "%repo2_path%"
git fetch
git pull
git add .
git commit -m "%commit_message%"
git push origin main

endlocal
