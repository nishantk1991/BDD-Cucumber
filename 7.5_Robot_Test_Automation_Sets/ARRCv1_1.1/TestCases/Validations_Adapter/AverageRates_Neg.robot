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

GET_ARRCNEGCA_001_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_001_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_001.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
         
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_001.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_002_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_002_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_002.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_002.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGCA_003_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_003_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_003.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_003.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
  
GET_ARRCNEGCA_004_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_004_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_004.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_004.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_005_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_005_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_005.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_005.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_005.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_006_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_006_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_006.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_006.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_006.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_007_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_007_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_007.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_007.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_007.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_008_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_008_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_008.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_008.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_008.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_009_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_009_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_009.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_009.json
    

   Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_009.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_010_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_010_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_010.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_010.json
    

   Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_010.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_011_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_011_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_011.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_011.json
    

   Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_011.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_012_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_012_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_012.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_012.json
    

   Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_012.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_013_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_013_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_013.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_013.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_013.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGCA_014_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_014_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_014.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_014.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_014.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGCA_015_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_015_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_015.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_015.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_015.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGCA_016_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_016_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_016.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_016.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_016.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGCA_017_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_017_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_017.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_017.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_017.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGCA_018_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_018_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_018.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_018.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_018.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGCA_019_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_019_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_019.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_019.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_019.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGCA_020_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_040_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_020.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_020.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_020.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGCA_021_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_021_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_021.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_021.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_021.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_021.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_022_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_022_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_022.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_022.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_022.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_022.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGCA_023_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_023_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_023.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_023.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_023.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_023.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
  
GET_ARRCNEGCA_024_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_024_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_024.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_024.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_024.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_024.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_025_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_025_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_025.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_025.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_025.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_025.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_026_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_026_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_026.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_026.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_026.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_026.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_027_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_027_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_027.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_027.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_027.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_027.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_028_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_028_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_028.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_028.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_028.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_028.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_029_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_029_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_029.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_029.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_029.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_029.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}



GET_ARRCNEGCA_035_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_035_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_035.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_035.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_035.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_035.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGCA_036_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_036_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_036.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_036.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_036.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_036.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGCA_037_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_037_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_037.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_037.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_037.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_037.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     

GET_ARRCNEGCA_039_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_039_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_039.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_039.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_039.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_039.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGCA_040_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_040_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_040.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_040.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_040.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_040.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
     
GET_ARRCNEGCA_041_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_041_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_041.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_041.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_041.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_041.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_042_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_042_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_042.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_042.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_042.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_042.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_043_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_043_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_043.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_043.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_043.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_043.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_044_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_044_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_044.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_044.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_044.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_044.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_045_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_045_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_045.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_045.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_045.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_045.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_046_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_046_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_046.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_046.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_046.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_046.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_047_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_047_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_047.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_047.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_047.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_047.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_048_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_048_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_048.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_048.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_048.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_048.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_049_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_049_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_049.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_049.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_049.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_049.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_050_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_050_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_050.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_050.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_050.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_050.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
 
GET_ARRCNEGCA_052_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_052_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_052.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_052.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_052.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_052.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_ARRCNEGCA_054_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_054_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_054.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_054.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_054.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_054.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_055_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_055_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_055.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_055.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_055.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_055.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_056_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_056_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_056.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_056.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_056.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_056.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_057_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_057_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_057.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_057.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_057.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_057.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_058_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_058_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_058.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_058.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_058.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_058.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_059_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_059_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_059.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_059.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_059.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_059.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_060_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_060_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_060.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_060.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_060.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_060.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_061_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_061_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_061.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_061.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_061.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_061.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_062_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_062_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_062.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_062.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_062.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_062.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_063_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_063_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_063.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_063.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_063.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_063.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_064_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_064_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_064.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_064.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_064.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_064.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_065_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_065_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_065.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_065.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_065.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_065.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}



GET_ARRCNEGCA_083_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_083_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_083.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_083.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_083.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_083.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_084_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_084_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_084.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_084.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_084.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_084.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_085_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_085_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_085.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_085.json
    

    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_085.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_085.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_086_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_086_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_086.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_086.json
    

   Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_086.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_086.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_087_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_087_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_087.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_087.json
    

   Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_087.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_087.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_088_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_088_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_088.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_088.json
    

   Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_088.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_088.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_089_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_089_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_089.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_089.json
    

   Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_089.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_089.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_090_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_090_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_090.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_090.json
    

   Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_090.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_090.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_091_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_091_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_091.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_091.json
    

   Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_091.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_091.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_ARRCNEGCA_092_VALIDATE CORRECT ERROR MESSAGES / RESPONSE IS RECEIVED FOR THE TEST SCENARIO
    [Documentation]    ARRCNEGCA_092_This test case reads GET request from a file and sends GET request, used for comparing average rates from Compounding-in-arrears method
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\Validations_Adapter\\AverageRates_Requests\\Request_ARRCNEGCA_092.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_092.json
    

   Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
     ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_092.json    encoding=utf-8-sig
    
     ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations_Adapter\\AverageRates_Response\\Response_ARRCNEGCA_092.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                              