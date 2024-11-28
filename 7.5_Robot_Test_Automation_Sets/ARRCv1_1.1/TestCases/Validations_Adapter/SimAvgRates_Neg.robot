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

GET_ARRCNEGSAVG_001_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_001_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_001.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
         
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_001.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_002_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_002_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_002.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_002.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGSAVG_003_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_003_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_003.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_003.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
  
GET_ARRCNEGSAVG_004_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_004_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_004.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_004.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_005_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_005_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_005.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_005.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_005.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_006_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_006_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_006.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_006.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_006.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_007_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_007_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_007.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_007.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_007.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_008_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_008_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_008.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_008.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_008.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_009_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_009_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_009.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_009.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_009.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_010_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_010_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_010.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_010.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_010.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_011_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_011_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_011.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_011.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_011.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_012_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_012_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_012.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_012.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_012.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_013_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_013_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_013.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_013.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_013.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSAVG_014_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_014_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_014.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_014.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_014.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSAVG_015_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_015_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_015.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_015.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_015.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSAVG_016_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_016_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_016.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_016.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_016.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSAVG_017_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_017_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_017.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_017.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_017.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSAVG_018_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_018_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_018.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_018.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_018.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSAVG_019_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_019_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_019.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_019.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_019.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSAVG_020_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_040_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_020.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_020.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_020.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSAVG_021_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_021_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_021.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_021.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_021.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_021.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_022_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_022_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_022.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_022.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_022.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_022.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGSAVG_023_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_023_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_023.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_023.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_023.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_023.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
  
GET_ARRCNEGSAVG_024_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_024_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_024.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_024.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_024.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_024.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_025_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_025_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_025.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_025.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_025.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_025.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_026_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_026_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_026.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_026.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_026.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_026.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_027_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_027_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_027.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_027.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_027.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_027.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_028_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_028_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_028.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_028.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_028.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_028.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_029_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_029_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_029.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_029.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_029.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_029.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}



GET_ARRCNEGSAVG_035_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_035_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_035.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_035.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_035.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_035.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSAVG_036_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_036_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_036.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_036.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_036.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_036.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSAVG_037_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_037_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_037.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_037.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_037.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_037.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     

GET_ARRCNEGSAVG_039_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_039_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_039.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_039.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_039.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_039.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSAVG_040_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_040_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_040.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_040.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_040.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_040.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSAVG_041_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_041_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_041.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_041.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_041.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_041.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_042_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_042_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_042.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_042.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_042.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_042.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_043_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_043_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_043.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_043.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_043.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_043.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_044_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_044_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_044.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_044.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_044.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_044.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_045_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_045_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_045.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_045.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_045.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_045.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_046_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_046_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_046.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_046.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_046.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_046.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_047_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_047_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_047.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_047.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_047.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_047.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_048_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_048_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_048.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_048.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_048.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_048.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_049_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_049_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_049.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_049.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_049.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_049.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_050_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_050_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_050.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_050.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_050.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_050.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
 
GET_ARRCNEGSAVG_052_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_052_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_052.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_052.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_052.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_052.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGSAVG_054_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_054_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_054.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_054.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_054.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_054.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_055_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_055_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_055.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_055.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_055.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_055.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_056_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_056_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_056.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_056.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_056.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_056.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_057_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_057_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_057.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_057.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_057.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_057.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_058_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_058_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_058.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_058.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_058.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_058.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_059_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_059_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_059.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_059.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_059.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_059.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_060_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_060_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_060.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_060.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_060.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_060.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_061_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_061_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_061.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_061.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_061.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_061.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_062_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_062_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_062.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_062.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_062.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_062.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_063_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_063_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_063.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_063.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_063.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_063.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_064_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_064_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_064.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_064.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_064.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_064.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_065_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_065_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_065.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_065.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_065.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_065.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}



GET_ARRCNEGSAVG_083_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_083_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_083.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_083.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_083.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_083.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_084_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_084_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_084.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_084.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_084.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_084.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_085_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_085_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_085.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_085.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_085.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_085.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_086_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_086_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_086.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_086.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_086.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_086.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_087_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_087_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_087.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_087.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_087.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_087.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_088_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_088_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_088.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_088.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_088.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_088.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_089_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_089_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_089.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_089.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_089.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_089.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_090_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_090_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_090.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_090.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_090.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_090.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_091_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_091_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_091.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_091.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_091.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_091.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSAVG_092_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSAVG_092_This test case reads GET request from a file and sends GET request, used for comparing Average rate from Simple Average method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimAverageRates_Requests\\Request_ARRCNEGSAVG_092.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_092.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_092.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimAverageRates_Response\\Response_ARRCNEGSAVG_092.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               