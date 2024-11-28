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

POST_VALIDATE INTEREST_FOR_ARRCSONIADCI_004_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
     [Documentation]    This testcase covers validating Interest calculated from Daily compounded rate
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyInterest_Requests\\SONIA\\Request_ARRCSONIADCI_004.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\Response_ARRCSONIADCI_004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE INTEREST_FOR_ARRCSONIADCI_009_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
     [Documentation]    This testcase covers validating Interest calculated from Daily compounded rate
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyInterest_Requests\\SONIA\\Request_ARRCSONIADCI_009.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_009.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\Response_ARRCSONIADCI_009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE INTEREST_FOR_ARRCSONIADCI_012_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
     [Documentation]    This testcase covers validating Interest calculated from Daily compounded rate
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyInterest_Requests\\SONIA\\Request_ARRCSONIADCI_012.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_012.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\Response_ARRCSONIADCI_012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE INTEREST_FOR_ARRCSONIADCI_013_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
     [Documentation]    This testcase covers validating Interest calculated from Daily compounded rate
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyInterest_Requests\\SONIA\\Request_ARRCSONIADCI_013.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_013.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\Response_ARRCSONIADCI_013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE INTEREST_FOR_ARRCSONIADCI_022_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
     [Documentation]    This testcase covers validating Interest calculated from Daily compounded rate
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyInterest_Requests\\SONIA\\Request_ARRCSONIADCI_022.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_022.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\Response_ARRCSONIADCI_022.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_022.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE INTEREST_FOR_ARRCSONIADCI_023_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
     [Documentation]    This testcase covers validating Interest calculated from Daily compounded rate
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyInterest_Requests\\SONIA\\Request_ARRCSONIADCI_023.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_023.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\Response_ARRCSONIADCI_023.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_023.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE INTEREST_FOR_ARRCSONIADCI_027_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
     [Documentation]    This testcase covers validating Interest calculated from Daily compounded rate
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyInterest_Requests\\SONIA\\Request_ARRCSONIADCI_027.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_027.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\Response_ARRCSONIADCI_027.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_027.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE INTEREST_FOR_ARRCSONIADCI_028_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
     [Documentation]    This testcase covers validating Interest calculated from Daily compounded rate
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyInterest_Requests\\SONIA\\Request_ARRCSONIADCI_028.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_028.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\Response_ARRCSONIADCI_028.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_028.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE INTEREST_FOR_ARRCSONIADCI_030_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
     [Documentation]    This testcase covers validating Interest calculated from Daily compounded rate
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyInterest_Requests\\SONIA\\Request_ARRCSONIADCI_030.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_030.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\Response_ARRCSONIADCI_030.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_030.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE INTEREST_FOR_ARRCSONIADCI_047_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
     [Documentation]    This testcase covers validating Interest calculated from Daily compounded rate
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyInterest_Requests\\SONIA\\Request_ARRCSONIADCI_047.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_047.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\Response_ARRCSONIADCI_047.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_047.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE INTEREST_FOR_ARRCSONIADCI_054_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
     [Documentation]    This testcase covers validating Interest calculated from Daily compounded rate
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyInterest_Requests\\SONIA\\Request_ARRCSONIADCI_054.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_054.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\Response_ARRCSONIADCI_054.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_054.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE INTEREST_FOR_ARRCSONIADCI_057_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
     [Documentation]    This testcase covers validating Interest calculated from Daily compounded rate
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyInterest_Requests\\SONIA\\Request_ARRCSONIADCI_057.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_057.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\Response_ARRCSONIADCI_057.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_057.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE INTEREST_FOR_ARRCSONIADCI_059_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
     [Documentation]    This testcase covers validating Interest calculated from Daily compounded rate
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyInterest_Requests\\SONIA\\Request_ARRCSONIADCI_059.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_059.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\Response_ARRCSONIADCI_059.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_059.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE INTEREST_FOR_ARRCSONIADCI_060_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
     [Documentation]    This testcase covers validating Interest calculated from Daily compounded rate
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyInterest_Requests\\SONIA\\Request_ARRCSONIADCI_060.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_060.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\Response_ARRCSONIADCI_060.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_060.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE INTEREST_FOR_ARRCSONIADCI_061_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
     [Documentation]    This testcase covers validating Interest calculated from Daily compounded rate
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyInterest_Requests\\SONIA\\Request_ARRCSONIADCI_061.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_061.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\Response_ARRCSONIADCI_061.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_061.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE INTEREST_FOR_ARRCSONIADCI_066_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
     [Documentation]    This testcase covers validating Interest calculated from Daily compounded rate
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyInterest_Requests\\SONIA\\Request_ARRCSONIADCI_066.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_066.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\Response_ARRCSONIADCI_066.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_066.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE INTEREST_FOR_ARRCSONIADCI_069_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
     [Documentation]    This testcase covers validating Interest calculated from Daily compounded rate
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyInterest_Requests\\SONIA\\Request_ARRCSONIADCI_069.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_069.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\Response_ARRCSONIADCI_069.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_069.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE INTEREST_FOR_ARRCSONIADCI_073_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
     [Documentation]    This testcase covers validating Interest calculated from Daily compounded rate
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\DailyInterest_Requests\\SONIA\\Request_ARRCSONIADCI_073.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_073.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\Response_ARRCSONIADCI_073.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\DailyInterest_Response\\SONIA\\API_ARRCSONIADCI_073.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
