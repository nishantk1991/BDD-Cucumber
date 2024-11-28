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


POST_VALIDATE ARRCINTNEGSARR_001- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_001.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_001.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_001.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_001.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_002- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_002.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_002.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_002.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_002.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ARRCINTNEGSARR_003- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_003.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_003.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_003.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_003.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_004- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_004.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_004.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_004.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_004.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ARRCINTNEGSARR_005- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_005.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_005.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_005.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_005.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_006- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_006.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_006.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_006.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_006.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_007- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_007.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_007.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_007.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_007.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_008- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_008.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_008.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_008.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_008.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_009- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_009.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_009.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_009.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_009.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_010- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_010.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_010.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_010.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_010.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_011- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_011.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_011.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_011.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_011.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE} 

POST_VALIDATE ARRCINTNEGSARR_012- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_012.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_012.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_012.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_012.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_013- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_013.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_013.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_013.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_013.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_014- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_014.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_014.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_014.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_014.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_015- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_015.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_015.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_015.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_015.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_016- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_016.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_016.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_016.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_016.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_017- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_017.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_017.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_017.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_017.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_018- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_018.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_018.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_018.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_018.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_019- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_019.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_019.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_019.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_019.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_020- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_020.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_020.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_020.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_020.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_021- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_021.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_021.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_021.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_021.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_022- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_022.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_022.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_022.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_022.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGSARR_029- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_029.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_029.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_029.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_029.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_030- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_030.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_030.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_030.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_030.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_031- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_031.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_031.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_031.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_031.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_032- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_032.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_032.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_032.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_032.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_033- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_033.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_033.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_033.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_033.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_034- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_034.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_034.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_034.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_034.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_035- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_035.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_035.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_035.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_035.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_036- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_036.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_036.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_036.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_036.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_037- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_037.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_037.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_037.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_037.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_038- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_038.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_038.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_038.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_038.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_039- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_039.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_039.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_039.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_039.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_040- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_040.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_040.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_040.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_040.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_041- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_041.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_041.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_041.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_041.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGSARR_045- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_045.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_045.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_045.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_045.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_046- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_046.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_046.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_046.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_046.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_047- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_047.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_047.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_047.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_047.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_048- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_048.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_048.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_048.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_048.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGSARR_050- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_050.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_050.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_050.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_050.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_051- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_051.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_051.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_051.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_051.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_052- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_052.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_052.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_052.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_052.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ARRCINTNEGSARR_053- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_053.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_053.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_053.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_053.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_054- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_054.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_054.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_054.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_054.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

    
POST_VALIDATE ARRCINTNEGSARR_055- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_055.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_055.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_055.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_055.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGSARR_058- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_058.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_058.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_058.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_058.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_059- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_059.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_059.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_059.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_059.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_060- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_060.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_060.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_060.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_060.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_061- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_061.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_061.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_061.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_061.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE} 

POST_VALIDATE ARRCINTNEGSARR_063- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_063.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_063.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_063.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_063.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_064- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_064.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_064.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_064.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_064.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_065- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_065.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_065.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_065.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_065.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_066- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_066.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_066.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_066.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_066.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_067- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_067.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_067.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_067.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_067.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_068- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_068.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_068.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_068.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_068.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_069- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_069.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_069.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_069.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_069.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_070- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_070.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_070.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_070.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_070.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_071- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_071.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_071.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_071.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_071.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_072- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_072.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_072.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_072.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_072.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGSARR_073- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_073.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_073.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_073.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_073.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGSARR_074- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_074.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_074.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_074.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_074.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_076- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_076.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_076.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_076.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_076.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGSARR_078- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_078.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_078.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_078.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_078.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGSARR_080- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_080.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_080.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_080.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_080.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_081- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_081.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_081.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_081.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_081.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_082- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_082.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_082.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_082.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_082.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGSARR_083- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_083.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_083.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_083.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_083.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGSARR_084- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_084.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_084.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_084.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_084.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_085- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_085.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_085.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_085.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_085.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_086- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_086.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_086.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_086.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_086.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_087- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_087.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_087.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_087.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_087.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_088- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_088.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_088.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_088.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_088.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_089- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_089.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_089.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_089.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_089.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_090- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_090.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_090.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_090.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_090.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_091- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_091.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_091.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_091.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_091.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGSARR_093- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_093.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_093.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_093.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_093.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGSARR_094- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_094.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_094.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_094.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_094.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_095- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_095.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_095.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_095.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_095.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_096- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_096.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_096.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_096.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_096.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_097- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_097.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_097.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_097.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_097.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_098- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_098.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_098.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_098.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_098.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_099- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_099.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_099.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_099.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_099.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_100- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_100.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_100.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_100.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_100.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGSARR_101- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_101.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_101.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_101.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_101.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_102- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_102.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_102.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_102.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_102.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGSARR_103- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_103.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_103.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_103.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_103.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGSARR_104- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_104.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_104.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_104.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_104.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_105- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_105.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_105.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_105.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_105.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_106- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_106.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_106.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_106.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_106.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_107- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_107.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_107.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_107.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_107.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_108- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_108.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_108.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_108.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_108.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}


POST_VALIDATE ARRCINTNEGSARR_126- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_126.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_126.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_126.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_126.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_127- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_127.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_127.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_127.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_127.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_128- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_128.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_128.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_128.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_128.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_129- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_129.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_129.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_129.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_129.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_130- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_130.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_130.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_130.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_130.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_131- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_131.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_131.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_131.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_131.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_132- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_132.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_132.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_132.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_132.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGSARR_133- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_133.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_133.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_133.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_133.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}
    
POST_VALIDATE ARRCINTNEGSARR_134- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_134.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_134.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_134.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_134.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

POST_VALIDATE ARRCINTNEGSARR_135- Validation / Negative Scenarios for Simple ARR Interest
    [Documentation]    This test case sends POST request and gives validation errors/response based on Simple ARR method
   
    ${jsonData}    Load Json From File    ${INPUT_REQUEST_PATH}\\Validations\\SimARRInterest_Requests\\Request_ARRCINTNEGSARR_135.json
    
    WHEN USER SENDS A "POST" REQUEST    ${ARR_Calc_Prefix}/simple-arr/interest   ${jsonData}
    AND SAVES THE API RESPONSE    ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_135.json
    Run Keyword And Continue On Failure	THEN VERIFY RESPONSE STATUS   ${RESPONSE.status_code}    400
    ${data}    Get File    ${API_EXPECTED_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_135.json    encoding=utf-8-sig

    ${res}    Mx Compare Json With Baseline File     ${API_ACTUAL_RESPONSE_PATH}\\Validations\\SimARRInterest_Response\\Response_ARRCINTNEGSARR_135.json    ${data}    ignored_keys=@{IGNORED_KEYS_JSON_COMPARE}

