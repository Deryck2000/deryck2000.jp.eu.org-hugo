@echo off
setlocal

rem コミットメッセージを引数として受け取る
set "commit_message=%~1"

rem 一つ目のリポジトリのパス
set "repo1_path=..\deryck2000.jp.eu.org-hugo"

rem 二つ目のリポジトリのパス
set "repo2_path=..\deryck2000.jp.eu.org"

if "%commit_message%"=="" (
    echo コミットメッセージを引数として指定してください
    exit /b 1
)

rem 一つ目のリポジトリに移動してフェッチ・プル・コミット・プッシュ
cd /d "%repo1_path%"
git fetch
git pull
git add .
git commit -m "%commit_message%"
git push origin main

rem 二つ目のリポジトリに移動してフェッチ・プル・コミット・プッシュ
cd /d "%repo2_path%"
git fetch
git pull
git add .
git commit -m "%commit_message%"
git push origin main

endlocal
