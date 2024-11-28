
*** Settings ***
Resource    ../GlobalConfigFile/ImportFile.robot
Library    RequestsLibrary  
Library    JsonLibrary    
Library    String    
Library    GenerateOidcToken
Library    BaselineComparator
Library    XML    UTF-8

*** Keywords ***
   

GET KEYCLOAK TOKEN     
    [Documentation]    Generate and Return Keycloak token
    ...    
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Log    Generate and Return Keycloak token
    
    ${data}    Create Dictionary    client_secret=${KEY_CLOAK_CLIENT_SECRET}    grant_type=${PASSWORD}    client_id=${KEY_CLOAK_CLIENT_ID}    scope=openid    response_type=code    username=${USERNAME}    password=${PASSWORD}
       
    ${response}    POST Request    ${KeyCloak_alias}    ${KEY_CLOAK_URLPrefix}    data=${data}    headers=${keyCLoak_headers}
    Log    ${response.content}
    
    ${keyCloakToken}    Get Value From Json    ${response.json()}   $..access_token
    
    ${keyCloakToken}    Remove String   ${keyCloakToken}    "
    Log    ${keyCloakToken}
    Set Global Variable    ${keyCloakToken}    ${keyCloakToken} 
    [Return]    ${keyCloakToken}
    

VALID SESSION IS CREATED FOR REST REQUESTS
    [Arguments]    ${APIMUrl}    ${alias}    
    [Documentation]    This keyword generates authentication token and create API session for FFDC - B2B/B2C/B2E authentication type. Idempotency-Key can be passed if 
    ...    new key is required otherwise will take the default value 1245678967
    Log    verify API session is created    
     
    &{headers}    Create Dictionary    Content-Type=application/json    Authorization=Bearer ${keyCloakToken} 
     
    Create Session    ${alias}     ${APIMUrl}    verify=True    headers=${headers}        
   
    Set Global Variable    &{HEADERS}    &{headers} 
    

    
VALID SESSION IS CREATED FOR JSON TO PROTOBUF CONVERSION
    [Arguments]    ${APIMUrl}    ${alias}    
    [Documentation]    This keyword generates authentication token and create API session for FFDC - B2B/B2C/B2E authentication type. Idempotency-Key can be passed if 
    ...    new key is required otherwise will take the default value 1245678967
    Log    verify API session is created    
     
    &{headers}    Create Dictionary    Content-Type=application/json
     
    Create Session    ${alias}     ${APIMUrl}    verify=True    headers=${headers}        
   
    # Set Global Variable    &{HEADERS}    &{headers} 
    [Return]    &{headers}
    

VALID SESSION IS CREATED FOR PROTOBUF TO JSON CONVERSION
    [Arguments]    ${APIMUrl}    ${alias}    
    [Documentation]    This keyword generates authentication token and create API session for FFDC - B2B/B2C/B2E authentication type. Idempotency-Key can be passed if 
    ...    new key is required otherwise will take the default value 1245678967
    Log    verify API session is created    
     
    &{headers}    Create Dictionary    Content-Type=application/x-protobuf
     
    Create Session    ${alias}     ${APIMUrl}    verify=True    headers=${headers}        
   
    Set Global Variable    &{HEADERS}    &{headers} 
    # [Return]    &{headers}
    
    
VALID SESSION IS CREATED FOR PROTOBUF REQUESTS
    [Arguments]    ${APIMUrl}    ${alias}    
    [Documentation]    This keyword generates authentication token and create API session for FFDC - B2B/B2C/B2E authentication type. Idempotency-Key can be passed if 
    ...    new key is required otherwise will take the default value 1245678967
    Log    verify API session is created    
     
    &{headers}    Create Dictionary    Content-Type=application/x-protobuf    Authorization=Bearer ${keyCloakToken} 
     
    Create Session    ${alias}     ${APIMUrl}    verify=True    headers=${headers}        
   
    Set Global Variable    &{HEADERS}    &{headers} 
    

REPLACE SPECIAL CHARACTER FOR API REQUEST
    [Arguments]    ${inputString}
    [Documentation]    This keyword will replace special characters from the string & remove " and return

    ${inputString}    Remove String   ${inputString}    "
    
    ${inputString}    Replace String   ${inputString}    ?    %3F    
    # ${inputString}    Replace String   ${inputString}    =    %3D
    ${inputString}    Replace String   ${inputString}    $    %24
    ${inputString}    Replace String   ${inputString}    $    %24
    ${inputString}    Replace String   ${inputString}    &    %26
    ${inputString}    Replace String   ${inputString}    @    %40
    ${inputString}    Replace String   ${inputString}    /#    %23
    ${inputString}    Replace String   ${inputString}    %    %25
    ${inputString}    Replace String   ${inputString}    :    %3A
    

    [Return]    ${inputString}
    


VALID SESSION IS CREATED FOR SOAP REQUESTS
    [Arguments]    ${Idempotency-Key}=1245678967
    [Documentation]    This keyword generates authentication token and create API session for FFDC - B2B/B2C/B2E authentication type. Idempotency-Key can be passed if 
    ...    new key is required otherwise will take the default value 1245678967
    Log    verify API session is created    
     
    
     # ${token}    Run Keyword If    '${AUTHORIZATION_TYPE}'=='B2B'    Get Token    ${Base_URI}    ${CLIENT_ID}    ${CLIENT_SECRET}    authorization_type=${AUTHORIZATION_TYPE}    
    # ...    ELSE IF   '${AUTHORIZATION_TYPE}'=='B2C' or '${AUTHORIZATION_TYPE}'=='B2E'   Get Token    ${Base_URI}    ${CLIENT_ID}    ${CLIENT_SECRET}    ${CALLBACK_URL}    ${USERNAME}    ${PASSWORD}   authorization_type=${AUTHORIZATION_TYPE}

    # Set Global Variable    ${IDEMPOTENCY_KEY}    ${Idempotency-Key}
    # Set Global Variable    ${TOKEN}    ${token}
    
    &{headers}    Create Dictionary    Content-Type=application/xml    #Authorization=Bearer ${token}
    Create Session    alias     ${APIMUrl}    verify=True    headers=${headers}   
     
   
    Set Global Variable    &{HEADERS}    &{headers} 
    

VALID AUTHENTICATION TOKEN AND SESSION IS CREATED FOR SOAP REQUESTS
    [Arguments]    ${USERNAME}=${USERNAME}    ${PASSWORD}=${PASSWORD}    ${Idempotency-Key}=1245678967
    [Documentation]    This keyword generates authentication token and create API session for FFDC - B2B/B2C/B2E authentication type. Idempotency-Key can be passed if 
    ...    new key is required otherwise will take the default value 1245678967
    Log    verify auth token is generated and API session is created
    
    ${temp}    Run Keyword If    '${Idempotency-Key}'=='Random'    Generate Random String  8  [NUMBERS]
    
    Run Keyword If    '${Idempotency-Key}'=='Random'    Set Global Variable    ${Idempotency-Key}    ${temp}    
    
     ${token}    Run Keyword If    '${AUTHORIZATION_TYPE}'=='B2B'    Get Token    ${Base_URI}    ${CLIENT_ID}    ${CLIENT_SECRET}    authorization_type=${AUTHORIZATION_TYPE}    
    ...    ELSE IF   '${AUTHORIZATION_TYPE}'=='B2C' or '${AUTHORIZATION_TYPE}'=='B2E'   Get Token    ${Base_URI}    ${CLIENT_ID}    ${CLIENT_SECRET}    ${CALLBACK_URL}    ${USERNAME}    ${PASSWORD}   authorization_type=${AUTHORIZATION_TYPE}

    Set Global Variable    ${IDEMPOTENCY_KEY}    ${Idempotency-Key}
    Set Global Variable    ${TOKEN}    ${token}
    
    &{headers}    Create Dictionary    Content-Type=application/xml    Authorization=Bearer ${token}
    Create Session    alias     ${APIMUrl}    verify=True    headers=${headers}   
     
   
    Set Global Variable    &{HEADERS}    &{headers}     
    

VALID AUTHENTICATION TOKEN AND SESSION IS CREATED FOR SOAP REQUESTS WITHOUT JWT
    [Arguments]    ${USERNAME}=${USERNAME}    ${PASSWORD}=${PASSWORD}    ${Idempotency-Key}=1245678967
    [Documentation]    This keyword generates authentication token and create API session for FFDC - B2B/B2C/B2E authentication type. Idempotency-Key can be passed if 
    ...    new key is required otherwise will take the default value 1245678967
    Log    verify auth token is generated and API session is created
    
    
    &{headers}    Create Dictionary    Content-Type=application/xml    #Authorization=Bearer ${token}
    Create Session    alias     ${APIMUrl}    verify=True    headers=${headers}   
     
   
    Set Global Variable    &{HEADERS}    &{headers}
    

 

USER SENDS A SOAP "GET" REQUEST
    [Arguments]    ${Request}
    [Documentation]    This keyword sends GET request and stores the response in global variable: ${RESPONSE}
    ...    Sample Req: WHEN USER SENDS A "GET" REQUEST    ${FFDC_Prefix}/customers/${objectId}
    ...    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE} 
     
    ${response}    Get Request    alias     ${Request}    headers=${HEADERS}
    
    Log Many    ${response.status_code}    ${response.text}
    
    Set Global Variable    ${RESPONSE}    ${response}  
    

USER SENDS A SOAP "POST" REQUEST
    [Arguments]    ${Request}    ${Req}
    [Documentation]    This keyword sends Soap POST request and stores the response in global variable: ${RESPONSE}
    ...    Sapmle request: WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    
    ${response}    Post Request     alias    ${Request}   data=${Req}    headers=${headers}
    Log Many    ${response.status_code}    ${response.text}
    Set Global Variable    ${RESPONSE}    ${response} 
    

    
VERIFY TRUE RESPONSE IN XML
    [Arguments]    ${response}
    [Documentation]    This keyword checks the true response in xml for soap requests
    
    Log    ${response.text}
    ${xml}    Parse Xml    ${response.text}
    ${successElementValue}    Get Element    ${xml}    .//@success
	Log    ${successElementValue}
	Should Be Equal    ${successElementValue}    true
	

SAVES THE API RESPONSE IN XML
    [Arguments]    ${filePath}
    [Documentation]    This keyword stores the API response in the provided file path
    
    Create File     ${filePath}     ${RESPONSE.text}    UTF-8  
    





VALID AUTHENTICATION TOKEN AND SESSION IS CREATED
    [Arguments]    ${Idempotency-Key}=1245678967
    [Documentation]    This keyword generates authentication token and create API session for FFDC - B2B/B2C/B2E authentication type. Idempotency-Key can be passed if 
    ...    new key is required otherwise will take the default value 1245678967
    Log    verify auth token is generated and API session is created
    
    ${temp}    Run Keyword If    '${Idempotency-Key}'=='Random'    Generate Random String  8  [NUMBERS]
    
    Run Keyword If    '${Idempotency-Key}'=='Random'    Set Global Variable    ${Idempotency-Key}    ${temp}    
    
     ${token}    Run Keyword If    '${AUTHORIZATION_TYPE}'=='B2B'    Get Token    ${Base_URI}    ${CLIENT_ID}    ${CLIENT_SECRET}    authorization_type=${AUTHORIZATION_TYPE}    
    ...    ELSE IF   '${AUTHORIZATION_TYPE}'=='B2C' or '${AUTHORIZATION_TYPE}'=='B2E'   Get Token    ${Base_URI}    ${CLIENT_ID}    ${CLIENT_SECRET}    ${CALLBACK_URL}    ${USERNAME}    ${PASSWORD}   authorization_type=${AUTHORIZATION_TYPE}

    Set Global Variable    ${IDEMPOTENCY_KEY}    ${Idempotency-Key}
    Set Global Variable    ${TOKEN}    ${token}
    
    Create Session    alias     ${APIMUrl}    verify=True    
    &{headers}    Create Dictionary    Content-Type=application/json    Idempotency-Key=${Idempotency-Key}    Authorization=Bearer ${token}
   
    Set Global Variable    &{HEADERS}    &{headers}  
          
USER SENDS A "GET" REQUEST
    [Arguments]    ${Request}    ${alias}=alias
    [Documentation]    This keyword sends GET request and stores the response in global variable: ${RESPONSE}
    ...    Sample Req: WHEN USER SENDS A "GET" REQUEST    ${FFDC_Prefix}/customers/${objectId}
    ...    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE} 
     
    ${response}    Get Request    ${alias}     ${Request}    headers=${HEADERS}
    ${prettyResponse}    Pretty Print Json    ${response.content}
    Log Many    ${RESPONSE.status_code}    ${prettyResponse}
    
    Set Global Variable    ${RESPONSE}    ${response}    

    
USER SENDS A "POST" REQUEST
    [Arguments]    ${Request}    ${jsonData}	${alias}=alias 
    [Documentation]    This keyword sends POST request and stores the response in global variable: ${RESPONSE}
    ...    Sapmle request: WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    
    # Run Keyword If    '${jsonData}'=='none'    Set Variable    ${jsonData}    Load Json From File    ${dataFilePath}
    
    ${response}    Post Request     ${alias}    ${Request}   data=${jsonData}    headers=${HEADERS}
    ${prettyResponse}    Pretty Print Json    ${RESPONSE.content}
    Log Many    ${RESPONSE.status_code}    ${prettyResponse}    
    Set Global Variable    ${RESPONSE}    ${response}  

USER SENDS A "POST" REQUEST TO CONVERT TO PROBUF
    [Arguments]    ${Request}    ${jsonData}	${alias}=alias    ${HEADERS}=${HEADERS}  
    [Documentation]    This keyword sends POST request in Json and stores the response (Protobuf) in global variable: ${RESPONSE}
    ...    Sapmle request: WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest    ${jsonData}
    
    # Run Keyword If    '${jsonData}'=='none'    Set Variable    ${jsonData}    Load Json From File    ${dataFilePath}
    
    ${response}    Post Request     ${alias}    ${Request}   data=${jsonData}    headers=${HEADERS}

    Log Many    ${RESPONSE.status_code}    ${response.text}    
    Set Global Variable    ${RESPONSE}    ${response} 
 

USER SENDS A "POST" REQUEST TO CONVERT TO JSON
    [Arguments]    ${Request}    ${jsonData}	${alias}=alias  
    [Documentation]    This keyword sends POST request in Protobuf and stores the response (JSON) in global variable: ${RESPONSE}
    ...    
    
    # Run Keyword If    '${jsonData}'=='none'    Set Variable    ${jsonData}    Load Json From File    ${dataFilePath}
    
    ${response}    Post Request     ${alias}    ${Request}   data=${jsonData}    headers=${HEADERS}

    ${prettyResponse}    Pretty Print Json    ${RESPONSE.content}
    Log Many    ${RESPONSE.status_code}    ${prettyResponse} 
    Set Global Variable    ${RESPONSE}    ${response}
       

USER SENDS A "POST" PROTOBUF REQUEST
    [Arguments]    ${Request}    ${protobufData}	${alias}=alias  
    [Documentation]    This keyword sends POST request in Protobuf format and stores the response in global variable: ${RESPONSE}
    ...    
    
    # Run Keyword If    '${jsonData}'=='none'    Set Variable    ${jsonData}    Load Json From File    ${dataFilePath}
    
    ${response}    Post Request     ${alias}    ${Request}   data=${protobufData}    headers=${HEADERS}
    # ${prettyResponse}    Pretty Print Json    ${RESPONSE.content}
    # Log Many    ${RESPONSE.status_code}    ${prettyResponse}    
    Log Many    ${RESPONSE.text}
    Set Global Variable    ${RESPONSE}    ${response} 
    



USER SENDS A "PUT" REQUEST
    [Arguments]    ${Request}    ${jsonData}    ${alias}=alias	${If_Match}=NONE
    [Documentation]    This keyword sends PUT request and stores the response in global variable: ${RESPONSE} . ${If_Match} tag is optional
    ...    Sample request: WHEN USER SENDS A "PUT" REQUEST    ${FFDC_Prefix}/customers/${objectId}    ${jsonData}    ${ETAG}
    
    &{headers1}    Run Keyword If    '${If_Match}'!='NONE'    Create Dictionary    Content-Type=application/json    If-Match=${If_Match}    Authorization=Bearer ${TOKEN}   
    # ...    ELSE    Create Dictionary    Content-Type=application/json    If-Match=${ETAG}    Authorization=Bearer ${TOKEN}
    
    ${response}    Run Keyword If    '${If_Match}'=='NONE'    PUT Request     alias    ${Request}   data=${jsonData}    headers=${headers}
    ...    ELSE    PUT Request     alias    ${Request}   data=${jsonData}    headers=&{headers1}
    
    ${prettyResponse}    Pretty Print Json    ${RESPONSE.content}
    Log Many    ${RESPONSE.status_code}    ${prettyResponse} 
    Set Global Variable    ${RESPONSE}    ${response}

USER SENDS A "DELETE" REQUEST
    [Arguments]    ${Request}
    [Documentation]    This keyword sends Delete request and stores the response object in global variable - ${RESPONSE}
    ...    Sample request: WHEN USER SENDS A "DELETE" REQUEST    ${FFDC_Prefix}/customers/${customerObjectId}/profiles/${profileID} 
    
    ${response}    Delete Request     alias    ${Request}   headers=${HEADERS}
    Run Keyword And Ignore Error    Set Variable    ${prettyResponse}    Pretty Print Json    ${RESPONSE.content}
    Run Keyword And Ignore Error    Log Many    ${RESPONSE.status_code}    ${prettyResponse}    
    Set Global Variable    ${RESPONSE}    ${response} 
          
VERIFY RESPONSE STATUS
    [Arguments]    ${response1}    ${response_Value}    
    [Documentation]    This keyword verifies the response status. Need to pass response_status_code with expected value. E.g. VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200

    Should Be Equal As Numbers  ${response1}    ${response_Value}
        
VERIFY RESPONSE CONTAINS
    [Arguments]    ${key}    ${keyValue}
    [Documentation]    This keyword verifies response has the key and contains corresponding value (partial key value can be provided). E.g. VERIFY RESPONSE CONTAINS    comment    Computed time : 2020-
    ${keyVal}    Get Value From Json    ${RESPONSE.json()}    $..${key}

    Should Contain  ${keyVal}    ${keyValue}

VERIFY RESPONSE EQUALS    
    [Arguments]    ${key}    ${keyValue}    ${response1}=${RESPONSE.json()}
    [Documentation]     This keyword verifies response has the key and the corresponding values. Double quotes will be removed from the fetched value, hence don't pass value with "
    ${keyVal_Actual}    Get Value From Json    ${response1}    $..${key}
    ${keyVal_Actual}    Remove String    ${keyVal_Actual}    "      
    Should Be Equal  ${keyVal_Actual}    ${keyValue}

VERIFY RESPONSE MATCHES    
    [Arguments]    ${key}    ${keyValue}    ${response1}=${RESPONSE.json()}
    [Documentation]     This keyword verifies response has the key and the corresponding values. Double quotes will not be present, ned to send exact match
    ${keyVal_Actual}    Get Value From Json    ${response1}    $..${key}   
    Should Be Equal  ${keyVal_Actual}    ${keyValue}
    

VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE
    [Arguments]    ${expectedFilePath}    ${actualResponse}    ${ignored_keys}=none
    [Documentation]    This keyword compares actual resposne with expected response (from file), , desired keys can be ignored- default value none
    # Run Keyword If    ${ignored_keys}== none    ${ignored_keys}=[]
    ${actualResponse}    Pretty Print Json    ${actualResponse}
    
    Mx Compare Json Data    ${expectedFilePath}    ${actualResponse}    is_data1_file=True    ignored_keys=${ignored_keys}    
    
VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE
    [Arguments]    ${expectedFilePath}    ${actualFilepath}    ${ignored_keys}=none
    [Documentation]    This keyword compares actual resposne which is stored in a file with expected response (from file), desired keys can be ignored- default value none
    
    Mx Compare Json Data    ${expectedFilePath}     ${actualFilepath}    is_data1_file=True    is_data2_file=True     ignored_keys=${ignored_keys} 


SAVES THE API RESPONSE
    [Arguments]    ${filePath}
    [Documentation]    This keyword stores the API response in the provided file path
    
    ${prettyPrintJson}    Pretty Print Json    ${RESPONSE.content}
    ${prettyPrintJson}    Remove String    ${prettyPrintJson}    “    ”
    Create File     ${filePath}     ${prettyPrintJson}    UTF-8  
    
SAVES THE PROTOBUF API RESPONSE
    [Arguments]    ${filePath}
    [Documentation]    This keyword stores the API response in the provided file path

    Create Binary File     ${filePath}     ${RESPONSE.text}
       
  
USER STORES API REQUEST FROM FILE
    [Arguments]    ${filePath}
    [Documentation]    This keyword reads the input file and store the content in global vriable: ${API_REQUEST_FROM_FILE}
    
     ${API_REQUEST_FROM_FILE}    Get File    ${filePath}
     Set Global Variable    ${API_REQUEST_FROM_FILE}    ${API_REQUEST_FROM_FILE}
	 

Get Value From CSV By Column Name
    [Arguments]    ${filepath}    ${column_name}    ${delimiter}=,    ${line_number}=2
    [Documentation]    This is used to get data from csv file by passing column name
    ...    parameter : 
    ...    1. filepath : csv filepath
    ...    2. column_name : Name of the column
    ...    3. delimiter : csv data separator. Default value is ,
    ...    4. line_number : specify from which row to get data from. Default is 2 because line 1 will have headers.
    ${fileContent}    Get File    ${filepath} 
    @{fileContents}    Split To Lines    ${fileContent}
    ${columns}    Split String    @{fileContents}[0]    ${delimiter}
    ${filesize}    Get Length    ${fileContents}
    ${line_number}    Convert To Integer    ${line_number}
    Run Keyword If    ${line_number} > ${filesize}    Fail    Line number=${line_number} in csv file has no data
    ${line_number}    Evaluate    ${line_number}-1      
    ${data_row}    Split String    @{fileContents}[${line_number}]    ${delimiter}    
    ${column_index}    Get Index From List    ${columns}    ${column_name}
    ${column_value}     Get From List    ${data_row}    ${column_index}
    [Return]    ${column_value} 
    
Replace Json With Csv Values 
    [Documentation] 
    ...    This keyword is used to replace the tag values in json with the column values from csv file
    ...    It takes arguments in the form of dictionary  ${Alldata} .This dictionary comes from the csv file 
    ...    This keyword should be used along with the keyword 'Mx Execute Template With Multiple Data' from GenericLib
    [Arguments]    ${json_file_path}    ${csv_location}    ${delimiter}=,    
    ${csv_datastring}    Get File    ${csv_location} 
    @{all_csvdata}    Split To Lines    ${csv_datastring}
    @{data_header}    Split String    @{all_csvdata}[0]    ${delimiter}    
    ${json_data}    Get File    ${json_file_path}
    ${json_data}    Replace String    ${json_data}    $    ${EMPTY} 
    Log     ${json_data}   
    :FOR    ${key}    IN     @{data_header}  
    \    ${key_value}    Get Value From CSV By Column Name    ${csv_location}    ${key}     
    \    ${json_data}    Replace String    ${json_data}    {${key}}    ${key_value}
    \    Log     ${json_data}  
    [Return]    ${json_data}      
    
Encode URL
    [Arguments]    ${URL}
    ${URL}    Evaluate    "${URL}".replace(":","%3A")
    ${URL}    Evaluate    "${URL}".replace(";","%3B")
    ${URL}    Evaluate    "${URL}".replace("#","%23") 
    ${URL}    Evaluate    "${URL}".replace("?","%3F") 
    [Return]    ${URL}
	
GET KEYCLOAK TOKEN B2B
    [Documentation]    Generate and Return Keycloak token
    ...    
    [Arguments]    ${USERNAME}    ${PASSWORD}
    Log    Generate and Return Keycloak token
 
    ${data}    Create Dictionary    client_secret=${KEY_CLOAK_CLIENT_SECRET}    grant_type=${PASSWORD}    client_id=${KEY_CLOAK_CLIENT_ID}    scope=openid    response_type=code
 
    ${response}    POST Request    ${KeyCloak_alias}    ${KEY_CLOAK_URLPrefix}    data=${data}    headers=${keyCLoak_headers}
    Log    ${response.content}
 
    ${keyCloakToken}    Get Value From Json    ${response.json()}   $..access_token
 
    ${keyCloakToken}    Remove String   ${keyCloakToken}    "
    Log    ${keyCloakToken}
    Set Global Variable    ${keyCloakToken}    ${keyCloakToken} 
    [Return]    ${keyCloakToken}
	
VALID SESSION IS CREATED FOR REST REQUESTS WITH IDEMPOTENCY_KEY
    [Arguments]    ${APIMUrl}    ${alias}    ${token}	${Idempotency-Key}=1245678967
    [Documentation]    This keyword generates authentication token and create API session for FFDC - B2B/B2C/B2E authentication type. Idempotency-Key can be passed if 
    ...    new key is required otherwise will take the default value 1245678967
    Log    verify API session is created   
 
    ${temp}    Run Keyword If    '${Idempotency-Key}'=='Random'    Generate Random String  8  [NUMBERS]
    Run Keyword If    '${Idempotency-Key}'=='Random'    Set Global Variable    ${Idempotency-Key}    ${temp}
 
	&{headers}    Create Dictionary    Content-Type=application/json    Idempotency-Key=${Idempotency-Key}    Authorization=Bearer ${token}     
 
 
    Create Session    ${alias}     ${APIMUrl}    verify=True    headers=${headers}
 
    Set Global Variable    &{HEADERS}    &{headers}
	
USER SENDS A "PUT" REQUEST WITH IDEMPOTENCY KEY
    [Arguments]    ${Request}    ${jsonData}	${alias}=alias
    [Documentation]    This keyword sends PUT request and stores the response in global variable: ${RESPONSE} . ${If_Match} tag is optional. Pass header with idempotency key
    ...    Sample request: WHEN USER SENDS A "PUT" REQUEST    ${FFDC_Prefix}/customers/${objectId}    ${jsonData}    
    ${response}    PUT Request     ${alias}    ${Request}   data=${jsonData}    headers=${HEADERS}
    # ${prettyResponse}    Pretty Print Json    ${RESPONSE.content}
    Log    ${RESPONSE.status_code} 
    Set Global Variable    ${RESPONSE}    ${response}