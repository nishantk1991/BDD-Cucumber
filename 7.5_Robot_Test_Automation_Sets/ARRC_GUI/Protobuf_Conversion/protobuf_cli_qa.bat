@echo off
@echo version: %1 
@echo version: %2 
@echo version: %3 
@echo version: %4 
@echo version: %5 
REM if NOT "%~1" == "7.6.4.0" goto :endparse

java -jar liq_protobufweb-%1-jar-with-dependencies.jar %2 %3 %4 %5


REM :endparse
REM @echo Version is invalid or not Passed !!!