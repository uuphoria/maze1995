@echo off

del /f .gitattributes
del /f .gitignore
del /f mobile.html
del /f index.css
del /f index.html
del /f manifest.json
del /f manifestm.json
del /f maze95.js
del /f sw.js
del /f sw.js.map
del /f workbox-e628b7cf.js
del /f workbox-e628b7cf.js.map

git clone https://github.com/maze95/maze95-js temp_clone
cd temp_clone
rmdir /s /Q .git
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

echo Done!
pause