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


POST_VALIDATE LIQ120961CAI001- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691CAInterest\\Request_LIQ120691CAI001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ120961CAI002- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691CAInterest\\Request_LIQ120691CAI002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE LIQ120961CAI003- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691CAInterest\\Request_LIQ120691CAI003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI003.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ120961CAI004- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691CAInterest\\Request_LIQ120691CAI004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE LIQ120961CAI005- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691CAInterest\\Request_LIQ120691CAI005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ120961CAI006- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691CAInterest\\Request_LIQ120691CAI006.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI006.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ120961CAI007- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691CAInterest\\Request_LIQ120691CAI007.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI007.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ120961CAI008- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691CAInterest\\Request_LIQ120691CAI008.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI008.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ120961CAI009- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691CAInterest\\Request_LIQ120691CAI009.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI009.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ120961CAI010- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691CAInterest\\Request_LIQ120691CAI010.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI010.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ120961CAI011- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691CAInterest\\Request_LIQ120691CAI011.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI011.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE} 

POST_VALIDATE LIQ120961CAI012- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691CAInterest\\Request_LIQ120691CAI012.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI012.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ120961CAI013- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691CAInterest\\Request_LIQ120691CAI013.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI013.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ120961CAI014- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691CAInterest\\Request_LIQ120691CAI014.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI014.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ120961CAI016- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691CAInterest\\Request_LIQ120691CAI016.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI016.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ120961CAI017- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691CAInterest\\Request_LIQ120691CAI017.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI017.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI017.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ120961CAI018- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691CAInterest\\Request_LIQ120691CAI018.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI018.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI018.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ120961CAI019- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ120691CAInterest\\Request_LIQ120691CAI019.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI019.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI019.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ120691CAInterest\\Response_LIQ-120691CAI019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
