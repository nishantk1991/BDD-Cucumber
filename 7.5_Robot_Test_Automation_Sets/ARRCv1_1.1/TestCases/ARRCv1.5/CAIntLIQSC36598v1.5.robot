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


POST_VALIDATE LIQSC36598CAI001- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_CIA_Interest\\Request_CIA001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598CAI002- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_CIA_Interest\\Request_CIA002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE LIQSC36598CAI003- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_CIA_Interest\\Request_CIA003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA003.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598CAI004- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_CIA_Interest\\Request_CIA004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE LIQSC36598CAI005- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_CIA_Interest\\Request_CIA005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598CAI006- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_CIA_Interest\\Request_CIA006.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA006.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598CAI007- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_CIA_Interest\\Request_CIA007.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA007.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598CAI008- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_CIA_Interest\\Request_CIA008.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA008.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598CAI009- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_CIA_Interest\\Request_CIA009.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA009.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598CAI010- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_CIA_Interest\\Request_CIA010.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA010.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598CAI011- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_CIA_Interest\\Request_CIA011.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA011.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE} 

POST_VALIDATE LIQSC36598CAI012- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_CIA_Interest\\Request_CIA012.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA012.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598CAI013- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_CIA_Interest\\Request_CIA013.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA013.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598CAI014- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_CIA_Interest\\Request_CIA014.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA014.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598CAI015- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_CIA_Interest\\Request_CIA015.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA015.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA015.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598CAI016- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_CIA_Interest\\Request_CIA016.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA016.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598CAI017- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_CIA_Interest\\Request_CIA017.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA017.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA017.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598CAI018- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_CIA_Interest\\Request_CIA018.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA018.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA018.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598CAI019- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_CIA_Interest\\Request_CIA019.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA019.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA019.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36598CAI020- NCCR with CCR Rounding Applies
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Requests_LIQSC36598\\Request_CIA_Interest\\Request_CIA020.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA020.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA020.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_LIQSC36598\\Response_CIA_Interest\\Response_CIA020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
