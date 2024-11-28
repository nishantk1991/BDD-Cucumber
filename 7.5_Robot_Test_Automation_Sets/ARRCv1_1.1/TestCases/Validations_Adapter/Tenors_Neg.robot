*** Settings ***
Library    RequestsLibrary  
Library    JsonLibrary    
Library    String    
# Library    GenerateOidcToken
Library    BaselineComparator    

# Library    Collections   
# Library    OperatingSystem 
Variables    ../../ConfigFile/GlobalConfig.py
Resource    ../../ConfigFile/ImportFile.robot



Suite Teardown    Delete All Sessions

#Test Setup    GIVEN VALID AUTHENTICATION TOKEN AND SESSION IS CREATED
Test Setup    Given VALID SESSION IS CREATED FOR REST REQUESTS FOR ARRC ADAPTER    ${APIMUrl}    ${alias}

*** Variables ***
@{IGNORED_KEYS_JSON_COMPARE}    Create List    comment    legalDisclaimer    lastUpdatedFromSource

${HEADERS}
${RESPONSE}
${API_REQUEST_FROM_FILE}



*** Test Cases ***

GET_ARRCNEGTEN_001_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_001_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_001.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
         
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_001.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_001.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_001.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGTEN_002_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_002_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_002.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_002.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_002.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_002.json    ${IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGTEN_003_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_003_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_003.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_003.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_003.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_003.json    ${IGNORED_KEYS_JSON_COMPARE}
  
GET_ARRCNEGTEN_004_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_004_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_004.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_004.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_004.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_004.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGTEN_005_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_005_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_005.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_005.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_005.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_005.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_005.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGTEN_006_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_006_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_006.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_006.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_006.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_006.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_006.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGTEN_007_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_007_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_007.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_007.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_007.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_007.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_007.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGTEN_008_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_008_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_008.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_008.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_008.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_008.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_008.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGTEN_009_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_009_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_009.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_009.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_009.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_009.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_009.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGTEN_010_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_010_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_010.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_010.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_010.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_010.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_010.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGTEN_011_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_011_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_011.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_011.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_011.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_011.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_011.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGTEN_012_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_012_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_012.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_012.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_012.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_012.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_012.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGTEN_013_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_013_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_013.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_013.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_013.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_013.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_013.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGTEN_014_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_014_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_014.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_014.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_014.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_014.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_014.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGTEN_015_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_015_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_015.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_015.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_015.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_015.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_015.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGTEN_016_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_016_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_016.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_016.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_016.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_016.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_016.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGTEN_017_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_017_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_017.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_017.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_017.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_017.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_017.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGTEN_018_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_018_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_018.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_018.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_018.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_018.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_018.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGTEN_019_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_019_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_019.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_019.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_019.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_019.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_019.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGTEN_020_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_040_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_020.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_020.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_020.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_020.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_020.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGTEN_021_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_021_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_021.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_021.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_021.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_021.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_021.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGTEN_022_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_022_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_022.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_022.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_022.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_022.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_022.json    ${IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGTEN_023_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_023_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_023.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_023.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_023.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_023.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_023.json    ${IGNORED_KEYS_JSON_COMPARE}
  
GET_ARRCNEGTEN_024_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_024_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_024.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_024.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_024.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_024.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_024.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGTEN_025_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_025_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_025.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_025.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_025.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_025.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_025.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGTEN_026_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_026_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_026.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_026.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_026.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_026.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_026.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGTEN_027_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_027_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_027.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_027.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_027.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_027.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_027.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGTEN_028_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_028_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_028.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_028.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_028.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_028.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_028.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGTEN_029_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_029_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_029.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_029.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_029.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_029.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_029.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGTEN_030_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_030_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_030.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_030.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_030.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_030.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_030.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGTEN_031_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_031_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_031.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_031.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_031.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_031.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_031.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGTEN_032_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_032_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_032.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_032.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_032.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_032.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_032.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGTEN_033_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_033_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_033.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_033.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_033.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_033.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_033.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGTEN_034_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_034_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_034.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_034.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_034.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_034.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_034.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGTEN_035_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_035_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_035.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_035.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_035.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_035.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_035.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGTEN_036_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_036_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_036.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_036.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_036.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_036.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_036.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGTEN_037_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_037_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_037.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_037.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_037.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_037.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_037.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGTEN_038_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_038_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_038.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_038.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_038.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_038.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_038.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGTEN_039_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_039_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_039.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_039.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_039.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_039.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_039.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGTEN_040_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_040_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_040.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_040.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_040.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_040.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_040.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGTEN_041_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_041_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_041.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_041.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_041.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_041.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_041.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGTEN_042_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_042_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_042.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_042.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_042.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_042.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_042.json    ${IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGTEN_043_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_043_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_043.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_043.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_043.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_043.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_043.json    ${IGNORED_KEYS_JSON_COMPARE}
  
GET_ARRCNEGTEN_044_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_044_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_044.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_044.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_044.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_044.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_044.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGTEN_045_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGTEN_045_This test case reads GET request from a file and sends GET request, used for comparing average rates from Tenors
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Tenors_Requests\\Request_ARRCNEGTEN_045.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_045.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_045.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_045.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Tenors_Response\\Response_ARRCNEGTEN_045.json    ${IGNORED_KEYS_JSON_COMPARE}
