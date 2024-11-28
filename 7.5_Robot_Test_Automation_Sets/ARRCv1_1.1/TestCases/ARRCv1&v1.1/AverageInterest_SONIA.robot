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

POST_VALIDATE RATE_FOR_ARRCSONIACIA_005_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\AverageInterest_Requests\\SONIA\\Request_ARRCSONIACIA_005.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\\Response_ARRCSONIACIA_005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE RATE_FOR_ARRCSONIACIA_006_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\AverageInterest_Requests\\SONIA\\Request_ARRCSONIACIA_006.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_006.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\\Response_ARRCSONIACIA_006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE RATE_FOR_ARRCSONIACIA_007_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\AverageInterest_Requests\\SONIA\\Request_ARRCSONIACIA_007.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_007.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\\Response_ARRCSONIACIA_007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE RATE_FOR_ARRCSONIACIA_009_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\AverageInterest_Requests\\SONIA\\Request_ARRCSONIACIA_009.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_009.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\\Response_ARRCSONIACIA_009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE RATE_FOR_ARRCSONIACIA_010_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\AverageInterest_Requests\\SONIA\\Request_ARRCSONIACIA_010.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_010.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\\Response_ARRCSONIACIA_010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE RATE_FOR_ARRCSONIACIA_016_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\AverageInterest_Requests\\SONIA\\Request_ARRCSONIACIA_016.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_016.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\\Response_ARRCSONIACIA_016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE RATE_FOR_ARRCSONIACIA_019_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\AverageInterest_Requests\\SONIA\\Request_ARRCSONIACIA_019.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_019.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\\Response_ARRCSONIACIA_019.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE RATE_FOR_ARRCSONIACIA_020_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\AverageInterest_Requests\\SONIA\\Request_ARRCSONIACIA_020.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_020.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\\Response_ARRCSONIACIA_020.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE RATE_FOR_ARRCSONIACIA_021_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\AverageInterest_Requests\\SONIA\\Request_ARRCSONIACIA_021.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_021.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\\Response_ARRCSONIACIA_021.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_021.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE RATE_FOR_ARRCSONIACIA_023_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\AverageInterest_Requests\\SONIA\\Request_ARRCSONIACIA_023.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_023.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\\Response_ARRCSONIACIA_023.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_023.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE RATE_FOR_ARRCSONIACIA_028_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\AverageInterest_Requests\\SONIA\\Request_ARRCSONIACIA_028.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_028.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\\Response_ARRCSONIACIA_028.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_028.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE RATE_FOR_ARRCSONIACIA_029_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\AverageInterest_Requests\\SONIA\\Request_ARRCSONIACIA_029.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_029.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\\Response_ARRCSONIACIA_029.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_029.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE RATE_FOR_ARRCSONIACIA_031_WHEN START AND END DATES ARE DIFFERENT WITH LOOKBACK AND LOCKOUT APPLIED
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.1\\AverageInterest_Requests\\SONIA\\Request_ARRCSONIACIA_031.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_031.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\\Response_ARRCSONIACIA_031.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.1\\AverageInterest_Response\\SONIA\API_ARRCSONIACIA_031.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
