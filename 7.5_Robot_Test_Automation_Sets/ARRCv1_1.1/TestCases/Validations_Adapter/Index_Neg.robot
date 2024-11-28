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

GET_ARRCNEGIND_001_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_001_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_001.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_001.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_001.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_001.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGIND_002_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_002_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_002.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_002.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_002.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_002.json    ${IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGIND_003_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_003_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_003.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_003.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_003.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_003.json    ${IGNORED_KEYS_JSON_COMPARE}
  
GET_ARRCNEGIND_004_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_004_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_004.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_004.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_004.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_004.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGIND_005_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_005_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_005.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_005.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_005.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_005.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_005.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGIND_006_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_006_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_006.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_006.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_006.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_006.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_006.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGIND_007_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_007_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_007.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_007.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_007.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_007.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_007.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGIND_008_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_008_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_008.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_008.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_008.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_008.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_008.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGIND_009_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_009_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_009.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_009.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_009.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_009.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_009.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGIND_010_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_010_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_010.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_010.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_010.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_010.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_010.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGIND_011_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_011_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_011.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_011.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_011.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_011.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_011.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGIND_012_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_012_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_012.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_012.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_012.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_012.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_012.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGIND_013_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_013_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_013.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_013.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_013.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_013.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_013.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGIND_014_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_014_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_014.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_014.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_014.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_014.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_014.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGIND_015_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_015_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_015.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_015.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_015.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_015.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_015.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGIND_016_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_016_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_016.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_016.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_016.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_016.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_016.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGIND_017_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_017_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_017.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_017.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_017.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_017.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_017.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGIND_018_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_018_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_018.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_018.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_018.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_018.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_018.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGIND_019_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_019_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_019.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_019.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_019.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_019.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_019.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGIND_020_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_040_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_020.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_020.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_020.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_020.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_020.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGIND_021_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_021_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_021.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_021.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_021.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_021.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_021.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGIND_022_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_022_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_022.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_022.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_022.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_022.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_022.json    ${IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGIND_023_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_023_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_023.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_023.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_023.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_023.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_023.json    ${IGNORED_KEYS_JSON_COMPARE}
  
GET_ARRCNEGIND_024_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_024_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_024.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_024.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_024.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_024.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_024.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGIND_025_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_025_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_025.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_025.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_025.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_025.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_025.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGIND_026_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_026_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_026.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_026.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_026.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_026.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_026.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGIND_027_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_027_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_027.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_027.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_027.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_027.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_027.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGIND_028_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_028_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_028.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_028.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_028.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_028.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_028.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGIND_029_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_029_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_029.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_029.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_029.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_029.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_029.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGIND_030_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_030_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_030.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_030.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_030.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_030.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_030.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGIND_031_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_031_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_031.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_031.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_031.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_031.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_031.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGIND_032_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_032_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_032.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_032.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_032.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_032.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_032.json    ${IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGIND_033_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_033_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_033.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_033.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_033.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_033.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_033.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGIND_034_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_034_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_034.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_034.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_034.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_034.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_034.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGIND_035_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_035_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_035.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_035.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_035.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_035.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_035.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGIND_036_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_036_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_036.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_036.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_036.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_036.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_036.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGIND_037_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_037_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_037.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_037.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_037.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_037.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_037.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGIND_038_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_038_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_038.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_038.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_038.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_038.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_038.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGIND_039_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_039_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_039.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_039.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_039.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_039.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_039.json    ${IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGIND_040_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGIND_040_This test case reads GET request from a file and sends GET request, used for comparing average rates from Index
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\Index_Requests\\Request_ARRCNEGIND_040.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_040.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     AND VERIFY ACTUAL RESPONSE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_040.json    ${RESPONSE.content}    ${IGNORED_KEYS_JSON_COMPARE}
    
     AND VERIFY ACTUAL RESPONSE FILE MATCHES WITH EXPECTED RESPONSE FILE    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_040.json    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\Index_Response\\Response_ARRCNEGIND_040.json    ${IGNORED_KEYS_JSON_COMPARE}