@echo off
cd %~dp0
set NAME=grlnotes
set PDF=%NAME%.pdf
set TEX=latexmk -xelatex
set MODE=-interaction=nonstopmode -synctex=1

if "%1"=="clean" goto clean
if "%1"=="distclean" goto distclean


%TEX% %MODE% %NAME%

if exist %PDF% (
copy %PDF% .. /Y
)
exit /B

:distclean
del ..\%PDF%

:clean
%TEX% -C %NAME%.tex
exit /B
