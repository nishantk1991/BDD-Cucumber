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


POST_VALIDATE LIQ119183SAGI001- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813SAVGInterest\\Request_LIQ119183SAGI001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI001.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ119183SAGI002- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813SAVGInterest\\Request_LIQ119183SAGI002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI002.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ119183SAGI004- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813SAVGInterest\\Request_LIQ119183SAGI004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI004.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE LIQ119183SAGI005- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813SAVGInterest\\Request_LIQ119183SAGI005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI005.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ119183SAGI006- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813SAVGInterest\\Request_LIQ119183SAGI006.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI006.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ119183SAGI007- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813SAVGInterest\\Request_LIQ119183SAGI007.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI007.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ119183SAGI008- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813SAVGInterest\\Request_LIQ119183SAGI008.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI008.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE LIQ119183SAGI010- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813SAVGInterest\\Request_LIQ119183SAGI010.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI010.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE LIQ119183SAGI011- - Changes for calculateTillDate on Friday
    [Documentation]    This test case sends POST request and gives rates and Interest with Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\ARRCv1.4\\Request_LIQ119813SAVGInterest\\Request_LIQ119183SAGI011.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI011.json
    THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    200
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\ARRCv1.4\\Response_LIQ119813SAVGInterest\\Response_LIQ119813SAGI011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE} 
