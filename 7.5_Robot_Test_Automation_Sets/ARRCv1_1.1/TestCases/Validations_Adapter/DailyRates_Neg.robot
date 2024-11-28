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

GET_ARRCNEGDC_001_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_001_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_001.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
         
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_001.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_002_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_002_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_002.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_002.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGDC_003_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_003_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_003.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_003.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
  
GET_ARRCNEGDC_004_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_004_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_004.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_004.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_005_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_005_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_005.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_005.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_005.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_006_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_006_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_006.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_006.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_006.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_007_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_007_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_007.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_007.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_007.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_008_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_008_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_008.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_008.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_008.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_009_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_009_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_009.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_009.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_009.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_010_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_010_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_010.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_010.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_010.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_011_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_011_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_011.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_011.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_011.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_012_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_012_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_012.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_012.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_012.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_013_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_013_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_013.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_013.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_013.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGDC_014_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_014_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_014.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_014.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_014.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGDC_015_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_015_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_015.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_015.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_015.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGDC_016_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_016_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_016.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_016.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_016.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGDC_017_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_017_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_017.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_017.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_017.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGDC_018_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_018_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_018.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_018.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_018.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGDC_019_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_019_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_019.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_019.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_019.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGDC_020_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_040_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_020.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_020.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_020.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGDC_021_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_021_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_021.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_021.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_021.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_021.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_022_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_022_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_022.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_022.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_022.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_022.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGDC_023_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_023_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_023.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_023.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_023.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_023.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
  
GET_ARRCNEGDC_024_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_024_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_024.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_024.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_024.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_024.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_025_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_025_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_025.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_025.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_025.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_025.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_026_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_026_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_026.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_026.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_026.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_026.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_027_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_027_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_027.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_027.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_027.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_027.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_028_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_028_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_028.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_028.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_028.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_028.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_029_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_029_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_029.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_029.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_029.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_029.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGDC_035_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_035_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_035.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_035.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_035.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_035.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGDC_036_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_036_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_036.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_036.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_036.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_036.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGDC_037_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_037_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_037.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_037.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_037.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_037.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     

GET_ARRCNEGDC_039_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_039_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_039.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_039.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_039.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_039.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGDC_040_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_040_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_040.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_040.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_040.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_040.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGDC_041_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_041_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_041.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_041.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_041.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_041.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_042_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_042_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_042.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_042.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_042.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_042.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_043_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_043_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_043.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_043.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_043.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_043.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_044_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_044_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_044.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_044.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_044.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_044.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_045_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_045_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_045.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_045.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_045.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_045.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_046_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_046_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_046.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_046.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_046.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_046.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_047_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_047_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_047.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_047.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_047.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_047.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_048_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_048_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_048.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_048.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_048.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_048.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_049_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_049_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_049.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_049.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_049.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_049.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_050_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_050_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_050.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_050.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_050.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_050.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
 
GET_ARRCNEGDC_052_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_052_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_052.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_052.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_052.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_052.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGDC_054_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_054_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_054.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_054.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_054.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_054.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_055_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_055_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_055.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_055.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_055.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_055.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_056_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_056_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_056.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_056.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_056.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_056.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_057_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_057_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_057.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_057.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_057.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_057.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_058_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_058_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_058.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_058.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_058.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_058.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_059_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_059_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_059.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_059.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_059.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_059.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_060_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_060_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_060.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_060.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_060.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_060.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_061_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_061_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_061.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_061.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_061.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_061.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_062_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_062_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_062.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_062.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_062.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_062.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_063_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_063_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_063.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_063.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_063.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_063.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_064_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_064_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_064.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_064.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_064.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_064.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_065_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_065_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_065.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_065.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_065.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_065.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGDC_083_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_083_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_083.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_083.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_083.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_083.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_084_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_084_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_084.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_084.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_084.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_084.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_085_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_085_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_085.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_085.json
    

     Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_085.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_085.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_086_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_086_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_086.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_086.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_086.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_086.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_087_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_087_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_087.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_087.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_087.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_087.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_088_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_088_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_088.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_088.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_088.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_088.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_089_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_089_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_089.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_089.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_089.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_089.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_090_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_090_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_090.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_090.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_090.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_090.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_091_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_091_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_091.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_091.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_091.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_091.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_092_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_092_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_092.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_092.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_092.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_092.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_093_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_093_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_093.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_093.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_093.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_093.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_094_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_094_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_094.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_094.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_094.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_094.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_095_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_095_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_095.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_095.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_095.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_095.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGDC_096_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGDC_096_This test case reads GET request from a file and sends GET request, used for comparing Daily rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\DailyRates_Requests\\Request_ARRCNEGDC_096.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_096.json
    

   Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_096.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\DailyRates_Response\\Response_ARRCNEGDC_096.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    