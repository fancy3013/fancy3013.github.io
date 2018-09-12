@echo off

echo "---start run auto build & push----"
echo "please make sure are you install gitbash ,node.js and dependency librarys!"
set base=%cd%
set source_dir=%base%\dist
set target_dir=D:\tmp\ddd

start /b /wait npm run build ^
& echo "!!! Will be deleted %target_dir% and copy %source_dir% to %target_dir% !!!" ^
& cd %target_dir% ^
& del /q /s %target_dir%\* ^
& xcopy /s /e /y %source_dir% %target_dir% ^
& echo "--build sucdess! start commit and push file ---" ^
& git add . ^
& git commit -m "auto build and commit" ^
& git pull ^
& git push ^
& pause
