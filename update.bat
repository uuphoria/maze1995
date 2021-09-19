@echo off
title Maze 95 JS update tool
del /f index.html
del /f index.css
del /f maze95.js
rmdir /Q /S textures
rmdir /Q /S game
rmdir /Q /S levels
rmdir /Q /S audio
git clone https://github.com/maze95/maze95-js.git temp_clone
move temp_clone\index.html index.html
move temp_clone\index.css index.css
move temp_clone\maze95.js maze95.js
move temp_clone\textures textures
move temp_clone\game game
move temp_clone\levels levels
move temp_clone\audio audio
rmdir /Q /S temp_clone
echo Successfully updated Maze 95 JS.
pause
