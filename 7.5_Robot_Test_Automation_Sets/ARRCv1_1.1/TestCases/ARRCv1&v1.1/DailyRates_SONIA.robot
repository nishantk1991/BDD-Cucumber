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

GET_VALIDATE RATE_FOR_ARRCSONIADC_004_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario to calculate Daily rates with Daily compounding method.
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyRates_Requests\\SONIA\\Request_ARRCSONIADC_004.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_004.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIA\\Response_ARRCSONIADC_004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE RATE_FOR_ARRCSONIADC_009_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario to calculate Daily rates with Daily compounding method.
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyRates_Requests\\SONIA\\Request_ARRCSONIADC_009.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_009.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIA\\Response_ARRCSONIADC_009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

GET_VALIDATE RATE_FOR_ARRCSONIADC_012_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario to calculate Daily rates with Daily compounding method.
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyRates_Requests\\SONIA\\Request_ARRCSONIADC_012.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_012.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIA\\Response_ARRCSONIADC_012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_VALIDATE RATE_FOR_ARRCSONIADC_013_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario to calculate Daily rates with Daily compounding method.
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyRates_Requests\\SONIA\\Request_ARRCSONIADC_013.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_013.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIA\\Response_ARRCSONIADC_013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_VALIDATE RATE_FOR_ARRCSONIADC_022_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario to calculate Daily rates with Daily compounding method.
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyRates_Requests\\SONIA\\Request_ARRCSONIADC_022.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_022.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIA\\Response_ARRCSONIADC_022.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_022.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_VALIDATE RATE_FOR_ARRCSONIADC_023_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario to calculate Daily rates with Daily compounding method.
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyRates_Requests\\SONIA\\Request_ARRCSONIADC_023.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_023.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIA\\Response_ARRCSONIADC_023.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_023.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_VALIDATE RATE_FOR_ARRCSONIADC_027_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario to calculate Daily rates with Daily compounding method.
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyRates_Requests\\SONIA\\Request_ARRCSONIADC_027.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_027.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIA\\Response_ARRCSONIADC_027.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_027.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_VALIDATE RATE_FOR_ARRCSONIADC_028_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario to calculate Daily rates with Daily compounding method.
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyRates_Requests\\SONIA\\Request_ARRCSONIADC_028.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_028.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIA\\Response_ARRCSONIADC_028.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_028.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_VALIDATE RATE_FOR_ARRCSONIADC_030_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario to calculate Daily rates with Daily compounding method.
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyRates_Requests\\SONIA\\Request_ARRCSONIADC_030.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_030.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIA\\Response_ARRCSONIADC_030.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_030.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_VALIDATE RATE_FOR_ARRCSONIADC_047_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario to calculate Daily rates with Daily compounding method.
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyRates_Requests\\SONIA\\Request_ARRCSONIADC_047.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_047.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIA\\Response_ARRCSONIADC_047.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_047.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_VALIDATE RATE_FOR_ARRCSONIADC_054_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario to calculate Daily rates with Daily compounding method.
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyRates_Requests\\SONIA\\Request_ARRCSONIADC_054.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_054.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIA\\Response_ARRCSONIADC_054.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_054.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_VALIDATE RATE_FOR_ARRCSONIADC_057_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario to calculate Daily rates with Daily compounding method.
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyRates_Requests\\SONIA\\Request_ARRCSONIADC_057.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_057.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIA\\Response_ARRCSONIADC_057.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_057.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_VALIDATE RATE_FOR_ARRCSONIADC_059_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario to calculate Daily rates with Daily compounding method.
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyRates_Requests\\SONIA\\Request_ARRCSONIADC_059.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_059.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIA\\Response_ARRCSONIADC_059.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_059.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_VALIDATE RATE_FOR_ARRCSONIADC_060_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario to calculate Daily rates with Daily compounding method.
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyRates_Requests\\SONIA\\Request_ARRCSONIADC_060.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_060.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIA\\Response_ARRCSONIADC_060.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_060.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_VALIDATE RATE_FOR_ARRCSONIADC_061_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario to calculate Daily rates with Daily compounding method.
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyRates_Requests\\SONIA\\Request_ARRCSONIADC_061.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_061.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIA\\Response_ARRCSONIADC_061.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_061.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_VALIDATE RATE_FOR_ARRCSONIADC_066_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario to calculate Daily rates with Daily compounding method.
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyRates_Requests\\SONIA\\Request_ARRCSONIADC_066.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_066.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIA\\Response_ARRCSONIADC_066.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_066.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_VALIDATE RATE_FOR_ARRCSONIADC_069_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario to calculate Daily rates with Daily compounding method.
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyRates_Requests\\SONIA\\Request_ARRCSONIADC_069.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_069.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIA\\Response_ARRCSONIADC_069.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_069.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


GET_VALIDATE RATE_FOR_ARRCSONIADC_073_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This testcase covers scenario to calculate Daily rates with Daily compounding method.
    
    GIVEN USER STORES API REQUEST FROM FILE   ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyRates_Requests\\SONIA\\Request_ARRCSONIADC_073.json
   
    WHEN USER SENDS A "GET" REQUEST    ${API_REQUEST_FROM_FILE}    
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_073.json
    
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIA\\Response_ARRCSONIADC_073.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyRates_Response\\SONIAe\\API_ARRCSONIADC_073.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
