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


POST_VALIDATE SOFR_SARR_NoPay_TC001- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with simple arr method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Interest\\SOFR_SARRI\\Request_SARRISOFRTC001_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC001_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC001_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC001_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE SOFR_SARR_NoPay_TC002- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with simple arr method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Interest\\SOFR_SARRI\\Request_SARRISOFRTC002_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC002_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC002_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC002_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE SOFR_SARR_NoPay_TC003- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with simple arr method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Interest\\SOFR_SARRI\\Request_SARRISOFRTC003_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC003_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC003_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC003_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE SOFR_SARR_NoPay_TC004- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with simple arr method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Interest\\SOFR_SARRI\\Request_SARRISOFRTC004_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC004_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC004_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC004_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE SOFR_SARR_NoPay_TC005- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with simple arr method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Interest\\SOFR_SARRI\\Request_SARRISOFRTC005_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC005_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC005_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC005_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE SOFR_SARR_NoPay_TC006- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with simple arr method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Interest\\SOFR_SARRI\\Request_SARRISOFRTC006_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC006_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC006_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC006_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE SOFR_SARR_NoPay_TC007- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with simple arr method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Interest\\SOFR_SARRI\\Request_SARRISOFRTC007_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC007_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC007_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC007_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE SOFR_SARR_IntPay_TC001- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with simple arr method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Interest\\SOFR_SARRI\\Request_SARRISOFRTC001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE SOFR_SARR_IntPay_TC002- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with simple arr method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Interest\\SOFR_SARRI\\Request_SARRISOFRTC002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE SOFR_SARR_IntPay_TC003- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with simple arr method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Interest\\SOFR_SARRI\\Request_SARRISOFRTC003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC003.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE SOFR_SARR_IntPay_TC004- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with simple arr method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Interest\\SOFR_SARRI\\Request_SARRISOFRTC004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE SOFR_SARR_IntPay_TC005- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with simple arr method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Interest\\SOFR_SARRI\\Request_SARRISOFRTC005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE SOFR_SARR_IntPay_TC006- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with simple arr method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Interest\\SOFR_SARRI\\Request_SARRISOFRTC006.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC006.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE SOFR_SARR_IntPay_TC007- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with simple arr method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SOFR_Interest\\SOFR_SARRI\\Request_SARRISOFRTC007.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC007.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SOFR_Interest\\SOFR_SARRI\\Response_SARRISOFRTC007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
