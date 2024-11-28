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


POST_VALIDATE LIQSC36597DCINoPay_001- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterestNoPay_001.json
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCINoPay002- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterestNoPay_002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE LIQSC36597DCINoPay003- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterestNoPay_003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_003.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCINoPay004- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterestNoPay_004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE LIQSC36597DCINoPay005- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterestNoPay_005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCINoPay006- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterestNoPay_006.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_006.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCINoPay007- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterestNoPay_007.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_007.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCINoPay008- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterestNoPay_008.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_008.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCINoPay009- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterestNoPay_009.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_009.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCINoPay010- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterestNoPay_010.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_010.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCINoPay011- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterestNoPay_011.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_011.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE} 

POST_VALIDATE LIQSC36597DCINoPay012- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterestNoPay_012.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_012.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCINoPay013- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterestNoPay_013.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_013.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCINoPay014- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterestNoPay_014.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_014.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterestNoPay_014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE LIQSC36597DCI001- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterest_001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI002- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterest_002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE LIQSC36597DCI003- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterest_003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_003.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI004- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterest_004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE LIQSC36597DCI005- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterest_005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI006- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterest_006.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_006.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI007- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterest_007.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_007.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI008- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterest_008.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_008.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI009- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterest_009.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_009.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI010- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterest_010.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_010.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI011- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterest_011.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_011.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE} 

POST_VALIDATE LIQSC36597DCI012- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterest_012.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_012.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI013- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterest_013.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_013.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597DCI014- - OPS Changes for NCCR when CCR= True
    [Documentation]    This test case sends POST request and gives rates and Interest with daily compounding with CCR=Y method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_NCCROPSYInterest\\Request_NCCRYOPSInterest_014.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/daily-compounding/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_014.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_NCCROPSYInterest\\Response_NCCRYOPSInterest_014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

