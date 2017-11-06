@echo off

SET TARGET=source
SET TEMPLATES=asciidoctor-deck.js/templates/haml


call asciidoctor -T %TEMPLATES% %TARGET%/*.adoc

if not exist html\deck.js (
    mkdir html\deck.js
)

move %TARGET%\*.html html\
xcopy /Y /S /E deck.js html\deck.js\

pause