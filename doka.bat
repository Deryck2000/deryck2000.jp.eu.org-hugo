@echo off
setlocal

rem コミットメッセージを引数として受け取る
set "commit_message=%~1"

rem 一つ目のリポジトリのパス
set "..\deryck2000.jp.eu.org-hugo"

rem 二つ目のリポジトリのパス
set "..\deryck2000.jp.eu.org"

rem 一つ目のリポジトリに移動してコミット・プッシュ
cd /d "%repo1_path%"
git add .
git commit -m "%commit_message%"
git push origin main

rem 二つ目のリポジトリに移動してコミット・プッシュ
cd /d "%repo2_path%"
git add .
git commit -m "%commit_message%"
git push origin main

endlocal
pause