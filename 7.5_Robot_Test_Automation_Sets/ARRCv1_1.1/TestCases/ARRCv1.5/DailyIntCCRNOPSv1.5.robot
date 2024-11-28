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


POST_VALIDATE LIQSC36597DCI_NoPay_001- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_001_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_001_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_001_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_001_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI_NoPay_002- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_002_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_002_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_002_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_002_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE LIQSC36597DCI_NoPay_003- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_003_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_003_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_003_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_003_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI_NoPay_004- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_004_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_004_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_004_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_004_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE LIQSC36597DCI_NoPay_005- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_005_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_005_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_005_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_005_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI_NoPay_006- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_006_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_006_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_006_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_006_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI_NoPay_007- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_007_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_007_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_007_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_007_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI_NoPay_008- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_008_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_008_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_008_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_008_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI_NoPay_009- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_009_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_009_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_009_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_009_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI_NoPay_010- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_010_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_010_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_010_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_010_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI_NoPay_011- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_011_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_011_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_011_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_011_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE} 

POST_VALIDATE LIQSC36597DCI_NoPay_012_CCR1- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_012_NoPayCCR1.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_012_NoPayCCR1.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_012_NoPayCCR1.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_012_NoPayCCR1.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI_NoPay_012_CCR2- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_012_NoPayCCR2.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_012_NoPayCCR2.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_012_NoPayCCR2.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_012_NoPayCCR2.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}



POST_VALIDATE LIQSC36597DCI_NoPay_013- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_013_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_013_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_013_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_013_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI_NoPay_014- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_014_NoPay.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_014_NoPay.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_014_NoPay.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_014_NoPay.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE LIQSC36597DCI001- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI002- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE LIQSC36597DCI003- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_003.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI004- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE LIQSC36597DCI005- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI006- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_006.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_006.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI007- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_007.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_007.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI008- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_008.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_008.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI009- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_009.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_009.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI010- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_010.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_010.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI011- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_011.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_011.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE} 

POST_VALIDATE LIQSC36597DCI012- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_012.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_012.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI013- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_013.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_013.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI014- - OPS Changes for NCCR when CCR=N
    [Documentation]    This test case sends POST request and gives rates and Interest with daily-compounding (CCR=N)  method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_OPS_NCCRCCRN_Interest\\Request_OPS_NCCRI_014.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_014.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_OPS_NCCRCCRN_Interest\\Response_OPS_NCCRI_014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

