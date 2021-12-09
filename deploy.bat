@echo off

git clone https://github.com/maze95/maze95-js temp_clone
cd temp_clone
rmdir .git
del /f README.md

move .\* ..\
cd ..
rmdir /s temp_clone
git add -A

set /p changed=What has changed?

git commit -m "Deploy '%changed%'"
git push