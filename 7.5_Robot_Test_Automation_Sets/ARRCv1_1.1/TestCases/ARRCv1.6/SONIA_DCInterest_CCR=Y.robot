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


POST_VALIDATE SONIA_DC_CCR=Y_NoPay_TC001- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='true'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SONIA_Interest\\SONIA_DCI_CCRY\\Request_DCISONIATC001_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRYnew\\Response_DCISONIATC001_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC001_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC001_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE SONIA_DC_CCR=Y_NoPay_TC002- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='true'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SONIA_Interest\\SONIA_DCI_CCRY\\Request_DCISONIATC002_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRYnew\\Response_DCISONIATC002_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC002_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC002_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE SONIA_DC_CCR=Y_NoPay_TC003- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='true'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SONIA_Interest\\SONIA_DCI_CCRY\\Request_DCISONIATC003_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRYnew\\Response_DCISONIATC003_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC003_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC003_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE SONIA_DC_CCR=Y_NoPay_TC004- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='true'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SONIA_Interest\\SONIA_DCI_CCRY\\Request_DCISONIATC004_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRYnew\\Response_DCISONIATC004_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC004_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC004_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE SONIA_DC_CCR=Y_NoPay_TC005- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='true'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SONIA_Interest\\SONIA_DCI_CCRY\\Request_DCISONIATC005_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRYnew\\Response_DCISONIATC005_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC005_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC005_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE SONIA_DC_CCR=Y_NoPay_TC006- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='true'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SONIA_Interest\\SONIA_DCI_CCRY\\Request_DCISONIATC006_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRYnew\\Response_DCISONIATC006_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC006_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC006_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE SONIA_DC_CCR=Y_NoPay_TC007- - Non Payment scenarios - Real time
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='true'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SONIA_Interest\\SONIA_DCI_CCRY\\Request_DCISONIATC007_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRYnew\\Response_DCISONIATC007_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC007_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC007_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE SONIA_DC_CCR=Y_IntPay_TC001- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='true'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SONIA_Interest\\SONIA_DCI_CCRY\\Request_DCISONIATC001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRYnew\\Response_DCISONIATC001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE SONIA_DC_CCR=Y_IntPay_TC002- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='true'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SONIA_Interest\\SONIA_DCI_CCRY\\Request_DCISONIATC002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRYnew\\Response_DCISONIATC002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE SONIA_DC_CCR=Y_IntPay_TC003- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='true'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SONIA_Interest\\SONIA_DCI_CCRY\\Request_DCISONIATC003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRYnew\\Response_DCISONIATC003.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE SONIA_DC_CCR=Y_IntPay_TC004- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='true'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SONIA_Interest\\SONIA_DCI_CCRY\\Request_DCISONIATC004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRYnew\\Response_DCISONIATC004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE SONIA_DC_CCR=Y_IntPay_TC005- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='true'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SONIA_Interest\\SONIA_DCI_CCRY\\Request_DCISONIATC005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRYnew\\Response_DCISONIATC005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE SONIA_DC_CCR=Y_IntPay_TC006- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='true'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SONIA_Interest\\SONIA_DCI_CCRY\\Request_DCISONIATC006.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRYnew\\Response_DCISONIATC006.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE SONIA_DC_CCR=Y_IntPay_TC007- Payment scenarios - Realtime
    [Documentation]    This test case sends POST request and gives rates and Interest with Daily Compounding method when CCR='true'
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.6\\Request_SONIA_Interest\\SONIA_DCI_CCRY\\Request_DCISONIATC007.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRYnew\\Response_DCISONIATC007.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.6\\Response_SONIA_Interest\\SONIA_DCI_CCRY\\Response_DCISONIATC007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
