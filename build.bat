@echo off
hugo -t github-style
xcopy ".\docs\*" "..\deryck2000.jp.eu.org" /E /H /C /I /Y
echo Files copied successfully.
pause
