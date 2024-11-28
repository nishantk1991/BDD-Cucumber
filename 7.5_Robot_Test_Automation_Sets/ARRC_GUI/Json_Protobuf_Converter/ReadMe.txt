1. extract 1.zip
2. copy both QA.bat and lib folder under the same directory.
3. open the cmd from the directory where lib and QA.bat file are copied.
4. in CMD type qa and then enter
5. go to directory C:\logs and check for logfile named as "inquiry-logFile".
6. Open this file and confirm that service is running - "[main] {io.micronaut.runtime.Micronaut} INFO: Startup completed in 8941ms. Server Running: http://localhost:7777"
7. the execute following endpoints-

http://localhost:7777/proto/toProto/requestData - convert request paylaod json to proto object
http://localhost:7777/proto/toJson/responseData - convert response proto to json.