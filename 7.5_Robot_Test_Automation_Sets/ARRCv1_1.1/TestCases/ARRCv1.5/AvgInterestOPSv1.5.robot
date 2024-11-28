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


POST_VALIDATE LIQSC36597CAINoPay_001- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterestNoPay_001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597CAINoPay002- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterestNoPay_002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE LIQSC36597CAINoPay003- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterestNoPay_003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_003.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597CAINoPay004- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterestNoPay_004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE LIQSC36597CAINoPay005- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterestNoPay_005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597CAINoPay006- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterestNoPay_006.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_006.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597CAINoPay007- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterestNoPay_007.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_007.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597CAINoPay008- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterestNoPay_008.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_008.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597CAINoPay009- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterestNoPay_009.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_009.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597CAINoPay010- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterestNoPay_010.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_010.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597CAINoPay011- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterestNoPay_011.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_011.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE} 

POST_VALIDATE LIQSC36597CAINoPay012- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterestNoPay_012.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_012.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597CAINoPay013- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterestNoPay_013.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_013.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597CAINoPay014- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterestNoPay_014.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_014.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterestNoPay_014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE LIQSC36597CAI001- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterest_001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597CAI002- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterest002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE LIQSC36597CAI003- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterest003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_003.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597CAI004- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterest004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE LIQSC36597CAI005- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterest005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597CAI006- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterest006.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_006.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597CAI007- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterest007.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_007.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597CAI008- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterest008.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_008.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597CAI009- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterest009.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_009.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597CAI010- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterest010.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_010.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597CAI011- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterest011.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_011.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE} 

POST_VALIDATE LIQSC36597CAI012- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterest012.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_012.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597CAI013- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterest013.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_013.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQSC36597CAI014- - OPS Changes for NCCR
    [Documentation]    This test case sends POST request and gives rates and Interest with compounding-in-arrears method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.5\\Request_CCROPSNInterest\\Request_CCROPSInterest014.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_014.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.5\\Response_CCROPSNInterest\\Response_CCROPSInterest_014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

