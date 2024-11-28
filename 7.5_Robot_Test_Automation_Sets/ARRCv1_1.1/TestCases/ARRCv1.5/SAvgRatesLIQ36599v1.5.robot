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

Test Setup    GIVEN VALID AUTHENTICATION TOKEN AND SESSION IS CREATED

*** Variables ***
@{IGNORED_KEYS_JSON_COMPARE}    Create List    comment    legalDisclaimer    lastUpdatedFromSource    

${HEADERS}
${RESPONSE}
${API_REQUEST_FROM_FILE}



*** Test Cases ***

GET_VALIDATE LIQSC36599_SAVGRates001_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleAvgRates\\Request_RatesSAVG001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG001.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SAVGRates002_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleAvgRates\\Request_RatesSAVG002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG002.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SAVGRates003_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleAvgRates\\Request_RatesSAVG003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG003.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SAVGRates004_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleAvgRates\\Request_RatesSAVG004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG004.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SAVGRates005_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleAvgRates\\Request_RatesSAVG005.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG005.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SAVGRates006_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleAvgRates\\Request_RatesSAVG006.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG006.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SAVGRates007_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleAvgRates\\Request_RatesSAVG007.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG007.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SAVGRates008_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleAvgRates\\Request_RatesSAVG008.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG008.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SAVGRates009_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleAvgRates\\Request_RatesSAVG009.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG009.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SAVGRates010_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleAvgRates\\Request_RatesSAVG010.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG010.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SAVGRates011_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleAvgRates\\Request_RatesSAVG011.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG011.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SAVGRates012_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleAvgRates\\Request_RatesSAVG012.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG012.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SAVGRates013_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleAvgRates\\Request_RatesSAVG013.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG013.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SAVGRates014_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleAvgRates\\Request_RatesSAVG014.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG014.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SAVGRates015_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleAvgRates\\Request_RatesSAVG015.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG015.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG015.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SAVGRates016_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleAvgRates\\Request_RatesSAVG016.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG016.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SAVGRates017_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleAvgRates\\Request_RatesSAVG017.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG017.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG017.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SAVGRates018_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleAvgRates\\Request_RatesSAVG018.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG018.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG018.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SAVGRates019_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleAvgRates\\Request_RatesSAVG019.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG019.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG019.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE LIQSC36599_SAVGRates020_Legacy Base Rate Floor
    [Documentation]    This test case calculates Simple Average Rates with LBRF 
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQ36599\\Request_SimpleAvgRates\\Request_RatesSAVG020.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG020.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG020.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQ36599\\Response_SimpleAvgRates\\Response_RatesSAVG020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
