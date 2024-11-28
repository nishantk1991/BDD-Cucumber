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


GET_VALIDATE ARRC_E2ETESTSIMA_001_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple ARR Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_001.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_002_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple ARR Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_002.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_003_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple ARR Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_003.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_004_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple ARR Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_004.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_005_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_005.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_005.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_006_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_006.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_006.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_007_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_007.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_007.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_008_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_008.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_008.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_009_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_009.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_009.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_010_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_010.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_010.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_011_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_011.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_011.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_012_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_012.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_012.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_013_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_013.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_013.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_014_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_014.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_014.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_015_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_015.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_015.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_015.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_016_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_016.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_016.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_017_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_017.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_017.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_017.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_018_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_018.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_018.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_018.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_019_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_019.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_019.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_019.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_020_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_020.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_020.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_020.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_021_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_021.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_021.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_021.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_021.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_051_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_051.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_051.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_051.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_051.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_052_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_052.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_052.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_052.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_052.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_053_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_053.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_053.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_053.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_053.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_054_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_054.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_054.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_054.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_054.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_055_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_055.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_055.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_055.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_055.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_VALIDATE ARRC_E2ETESTSIMA_056_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_056.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_056.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_056.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_056.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_VALIDATE ARRC_E2ETESTSIMA_057_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_057.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_057.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_057.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_057.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_058_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_058.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_058.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_058.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_058.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_059_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_059.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_059.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_059.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_059.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_060_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_060.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_060.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_060.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_060.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_061_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_061.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_061.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_061.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_061.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_VALIDATE ARRC_E2ETESTSIMA_062_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_062.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_062.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_062.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_062.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_063_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_063.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_063.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_063.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_063.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_064_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_064.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_064.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_064.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_064.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_065_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_065.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_065.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_065.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_065.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE ARRC_E2ETESTSIMA_066_CALCULATE SIMPLE ARR RATE
    [Documentation]    This test case calculates Simple Avergae Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Requests\\Request_ARRC_E2ETESTSIMA_066.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_066.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_066.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.3\\SimARRRatesv1.3_Response\\Response_ARRC_E2ETESTSIMA_066.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
