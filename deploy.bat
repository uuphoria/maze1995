@echo off

del /f .gitattributes
del /f .gitignore
del /f canvas-only.html
del /f index.css
del /f index.html
del /f manifest.json
del /f manifest2.json
del /f maze95.js
del /f sw.js

git clone https://github.com/maze95/maze95-js temp_clone
cd temp_clone
rmdir .git
del /f README.md

move .\* ..\
move game ..\game
move textures ..\textures
cd ..
rmdir /s /Q temp_clone
git add -A

set /p changed=What has changed? 

git commit -m "Deploy '%changed%'"
git push