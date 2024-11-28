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


POST_VALIDATE ESTR_DC_CCR=N_NoPay_TC001- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='false'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_ESTR_Interest\\ESTR_DCI_CCRN\\Request_DCIESTRTC001_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC001_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC001_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC001_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ESTR_DC_CCR=N_NoPay_TC002- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='false'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_ESTR_Interest\\ESTR_DCI_CCRN\\Request_DCIESTRTC002_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC002_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC002_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC002_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ESTR_DC_CCR=N_NoPay_TC003- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='false'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_ESTR_Interest\\ESTR_DCI_CCRN\\Request_DCIESTRTC003_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC003_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC003_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC003_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ESTR_DC_CCR=N_NoPay_TC004- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='false'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_ESTR_Interest\\ESTR_DCI_CCRN\\Request_DCIESTRTC004_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC004_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC004_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC004_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ESTR_DC_CCR=N_NoPay_TC005- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='false'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_ESTR_Interest\\ESTR_DCI_CCRN\\Request_DCIESTRTC005_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC005_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC005_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC005_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ESTR_DC_CCR=N_IntPay_TC001- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='false'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_ESTR_Interest\\ESTR_DCI_CCRN\\Request_DCIESTRTC001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ESTR_DC_CCR=N_IntPay_TC002- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='false'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_ESTR_Interest\\ESTR_DCI_CCRN\\Request_DCIESTRTC002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ESTR_DC_CCR=N_IntPay_TC003- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='false'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_ESTR_Interest\\ESTR_DCI_CCRN\\Request_DCIESTRTC003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC003.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ESTR_DC_CCR=N_IntPay_TC004- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='false'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_ESTR_Interest\\ESTR_DCI_CCRN\\Request_DCIESTRTC004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ESTR_DC_CCR=N_IntPay_TC005- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='false'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_ESTR_Interest\\ESTR_DCI_CCRN\\Request_DCIESTRTC005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_ESTR_Interest\\ESTR_DCI_CCRN\\Response_DCIESTRTC005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

