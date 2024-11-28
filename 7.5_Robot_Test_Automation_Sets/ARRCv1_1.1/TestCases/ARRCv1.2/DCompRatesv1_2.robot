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


GET_VALIDATE DCRatesv1.2_001_CALCULATE DAILY COMPOUNDING RATE
    [Documentation]    This test case calculates Daily Compounding Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCRatesv1.2_Requests\\Request_ARRC_E2ETESTDC_001.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_001.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE DCRatesv1.2_002_CALCULATE DAILY COMPOUNDING RATE
    [Documentation]    This test case calculates Daily Compounding Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCRatesv1.2_Requests\\Request_ARRC_E2ETESTDC_002.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_002.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE DCRatesv1.2_003_CALCULATE DAILY COMPOUNDING RATE
    [Documentation]    This test case calculates Daily Compounding Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCRatesv1.2_Requests\\Request_ARRC_E2ETESTDC_003.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_003.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE DCRatesv1.2_004_CALCULATE DAILY COMPOUNDING RATE
    [Documentation]    This test case calculates Daily Compounding Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCRatesv1.2_Requests\\Request_ARRC_E2ETESTDC_004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_004.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE DCRatesv1.2_005_CALCULATE DAILY COMPOUNDING RATE
    [Documentation]    This test case calculates Daily Compounding Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCRatesv1.2_Requests\\Request_ARRC_E2ETESTDC_005.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_005.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE DCRatesv1.2_006_CALCULATE DAILY COMPOUNDING RATE
    [Documentation]    This test case calculates Daily Compounding Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCRatesv1.2_Requests\\Request_ARRC_E2ETESTDC_006.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_006.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE DCRatesv1.2_007_CALCULATE DAILY COMPOUNDING RATE
    [Documentation]    This test case calculates Daily Compounding Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCRatesv1.2_Requests\\Request_ARRC_E2ETESTDC_007.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_007.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE DCRatesv1.2_008_CALCULATE DAILY COMPOUNDING RATE
    [Documentation]    This test case calculates Daily Compounding Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCRatesv1.2_Requests\\Request_ARRC_E2ETESTDC_008.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_008.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE DCRatesv1.2_009_CALCULATE DAILY COMPOUNDING RATE
    [Documentation]    This test case calculates Daily Compounding Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCRatesv1.2_Requests\\Request_ARRC_E2ETESTDC_009.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_009.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE DCRatesv1.2_010_CALCULATE DAILY COMPOUNDING RATE
    [Documentation]    This test case calculates Daily Compounding Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCRatesv1.2_Requests\\Request_ARRC_E2ETESTDC_010.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_010.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE DCRatesv1.2_011_CALCULATE DAILY COMPOUNDING RATE
    [Documentation]    This test case calculates Daily Compounding Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCRatesv1.2_Requests\\Request_ARRC_E2ETESTDC_011.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_011.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE DCRatesv1.2_012_CALCULATE DAILY COMPOUNDING RATE
    [Documentation]    This test case calculates Daily Compounding Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCRatesv1.2_Requests\\Request_ARRC_E2ETESTDC_012.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_012.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE DCRatesv1.2_013_CALCULATE DAILY COMPOUNDING RATE
    [Documentation]    This test case calculates Daily Compounding Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCRatesv1.2_Requests\\Request_ARRC_E2ETESTDC_013.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_013.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE DCRatesv1.2_014_CALCULATE DAILY COMPOUNDING RATE
    [Documentation]    This test case calculates Daily Compounding Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCRatesv1.2_Requests\\Request_ARRC_E2ETESTDC_014.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_014.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE DCRatesv1.2_015_CALCULATE DAILY COMPOUNDING RATE
    [Documentation]    This test case calculates Daily Compounding Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCRatesv1.2_Requests\\Request_ARRC_E2ETESTDC_015.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_015.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_015.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE DCRatesv1.2_016_CALCULATE DAILY COMPOUNDING RATE
    [Documentation]    This test case calculates Daily Compounding Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCRatesv1.2_Requests\\Request_ARRC_E2ETESTDC_016.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_016.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE DCRatesv1.2_017_CALCULATE DAILY COMPOUNDING RATE
    [Documentation]    This test case calculates Daily Compounding Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCRatesv1.2_Requests\\Request_ARRC_E2ETESTDC_017.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_017.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_017.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE DCRatesv1.2_018_CALCULATE DAILY COMPOUNDING RATE
    [Documentation]    This test case calculates Daily Compounding Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCRatesv1.2_Requests\\Request_ARRC_E2ETESTDC_018.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_018.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_018.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE DCRatesv1.2_019_CALCULATE DAILY COMPOUNDING RATE
    [Documentation]    This test case calculates Daily Compounding Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCRatesv1.2_Requests\\Request_ARRC_E2ETESTDC_019.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_019.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_019.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE DCRatesv1.2_020_CALCULATE DAILY COMPOUNDING RATE
    [Documentation]    This test case calculates Daily Compounding Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCRatesv1.2_Requests\\Request_ARRC_E2ETESTDC_020.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_020.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_020.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE DCRatesv1.2_021_CALCULATE DAILY COMPOUNDING RATE
    [Documentation]    This test case calculates Daily Compounding Rates
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.2\\DCRatesv1.2_Requests\\Request_ARRC_E2ETESTDC_021.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_021.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_021.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.2\\DCRatesv1.2_Response\\Response_ARRC_E2ETESTDC_021.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
