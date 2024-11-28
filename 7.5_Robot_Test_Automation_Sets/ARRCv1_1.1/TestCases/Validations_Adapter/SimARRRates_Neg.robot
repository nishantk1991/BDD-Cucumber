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

GET_ARRCNEGSARR_001_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_001_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_001.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
         
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_001.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_002_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_002_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_002.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_002.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGSARR_003_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_003_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_003.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_003.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
  
GET_ARRCNEGSARR_004_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_004_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_004.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_004.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_005_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_005_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_005.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_005.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_005.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_006_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_006_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_006.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_006.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_006.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_007_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_007_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_007.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_007.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_007.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_008_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_008_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_008.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_008.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_008.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_009_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_009_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_009.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_009.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_009.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_010_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_010_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_010.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_010.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_010.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_011_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_011_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_011.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_011.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_011.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_012_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_012_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_012.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_012.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_012.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_013_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_013_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_013.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_013.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_013.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSARR_014_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_014_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_014.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_014.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_014.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSARR_015_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_015_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_015.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_015.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_015.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSARR_016_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_016_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_016.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_016.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_016.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSARR_017_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_017_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_017.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_017.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_017.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSARR_018_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_018_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_018.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_018.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_018.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSARR_019_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_019_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_019.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_019.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_019.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSARR_020_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_040_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_020.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_020.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_020.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSARR_021_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_021_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_021.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_021.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_021.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_021.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_022_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_022_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_022.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_022.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_022.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_022.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}



GET_ARRCNEGSARR_025_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_025_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_025.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_025.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_025.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_025.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_026_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_026_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_026.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_026.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_026.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_026.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGSARR_029_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_029_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_029.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_029.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_029.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_029.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGSARR_035_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_035_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_035.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_035.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_035.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_035.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSARR_036_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_036_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_036.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_036.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_036.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_036.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSARR_037_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_037_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_037.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_037.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_037.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_037.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     

GET_ARRCNEGSARR_039_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_039_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_039.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_039.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_039.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_039.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSARR_040_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_040_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_040.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_040.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_040.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_040.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGSARR_041_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_041_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_041.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_041.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_041.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_041.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_042_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_042_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_042.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_042.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_042.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_042.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_043_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_043_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_043.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_043.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_043.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_043.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_044_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_044_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_044.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_044.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_044.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_044.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_045_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_045_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_045.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_045.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_045.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_045.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_046_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_046_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_046.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_046.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_046.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_046.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_047_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_047_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_047.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_047.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_047.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_047.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_048_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_048_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_048.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_048.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_048.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_048.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_049_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_049_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_049.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_049.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_049.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_049.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_050_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_050_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_050.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_050.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_050.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_050.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


 
GET_ARRCNEGSARR_052_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_052_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_052.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_052.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_052.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_052.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGSARR_054_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_054_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_054.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_054.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_054.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_054.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_055_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_055_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_055.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_055.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_055.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_055.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}



GET_ARRCNEGSARR_060_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_060_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_060.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_060.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_060.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_060.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_061_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_061_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_061.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_061.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_061.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_061.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGSARR_063_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_063_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_063.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_063.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_063.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_063.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGSARR_065_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_065_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_065.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_065.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_065.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_065.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_066_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_066_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_066.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_066.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_066.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_066.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
 
GET_ARRCNEGSARR_067_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_067_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_067.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_067.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_067.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_067.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_068_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_068_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_068.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_068.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_068.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_068.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_069_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_069_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_069.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_069.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_069.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_069.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
 
GET_ARRCNEGSARR_070_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_070_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_070.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_070.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_070.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_070.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_071_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_071_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_071.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_071.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_071.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_071.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
 
GET_ARRCNEGSARR_072_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_072_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_072.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_072.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_072.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_072.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
 

GET_ARRCNEGSARR_073_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_073_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_073.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_073.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_073.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_073.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
 
GET_ARRCNEGSARR_074_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_074_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_074.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_074.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_074.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_074.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_075_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_075_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_075.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_075.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_075.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_075.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_076_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_076_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_076.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_076.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_076.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_076.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}



GET_ARRCNEGSARR_094_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_094_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_094.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_094.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_094.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_094.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_095_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_095_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_095.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_095.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_095.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_095.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_096_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_096_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_096.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_096.json
    

   Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_096.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_096.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_097_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_097_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_097.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_097.json
    

   Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_097.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_097.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_098_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_098_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_098.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_098.json
    

   Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_098.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_098.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_099_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_099_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_099.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_099.json
    

   Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_099.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_099.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
 

GET_ARRCNEGSARR_100_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_100_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_100.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_100.json
    

   Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_100.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_100.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGSARR_101_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_101_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_101.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_101.json
    

   Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_101.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_101.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_102_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_102_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_102.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_102.json
    

   Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_102.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_102.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_103_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_103_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_103.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_103.json
    

   Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_103.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_103.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGSARR_104_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGSARR_104_This test case reads GET request from a file and sends GET request, used for comparing Rates with Simple ARR method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\SimARRRates_Requests\\Request_ARRCNEGSARR_104.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_104.json
    

   Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_104.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\SimARRRates_Response\\Response_ARRCNEGSARR_104.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          