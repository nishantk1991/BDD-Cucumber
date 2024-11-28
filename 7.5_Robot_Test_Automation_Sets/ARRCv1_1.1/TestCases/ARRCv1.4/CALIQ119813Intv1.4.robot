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


POST_VALIDATE LIQ119813CAI001- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813CAInterest\\Request_LIQ119183CAI001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ119813CAI002- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813CAInterest\\Request_LIQ119183CAI002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

   
POST_VALIDATE LIQ119813CAI004- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813CAInterest\\Request_LIQ119183CAI004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE LIQ119813CAI005- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813CAInterest\\Request_LIQ119183CAI005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ119813CAI006- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813CAInterest\\Request_LIQ119183CAI006.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI006.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ119813CAI007- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813CAInterest\\Request_LIQ119183CAI007.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI007.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ119813CAI008- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813CAInterest\\Request_LIQ119183CAI008.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI008.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ119813CAI010- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813CAInterest\\Request_LIQ119183CAI010.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI010.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ119813CAI011- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813CAInterest\\Request_LIQ119183CAI011.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/compounded-in-arrears/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI011.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813CAInterest\\Response_LIQ119813CAI011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE} 
