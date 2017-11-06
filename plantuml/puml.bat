@ECHO off
::
:: PlantUML Execute
:: 

SET GRAPHVIZ_DOT="%~dp0\bin\dot.exe"

SET CONFIG_FILE="%~dp0\config.txt"
SET PLANTUML_JAR="%~dp0\lib\plantuml.jar"

java -jar %PLANTUML_JAR% -config %CONFIG_FILE% %*