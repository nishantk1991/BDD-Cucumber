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


POST_VALIDATE ARRCINTNEGSAVG_001- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_001.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_002- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_002.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ARRCINTNEGSAVG_003- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_003.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_004- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_004.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ARRCINTNEGSAVG_005- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_005.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_006- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_006.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_006.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_007- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_007.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_007.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_008- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_008.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_008.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_009- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_009.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_009.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_010- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_010.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_010.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_011- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_011.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_011.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE} 

POST_VALIDATE ARRCINTNEGSAVG_012- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_012.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_012.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_013- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_013.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_013.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_014- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_014.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_014.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_015- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_015.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_015.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_015.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_016- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_016.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_016.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_017- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_017.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_017.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_017.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_018- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_018.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_018.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_018.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_019- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_019.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_019.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_019.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_020- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_020.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_020.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_020.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_021- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_021.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_021.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_021.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_021.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_022- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_022.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_022.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_022.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_022.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_023- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_023.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_023.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_023.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_023.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_029- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_029.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_029.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_029.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_029.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_030- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_030.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_030.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_030.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_030.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_031- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_031.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_031.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_031.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_031.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_032- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_032.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_032.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_032.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_032.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_033- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_033.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_033.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_033.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_033.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_034- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_034.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_034.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_034.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_034.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_035- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_035.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_035.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_035.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_035.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_036- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_036.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_036.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_036.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_036.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_037- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_037.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_037.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_037.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_037.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_038- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_038.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_038.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_038.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_038.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_039- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_039.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_039.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_039.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_039.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_040- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_040.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_040.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_040.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_040.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_041- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_041.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_041.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_041.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_041.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGSAVG_045- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_045.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_045.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_045.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_045.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_046- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_046.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_046.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_046.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_046.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_047- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_047.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_047.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_047.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_047.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_048- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_048.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_048.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_048.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_048.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGSAVG_050- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_050.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_050.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_050.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_050.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_051- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_051.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_051.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_051.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_051.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_052- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_052.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_052.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_052.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_052.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ARRCINTNEGSAVG_053- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_053.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_053.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_053.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_053.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_054- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_054.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_054.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_054.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_054.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ARRCINTNEGSAVG_055- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_055.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_055.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_055.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_055.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGSAVG_058- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_058.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_058.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_058.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_058.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_059- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_059.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_059.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_059.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_059.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_060- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_060.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_060.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_060.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_060.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_061- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_061.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_061.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_061.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_061.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE} 


POST_VALIDATE ARRCINTNEGSAVG_063- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_063.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_063.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_063.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_063.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_064- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_064.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_064.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_064.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_064.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_065- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_065.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_065.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_065.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_065.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_066- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_066.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_066.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_066.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_066.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_067- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_067.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_067.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_067.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_067.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_068- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_068.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_068.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_068.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_068.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_069- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_069.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_069.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_069.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_069.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_070- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_070.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_070.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_070.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_070.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_071- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_071.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_071.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_071.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_071.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_072- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_072.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_072.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_072.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_072.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGSAVG_073- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_073.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_073.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_073.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_073.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGSAVG_074- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_074.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_074.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_074.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_074.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_076- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_076.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_076.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_076.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_076.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGSAVG_078- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_078.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_078.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_078.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_078.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGSAVG_080- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_080.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_080.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_080.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_080.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_081- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_081.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_081.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_081.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_081.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_082- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_082.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_082.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_082.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_082.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGSAVG_083- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_083.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_083.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_083.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_083.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGSAVG_084- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_084.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_084.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_084.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_084.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_085- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_085.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_085.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_085.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_085.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_086- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_086.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_086.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_086.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_086.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_087- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_087.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_087.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_087.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_087.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_088- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_088.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_088.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_088.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_088.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_089- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_089.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_089.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_089.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_089.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_090- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_090.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_090.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_090.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_090.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_091- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_091.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_091.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_091.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_091.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGSAVG_093- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_093.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_093.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_093.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_093.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGSAVG_094- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_094.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_094.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_094.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_094.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_095- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_095.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_095.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_095.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_095.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_096- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_096.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_096.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_096.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_096.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_097- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_097.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_097.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_097.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_097.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_098- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_098.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_098.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_098.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_098.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_099- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_099.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_099.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_099.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_099.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_100- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_100.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_100.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_100.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_100.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGSAVG_101- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_101.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_101.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_101.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_101.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_102- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_102.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_102.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_102.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_102.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGSAVG_103- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_103.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_103.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_103.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_103.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGSAVG_104- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_104.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_104.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_104.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_104.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_105- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_105.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_105.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_105.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_105.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_106- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_106.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_106.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_106.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_106.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_107- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_107.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_107.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_107.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_107.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_108- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_108.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_108.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_108.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_108.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}



POST_VALIDATE ARRCINTNEGSAVG_126- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_126.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_126.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_126.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_126.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_127- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_127.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_127.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_127.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_127.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_128- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_128.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_128.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_128.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_128.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_129- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_129.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_129.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_129.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_129.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_130- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_130.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_130.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_130.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_130.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_131- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_131.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_131.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_131.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_131.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_132- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_132.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_132.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_132.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_132.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGSAVG_133- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_133.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_133.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_133.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_133.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGSAVG_134- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_134.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_134.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_134.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_134.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSAVG_135- Validation / Negative Scenarios for Simple Average Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple Average method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimAvgInterest_Requests\\Request_ARRCINTNEGSAVG_135.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-average/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_135.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_135.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimAvgInterest_Response\\Response_ARRCINTNEGSAVG_135.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

