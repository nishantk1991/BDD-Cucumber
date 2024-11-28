set LIQ_ServerDir=%~dp0
SET LIQ_ServerDir=%LIQ_ServerDir:~0,-1%
pushd %LIQ_ServerDir%
echo "%LIQ_ServerDir%"
set lchc.lib=%LIQ_ServerDir%\lib\liq-inquiry-service-0.1.jar;%LIQ_ServerDir%\lib\liq-common-lib-1.0.0.jar;%LIQ_ServerDir%\lib\liq_apputils-7.6.4.0.jar;%LIQ_ServerDir%\lib\log4j-api-2.17.1.jar;%LIQ_ServerDir%\lib\log4j-core-2.17.1.jar;%LIQ_ServerDir%\lib\liq_protobufweb-7.6.4.0.jar;

java -Dserver.dir=%LIQ_ServerDir% -classpath %lchc.lib% com.liq.module.inquiry.InquiryApplication